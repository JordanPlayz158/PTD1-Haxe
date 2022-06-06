package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_902 extends _Obj {


    @:allow(code) var var_165:Class_893;

    @:allow(code) var gfx:GfxMovieClip;

    public function new(param1:Class_893) {
        super(param1);
        this.var_165 = param1;
        this.init();
        this.var_165.gfx_BG.alpha = 0.5;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (this.gfx.butt_close == _loc2_) {
            this.var_165.gfx_BG.alpha = 1;
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) function get_Graphic():GfxMovieClip {
        return new Popup_How_To_Select_Party();
    }

    @:allow(code) function init() {
        this.gfx = this.get_Graphic();
        if (this.gfx != null) {
            addChild(this.gfx);
        }
    }

    @:allow(code) function remove_Me() {
        if (this.var_165 != null) {
            this.var_165.method_24();
        }
    }
}

