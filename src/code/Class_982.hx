package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_982 extends Class_877 {


    var var_165:Class_891;

    var var_688:Int = 0;

    public function new(param1:Class_891, param2:Int) {
        this.var_165 = param1;
        this.var_688 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_165.gfx_BG.alpha = 0.4;
    }

    @:allow(code) override function remove_Me() {
        this.var_165.gfx_BG.alpha = 1;
        super.remove_Me();
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (false) {
            if (Std.is(param1.target, GfxMovieClip)) {
                _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
                if (gfx.actual.yes_butt.contains(_loc2_)) {
                    this.remove_Me();
                    this.var_165.add_Popup(new Class_981(this.var_165, this.var_688));
                }
                else if (gfx.actual.no_butt.contains(_loc2_)) {
                    this.remove_Me();
                }
                return true;
            }
            return false;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Profile_Delete();
    }
}

