package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_1109 extends Class_904 {


    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_37:Class_6;

    @:allow(code) var moves:Array<ASAny>;

    @:allow(code) var var_552:Int = 0;

    public function new(param1:Class_903, param2:Class_6, param3:Class_878) {
        this.currentProfile = param3;
        this.var_37 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.method_58();
    }

    @:allow(code) function method_58() {
        var _loc1_ = 0;
        var _loc3_:ASAny = null;
        this.moves = Class_12.method_340(this.var_37);
        var _loc2_ = 0;
        while (_loc2_ < this.moves.length) {
            _loc1_ = this.moves[_loc2_];
            if (Class_12.method_67(_loc1_, this.var_37)) {
                this.moves.splice(_loc2_, 1);
                _loc2_--;
            }
            _loc2_++;
        }
        _loc2_ = 1;
        while (_loc2_ <= 20) {
            _loc3_ = gfx.actual["Attack_" + _loc2_];
            if (this.moves.length >= _loc2_) {
                _loc3_.Attack_name.gotoAndStop(this.moves[_loc2_ - 1]);
            }
            else {
                _loc3_.visible = false;
            }
            _loc2_++;
        }
        if (this.moves.length != 0) {
            this.method_51(this.moves[0]);
        }
        else {
            gfx.actual.Attack_name.visible = false;
            gfx.actual.Attack_description.visible = false;
            gfx.actual.relearn_butt.visible = false;
        }
    }

    @:allow(code) function method_51(param1:Int) {
        gfx.actual.Attack_name.gotoAndStop(param1);
        gfx.actual.Attack_description.gotoAndStop(param1);
        this.var_552 = param1;
    }

    @:allow(code) function method_80() {
        this.currentProfile.money -= 1000;
        this.currentProfile.save_Profile();
        remove_Me();
        var_165.check_New_Move(this.var_552);
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        if (false) {
            if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
                _loc2_ = cast(param1.target, GfxMovieClip);
                trace(_loc2_.name);
                if (_loc2_.name == "done_butt") {
                    remove_Me();
                    return true;
                }
                if (_loc2_.name == "relearn_butt") {
                    this.method_80();
                    return true;
                }
                _loc4_ = 1;
                while (_loc4_ <= 20) {
                    _loc3_ = gfx.actual["Attack_" + _loc4_];
                    if (_loc3_.contains(_loc2_)) {
                        this.method_51(this.moves[_loc4_ - 1]);
                        return true;
                    }
                    _loc4_++;
                }
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Relearn();
    }
}

