package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.display.DisplayObject;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Point;

class Class_893 extends _Obj {


    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_229:Sprite;

    @:allow(code) var var_127:_Obj;

    @:allow(code) var var_131:Bool = false;

    @:allow(code) var var_119:Point;

    @:allow(code) var var_34:Int = 0;

    var var_336:Vector<Class_6>;

    var var_313:Class_6;

    var var_105:GfxMovieClip;

    var var_307:Int = 0;

    var usingPhone:Bool = false;

    var var_678:Bool = false;

    var var_603:Bool = false;

    public function new(param1:Int, param2:Class_878, param3:_Obj, param4:Bool = true, param5:Int = -1, param6:Bool = false) {
        super(param3);
        this.usingPhone = send_Msg("usingPhone");
        this.var_307 = param5;
        this.var_34 = param1;
        this.currentProfile = param2;
        this.var_678 = param4;
        this.var_603 = param6;
        this.init();
    }

    @:allow(code) function init() {
        this.currentProfile.reset_Fight_List();
        if (this.var_307 == -1) {
            this.var_307 = 1;
        }
        this.gfx_BG = new Gfx_Screen_Party_Select_V2();
        addChild(this.gfx_BG);
        this.method_28();
        if (this.var_34 == 1 && this.var_678 && this.currentProfile.levelUnlocked < 1) {
            this.add_Popup(new Class_902(this), true);
        }
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (this.var_127 != null) {
            return this.var_127.run(param1);
        }
        return false;
    }

