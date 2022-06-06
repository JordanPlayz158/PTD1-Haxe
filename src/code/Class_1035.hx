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

class Class_1035 extends Class_877 {


    @:allow(code) var var_3:Class_875;

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
        if (this.var_3.currentProfile.var_123 < 12 && this.var_3.currentProfile.levelUnlocked < 12) {
            gfx.butt_skip.visible = false;
        }
    }

    function method_302() {
        var _loc3_:ASAny = null;
        SoundMixer.stopAll();
        var _loc1_:Sound = new CeruleanMusic();
        var _loc2_ = _loc1_.play(0, 10);
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_25);
            _loc2_.soundTransform = _loc3_;
        }
    }

    function method_193() {
        var _loc3_:ASAny = null;
        SoundMixer.stopAll();
        var _loc1_:Sound = new BillMusic();
        var _loc2_ = _loc1_.play(0, 10);
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_25);
            _loc2_.soundTransform = _loc3_;
        }
    }

    function method_361() {
        var _loc3_:ASAny = null;
        SoundMixer.stopAll();
        var _loc1_:Sound = new LastBattle();
        var _loc2_ = _loc1_.play(0, 10);
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_25);
            _loc2_.soundTransform = _loc3_;
        }
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            this.method_361();
        }
        else if (false) {
            method_5("150");
        }
        else if (false) {
            method_5("128");
        }
        else if (false) {
            method_5("006");
        }
        else if (false) {
            method_5("007");
        }
        else if (false) {
            this.method_302();
        }
        else if (false) {
            this.method_193();
        }
        return false;
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
            if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_12();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_BG.visible = true;
        this.var_3.gfx_UI.visible = true;
        this.var_3.start_Level();
    }
}

