package
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Aqua_Tail extends GfxMovieClip {


    public function new() {
        super();
addFrameScript(16, this.frame17);
addFrameScript(12, this.frame13);
addFrameScript(8, this.frame9);
addFrameScript(3, this.frame4);
    }

public function frame4() {
        gotoAndPlay("front");
    }

public function frame9() {
        gotoAndPlay("back");
    }

public function frame13() {
        gotoAndPlay("right");
    }

public function frame17() {
        gotoAndPlay("left");
    }
}

