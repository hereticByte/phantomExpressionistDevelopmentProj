package tryOut.packageLevel02.packageLevel03;



class DeeplyRootedClass
{
    public var fantastisch : Int;
    public var toll : Int;
    public var optional : Bool;

    public function new( fantastisch : Int, toll : Int, ?optional )
    {
        this.fantastisch = fantastisch;
        this.toll = toll;

        this.optional = optional != null ? optional : false;

    } // public function NotUsedButIncludedClass( fantastisch : Int, toll : Int, ?optional )


    public function deeplyRootedMethod()
    {
        if ( fantastisch < 1000000 )
            fantastisch *= 2;

        if ( fantastisch < 1000000 )
            toll *= 2;
    } // public function deeplyRootedMethod()

}
