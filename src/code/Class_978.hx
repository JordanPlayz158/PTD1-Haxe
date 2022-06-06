package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_978 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        if (this.var_3 != null) {
            this.var_3.gfx_BG.alpha = 0.3;
            this.var_3.gfx_UI.alpha = 0.3;
        }
        gfx.x = 20;
        gfx.y = 37;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (_loc2_.name == "butt_next") {
                gfx.gotoAndStop(Math.NaN);
                return true;
            }
            if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_How_To_Play();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_BG.alpha = 1;
        this.var_3.gfx_UI.alpha = 1;
        this.var_3.start_Level();
    }
}

