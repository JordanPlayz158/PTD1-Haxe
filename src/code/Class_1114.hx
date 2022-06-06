package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_65;
import package_1.Class_7;

class Class_1114 extends Class_949 {


    @:allow(code) var var_667:Float = 1;

    @:allow(code) var var_649:Float = 1;

    @:allow(code) var var_713:Float = 1;

    @:allow(code) var var_663:Float = 1;

    @:allow(code) var var_334:Bool = false;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_153:Bool = false;

    @:allow(code) var var_656:String;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        this.var_153 = true;
        var_161 = 500;
        update_Wave_Info(0, 0);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
        gfx_UI.ui_speed.visible = false;
        gfx_UI.speed_hl.visible = false;
    }

    override public function set_Party(param1:Class_878) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < param1.partyList.length) {
            _loc2_ = param1.partyList[_loc3_];
            _loc3_++;
        }
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true);
        if (param1) {
            method_10(new Class_1104(this, this.method_22(Class_13.const_29)), 2);
            method_10(new Class_1104(this, this.method_22(Class_13.const_36)), 3);
            method_10(new Class_1104(this, this.method_22(Class_13.const_73)), 4);
            method_10(new Class_1104(this, this.method_22(Class_13.const_53)), 5);
            method_10(new Class_1104(this, this.method_22(Class_13.const_41)), 6);
            method_10(new Class_1104(this, this.method_22(Class_13.const_88)), 7);
            method_10(new Class_1104(this, this.method_22(Class_13.const_79)), 8);
            method_10(new Class_1104(this, this.method_22(Class_13.const_81)), 9);
            method_10(new Class_1104(this, this.method_22(Class_13.const_76)), 17);
            method_10(new Class_1104(this, this.method_22(Class_13.const_56)), 11);
            method_10(new Class_1104(this, this.method_22(Class_13.const_63)), 12);
            method_10(new Class_1104(this, this.method_22(Class_13.const_127)), 10);
            method_10(new Class_1104(this, this.method_22(Class_13.const_49)), 13);
            method_10(new Class_1104(this, this.method_22(Class_13.const_55)), 14);
        }
    }

    @:allow(code) override function add_Bonuses(param1:Class_6):Class_6 {
        param1.mod_Speed = this.var_667;
        param1.var_655 = this.var_649;
        param1.mod_Defense = this.var_713;
        param1.mod_Special_Defense = this.var_663;
        if (param1.level > 70) {
            this.var_153 = false;
        }
        return param1;
    }

    @:allow(code) override function reset_Attacker(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < var_168.length) {
            _loc2_ = var_168[_loc3_];
            if (_loc2_.var_265 == true) {
                if (!ASCompat.stringAsBool(this.var_656)) {
                    this.var_656 = _loc2_.gfx.name;
                }
                if (_loc2_.gfx.name == "candy_1") {
                    if (this.var_649 != 3) {
                        this.var_649 = 3;
                        var_161 += 100;
                        update_Wave_Info(0, 0);
                    }
                }
                else if (_loc2_.gfx.name == "candy_2") {
                    if (this.var_667 != 1.5) {
                        this.var_667 = 1.5;
                        var_161 += 200;
                        update_Wave_Info(0, 0);
                    }
                }
                else if (_loc2_.gfx.name == "candy_3") {
                    if (this.var_663 != 1.5) {
                        this.var_663 = 1.5;
                        var_161 += 300;
                        update_Wave_Info(0, 0);
                    }
                }
            }
            _loc3_++;
        }
        super.reset_Attacker(param1);
    }

    function method_22(param1:Int):Class_6 {
        var _loc2_ = new Class_6();
        if (param1 == Class_13.const_29) {
            _loc2_.num = Class_13.const_29;
            Class_13.method_2(_loc2_);
            _loc2_.level = 60;
            _loc2_.move1 = Class_9.var_399;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_36) {
            _loc2_.num = Class_13.const_36;
            Class_13.method_2(_loc2_);
            _loc2_.level = 60;
            _loc2_.move1 = Class_9.var_191;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_53) {
            _loc2_.num = Class_13.const_53;
            Class_13.method_2(_loc2_);
            _loc2_.level = 65;
            _loc2_.move1 = Class_9.var_151;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_73) {
            _loc2_.num = Class_13.const_73;
            Class_13.method_2(_loc2_);
            _loc2_.level = 65;
            _loc2_.move1 = Class_9.var_93;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_41) {
            _loc2_.num = Class_13.const_41;
            Class_13.method_2(_loc2_);
            _loc2_.level = 65;
            _loc2_.move1 = Class_9.var_47;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_81) {
            _loc2_.num = Class_13.const_81;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_518;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_88) {
            _loc2_.num = Class_13.const_88;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_532;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_76) {
            _loc2_.num = Class_13.const_76;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_340;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_79) {
            _loc2_.num = Class_13.const_79;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_329;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_63) {
            _loc2_.num = Class_13.const_63;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_405;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_56) {
            _loc2_.num = Class_13.const_56;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_74;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_49) {
            _loc2_.num = Class_13.const_49;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_126;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_55) {
            _loc2_.num = Class_13.const_55;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_163;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_127) {
            _loc2_.num = Class_13.const_127;
            Class_13.method_2(_loc2_);
            _loc2_.level = 68;
            _loc2_.move1 = Class_9.var_251;
            _loc2_.move2 = Class_9.var_272;
            _loc2_.move3 = Class_9.var_339;
            _loc2_.move4 = Class_9.var_245;
            _loc2_.var_13 = 4;
            _loc2_.myAI = new Class_92();
        }
        _loc2_.var_40 = 0;
        _loc2_.var_35 = -1;
        _loc2_.moveSelected = 1;
        return _loc2_;
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 26;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_26();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1070(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 4;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_65(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_26());
    }

    override function get_Win_Popup():Class_877 {
        if (this.method_240()) {
            show_Achievement_Popup(6, -1, new Class_1069(this));
            return null;
        }
        return new Class_1069(this);
    }

    public function method_240():Bool {
        if (!this.var_153) {
            return false;
        }
        if (this.var_656 != "candy_4") {
            return false;
        }
        return true;
    }

    override public function get_Back_Screen():_Obj {
        return new Class_883(currentProfile, my_Parent);
    }

    @:allow(code) override function number_Of_Paths():Int {
        return 4;
    }

    @:allow(code) override function check_Mouse_Down_Zoom(param1:GfxMovieClip):Bool {
        if (param1 == gfx_UI.zoom_1) {
            gfx_BG.scaleX = gfx_BG.scaleY = 1;
            gfx_UI.zoom_hl.gotoAndStop(1);
            return true;
        }
        if (param1 == gfx_UI.zoom_2) {
            gfx_BG.scaleX = gfx_BG.scaleY = 0.75;
            gfx_UI.zoom_hl.gotoAndStop(2);
            return true;
        }
        if (param1 == gfx_UI.zoom_3) {
            gfx_BG.scaleX = gfx_BG.scaleY = 0.5;
            gfx_UI.zoom_hl.gotoAndStop(3);
            return true;
        }
        if (param1 == gfx_UI.zoom_4) {
            gfx_BG.scaleX = gfx_BG.scaleY = 0.25;
            gfx_UI.zoom_hl.gotoAndStop(4);
            return true;
        }
        return false;
    }

    override function unlock_Next_Level() {
        if (currentProfile.levelUnlocked < this.get_Level_Num()) {
            this.var_334 = true;
            currentProfile.levelUnlocked = this.get_Level_Num();
        }
    }
}

