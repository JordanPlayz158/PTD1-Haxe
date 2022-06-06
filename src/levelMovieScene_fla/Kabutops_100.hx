package levelMovieScene_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Kabutops_100 extends GfxMovieClip {


    public function new() {
        super();
addFrameScript(64, this.frame65);
addFrameScript(48, this.frame49);
addFrameScript(32, this.frame33);
addFrameScript(16, this.frame17);
    }

    @:allow(levelMovieScene_fla) function frame17():ASAny {
        gotoAndPlay("front");
    }

    @:allow(levelMovieScene_fla) function frame33():ASAny {
        gotoAndPlay("left");
    }

    @:allow(levelMovieScene_fla) function frame49():ASAny {
        gotoAndPlay("back");
    }

    @:allow(levelMovieScene_fla) function frame65():ASAny {
        gotoAndPlay("right");
    }
}

