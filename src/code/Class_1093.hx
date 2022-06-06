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
import package_1.Class_85;
import package_1.Class_86;
import package_1.Class_87;
import package_1.Class_88;
import package_1.Class_89;

class Class_1093 extends Class_877 {


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
        this.method_127();
        var _loc1_ = Std.int(Math.random() * 100);
        if (_loc1_ <= 50) {
            this.var_87 = Class_13.const_19;
            gfx.gotoAndPlay("randomZubat");
        }
        else if (_loc1_ <= 76) {
            this.var_87 = Class_13.const_12;
            gfx.gotoAndPlay("randomGeodude");
        }
        else if (_loc1_ <= 84) {
            this.var_87 = Class_13.const_16;
            gfx.gotoAndPlay("randomOnix");
        }
        else if (_loc1_ <= 92) {
            this.var_87 = Class_13.const_23;
            gfx.gotoAndPlay("randomVoltorb");
        }
        else if (_loc1_ <= 100) {
            this.var_87 = Class_13.const_21;
            gfx.gotoAndPlay("randomMachop");
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
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc2_) {
                return false;
            }
            if (_loc2_.name == "butt_next") {
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

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_17_Space_7();
    }

    @:allow(code) override function remove_Me() {
        var _loc1_:ASAny = null;
        super.remove_Me();
        this.var_3.gfx_BG.visible = true;
        this.var_3.gfx_UI.visible = true;
        if (this.var_87 == Class_13.const_19) {
            _loc1_ = new Class_86(this.var_3);
        }
        else if (this.var_87 == Class_13.const_12) {
            _loc1_ = new Class_89(this.var_3);
        }
        else if (this.var_87 == Class_13.const_16) {
            _loc1_ = new Class_85(this.var_3);
        }
        else if (this.var_87 == Class_13.const_23) {
            _loc1_ = new Class_88(this.var_3);
        }
        else if (this.var_87 == Class_13.const_21) {
            _loc1_ = new Class_87(this.var_3);
        }
        this.var_3.start_Level(true, false, _loc1_);
    }
}

