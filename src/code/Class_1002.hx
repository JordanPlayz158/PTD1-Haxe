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

class Class_1002 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    function method_419() {
        var _loc2_:ASAny = null;
        var _loc3_ = false;
        var _loc4_ = 0;
        while (_loc4_ < this.var_3.currentProfile.partyList.length) {
            _loc2_ = this.var_3.currentProfile.partyList[_loc4_];
            if (_loc2_) {
                if (_loc2_.num == Class_13.const_158) {
                    this.var_3.currentProfile.partyList[_loc4_] = null;
                    _loc3_ = true;
                }
                else if (_loc2_.num == Class_13.const_170) {
                    this.var_3.currentProfile.partyList[_loc4_] = null;
                    _loc3_ = true;
                }
                else if (_loc2_.num == Class_13.const_165) {
                    this.var_3.currentProfile.partyList[_loc4_] = null;
                    _loc3_ = true;
                }
            }
            _loc4_++;
        }
        if (_loc3_) {
            this.var_3.reset_Poke();
        }
    }

    @:allow(code) override function init() {
        super.init();
        if (this.var_3 != null) {
            this.var_3.gfx_BG.visible = false;
            this.var_3.gfx_UI.visible = false;
        }
        if (this.var_3.currentProfile.var_123 < 15 && this.var_3.currentProfile.levelUnlocked < 15) {
            gfx.butt_skip.visible = false;
        }
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

    function method_181() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new SsanneMusic();
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

    function method_217() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new GymMusic();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            this.method_263();
        }
        else if (false) {
            this.method_181();
        }
        else if (false) {
            this.method_205();
        }
        else if (false) {
            this.method_217();
        }
        else if (false) {
            method_5("150");
        }
        else if (false) {
            method_5("065");
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
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc2_) {
                return false;
            }
            if (_loc2_.name == "butt_next") {
                if (false) {
                    if (ASCompat.stringAsBool(this.var_21)) {
                        gfx.gotoAndPlay("haveAvatar");
                        return true;
                    }
                }
                gfx.play();
                return true;
            }
            if (_loc2_.name == "butt_girl") {
                this.var_21 = "girl";
                this.var_3.currentProfile.myAvatarGender = this.var_21;
                this.var_3.currentProfile.myAvatarStyle = 1;
                gfx.play();
            }
            else if (_loc2_.name == "butt_boy") {
                this.var_21 = "boy";
                this.var_3.currentProfile.myAvatarGender = this.var_21;
                this.var_3.currentProfile.myAvatarStyle = 1;
                gfx.play();
            }
            else if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_15();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_BG.visible = true;
        this.var_3.gfx_UI.visible = true;
        this.var_3.start_Level();
    }
}

