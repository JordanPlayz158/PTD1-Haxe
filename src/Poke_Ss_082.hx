package
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Poke_Ss_082 extends GfxMovieClip {



    public function new() {
        super();
addFrameScript(64, this.frame65);
addFrameScript(49, this.frame50);
addFrameScript(48, this.frame49);
addFrameScript(33, this.frame34);
addFrameScript(32, this.frame33);
addFrameScript(17, this.frame18);
addFrameScript(16, this.frame17);
addFrameScript(0, this.frame1);
    }

public function frame1() {
        this.actual.gotoAndPlay("front");
    }

public function frame17() {
        gotoAndPlay("front");
    }

public function frame18() {
        this.actual.gotoAndPlay("left");
    }

public function frame33() {
        gotoAndPlay("left");
    }

public function frame34() {
        this.actual.gotoAndPlay("back");
    }

public function frame49() {
        gotoAndPlay("back");
    }

public function frame50() {
        this.actual.gotoAndPlay("right");
    }

public function frame65() {
        gotoAndPlay("right");
    }
}

