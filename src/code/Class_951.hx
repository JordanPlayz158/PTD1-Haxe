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

class Class_951 extends Class_875 {


    var var_672:Bool = false;

    public function new(param1:Class_878, param2:_Obj) {
        this.set_Party(param1);
        if (param1.clevelCompleted >= this.get_Level_Num()) {
            this.var_672 = true;
        }
        super(param1, param2);
    }

    public function set_Party(param1:Class_878) {
        var _loc2_:ASAny = null;
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_29;
        Class_13.method_2(_loc2_);
        _loc2_.level = 6;
        _loc2_.move1 = Class_9.var_70;
        _loc2_.move2 = Class_9.var_96;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 1;
        _loc2_.moveSelected = 1;
        param1.partyList = new Vector<Class_6>();
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_35;
        Class_13.method_2(_loc2_);
        _loc2_.level = 6;
        _loc2_.move1 = Class_9.var_80;
        _loc2_.move2 = Class_9.var_160;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 2;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_28;
        Class_13.method_2(_loc2_);
        _loc2_.level = 6;
        _loc2_.move1 = Class_9.var_45;
        _loc2_.move2 = Class_9.var_102;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 3;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_33;
        Class_13.method_2(_loc2_);
        _loc2_.level = 6;
        _loc2_.move1 = Class_9.var_80;
        _loc2_.move2 = Class_9.var_160;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 4;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_46;
        Class_13.method_2(_loc2_);
        _loc2_.level = 6;
        _loc2_.move1 = Class_9.var_100;
        _loc2_.move2 = Class_9.var_133;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 5;
        _loc2_.moveSelected = 1;
        param1.partyList.push(_loc2_);
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 1;
    }

    override function unlock_Next_Level() {
        var _loc1_:ASAny = null;
        if (currentProfile.clevelCompleted < this.get_Level_Num()) {
            currentProfile.clevelCompleted = this.get_Level_Num();
            _loc1_ = new Class_6();
            _loc1_.num = Class_13.const_12;
            Class_13.method_2(_loc1_);
            _loc1_.level = 1;
            _loc1_.move1 = Class_9.var_45;
            _loc1_.move2 = Class_9.var_88;
            _loc1_.var_13 = 2;
            _loc1_.moveSelected = 1;
            _loc1_.shiny = 1;
            // ++0
            _loc1_.var_35 = 1;
            _loc1_.var_40 = 0;
            _loc1_.var_179 = _loc1_.level;
            _loc1_.var_175 = _loc1_.num;
            _loc1_.saveInfo.var_212 = true;
            _loc1_.saveInfo.var_154 = 1;
            if (_loc1_.name != "Geodude") {
                end_hack();
                return;
            }
            _loc1_.val = new Class_11();
            _loc1_.val.reset(_loc1_);
            currentProfile.PokeList.push(_loc1_);
            if (currentProfile.clevel1CodeUsed.length <= 1) {
                currentProfile.clevel1CodeUsed = "1";
            }
            else {
                currentProfile.clevel1CodeUsed = "1" + currentProfile.clevel1CodeUsed.substring(1, currentProfile.clevel1CodeUsed.length);
            }
            currentProfile.save_Profile();
        }
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Challenge_Level_1();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1074(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_67(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_5());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1073(this, this.var_672);
    }

    override public function get_Back_Screen():_Obj {
        return new Class_900(currentProfile, my_Parent);
    }
}

