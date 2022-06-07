package levelMovieScene_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Hit_Thunder_Repeat_174 extends GfxMovieClip {


    public function new() {
        super();
        addFrameScript(10, this.frame11);
    }

    @:allow(levelMovieScene_fla) function frame11() {
        gotoAndPlay("loop");
    }
}

