package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.*;

class Class_952 extends Class_875 {


    var var_672:Bool = false;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_878, param2:_Obj) {
        this.set_Party(param1);
        if (param1.clevelCompleted >= this.get_Level_Num()) {
            this.var_672 = true;
        }
        super(param1, param2);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
    }

    public function set_Party(param1:Class_878) {
        var _loc2_:ASAny = null;
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_57;
        Class_13.method_2(_loc2_);
        _loc2_.level = 47;
        _loc2_.move1 = Class_9.var_73;
        _loc2_.move2 = Class_9.var_62;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 1;
        _loc2_.moveSelected = 1;
        param1.partyList = new Vector<Class_6>();
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_121;
        Class_13.method_2(_loc2_);
        _loc2_.level = 47;
        _loc2_.move1 = Class_9.var_74;
        _loc2_.move2 = Class_9.var_380;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 2;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_69;
        Class_13.method_2(_loc2_);
        _loc2_.level = 47;
        _loc2_.move1 = Class_9.var_366;
        _loc2_.move2 = Class_9.var_220;
        _loc2_.move3 = Class_9.var_146;
        _loc2_.var_13 = 3;
        _loc2_.var_35 = 3;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_96;
        Class_13.method_2(_loc2_);
        _loc2_.level = 47;
        _loc2_.move1 = Class_9.var_309;
        _loc2_.move2 = Class_9.var_226;
        _loc2_.move3 = Class_9.var_57;
        _loc2_.var_13 = 3;
        _loc2_.var_35 = 4;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_110;
        Class_13.method_2(_loc2_);
        _loc2_.level = 47;
        _loc2_.move1 = Class_9.var_209;
        _loc2_.move2 = Class_9.var_117;
        _loc2_.move3 = Class_9.var_192;
        _loc2_.var_13 = 3;
        _loc2_.var_35 = 5;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_54;
        Class_13.method_2(_loc2_);
        _loc2_.level = 47;
        _loc2_.move1 = Class_9.var_138;
        _loc2_.move2 = Class_9.var_159;
        _loc2_.move3 = Class_9.var_268;
        _loc2_.var_13 = 3;
        _loc2_.var_35 = 6;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true, param3);
        if (param1) {
            method_10(new Class_1104(this, this.method_399()), 17);
            method_10(new Class_1104(this, this.method_267()), 18);
        }
    }

    function method_399():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_104;
        Class_13.method_2(_loc1_);
        _loc1_.level = 40;
        _loc1_.move1 = Class_9.var_211;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_267():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_36;
        Class_13.method_2(_loc1_);
        _loc1_.level = 40;
        _loc1_.move1 = Class_9.var_228;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_398():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_183;
        Class_13.method_2(_loc1_);
        _loc1_.level = 40;
        _loc1_.move1 = Class_9.var_550;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 6;
    }

    override function unlock_Next_Level() {
        var _loc1_:ASAny = null;
        if (currentProfile.clevelCompleted < this.get_Level_Num()) {
            currentProfile.clevelCompleted = this.get_Level_Num();
            _loc1_ = new Class_6();
            _loc1_.num = Class_13.const_64;
            Class_13.method_2(_loc1_);
            _loc1_.level = 1;
            _loc1_.move1 = Class_9.var_45;
            _loc1_.var_13 = 1;
            _loc1_.moveSelected = 1;
            _loc1_.shiny = 1;
            // ++0
            _loc1_.var_35 = 1;
            _loc1_.var_40 = 0;
            _loc1_.var_179 = _loc1_.level;
            _loc1_.var_175 = _loc1_.num;
            _loc1_.saveInfo.var_212 = true;
            _loc1_.saveInfo.var_154 = 2;
            if (_loc1_.name != "Magnemite") {
                end_hack();
                return;
            }
            _loc1_.val = new Class_11();
            _loc1_.val.reset(_loc1_);
            currentProfile.PokeList.push(_loc1_);
        }
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_20();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1076(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 10;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_59(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_20());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1075(this, this.var_672);
    }

    override public function get_Back_Screen():_Obj {
        return new Class_900(currentProfile, my_Parent);
    }
}

