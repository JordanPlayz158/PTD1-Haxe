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

/*dynamic*/ class Logo_Gra_783 extends GfxMovieClip {


    public function new() {
        super();
        addFrameScript(0, this.frame1);
    }

    public function clck(param1:MouseEvent) {
        var _loc3_ = new URLRequest("http://www.freeworldgroup.com");
        Lib.getURL(_loc3_, "_new");
    }

    @:allow(resources_fla) function frame1() {
        this.buttonMode = true;
        this.addEventListener(MouseEvent.CLICK, this.clck);
    }
}

