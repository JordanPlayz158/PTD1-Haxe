package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_971 extends Class_877 {


    @:allow(code) var var_601:Poke;

    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875, param2:Poke) {
        this.var_601 = param2;
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = "";
        if (this.var_601.myProfile.shiny != 0) {
            _loc1_ = "s";
        }
        gfx.actual.gfx_Poke.gotoAndStop(_loc1_ + this.var_601.myProfile.num);
        gfx.actual.whoCaught.text = "You caught a " + this.var_601.myProfile.name + "!";
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (false) {
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Focus_Caught();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.reset_Poke();
        this.var_3.removeChild(this.var_3.var_335);
        this.var_3.var_335 = null;
        this.var_3.method_20();
        this.var_3.method_12();
    }
}

