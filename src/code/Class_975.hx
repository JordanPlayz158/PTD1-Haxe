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

class Class_975 extends Class_877 {


    @:allow(code) var var_111:Class_1104;

    @:allow(code) var var_215:Int = 0;

    @:allow(code) var var_37:Class_6;

    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875, param2:Class_1104, param3:Int) {
        this.var_111 = param2;
        this.var_215 = param3;
        this.var_37 = this.var_111.myProfile;
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_:GfxMovieClip = gfx.actual.change_Move_screen;
        _loc1_.hl.visible = false;
        _loc1_.Attack_1.gotoAndStop(this.var_37.move1);
        _loc1_.Attack_2.gotoAndStop(this.var_37.move2);
        _loc1_.Attack_3.gotoAndStop(this.var_37.move3);
        _loc1_.Attack_4.gotoAndStop(this.var_37.move4);
        _loc1_.Attack_description.gotoAndStop(this.var_215);
        gfx.actual.learn_Attack.gotoAndStop(this.var_215);
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (false) {
            if (Std.is(param1.target, DisplayObject)) {
                _loc2_ = cast(param1.target, DisplayObject).name;
                if (_loc2_ == "done_butt") {
                    this.remove_Me();
                }
                else if (_loc2_ == "Attack_1") {
                    this.method_27(1);
                }
                else if (_loc2_ == "Attack_2") {
                    this.method_27(2);
                }
                else if (_loc2_ == "Attack_3") {
                    this.method_27(3);
                }
                else if (_loc2_ == "Attack_4") {
                    this.method_27(4);
                }
            }
        }
        return false;
    }

    public function method_27(param1:Int) {
        (this.var_111.myProfile : ASAny)["move" + param1] = this.var_215;
        if (this.var_111.myProfile.moveSelected == param1) {
            this.var_111.reset_Attack();
        }
        var _loc2_:GfxMovieClip = gfx.actual.change_Move_screen["Attack_" + param1];
        var _loc3_ = _loc2_.currentFrame;
        _loc2_.gotoAndStop(this.var_215);
        this.var_215 = _loc3_;
        gfx.actual.learn_Attack.gotoAndStop(this.var_215);
        gfx.actual.change_Move_screen.Attack_description.gotoAndStop(this.var_215);
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Focus_Replace_Move();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.method_20();
        this.var_3.method_12();
    }
}

