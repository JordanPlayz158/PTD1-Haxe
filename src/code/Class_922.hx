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

class Class_922 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_685:Vector<Class_6>;

    public function new(param1:Class_878, param2:_Obj) {
        this.set_Party(param1);
        super(param1, param2);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
    }

    override public function add_To_Party(param1:Class_6) {
    }

    override public function end_Level(param1:_Obj = null) {
        currentProfile.partyList = this.var_685;
        super.end_Level(param1);
    }

    public function set_Party(param1:Class_878) {
        this.var_685 = param1.partyList;
        var _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_208;
        Class_13.method_2(_loc2_);
        _loc2_.level = 35;
        _loc2_.move1 = Class_9.var_611;
        _loc2_.move2 = Class_9.var_619;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 1;
        _loc2_.moveSelected = 1;
        param1.partyList = new Vector<Class_6>();
        param1.partyList.push(_loc2_);
    }

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_Num():Int {
        return 29;
    }

    override public function Poke_Bonus_Level():Int {
        return 75;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_29();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1017(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_39(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_28());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1016(this);
    }
}

