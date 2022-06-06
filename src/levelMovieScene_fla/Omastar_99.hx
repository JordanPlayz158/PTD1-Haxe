package levelMovieScene_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Omastar_99 extends GfxMovieClip {


    public function new() {
        super();
addFrameScript(47, this.frame48);
addFrameScript(31, this.frame32);
addFrameScript(0, this.frame1);
    }

    @:allow(levelMovieScene_fla) function frame1():ASAny {
        gotoAndPlay("left");
    }

    @:allow(levelMovieScene_fla) function frame32():ASAny {
        gotoAndPlay("back");
    }

    @:allow(levelMovieScene_fla) function frame48():ASAny {
        gotoAndPlay("right");
    }
}

