<?php 
	class modelboard extends model{

		function getview(){
			if($this->param->page == "view"){
				$this->query("UPDATE board SET hit=hit+1 where idx='{$this->param->idx}'");
			}
			return $this->fetch("SELECT * FROM board where idx='{$this->param->idx}'");
		}

		function prev(){
			$prev = (array)$this->fetch("SELECT max(idx) FROM board where idx < '{$this->param->idx}'");
			return $prev['max(idx)'];
		}

		function next(){
			$next = (array)$this->fetch("SELECT min(idx) FROM board where idx > '{$this->param->idx}'");
			return $next['min(idx)'];
		}

		function delete(){
			$this->sql = "
			DELETE FROM board where idx='{$this->param->idx}';
			";
			return $this->query();
		}

		function boardaction(){
			if(isset($_POST['action'])){
				switch ($_POST['action']) {
					case 'write':
					$this->sql = "INSERT INTO board SET midx='{$_SESSION['member']->idx}', writer=?, subject=?, content=?, date=now()";
					$this->getexearr($_POST,"/action");
					$this->query();
						break;
					case 'update':
					$this->sql = "UPDATE board SET subject=?, content=?, date=now() where idx='{$this->param->idx}'";
					$this->getExearr($_POST,"/action");
					$this->query();
						break;
				}
				alert("완료되었습니다");
				move("/");
			}
		}
	}