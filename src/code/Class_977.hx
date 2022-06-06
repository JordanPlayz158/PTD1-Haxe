package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_977 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_3.method_62();
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (_loc2_.name == "butt_yes") {
            this.remove_Me();
            this.var_3.end_Level();
            return true;
        }
        if (_loc2_.name == "butt_no") {
            this.var_3.method_35();
            this.var_3.method_20();
            this.var_3.method_12();
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Exit_Level();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
    }
}

