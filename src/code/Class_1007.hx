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

class Class_1007 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

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
        if (this.var_3.currentProfile.var_123 < 38 && this.var_3.currentProfile.levelUnlocked < 38) {
            gfx.butt_skip.visible = false;
        }
        if (ASCompat.stringAsBool(this.var_3.currentProfile.myAvatarGender)) {
            this.var_21 = this.var_3.currentProfile.myAvatarGender;
            this.var_22 = this.var_3.currentProfile.myAvatarStyle;
        }
        gfx.addEventListener(Event.FRAME_CONSTRUCTED, this.method_8);
    }

    function method_222() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new OceanMusic();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            this.method_222();
        }
        else if (false) {
            method_5("144");
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
        var _loc3_:ASAny = null;
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc2_) {
                return false;
            }
            _loc3_ = "null";
            if (_loc2_.name == "butt_next") {
                if (_loc3_ == "descision") {
                    gfx.gotoAndPlay(this.method_52());
                    return true;
                }
                if (_loc3_ == "d1" || _loc3_ == "d2" || _loc3_ == "d3" || _loc3_ == "d4" || _loc3_ == "d5") {
                    gfx.gotoAndPlay("end_descision");
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

    @:allow(code) function method_52():String {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        var _loc3_ = 0;
        var _loc4_ = ASCompat.toString(send_Msg("sponsor"));
        var _loc5_ = 0;
        while (_loc5_ < this.var_3.currentProfile.partyList.length) {
            _loc1_ = this.var_3.currentProfile.partyList[_loc5_];
            if (_loc1_) {
                if (!(_loc4_ != "arc" && _loc1_.myTag == "h")) {
                    if (_loc1_.is_Type(Class_13.const_18)) {
                        _loc2_++;
                        if (_loc1_.level == 100) {
                            _loc3_++;
                        }
                    }
                }
            }
            _loc5_++;
        }
        if (_loc2_ == 0) {
            return "d1";
        }
        if (_loc3_ == 0 && _loc2_ < 2) {
            return "d2";
        }
        if (_loc3_ == 0) {
            return "d3";
        }
        if (_loc3_ < 6) {
            return "d4";
        }
        if (_loc3_ == 6) {
            return "d5";
        }
        return "d1";
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_38();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_BG.visible = true;
        this.var_3.gfx_UI.visible = true;
        this.var_3.start_Level();
    }
}

