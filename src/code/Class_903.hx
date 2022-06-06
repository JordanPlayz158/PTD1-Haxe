package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.media.SoundTransform;

class Class_903 extends _Obj {


    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_37:Class_6;

    @:allow(code) var var_127:Class_904;

    @:allow(code) var var_105:Bool = false;

    @:allow(code) var var_131:Bool = false;

    @:allow(code) var var_119:Point;

    @:allow(code) var var_248:Rectangle;

    @:allow(code) var var_34:Int = 0;

    @:allow(code) var var_674:Int = 0;

    var var_603:Bool = false;

    public function new(param1:Int, param2:Class_878, param3:Class_6, param4:_Obj, param5:Int = -1, param6:Bool = false) {
        super(param4);
        this.var_34 = param1;
        this.currentProfile = param2;
        this.var_37 = param3;
        this.var_674 = param5;
        this.var_603 = param6;
        this.init();
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Poke_Check_Big();
        addChild(this.gfx_BG);
        this.set_Profile();
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (this.var_127 != null) {
            return this.var_127.run(param1);
        }
        return false;
    }

    @:allow(code) function add_Popup(param1:Class_904, param2:Bool = false) {
        if (!param2) {
            this.gfx_BG.visible = false;
        }
        this.var_127 = param1;
        addChild(this.var_127);
    }

    @:allow(code) function method_24() {
        if (this.var_127 == null) {
            trace("error: should always be a popup removed!, screen_Party_Select");
            return;
        }
        removeChild(this.var_127);
        this.var_127 = null;
        this.gfx_BG.visible = true;
    }

    @:allow(code) function set_Profile() {
        this.gfx_BG.Poke_selected.visible = true;
        this.gfx_BG.Poke_name.visible = true;
        this.gfx_BG.Poke_level.visible = true;
        this.gfx_BG.money_you.visible = true;
        this.gfx_BG.upgrade_butt.visible = true;
        this.gfx_BG.expBar.visible = true;
        this.gfx_BG.exp_txt.visible = true;
        this.gfx_BG.change_move.visible = true;
        var _loc1_ = "";
        this.var_37.transformed = false;
        Class_13.method_2(this.var_37);
        if (this.var_37.shiny == 2) {
            _loc1_ = "ss";
        }
        else if (this.var_37.shiny != 0) {
            _loc1_ = "s";
        }
        this.gfx_BG.Poke_selected.gotoAndStop(_loc1_ + this.var_37.num);
        this.gfx_BG.Poke_name.text = this.var_37.name;
        this.gfx_BG.Poke_level.text = "Lvl " + this.var_37.level;
        var _loc2_ = this.var_37.level + 1;
        _loc2_ *= 5;
        this.gfx_BG.money_you.text = "" + this.currentProfile.money;
        this.gfx_BG.upgrade_butt.upgradeCost.text = "" + _loc2_;
        var _loc3_ = this.var_37.method_93();
        this.gfx_BG.expBar.actual.scaleX = _loc3_;
        if (this.method_63(this.var_37) && _loc2_ <= this.currentProfile.money) {
            this.gfx_BG.upgrade_butt.alpha = 1;
        }
        else {
            this.gfx_BG.upgrade_butt.alpha = 0.4;
        }
        this.method_59();
        if (this.currentProfile.inventory.length == 0) {
            this.gfx_BG.item_butt.alpha = 0.2;
        }
        if (this.currentProfile.money < 1000) {
            this.gfx_BG.relearn_butt.alpha = 0.2;
        }
        if (this.currentProfile.money < 10000) {
            this.gfx_BG.tm_butt.alpha = 0.2;
        }
    }

