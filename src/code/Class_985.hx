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
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;
import package_1.Class_23;
import package_1.Class_69;
import package_1.Class_70;
import package_1.Class_71;
import package_1.Class_72;

class Class_985 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_87:Int = 0;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        if (this.var_3 != null) {
            this.var_3.gfx_BG.visible = false;
            this.var_3.gfx_UI.visible = false;
        }
        gfx.butt_skip.visible = false;
        if (ASCompat.stringAsBool(this.var_3.currentProfile.myAvatarGender)) {
            this.var_21 = this.var_3.currentProfile.myAvatarGender;
            this.var_22 = this.var_3.currentProfile.myAvatarStyle;
        }
        gfx.addEventListener(Event.FRAME_CONSTRUCTED, this.method_8);
        var _loc1_ = this.var_3.currentProfile.haveThisExtraInfo("sh1");
        var _loc2_ = this.var_3.currentProfile.haveThisExtraInfo("2");
        if (!_loc1_ || _loc2_) {
            gfx.quest.visible = false;
        }
        else {
            gfx.gotoAndStop("shinyQuest");
        }
    }

    function method_263() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Team_Rocket_Music();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_127() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Mt_Moon_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_205() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Ash_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_201() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Route10Music();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            this.method_127();
        }
        else if (false) {
            method_5("041");
        }
        else if (false) {
            this.method_201();
        }
        return false;
    }

    @:allow(code) function method_8(param1:Event) {
        var _loc2_ = this.var_21 + "_" + this.var_22;
        if (false && gfx.yourAvatar.currentLabel != _loc2_) {
            gfx.yourAvatar.gotoAndStop(_loc2_);
        }
        else if (false && gfx.yourAvatarWalk.currentLabel != _loc2_) {
            gfx.yourAvatarWalk.gotoAndPlay(_loc2_);
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc2_) {
                return false;
            }
            if (_loc2_.name == "butt_next") {
                if (false) {
                    this.var_3.end_Level();
                    return true;
                }
                if (false) {
                    _loc3_ = Std.int(Math.random() * 100);
                    if (_loc3_ <= 50) {
                        this.var_87 = Class_13.const_19;
                        gfx.gotoAndPlay("randomZubat");
                    }
                    else if (_loc3_ <= 76) {
                        this.var_87 = Class_13.const_12;
                        gfx.gotoAndPlay("randomGeodude");
                    }
                    else if (_loc3_ <= 84) {
                        this.var_87 = Class_13.const_16;
                        gfx.gotoAndPlay("randomOnix");
                    }
                    else if (_loc3_ <= 92) {
                        this.var_87 = Class_13.const_23;
                        gfx.gotoAndPlay("randomVoltorb");
                    }
                    else if (_loc3_ <= 100) {
                        this.var_87 = Class_13.const_21;
                        gfx.gotoAndPlay("randomMachop");
                    }
                    return true;
                }
                if (false) {
                    if (this.method_238()) {
                        gfx.gotoAndStop("gotShinyHunt");
                    }
                    else {
                        gfx.gotoAndStop("noShinyHunt");
                    }
                    return true;
                }
                if (false) {
                    gfx.gotoAndPlay(1);
                    return true;
                }
                if (false) {
                    this.var_3.method_24(this);
                    this.var_3.add_Popup(new Class_984(this.var_3));
                    return true;
                }
                if (false) {
                    _loc4_ = Std.downcast(this.var_3, Class_954);
                    _loc5_ = new Class_956(this.var_3.currentProfile, this.var_3.my_Parent, _loc4_.var_68);
                    send_Msg(["change_Screen", _loc5_]);
                    return true;
                }
                gfx.play();
                return true;
            }
            if (_loc2_.name == "btn_left") {
                gfx.play();
                return true;
            }
            if (_loc2_.name == "btn_right") {
                gfx.gotoAndPlay("goRight");
                return true;
            }
            if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) function method_238():Bool {
        var _loc2_:ASAny = null;
        var _loc3_ = false;
        var _loc4_ = false;
        var _loc5_ = 0;
        if (this.var_3.currentProfile.method_146()) {
            return false;
        }
        var _loc1_ = ASCompat.toInt(send_Msg("getPikachuCount"));
        if (_loc1_ < 10) {
            return false;
        }
        _loc5_ = 0;
        while (_loc5_ < this.var_3.currentProfile.partyList.length) {
            _loc2_ = this.var_3.currentProfile.partyList[_loc5_];
            if (_loc2_ && _loc2_.level >= 42 && _loc2_.num == Class_13.const_30 && _loc2_.myTag != "h") {
                _loc3_ = true;
                break;
            }
            _loc5_++;
        }
        if (!_loc3_) {
            return false;
        }
        _loc5_ = 0;
        while (_loc5_ < this.var_3.currentProfile.partyList.length) {
            _loc2_ = this.var_3.currentProfile.partyList[_loc5_];
            if (_loc2_ && _loc2_.level >= 42 && _loc2_.num == Class_13.const_73 && _loc2_.myTag != "h") {
                _loc4_ = true;
                break;
            }
            _loc5_++;
        }
        if (!_loc4_) {
            return false;
        }
        if (this.var_3.currentProfile.extraInfo == null) {
            this.var_3.currentProfile.extraInfo = [];
        }
        if (!this.var_3.currentProfile.haveThisExtraInfo("2")) {
            this.var_3.currentProfile.extraInfo.push("2");
        }
        var _loc6_:Class_6;
        (_loc6_ = new Class_6()).num = Class_13.const_23;
        Class_13.method_2(_loc6_);
        _loc6_.level = 5;
        _loc6_.move1 = Class_9.var_45;
        _loc6_.var_13 = 1;
        _loc6_.moveSelected = 1;
        _loc6_.shiny = 1;
        _loc6_.var_35 = ++this.var_3.currentProfile.latestID;
        _loc6_.var_40 = 0;
        _loc6_.var_179 = _loc6_.level;
        _loc6_.var_175 = _loc6_.num;
        _loc6_.val = new Class_11();
        _loc6_.saveInfo.var_212 = true;
        _loc6_.saveInfo.var_154 = 6;
        _loc6_.val.reset(_loc6_);
        this.var_3.currentProfile.PokeList.push(_loc6_);
        return true;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_17_Space_1();
    }

    @:allow(code) override function remove_Me() {
        var _loc1_:ASAny = null;
        super.remove_Me();
        this.var_3.gfx_BG.visible = true;
        this.var_3.gfx_UI.visible = true;
        if (this.var_87 == Class_13.const_19) {
            _loc1_ = new Class_23(this.var_3);
        }
        else if (this.var_87 == Class_13.const_12) {
            _loc1_ = new Class_71(this.var_3);
        }
        else if (this.var_87 == Class_13.const_16) {
            _loc1_ = new Class_70(this.var_3);
        }
        else if (this.var_87 == Class_13.const_23) {
            _loc1_ = new Class_72(this.var_3);
        }
        else if (this.var_87 == Class_13.const_21) {
            _loc1_ = new Class_69(this.var_3);
        }
        this.var_3.start_Level(true, false, _loc1_);
    }
}

