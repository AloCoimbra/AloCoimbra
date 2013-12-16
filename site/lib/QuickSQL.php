<?
	class QuickSQL {
		function __construct($db, $user, $password) {
			if (!$this->connection = mysql_connect('localhost', $user, $password))
				return $this->loginFailed = true;
			
			if (!mysql_select_db($db, $this->connection))
			    $this->Error('Failed to select database ' . $db);
			
			$this->Query('SET NAMES utf8');
			$tables = $this->Query('SHOW TABLES');
			
			while ($table = mysql_fetch_row($tables)) {
				$name = $table[0];
				$GLOBALS[$name] = new QuickSQLTable($this, $name);
			}
		}
		
		function Error($error) {
			exit('<div class="error">' . $error . '</div>');
		}
		
		function Query($query) {
			if (!$result = mysql_query($query, $this->connection))
				$this->Error(mysql_error() . '<br>Query: ' . $query);
				
			return $result;
		}
	}
	
	class QuickSQLTable {
		function __construct($db, $name) {
			$this->name = $name;
			$this->db = $db;
		}
		
		
		// Methods
		function Count($cond = '') {
			$result = $this->Pull('COUNT(*)', $cond);
			return $result['COUNT(*)'];
		}
		
		function Pull($fields, $cond) {
			$result = $this->Select($fields, $cond);
			$entry = mysql_fetch_assoc($result);
			
			mysql_free_result($result);
			return $entry;
		}

		function Find($fields, $cond) {
			$result = $this->Select($fields, $cond);
			$array = array();
			
			while ($entry = mysql_fetch_assoc($result))
				$array[] = $entry;
				
			mysql_free_result($result);
			return $array;
		}

		function Columns() {
			$result = $this->Query("DESCRIBE $this->name");
			$columns = array();

			while ($column = mysql_fetch_assoc($result))
				$columns[] = $column['Field'];

			mysql_free_result($result);
			return $columns;
		}
		
		function Insert($data) {
			$fields = '';
			$values = '';
			
			foreach ($data as $field => $value) {
				$fields = "$field, $fields";
				$values = "'$value', $values";
			}
			
			$fields = substr($fields, 0, -2);
			$values = substr($values, 0, -2);
			$this->Query("INSERT INTO $this->name ($fields) VALUES ($values)");

			return mysql_insert_id();
		}
		
		function Update($data, $cond) {
			$opers = '';
			
			foreach ($data as $field => $value)
				$opers = "$field = '$value', $opers";
			
			$opers = substr($opers, 0, -2);
			$this->Query("UPDATE $this->name SET $opers $cond");
		}
		
		
		// Low-Level
		function Select($fields, $cond) {
			return $this->Query("SELECT $fields FROM $this->name $cond");
		}
		
		function Query($query) {
			return $this->db->Query($query);
		}
	}
?>