    @:allow(code) function method_59() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_:GfxMovieClip = this.gfx_BG.change_move.hl.gotoAndStop(this.var_37.moveSelected);
        var _loc4_ = 1;
        while (_loc4_ <= 4) {
            _loc1_ = (this.var_37 : ASAny)["move" + _loc4_];
            _loc2_ = this.gfx_BG.change_move["Attack_" + _loc4_];
            if (_loc1_ == 0) {
                _loc2_.gotoAndStop("empty");
            }
            else {
                _loc2_.gotoAndStop(_loc1_);
            }
            _loc4_++;
        }
        this.method_30();
    }

    @:allow(code) function method_30() {
        var _loc1_:Int = (this.var_37 : ASAny)["move" + this.var_37.moveSelected];
        this.gfx_BG.change_move.Attack_description.gotoAndStop(_loc1_);
    }

    @:allow(code) function method_63(param1:Class_6):Bool {
        return param1.method_114();
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        if (this.var_127 != null) {
            return this.var_127.mouse_Up(param1);
        }
        return false;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc2_) {
                return false;
            }
            if (this.gfx_BG.upgrade_butt.contains(_loc2_)) {
                this.method_343();
                return true;
            }
            if (this.gfx_BG.back_butt.contains(_loc2_)) {
                this.back_Pressed();
                return true;
            }
            if (this.gfx_BG.release_butt.contains(_loc2_)) {
                this.add_Popup(new Class_1106(this, this.var_37), true);
                return true;
            }
            if (this.gfx_BG.tm_butt.contains(_loc2_) && this.gfx_BG.tm_butt.alpha == 1) {
                this.add_Popup(new Class_1111(this, this.var_37, this.currentProfile), true);
                return true;
            }
            if (this.gfx_BG.relearn_butt.contains(_loc2_) && this.gfx_BG.relearn_butt.alpha == 1) {
                this.add_Popup(new Class_1109(this, this.var_37, this.currentProfile), true);
                return true;
            }
            if (this.gfx_BG.item_butt.contains(_loc2_) && this.gfx_BG.item_butt.alpha == 1) {
                this.add_Popup(new Class_1112(this, this.var_37, this.currentProfile), true);
                return true;
            }
            return this.method_64(_loc2_.name);
        }
        return false;
    }

    @:allow(code) function method_343():Bool {
        if (this.gfx_BG.upgrade_butt.alpha != 1) {
            return false;
        }
        this.gfx_BG.upgrade_butt.alpha = 0.4;
        var _loc1_ = this.var_37.level + 1;
        _loc1_ *= 5;
        this.currentProfile.money -= _loc1_;
        this.var_37.level_Up();
        this.method_323();
        return true;
    }

    @:allow(code) function method_323() {
        var _loc1_ = Class_10.method_131(this.var_37.num);
        if (_loc1_ <= this.var_37.level) {
            this.add_Popup(new Class_1107(this, this.var_37));
            return;
        }
        this.check_New_Move();
    }

    @:allow(code) function check_New_Move(param1:Int = 0) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        if (param1 == 0) {
            param1 = Class_12.method_170(this.var_37);
        }
        if (param1 != 0) {
            _loc2_ = new LevelUpSound();
            _loc3_ = _loc2_.play(0, 1);
            if (_loc3_) {
                _loc5_ = new SoundTransform(Class_1.var_194);
                _loc3_.soundTransform = _loc5_;
            }
            _loc4_ = Class_9.method_21(param1, null).var_7;
            if (!this.var_37.add_Attack(param1)) {
                trace("can\'t fit Attack");
                this.add_Popup(new Class_1108(this, this.var_37, _loc4_, param1));
                return;
            }
            this.add_Popup(new Class_1113(this, this.var_37, _loc4_));
            return;
        }
        this.set_Profile();
    }

    public function show_Replace_Move(param1:Int) {
        this.add_Popup(new Class_1110(this, this.var_37, param1));
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

    @:allow(code) function method_46(param1:Int) {
        if (this.var_37.moveSelected == param1) {
            return;
        }
        this.var_37.saveInfo.needMoveSelected = true;
        this.var_37.moveSelected = param1;
        this.gfx_BG.change_move.hl.gotoAndStop(param1);
        this.method_30();
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_893(this.var_34, this.currentProfile, my_Parent, false, this.var_674, this.var_603);
        send_Msg(["change_Screen", _loc1_]);
    }
}

