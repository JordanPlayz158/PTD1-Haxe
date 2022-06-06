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

class Class_905 extends _Obj {


    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_205:Poke;

    @:allow(code) var var_450:Class_949;

    @:allow(code) var var_718:String;

    @:allow(code) var var_709:GfxMovieClip;

    @:allow(code) var var_565:Class_8;

    @:allow(code) var var_37:Class_6;

    public function new(param1:Poke, param2:Class_878, param3:_Obj, param4:Class_6 = null) {
        super(param3);
        this.var_205 = param1;
        this.currentProfile = param2;
        if (this.var_205 != null) {
            this.var_37 = param1.myProfile;
        }
        else {
            this.var_37 = param4;
        }
        this.init();
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Poke_Check();
        addChild(this.gfx_BG);
        this.method_88();
        this.method_59();
    }

    @:allow(code) function method_46(param1:Int) {
        if (this.var_205.check_Effects(Class_797) != null) {
            return;
        }
        var _loc2_ = this.var_37.moveSelected;
        var _loc3_ = "move";
        if (this.var_37.transformed) {
            _loc3_ = "tmove";
            _loc2_ = this.var_37.tmoveSelected;
        }
        if (_loc2_ == param1) {
            return;
        }
        if (this.var_37.transformed) {
            this.var_37.tmoveSelected = param1;
        }
        else {
            this.var_37.moveSelected = param1;
        }
        this.gfx_BG.Attacks.hl.gotoAndStop(param1);
        this.method_30();
        if (this.var_205 != null) {
            this.var_205.reset_Attack();
        }
    }

    @:allow(code) function method_30() {
        var _loc1_ = this.var_37.moveSelected;
        var _loc2_ = "move";
        if (this.var_37.transformed) {
            _loc2_ = "tmove";
            _loc1_ = this.var_37.tmoveSelected;
        }
        var _loc3_:Int = (this.var_37 : ASAny)[_loc2_ + _loc1_];
        this.gfx_BG.Attacks.Attack_description.gotoAndStop(_loc3_);
    }

    @:allow(code) function method_59() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_ = this.var_37.moveSelected;
        var _loc4_ = "move";
        if (this.var_37.transformed) {
            _loc4_ = "tmove";
            _loc3_ = this.var_37.tmoveSelected;
        }
        var _loc5_:GfxMovieClip = this.gfx_BG.Attacks.hl.gotoAndStop(_loc3_);
        var _loc6_ = 1;
        while (_loc6_ <= 4) {
            _loc1_ = (this.var_37 : ASAny)[_loc4_ + _loc6_];
            _loc2_ = this.gfx_BG.Attacks["Attack_" + _loc6_];
            if (_loc1_ == 0) {
                _loc2_.gotoAndStop("empty");
            }
            else {
                _loc2_.gotoAndStop(_loc1_);
            }
            _loc6_++;
        }
        this.method_30();
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (this.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
            if (Std.is(param1.target, DisplayObject)) {
                _loc2_ = ASCompat.dynamicAs(param1.target, DisplayObject);
                if (this.gfx_BG.done_butt.contains(_loc2_)) {
                    this.method_95();
                    return true;
                }
                return this.method_64(_loc2_.name);
            }
            return false;
        }
        this.method_33();
        return false;
    }

    @:allow(code) function method_64(param1:String):Bool {
        var _loc2_:Array<ASAny> = (cast param1.split("_"));
        if (_loc2_[0] != "Attack") {
            return false;
        }
        var _loc3_:Int = _loc2_[1];
        if (_loc3_ == 0) {
            return false;
        }
        this.method_46(_loc3_);
        return true;
    }

    @:allow(code) function method_88() {
        var _loc1_:GfxMovieClip = this.gfx_BG.block_current;
        _loc1_.visible = false;
        this.var_565 = new Class_8(this.var_37, _loc1_);
        this.gfx_BG.upgrade_butt.alpha = 0.4;
        var _loc2_ = this.var_37.level + 1;
        _loc2_ *= 5;
        this.gfx_BG.yourMoney.text = "" + this.currentProfile.money;
        this.gfx_BG.upgrade_butt.upgradeCost.text = "" + _loc2_;
        if (this.var_565.method_125()) {
            if (_loc2_ > this.currentProfile.money) {
                return;
            }
            this.gfx_BG.upgrade_butt.alpha = 1;
        }
    }

    @:allow(code) override function back_Pressed() {
        if (this.var_450 != null) {
            this.method_33();
        }
    }

    @:allow(code) function method_95() {
        this.method_33();
    }

    @:allow(code) function method_33(param1:Bool = false):Bool {
        this.var_450.method_358(this.var_205);
        send_Msg("remove_Overlay");
        return false;
    }
}

