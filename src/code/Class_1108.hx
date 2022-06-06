package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.display.DisplayObject;

import flash.events.MouseEvent;
import flash.media.SoundMixer;

class Class_1108 extends Class_904 {


    @:allow(code) var var_111:Class_6;

    @:allow(code) var var_362:String;

    @:allow(code) var var_215:Int = 0;

    public function new(param1:Class_903, param2:Class_6, param3:String, param4:Int) {
        this.var_111 = param2;
        this.var_362 = param3;
        this.var_215 = param4;
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
        gfx.actual.moveText.text = this.var_111.name + " is trying to learn " + this.var_362 + ".";
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (false) {
            if (Std.is(param1.target, DisplayObject)) {
                if (cast(param1.target, DisplayObject).name == "stop_learning_butt") {
                    var_165.set_Profile();
                    this.remove_Me();
                }
                else if (cast(param1.target, DisplayObject).name == "learn_butt") {
                    this.remove_Me();
                    var_165.show_Replace_Move(this.var_215);
                }
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Focus_Trying_New_Move();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        SoundMixer.stopAll();
    }
}