    @:allow(code) function add_Popup(param1:_Obj, param2:Bool = false) {
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

    @:allow(code) function method_28() {
        var _loc1_:ASAny = null;
        var _loc2_:ASAny = null;
        var _loc3_ = true;
        var _loc4_ = 0;
        while (_loc4_ < this.currentProfile.partyList.length) {
            _loc1_ = Std.downcast(this.gfx_BG.getChildByName("block_" + (_loc4_ + 1)), GfxMovieClip);
            _loc2_ = this.currentProfile.partyList[_loc4_];
            if (_loc2_) {
                this.method_45(_loc2_, _loc1_);
                _loc3_ = false;
            }
            else {
                _loc1_.gotoAndStop("empty");
                _loc1_.upgrade_bg.visible = false;
            }
            _loc1_.tapIn.visible = false;
            _loc4_++;
        }
        if (_loc3_) {
            this.gfx_BG.start_butt.alpha = 0.3;
        }
        else {
            this.gfx_BG.start_butt.alpha = 1;
        }
        this.method_61();
    }

    @:allow(code) function method_61() {
        var _loc3_:ASAny = null;
        var _loc1_:ASAny = 0;
        var _loc2_:ASAny = 0;
        if (this.var_229 != null) {
            _loc1_ = this.var_229.x;
            _loc2_ = this.var_229.y;
            this.gfx_BG.bg_your_Pokemon.removeChild(this.var_229);
        }
        this.var_229 = new Sprite();
        this.gfx_BG.bg_your_Pokemon.addChild(this.var_229);
        this.var_229.x = _loc1_;
        this.var_229.y = _loc2_;
        var _loc5_:ASAny = 114;
        var _loc6_:ASAny = 40;
        var _loc10_ = 1;
        this.method_239();
        this.gfx_BG.arrow_left.visible = true;
        this.gfx_BG.arrow_right.visible = true;
        if (this.var_336.length <= 21) {
            this.gfx_BG.arrow_left.visible = false;
            this.gfx_BG.arrow_right.visible = false;
            this.var_307 = 1;
        }
        else if (this.var_307 == 1) {
            this.gfx_BG.arrow_left.visible = false;
        }
        else if (this.var_307 * 21 >= this.var_336.length) {
            this.gfx_BG.arrow_right.visible = false;
        }
        var _loc12_:Int;
        var _loc11_:Int;
        if ((_loc12_ = (_loc11_ = (this.var_307 - 1) * 21) + 21) > this.var_336.length) {
            _loc12_ = this.var_336.length;
        }
        var _loc13_ = _loc11_;
        while (_loc13_ < _loc12_) {
            _loc3_ = new Butt_Poke();
            this.var_229.addChild(_loc3_);
            _loc3_.name = "block_storage_" + _loc13_;
            _loc3_.x = _loc5_;
            _loc3_.y = _loc6_;
            if (_loc10_ == 7) {
                _loc5_ = 114;
                _loc6_ += 80;
                _loc10_ = 0;
            }
            else {
                _loc5_ += 87;
            }
            this.method_45(this.var_336[_loc13_], _loc3_, false);
            _loc10_++;
            _loc13_++;
        }
    }

    function method_239() {
        var _loc1_:ASAny = null;
        this.var_336 = new Vector<Class_6>();
        var _loc2_ = 0;
        while (_loc2_ < this.currentProfile.PokeList.length) {
            _loc1_ = this.currentProfile.PokeList[_loc2_];
            if (!this.method_350(_loc1_)) {
                this.var_336.push(_loc1_);
            }
            _loc2_++;
        }
    }

    @:allow(code) function method_282(param1:Class_6) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.currentProfile.partyList.length) {
            _loc2_ = this.currentProfile.partyList[_loc3_];
            if (_loc2_ == param1) {
                this.currentProfile.partyList[_loc3_] = null;
                return;
            }
            _loc3_++;
        }
    }

    @:allow(code) function method_350(param1:Class_6):Bool {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < this.currentProfile.partyList.length) {
            _loc2_ = this.currentProfile.partyList[_loc3_];
            if (_loc2_ == param1) {
                return true;
            }
            _loc3_++;
        }
        return false;
    }

    @:allow(code) function method_45(param1:Class_6, param2:GfxMovieClip, param3:Bool = true) {
        var _loc5_ = 0;
        param2.gotoAndStop(1);
        var _loc4_ = "";
        if (param1.shiny == 2) {
            _loc4_ = "ss";
        }
        else if (param1.shiny != 0) {
            _loc4_ = "s";
        }
        param2.Poke_actual.gotoAndStop(_loc4_ + param1.num);
        param2.Poke_Level.text = "Lvl" + param1.level;
        if (this.method_63(param1)) {
            param2.upgrade_bg.visible = true;
            _loc5_ = (_loc5_ = param1.level + 1) * 5;
            if (this.currentProfile.money < _loc5_) {
                param2.upgrade_bg.gotoAndStop(1);
            }
        }
        else {
            param2.upgrade_bg.visible = false;
        }
        param2.tapIn.gotoAndStop(1);
        param2.tapIn.visible = false;
    }

    @:allow(code) function method_63(param1:Class_6):Bool {
        return param1.method_114();
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_ = 0;
        var _loc6_ = 0;
        var _loc7_:ASAny = null;
        if (this.var_127 != null) {
            return this.var_127.mouse_Up(param1);
        }
        if (this.var_105 != null) {
            this.method_282(this.var_313);
            this.method_28();
            _loc4_ = 0;
            while (_loc4_ < this.currentProfile.partyList.length) {
                _loc2_ = Std.downcast(this.gfx_BG.getChildByName("block_" + (_loc4_ + 1)), GfxMovieClip);
                if (_loc2_.hitTestPoint(this.var_105.x, this.var_105.y)) {
                    this.method_363(_loc4_, this.var_313);
                    break;
                }
                _loc4_++;
            }
            if ((_loc6_ = (_loc5_ = (this.var_307 - 1) * 21) + 21) > this.var_336.length) {
                _loc6_ = this.var_336.length;
            }
            _loc4_ = _loc5_;
            while (_loc4_ < _loc6_) {
                _loc2_ = Std.downcast(this.var_229.getChildByName("block_storage_" + _loc4_), GfxMovieClip);
                if (_loc2_.hitTestPoint(this.var_105.x, this.var_105.y)) {
                    this.method_252(_loc4_, this.var_313);
                    break;
                }
                _loc4_++;
            }
            this.var_105.stopDrag();
            removeChild(this.var_105);
            this.var_105 = null;
            this.var_313 = null;
            return true;
        }
        if (this.var_313 != null) {
            _loc7_ = new Class_903(this.var_34, this.currentProfile, this.var_313, my_Parent, this.var_307, this.var_603);
            this.var_313 = null;
            send_Msg(["change_Screen", _loc7_]);
            return true;
        }
        return false;
    }

    @:allow(code) override function mouse_Move(param1:MouseEvent = null):Bool {
        var _loc2_ = Math.NaN;
        var _loc3_ = Math.NaN;
        var _loc4_ = 0;
        if (this.var_313 != null && this.var_105 == null) {
            _loc2_ = Math.abs(param1.stageY - this.var_119.y);
            _loc3_ = Math.abs(param1.stageX - this.var_119.x);
            if (_loc2_ > 40 || _loc3_ > 40) {
                this.var_105 = new Butt_Poke();
                addChild(this.var_105);
                this.method_45(this.var_313, this.var_105, false);
                this.var_105.x = param1.stageX;
                if (this.usingPhone) {
                    _loc4_ = 70;
                }
                this.var_105.y = param1.stageY - _loc4_;
                this.var_105.startDrag(false);
            }
        }
        return true;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc7_ = 0;
        var _loc8_ = 0;
        var _loc9_:ASAny = null;
        this.var_105 = null;
        this.var_119 = new Point(param1.stageX, param1.stageY);
        this.var_313 = null;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (!Std.is(param1.target, DisplayObject)) {
            return false;
        }
        var _loc5_ = 1;
        while (_loc5_ <= 6) {
            _loc2_ = Std.downcast(this.gfx_BG.getChildByName("block_" + _loc5_), GfxMovieClip);
            if (_loc2_.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
                this.var_313 = this.currentProfile.partyList[_loc5_ - 1];
                break;
            }
            _loc5_++;
        }
        if (this.var_313 == null) {
            if ((_loc8_ = (_loc7_ = (this.var_307 - 1) * 21) + 21) > this.var_336.length) {
                _loc8_ = this.var_336.length;
            }
            _loc5_ = _loc7_;
            while (_loc5_ < _loc8_) {
                _loc2_ = Std.downcast(this.var_229.getChildByName("block_storage_" + _loc5_), GfxMovieClip);
                if (_loc2_.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
                    this.var_313 = this.var_336[_loc5_];
                    break;
                }
                _loc5_++;
            }
        }
        if (this.var_313 != null) {
            return true;
        }
        if (Std.is(param1.target, GfxMovieClip)) {
            _loc9_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc9_) {
                return false;
            }
            if (this.gfx_BG.start_butt.contains(_loc9_) && _loc9_.alpha == 1) {
                _loc6_ = this.method_110();
            }
            else {
                if (this.gfx_BG.back_butt.contains(_loc9_)) {
                    this.back_Pressed();
                    return true;
                }
                if (this.gfx_BG.arrow_right.visible && this.gfx_BG.butt_right.contains(_loc9_)) {
                    ++this.var_307;
                    this.method_28();
                    return true;
                }
                if (this.gfx_BG.arrow_left.visible && this.gfx_BG.butt_left.contains(_loc9_)) {
                    --this.var_307;
                    this.method_28();
                    return true;
                }
                if (this.gfx_BG.num_btn.contains(_loc9_)) {
                    this.method_321();
                    return true;
                }
                if (this.gfx_BG.name_btn.contains(_loc9_)) {
                    this.method_381();
                    return true;
                }
                if (this.gfx_BG.level_btn.contains(_loc9_)) {
                    this.method_266();
                    return true;
                }
            }
            if (_loc6_) {
                send_Msg(["change_Screen", _loc6_]);
                return true;
            }
            return false;
        }
        return false;
    }

    @:allow(code) function method_110():_Obj {
        var _loc1_:ASAny = null;
        if (this.var_603) {
            if (this.var_34 == 4) {
                _loc1_ = new Class_928(this.currentProfile, my_Parent);
            }
            else if (this.var_34 == 5) {
                _loc1_ = new Class_910(this.currentProfile, my_Parent);
            }
            return _loc1_;
        }
        if (this.var_34 == 1) {
            _loc1_ = new Class_948(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 2) {
            _loc1_ = new Class_947(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 3) {
            _loc1_ = new Class_916(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 4) {
            _loc1_ = new Class_913(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 5) {
            _loc1_ = new Class_926(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 6) {
            _loc1_ = new Class_908(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 7) {
            _loc1_ = new Class_937(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 8) {
            _loc1_ = new Class_930(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 9) {
            _loc1_ = new Class_907(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 10) {
            _loc1_ = new Class_933(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 11) {
            _loc1_ = new Class_941(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 12) {
            _loc1_ = new Class_931(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 13) {
            _loc1_ = new Class_927(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 14) {
            _loc1_ = new Class_911(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 15) {
            _loc1_ = new Class_914(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 16) {
            _loc1_ = new Class_921(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 17) {
            _loc1_ = new Class_906(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 18) {
            _loc1_ = new Class_920(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 19) {
            _loc1_ = new Class_919(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 20) {
            _loc1_ = new Class_943(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 21) {
            _loc1_ = new Class_915(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 22) {
            _loc1_ = new Class_939(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 23) {
            _loc1_ = new Class_925(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 24) {
            _loc1_ = new Class_929(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 25) {
            _loc1_ = new Class_945(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 26) {
            _loc1_ = new Class_1114(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 27) {
            _loc1_ = new Class_924(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 28) {
            _loc1_ = new Class_938(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 29) {
            _loc1_ = new Class_922(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 30) {
            _loc1_ = new Class_909(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 31) {
            _loc1_ = new Class_942(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 32) {
            _loc1_ = new Class_932(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 33) {
            _loc1_ = new Class_912(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 34) {
            _loc1_ = new Class_936(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 35) {
            _loc1_ = new Class_923(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 36) {
            _loc1_ = new Class_934(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 37) {
            _loc1_ = new Class_946(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 38) {
            _loc1_ = new Class_917(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 39) {
            _loc1_ = new Class_940(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 40) {
            _loc1_ = new Class_918(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 41) {
            _loc1_ = new Class_944(this.currentProfile, my_Parent);
        }
        else if (this.var_34 == 42) {
            _loc1_ = new Class_935(this.currentProfile, my_Parent);
        }
        return _loc1_;
    }

    @:allow(code) function method_429():Bool {
        if (this.gfx_BG.bg_your_Pokemon.hitTestPoint(this.var_119.x, this.var_119.y)) {
            return true;
        }
        return false;
    }

    function method_431(param1:GfxMovieClip):Class_6 {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc2_:Array<ASAny> = (cast param1.name.split("_"));
        if (_loc2_.length == 2) {
            _loc4_ = _loc2_[1];
            _loc3_ = this.currentProfile.partyList[_loc4_];
        }
        else {
            _loc4_ = _loc2_[2];
            _loc3_ = this.var_336[_loc4_];
        }
        return _loc3_;
    }

    @:allow(code) function method_363(param1:Int, param2:Class_6) {
        this.currentProfile.partyList[param1] = param2;
        this.method_28();
    }

    @:allow(code) function method_266() {
        var _loc2_:ASAny = null;
        var _loc1_:ASAny = [];
        var _loc3_ = 0;
        while (_loc3_ < this.currentProfile.PokeList.length) {
            _loc2_ = this.currentProfile.PokeList[_loc3_];
            _loc2_.saveInfo.var_401 = true;
            _loc1_.push({
                "who":_loc2_,
                "num":_loc2_.level
            });
            _loc3_++;
        }
        _loc1_.sortOn("num", 0 | 0);
        var _loc4_ = new Vector<Class_6>();
        var _loc5_ = 0;
        while (_loc5_ < _loc1_.length) {
            _loc4_.push(_loc1_[_loc5_].who);
            _loc5_++;
        }
        this.currentProfile.PokeList = _loc4_;
        this.method_28();
    }

    @:allow(code) function method_321() {
        var _loc2_:ASAny = null;
        var _loc1_:ASAny = [];
        var _loc3_ = 0;
        while (_loc3_ < this.currentProfile.PokeList.length) {
            _loc2_ = this.currentProfile.PokeList[_loc3_];
            _loc2_.saveInfo.var_401 = true;
            _loc1_.push({
                "who":_loc2_,
                "num":_loc2_.num
            });
            _loc3_++;
        }
        _loc1_.sortOn("num", ASCompat.ASArray.NUMERIC);
        var _loc4_ = new Vector<Class_6>();
        var _loc5_ = 0;
        while (_loc5_ < _loc1_.length) {
            _loc4_.push(_loc1_[_loc5_].who);
            _loc5_++;
        }
        this.currentProfile.PokeList = _loc4_;
        this.method_28();
    }

    @:allow(code) function method_381() {
        var _loc2_:ASAny = null;
        var _loc1_:ASAny = [];
        var _loc3_ = 0;
        while (_loc3_ < this.currentProfile.PokeList.length) {
            _loc2_ = this.currentProfile.PokeList[_loc3_];
            _loc2_.saveInfo.var_401 = true;
            _loc1_.push({
                "who":_loc2_,
                "name":_loc2_.name
            });
            _loc3_++;
        }
        _loc1_.sortOn("name");
        var _loc4_ = new Vector<Class_6>();
        var _loc5_ = 0;
        while (_loc5_ < _loc1_.length) {
            _loc4_.push(_loc1_[_loc5_].who);
            _loc5_++;
        }
        this.currentProfile.PokeList = _loc4_;
        this.method_28();
    }

    @:allow(code) function method_252(param1:Int, param2:Class_6) {
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        var _loc3_ = this.currentProfile.PokeList[param1];
        var _loc6_ = 0;
        while (_loc6_ < this.currentProfile.PokeList.length) {
            if ((_loc5_ = this.currentProfile.PokeList[_loc6_]) == param2) {
                _loc4_ = _loc6_;
                break;
            }
            _loc6_++;
        }
        this.currentProfile.PokeList[_loc4_] = _loc3_;
        this.currentProfile.PokeList[param1] = param2;
        _loc3_.saveInfo.var_401 = true;
        param2.saveInfo.var_401 = true;
        this.method_28();
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:ASAny = null;
        if (this.var_603) {
            _loc1_ = new Class_900(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 5) {
            _loc1_ = new Class_885(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 11) {
            _loc1_ = new Class_884(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 15) {
            _loc1_ = new Class_886(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 20) {
            _loc1_ = new Class_881(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 25) {
            _loc1_ = new Class_887(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 30) {
            _loc1_ = new Class_883(this.currentProfile, my_Parent);
        }
        else if (this.var_34 <= 36) {
            _loc1_ = new Class_882(this.currentProfile, my_Parent);
        }
        else {
            _loc1_ = new Class_888(this.currentProfile, my_Parent);
        }
        send_Msg(["change_Screen", _loc1_]);
    }
}

