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

class Class_1008 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_917;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_917) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        SoundMixer.stopAll();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.method_182();
        if (!this.var_3.var_676) {
            gfx.actual.gotoAndStop(2);
        }
        else {
            this.method_322();
        }
        if (ASCompat.stringAsBool(this.var_3.currentProfile.myAvatarGender)) {
            this.var_21 = this.var_3.currentProfile.myAvatarGender;
            this.var_22 = this.var_3.currentProfile.myAvatarStyle;
        }
        gfx.actual.addEventListener(Event.FRAME_CONSTRUCTED, this.method_8);
    }

    @:allow(code) function method_8(param1:Event) {
        var _loc2_ = this.var_21 + "_" + this.var_22;
        if (gfx.actual.yourAvatar && gfx.actual.yourAvatar.currentLabel != _loc2_) {
            gfx.actual.yourAvatar.gotoAndStop(_loc2_);
        }
        else if (gfx.actual.yourAvatarWalk && gfx.actual.yourAvatarWalk.currentLabel != _loc2_) {
            gfx.actual.yourAvatarWalk.gotoAndPlay(_loc2_);
        }
    }

    function method_182() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Victory_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (param1.target == null || !Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_.name == "butt_next") {
            gfx.actual.play();
            return true;
        }
        if (_loc2_.name == "butt_end" || _loc2_.name == "butt_skip") {
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) function method_322() {
        var _loc1_ = this.var_3.currentProfile;
        if (_loc1_.extraInfo == null) {
            _loc1_.extraInfo = [];
        }
        var _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_144;
        Class_13.method_2(_loc2_);
        _loc2_.level = 1;
        _loc2_.move1 = Class_9.var_211;
        _loc2_.move2 = Class_9.var_443;
        _loc2_.var_13 = 2;
        _loc2_.moveSelected = 1;
        _loc2_.var_35 = ++_loc1_.latestID;
        _loc2_.var_40 = 0;
        _loc2_.var_179 = _loc2_.level;
        _loc2_.var_175 = _loc2_.num;
        _loc2_.shiny = this.method_54();
        var _loc3_ = ASCompat.toString(send_Msg("sponsor"));
        if (_loc3_ == "arc") {
            _loc2_.myTag = "h";
        }
        _loc2_.val = new Class_11();
        _loc2_.saveInfo.var_212 = true;
        _loc2_.saveInfo.var_154 = 300;
        this.method_50(_loc2_);
        _loc2_.val.reset(_loc2_);
        if (_loc2_.name != "Articuno") {
            return;
        }
        _loc1_.PokeList.push(_loc2_);
    }

    @:allow(code) function method_54():Int {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        var _loc3_ = 0;
        var _loc4_ = 0;
        while (_loc4_ < this.var_3.currentProfile.partyList.length) {
            _loc1_ = this.var_3.currentProfile.partyList[_loc4_];
            if (_loc1_) {
                if (_loc1_.shiny == 2) {
                    _loc3_++;
                }
                else if (_loc1_.shiny == 1) {
                    _loc2_++;
                }
            }
            _loc4_++;
        }
        if (_loc2_ == 6) {
            this.var_3.currentProfile.inventory.push(261);
            return 1;
        }
        if (_loc3_ == 6) {
            this.var_3.currentProfile.inventory.push(262);
            return 2;
        }
        this.var_3.currentProfile.inventory.push(26);
        return 0;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Level_38_Win();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.end_Level();
    }

    @:allow(code) function method_50(param1:Class_6) {
        if (param1.shiny == 2) {
            param1.saveInfo.var_154 = 855;
        }
        else if (param1.shiny == 1) {
            param1.saveInfo.var_154 = 854;
        }
        else {
            param1.saveInfo.var_154 = 857;
        }
    }
}

