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

class Class_984 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_669:String;

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
            method_5("095");
        }
        else if (false) {
            this.method_201();
        }
        return false;
    }

    @:allow(code) function method_8(param1:Event) {
        if (false && gfx.nicknameText.text == "") {
            gfx.nicknameText.text = this.var_669 + ", light up this cave with your Flash!";
        }
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
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
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
                    if (this.method_274()) {
                        gfx.gotoAndPlay("haveFlash");
                        return true;
                    }
                }
                else if (false) {
                    _loc3_ = [false, false, false, false, false, false, false, false];
                    _loc4_ = new Class_954(this.var_3.currentProfile, this.var_3.my_Parent, _loc3_);
                    send_Msg(["change_Screen", _loc4_]);
                    return true;
                }
                gfx.play();
                return true;
            }
            if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) function method_274():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        var _loc3_ = 0;
        var _loc4_ = 0;
        while (_loc4_ < this.var_3.currentProfile.partyList.length) {
            _loc1_ = this.var_3.currentProfile.partyList[_loc4_];
            if (_loc1_) {
                _loc3_ = 1;
                while (_loc3_ <= 4) {
                    _loc2_ = _loc1_["move" + _loc3_];
                    if (_loc2_ == Class_9.var_85) {
                        this.var_669 = _loc1_.var_301;
                        return true;
                    }
                    _loc3_++;
                }
            }
            _loc4_++;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_17();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_BG.visible = true;
        this.var_3.gfx_UI.visible = true;
        this.var_3.start_Level();
    }
}

