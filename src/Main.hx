package ;


import tryOut.packageLevel02.packageLevel03.DeeplyRootedClass;
import haxe.macro.Expr;
import tryOut.TryOut;
import expresso.ExpressionParser;
// import tryOut.packageLevel02.NotUsedButIncludedClass;


class Main
{
    public static function main()
    {
/*
var blueDot = NotUsedButIncludedClass BlueDot( { "src/Main.hx", [ Landmark.functionBody ], "main", ScopeKind.end } )
*/

//        var tollTrace : Expr =
        macro {
            trace( "Toll, das erste Macro ist gesetzt."  );
    };

        /*
        RedDot
            lineNumberStart = 34
            lineNumberEnd = 34
            variableName = toll
            variableType = Int
            variableValue = 4
            variableExpression = { expr => EConst(CInt(4)), pos => #pos(src/Main.hx:34: characters 25-26) }
            variablesInExpression : Array<> = []
        */
        var toll : Int = 4;


        /*
        Later on it's like the following:
                              scope-------v                         functionName--v    scope pos---v
        var blueDot = NotUsedButIncludedClass BlueDot( { "src/Main.hx", [ Landmark.if ], "", ScopeKind.start } )
        var blueDot = NotUsedButIncludedClass BlueDot( { "src/Main.hx", [ Landmark.if ], "", ScopeKind.end } )
        var blueDot = NotUsedButIncludedClass BlueDot( { "src/Main.hx", [ Landmark.functionBody ], "main", ScopeKind.end } )

        */

        /*
        RedDot
            lineNumberStart = 34
            lineNumberEnd = 34
            variableName = toll
            variableType = Int
            variableValue = 4
            variableExpression = { expr => EConst(CInt(4)), pos => #pos(src/Main.hx:34: characters 25-26) }
            variablesInExpression : Array<> = []
        */
        var ganzToll = 3 + 1;
        var fantastisch : Int;

        var aComplexExpressionVariable : Int = 0;

        aComplexExpressionVariable = 3 + 4 + 5 + ganzToll + 6;

        var anotherComplexExpression : Int;

        anotherComplexExpression = 3 + ( 3 + 2 ) * 5;

        var theOrderMatters : Int;

        theOrderMatters = 3 + 5 * ( 3 + 2 );


        var aBoolean : Bool = true;

        toll;
        7;

        toll++;

        toll = 231;
/*
var redDot = NotUsedButIncludedClass RedDot( {"toll", toll, pos } );
collector.blueThread.addDot( redDot );
*/

        toll += ganzToll;
/*
var redDot = NotUsedButIncludedClass RedDot( [ , { scope01 }, { scope02 }     ] "toll", toll, pos } );
collector.blueThread.addDot( redDot );
*/

        toll = toll + 20;

        fantastisch = 113;
        fantastisch = fantastisch + ganzToll + toll;
        fantastisch += 210;

// Todo: Void function



        /*
        Landmark
            type = if
            condition = function x( toll ) : bool
                        {
                            return ( toll < 33 );
                        }

        */
        if( toll < 33 )
        {
            trace( "Hm, 'toll' ist ja gar nicht so toll..." );
            fantastisch *= 2;
        } // if( toll < 20 )
        else
        {
            fantastisch += 2;
            trace( "" );
            trace( "fantastisch: " + fantastisch );
            fantastisch = Std.int( fantastisch / 3 );
        }

        if ( toll > 1005 )
            fantastisch += 10;
        else
            fantastisch -= 10;


        /*
            Query if 'switch( fantastisch )' is a singular variable
            or a complex expression

        */

        switch( fantastisch )
        {
            case 1 : trace( "1" );
             /*
             Query if Expression or ArrayExpression
             if Expression -->
                 NotUsedButIncludedClass ArrayExpression()
                 ArrayExpression
                        [ 0 ] = StartLandmark
                        [ 1 ] = expression
             else
             for i in 0...originalArrayExpression
                newArrayExpression
                        [ 0 ] = StartLandmark
                        [ 1 ] = originalArrayExpression [ 0 ]
             */

            case 2 : trace( "2" );
            case 3 : trace( "3" );
            case 4 : trace( "4" );
            case 5 : trace( "5" );
            case 6, 7, 8 : trace( "6, 7 oder 8" );
            case 9 :
            default : trace( "Default Case" );
        } // switch( fantastisch )


        var forTheSwitch : String = "toll";

        switch( forTheSwitch )

        {
            case "toll" :
                { // Case --> EBlock
                    trace( "toll" );
                    fantastisch = 3;
                } // case "toll" :
            case "fantastisch" :
                {
                    trace( "fantastisch" );
                    fantastisch = 4;
                } // case "fantastisch" :
            default :
                {
                    trace( "default" );
                    fantastisch = 6;
                } // default :
        } // switch( forTheSwitch )


        ganzToll = fantastisch > toll ? Std.int( ganzToll / 4 ) : ganzToll * 5;

        var tryOut : TryOut = new TryOut( 3, 2.5, "Drei" );

/*        testPurposeMethod();
        testPurposeMethod();
        testPurposeMethod();*/

        var counter : Int = 3;
        while ( counter > 1 )
        {
            counter -= 1;
        } // while ( counter > 1 )

        counter = 3;
        do
        {
            "Fußgesteuerte While-Schleife";
            counter -= 1;
        } while( counter > 1 );

        for( i in 0...10 )
        {
            trace( i );
        } //for( i in 0...10 )

        try
        {
            trace( "Try-Block" );
            var toll = sys.io.File.read( "k:/thisfolder/does/not/exist", false );
        } // try()

        catch( e : String )
        {

            trace( "Catch-Block" );
            trace( "Error Message:" );
            trace( e );
        } // catch( e : String )

        try
        {
            trace( "Where-Is-My-Catch-Block-Experiment" );
           /*   Also the Catch Block is included by the compiler, even if the catch block is not activated.
                The reason for not-macro-infused classes is, that they are not included.

                Even those classes are macro-infused that are only included but not referenced.

              */

            } // try()

        catch( e : String )
        {

            trace( "Catch-Block" );
            trace( "Error Message:" );
            trace( e );
        } // catch( e : String )

        "<<LineBreak-Experiment>>";
        "This string\nlinebreaks here.";
        "This string \\n linebreaks here.";
        /*
            --> Another good reason for a stand-alone phantom-expressionist.
                The stand-alone application could run in c++. Then it can process strings with linebreaks,
                independently from the source codes's compile target.
        */


        TryOut.executeVoidFn( TryOut.tollFn );

        trace( "RegEx-Test" );
        var regEx01 : EReg = new EReg( "([0-9]+)", "" );
        var regEx02 = ~/([a-zA-Z]+)/;
        var testString : String = "aberAber 099098";

        if( regEx01.match( testString ) )
        {
            trace( "The matched numbers:" );
            trace( regEx01.matched( 1 ) );
        } // if( regEx01.match( testString ) )

        if ( regEx02.match( testString ) )
        {
            trace( "The matched letters:" );
            trace( regEx02.matched( 1 ) );
        } // if ( regEx02.match( testString ) )

        var deeplyRooted : DeeplyRootedClass = new DeeplyRootedClass( 11, 43 );

        trace( deeplyRooted.fantastisch );

        var deeplyRootedPlusOptional : DeeplyRootedClass = new DeeplyRootedClass( 11, 43, true );

        function withinMainFunc( int01 : Int, int02 : Int ) : Int
        {
            return int01 + int02;
        } // function withinMainFunc( int01 : Int, int02 : Int ) : Int

        trace( withinMainFunc( 3, 4 ) );

        "<endStatement>";


    } // public static function main()


/*
    private static function testPurposeMethod()
    {
        trace( "Following function has been called: testPurposeMethod()" );
    } // private static function testPurposeMethod()
*/


} // class main.Main



