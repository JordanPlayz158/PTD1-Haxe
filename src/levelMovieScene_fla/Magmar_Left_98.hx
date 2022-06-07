package levelMovieScene_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Magmar_Left_98 extends GfxMovieClip {


    public function new() {
        super();
addFrameScript(47, this.frame48);
addFrameScript(31, this.frame32);
addFrameScript(15, this.frame16);
    }

    @:allow(levelMovieScene_fla) function frame16() {
        gotoAndPlay("left");
    }

    @:allow(levelMovieScene_fla) function frame32() {
        gotoAndPlay("back");
    }

    @:allow(levelMovieScene_fla) function frame48() {
        gotoAndPlay("right");
    }
}

