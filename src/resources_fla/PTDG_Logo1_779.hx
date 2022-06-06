package resources_fla
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.net.URLRequest;

/*dynamic*/ class PTDG_Logo1_779 extends GfxMovieClip {


    public function new() {
        super();
        addFrameScript(0, this.frame1);
    }

    public function clck(param1:MouseEvent):ASAny {
        var _loc3_ = new URLRequest("http://www.playtowerdefensegames.com");
        flash.Lib.getURL(_loc3_, "_new");
    }

    @:allow(resources_fla) function frame1():ASAny {
        this.buttonMode = true;
        this.addEventListener(MouseEvent.CLICK, this.clck);
    }
}

