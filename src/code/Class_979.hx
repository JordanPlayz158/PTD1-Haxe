package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_979 extends Class_877 {


    @:allow(code) var var_111:Poke;

    @:allow(code) var var_362:String;

    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875, param2:Poke, param3:String) {
        this.var_111 = param2;
        this.var_362 = param3;
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = "";
        if (this.var_111.myProfile.shiny == 2) {
            _loc1_ = "ss";
        }
        else if (this.var_111.myProfile.shiny == 1) {
            _loc1_ = "s";
        }
        gfx.actual.gfx_Poke.gotoAndStop(_loc1_ + this.var_111.myProfile.num);
        gfx.actual.moveText.text = this.var_111.myProfile.name + " learned " + this.var_362 + "!";
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (false) {
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Focus_New_Move();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.method_20();
        this.var_3.method_12();
    }
}

