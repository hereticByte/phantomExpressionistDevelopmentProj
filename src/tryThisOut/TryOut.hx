package tryThisOut;
class TryOut
{
    public var int : Int;
    public var float : Float;
    public var string : String;


    public function new( int : Int, float : Float, string : String )
    {
        this.int = int;
        this.float = float;
        this.string = string;
    }

    public function doubleCurrentInteger() : Int
    {
        int *= 2;
        return int;
    } // public function doubleCurrentInteger()

    public function multiplyTwoFloats( float01 : Float, float02 : Float ) : Float
    {
        return float01 * float02;
    } //  public function multiplyTwoFloats( float01 : Float, float02 : Float ) : Float


    public static function tollFn()
    {
        trace( "Toll!" );
    } //

    public static function executeVoidFn( voidFn : Void -> Void )
    {
        voidFn();

    } //


} // class TryOut
