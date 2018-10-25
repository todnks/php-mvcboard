<?php 
	Class memberController extends Controller{
	
		function action(){
			access(isset($_SESSION['member']),"이미 로그인 하셨습니다","/");
			if(isset($_POST['action'])) $this->model->action();
		}

		function logout(){
			access(!isset($_SESSION['member']),"로그인을 해주세요","/");
			access(session_destroy(),"로그아웃","/");
		}

		function mypage(){
			access(loginchk(),"","/");
		}

		function memberdelete(){
			loginchk();
			$this->model->delete();
			session_destroy();
			alert("삭제 되었습니다");
			move("/");
	}
}