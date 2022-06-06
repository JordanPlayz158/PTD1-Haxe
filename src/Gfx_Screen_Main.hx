package
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class Gfx_Screen_Main extends GfxMovieClip {

    public function new() {
        super();
        addFrameScript(0, this.frame1);
    }
public function frame1() {
        stop();
    }
}

