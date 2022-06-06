package resources_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


/*dynamic*/ class LOGO_882 extends GfxMovieClip {


    public function new() {
        super();
        addFrameScript(107, this.frame108);
    }

    @:allow(resources_fla) function frame108():ASAny {
        stop();
        cast(parent, GfxMovieClip).nextFrame();
    }
}

