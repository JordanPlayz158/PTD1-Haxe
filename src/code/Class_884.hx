package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.geom.Point;
import flash.geom.Rectangle;

class Class_884 extends _Obj {


    static inline final const_284 = 11;

    static inline final const_291 = 6;

    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_34:Int = 0;

    @:allow(code) var var_131:Bool = false;

    @:allow(code) var var_105:Bool = false;

    @:allow(code) var var_59:GfxMovieClip;

    @:allow(code) var var_119:Point;

    @:allow(code) var var_248:Rectangle;

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
        this.init();
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Level_Select_Chapter_2();
        addChild(this.gfx_BG);
        this.var_59 = this.gfx_BG.level_preview;
        var _loc1_ = 800 - (this.var_59.width + 100);
        var _loc2_ = -_loc1_;
        this.var_248 = new Rectangle(_loc1_, 0, _loc2_, 0);
        this.method_19();
    }

    @:allow(code) function method_19() {
        var _loc1_:ASAny = null;
        var _loc2_ = Class_884.const_291;
        while (_loc2_ <= Class_884.const_284) {
            _loc1_ = (this.var_59 : ASAny)["level" + _loc2_];
            if (this.currentProfile.levelUnlocked < _loc2_ - 1) {
                _loc1_.gotoAndStop(2);
            }
            _loc2_++;
        }
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        this.var_131 = false;
        if (this.var_34 != 0) {
            _loc2_ = (this.var_59 : ASAny)["level" + this.var_34];
            _loc2_.bg.gotoAndStop(1);
        }
        if (this.var_105) {
            this.var_59.stopDrag();
            return false;
        }
        if (this.var_34 != 0 && _loc2_.currentFrame == 1) {
            _loc3_ = new Class_893(this.var_34, this.currentProfile, my_Parent);
            send_Msg(["change_Screen", _loc3_]);
        }
        return false;
    }

    @:allow(code) override function mouse_Move(param1:MouseEvent = null):Bool {
        var _loc2_ = Math.NaN;
        var _loc3_ = Math.NaN;
        if (this.var_131 && !this.var_105) {
            _loc2_ = Math.abs(param1.stageY - this.var_119.y);
            _loc3_ = Math.abs(param1.stageX - this.var_119.x);
            if (_loc2_ > 40 || _loc3_ > 40) {
                this.var_105 = true;
                if (this.var_34 != 0) {
                    (this.var_59 : ASAny)["level" + this.var_34].bg.gotoAndStop(1);
                    this.var_34 = 0;
                }
            }
        }
        return true;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        this.var_105 = false;
        this.var_119 = new Point(param1.stageX, param1.stageY);
        if (Std.is(param1.target, GfxMovieClip)) {
            _loc3_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (this.gfx_BG.back_butt.contains(_loc3_)) {
                this.back_Pressed();
                return true;
            }
            _loc5_ = Class_884.const_291;
            while (_loc5_ <= Class_884.const_284) {
                if ((_loc4_ = (this.var_59 : ASAny)["level" + _loc5_]).contains(_loc3_)) {
                    this.var_34 = _loc5_;
                    _loc4_.bg.gotoAndStop(2);
                    break;
                }
                _loc5_++;
            }
        }
        this.var_131 = true;
        return true;
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_880(this.currentProfile, my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

