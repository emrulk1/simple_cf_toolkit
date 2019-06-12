<?php
	class Mysql {

		protected $_host;
		protected $_dbname;
		protected $_username;
		protected $_password;
		protected $_db;

		public function __construct($host = null, $dbname = null, $username = null, $password = null)
		{
			$this->_host = $host;
			$this->_dbname = $dbname;
			$this->_username = $username;
			$this->_password = $password;
		}

		public function connect()
		{
			try {
				$this->_db = new PDO('mysql:host=' . $this->_host . ';dbname=' . $this->_dbname, $this->_username, $this->_password);
			}
			catch(PDOException $e){
				echo $e->getMessage();
			}
		}

		public function getDb()
		{
			return $this->_db;
		}

		public function setHost($host)
		{
			$this->_host = $host;
			return $this;
		}

		public function getHost()
		{
			return $this->_host;
		}

		public function setDbname($dbname)
		{
			$this->_dbname = $dbname;
			return $this;
		}

		public function getDbname()
		{
			return $this->_dbname;
		}

		public function setUsername($username)
		{
			$this->_username = $username;
			return $this;
		}

		public function getUsername()
		{
			return $this->_username;
		}

		public function setPassword($password)
		{
			$this->_password = $password;
			return $this;
		}

		public function getPassword()
		{
			return $this->_password;
		}
		
		public function execute_query($sql){
			$this->_db->exec($sql);
		}
		
		public function prepared_statement($sql){
			return $this->_db->prepare($sql);
		}
		
	}
	
	$myPDO = new Mysql('localhost','cf_toolkit_db', 'root', '');
	//$myPDO = new Mysql('localhost','id3793042_cf_ttolkit_db', 'id3793042_root', '');
	$myPDO->connect();

?>