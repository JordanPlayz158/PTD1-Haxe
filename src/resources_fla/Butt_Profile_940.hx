package resources_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.text.TextField;

/*dynamic*/ class Butt_Profile_940 extends GfxMovieClip {


    public var profile_bg:GfxMovieClip;

    public var continue_butt:GfxMovieClip;

    public var badges:TextField;

    public var new_game_butt:GfxMovieClip;

    public var caught:TextField;

    public var profile_name:TextField;

    public function new() {
        super();
        addFrameScript(0, this.frame1);
    }

    @:allow(resources_fla) function frame1() {
        stop();
    }
}

