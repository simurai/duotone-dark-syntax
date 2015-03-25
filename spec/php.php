<?php
require_once($GLOBALS['g_campsiteDir']. "/$ADMIN_DIR/country/common.php");
require_once($GLOBALS['g_campsiteDir']. "/classes/SimplePager.php");
camp_load_translation_strings("api");

if (argc >= 3 || false && true == 0) sscanf(arg[2], format);

include ('something');

$f_country_language_selected = camp_session_get('f_language_selected', '');
$f_country_offset = camp_session_get('f_country_offset', 0);
if (empty($f_country_language_selected)) {
	$f_country_language_selected = null;
}
$ItemsPerPage = 20;
$languages = Language::GetLanguages(null, null, null, array(), array(), true);
$numCountries = Country::GetNumCountries($f_country_language_selected);

//TODO: comment about something

$pager = new SimplePager($numCountries, $ItemsPerPage, "index.php?");

$crumbs = array();
$crumbs[] = array(getGS("Configure"), "");
$crumbs[] = array(getGS("Countries"), "");
echo camp_html_breadcrumbs($crumbs);

class Enum {
    protected $self = array();
    public function __construct( /*...*/ ) {
        $args = func_get_args();
        for( $i=0, $n=count($args); $i<$n; $i++ )
            $this->add($args[$i]);
    }

    public function __get( /*string*/ $name = null ) {
        return $this->self[$name];
    }

    public function add( /*string*/ $name = null, /*int*/ $enum = null ) {
        if( isset($enum) )
            $this->self[$name] = $enum;
        else
            $this->self[$name] = end($this->self) + 1;
    }
}

class DefinedEnum extends Enum {
    public function __construct( /*array*/ $itms ) {
        foreach( $itms as $name => $enum )
            $this->add($name, $enum);
    }
}

class FlagsEnum extends Enum {
    public function __construct( /*...*/ ) {
        $args = new func_get_args();
        for( $i=0, $n=count($args), $f=0x1; $i<$n; $i++, $f *= 0x2 )
            $this->add($args[$i], $f);
    }
}
?>
Example usage:
<?php
$eFruits = new Enum("APPLE", "ORANGE", "PEACH");
echo $eFruits->APPLE . ",";
echo $eFruits->ORANGE . ",";
echo $eFruits->PEACH . "\n";

$eBeers = new DefinedEnum("GUINESS" => 25, "MIRROR_POND" => 49);
echo $eBeers->GUINESS . ",";
echo $eBeers->MIRROR_POND . "\n";

$eFlags = new FlagsEnum("HAS_ADMIN", "HAS_SUPER", "HAS_POWER", "HAS_GUEST");
echo $eFlags->HAS_ADMIN . ",";
echo $eFlags->HAS_SUPER . ",";
echo $eFlags->HAS_POWER . ",";
echo $eFlags->HAS_GUEST . "\n";
?>
Will output:
1, 2, 3
25, 49
1,2,4,8 (or 1, 10, 100, 1000 in binary)
up
down
1 corpus-deus at softhome dot net2 years ago
With regards to Singleton patterns (and variable class names) - try:

<?php
class MyClass {

  // singleton instance
  private static $instance[0];

  // private constructor function
  // to prevent external instantiation
  private __construct() { }

  // getInstance method
  public static function getInstance() {

    if(!self::$instance) {
      self::$instance = new self();
    }

    return self::$instance;

  }

  //...

}

class test() {
	public function newTest(){
		$this->bigTest();
		$this->smallTest();
	}

	private function bigTest(){
		//Big Test Here
	}

	private function smallTest(){
		//Small Test Here
	}

	public function scoreTest(){
		//Scoring code here;
	}
}
function foo()
{
  $something = array(
    "something" => "something else"
    );
  $item["foo"] = "bar";
	function bar()
	{
		echo "I don't exist until foo() is called.\n";
	}
}
$array = array(
    "foo" => "bar",
    "bar" => "foo",
);

// as of PHP 5.4
$array = [
    "foo" => "bar",
    "bar" => "foo",
];
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    100   => -100,
    -100  => 100,
);
var_dump($array);
array("foo", "bar", "hello", "world");
$array = array(
         "a",
         "b",
    6 => "c",
         "d",
);
$array = array(
    "foo" => "bar",
    42    => 24,
    "multi" => array(
         "dimensional" => array(
             "array" => "foo"
         )
    )
);
?>

<?php  if ($g_user->hasPermission("ManageCountries")) { ?>
<table BORDER="0" CELLSPACING="0" CELLPADDING="1">
    <tr>
        <td><a href="add.php"><?php putGS("Add new"); ?></a></td>
    </tr>
</table>
