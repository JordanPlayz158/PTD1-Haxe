package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.Tween;
import fl.transitions.TweenEvent;
import fl.transitions.easing.Regular;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_895 extends _Obj {


    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_205:Int = 0;

    @:allow(code) var var_662:Int = 0;

    var var_602:Tween;

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
        this.init();
    }

    function method_165() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Oak_Lab();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_263() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Team_Rocket_Music();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_5(param1:String) {
        var _loc2_ = "cry_" + param1;
        var _loc3_ = Type.resolveClass(_loc2_) ;
        var _loc4_:Sound;
        var _loc5_ = (_loc4_ = Type.createInstance(_loc3_, [])).play(0, 1);
        var _loc6_ = new SoundTransform(Class_1.var_194);
        _loc5_.soundTransform = _loc6_;
    }

    @:allow(code) function init() {
        this.gfx_BG = new Movie_Scene_Tutorial_1();
        addChild(this.gfx_BG);
        this.method_165();
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (this.gfx_BG.currentLabel == "volt_show") {
            this.method_5("100");
        }
        return false;
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        if (param1.target == null || !Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (_loc2_.name == "butt_next") {
            if (this.gfx_BG.currentLabel == "before_explosion") {
                this.method_280();
            }
            else if (this.gfx_BG.currentLabel == "ready_To_Tween") {
                this.method_385(null);
            }
            else {
                if (this.gfx_BG.currentLabel == "last_screen") {
                    this.method_225();
                    return true;
                }
                if (this.gfx_BG.currentLabel == "done_choosing") {
                    this.method_263();
                }
                else if (this.gfx_BG.currentLabel == "drowsee_next") {
                    this.method_5("096");
                }
                else if (this.gfx_BG.currentLabel == "show_drowsee") {
                    this.method_5("097");
                }
                else if (this.gfx_BG.currentLabel == "volt_done") {
                    this.method_165();
                }
            }
            this.gfx_BG.play();
        }
        else if (_loc2_.name == "butt_yes") {
            if (this.gfx_BG.currentLabel == "choose_red") {
                this.var_662 = Class_878.const_3;
                this.gfx_BG.gotoAndStop("before_explosion");
                return true;
            }
            if (this.gfx_BG.currentLabel == "choose_blue") {
                this.var_662 = Class_878.const_4;
                this.gfx_BG.gotoAndStop("before_explosion");
                return true;
            }
            this.gfx_BG.gotoAndStop("done_choosing");
        }
        else if (_loc2_.name == "butt_no") {
            if (this.gfx_BG.currentLabel == "choose_red" || this.gfx_BG.currentLabel == "choose_blue") {
                this.gfx_BG.gotoAndStop("choose_version");
                return true;
            }
            this.gfx_BG.gotoAndStop("choose_Pokemon");
        }
        else if (_loc2_.name == "butt_bulbasaur") {
            this.var_205 = Class_13.const_60;
            this.gfx_BG.gotoAndStop("choose_bulbasaur");
        }
        else if (_loc2_.name == "butt_charmander") {
            this.var_205 = Class_13.const_46;
            this.gfx_BG.gotoAndStop("choose_charmander");
        }
        else if (_loc2_.name == "butt_squirtle") {
            this.var_205 = Class_13.const_75;
            this.gfx_BG.gotoAndStop("choose_squirtle");
        }
        else if (_loc2_.name == "butt_red") {
            this.gfx_BG.gotoAndStop("choose_red");
        }
        else if (_loc2_.name == "butt_blue") {
            this.gfx_BG.gotoAndStop("choose_blue");
        }
        return false;
    }

    function method_225() {
        this.currentProfile.currentVersion = this.var_662;
        var _loc1_ = new Class_6();
        _loc1_.num = this.var_205;
        _loc1_.level = 5;
        _loc1_.var_13 = 2;
        if (this.var_205 == Class_13.const_60) {
            _loc1_.move1 = Class_9.var_45;
            _loc1_.move2 = Class_9.var_89;
        }
        else if (this.var_205 == Class_13.const_46) {
            _loc1_.move1 = Class_9.var_100;
            _loc1_.move2 = Class_9.var_89;
        }
        else if (this.var_205 == Class_13.const_75) {
            _loc1_.move1 = Class_9.var_45;
            _loc1_.move2 = Class_9.var_70;
        }
        _loc1_.var_40 = 0;
        _loc1_.moveSelected = 1;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.val = new Class_11();
        _loc1_.val.reset(_loc1_);
        Class_13.method_2(_loc1_);
        _loc1_.saveInfo.var_212 = true;
        if (_loc1_.name != "Bulbasaur" && _loc1_.name != "Charmander" && _loc1_.name != "Squirtle") {
            return;
        }
        this.currentProfile.PokeList.push(_loc1_);
        send_Msg(["change_Screen", new Class_880(this.currentProfile, my_Parent)]);
    }

    function method_280() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new SuperEffectiveSound();
        _loc1_.play();
        this.var_602 = new Tween(this.gfx_BG, "y", Regular.easeOut, this.gfx_BG.y, this.gfx_BG.y, 2, true);
        this.var_602.start();
    }

    function method_385(param1:TweenEvent) {
        this.var_602 = new Tween(this.gfx_BG, "y", Regular.easeOut, this.gfx_BG.y, -200, 4, true);
        this.var_602.start();
    }
}

