package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.media.SoundMixer;

class Class_1113 extends Class_904 {


    @:allow(code) var var_111:Class_6;

    @:allow(code) var var_362:String;

    public function new(param1:Class_903, param2:Class_6, param3:String) {
        this.var_111 = param2;
        this.var_362 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = "";
        if (this.var_111.shiny == 2) {
            _loc1_ = "ss";
        }
        else if (this.var_111.shiny == 1) {
            _loc1_ = "s";
        }
        gfx.actual.gfx_Poke.gotoAndStop(_loc1_ + this.var_111.num);
        gfx.actual.moveText.text = this.var_111.name + " learned " + this.var_362 + "!";
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
        var_165.set_Profile();
        SoundMixer.stopAll();
    }
}

