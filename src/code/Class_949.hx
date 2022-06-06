package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.easing.*;
import flash.display.DisplayObject;

import flash.events.MouseEvent;
import flash.media.Sound;
import package_1.*;

class Class_949 extends Class_875 {


    @:allow(code) var var_161:Int = 0;

    public function new(param1:Class_878, param2:_Obj) {
        this.set_Party(param1);
        this.var_161 = this.method_287();
        super(param1, param2);
        gfx_UI.Pokeball.visible = false;
        gfx_UI.potion.visible = false;
    }

    @:allow(code) function method_287():Int {
        return 120;
    }

    public function set_Party(param1:Class_878) {
        var _loc2_:ASAny = null;
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_77;
        Class_13.method_2(_loc2_);
        _loc2_.level = 9;
        _loc2_.move1 = Class_9.var_222;
        _loc2_.move2 = Class_9.var_88;
        _loc2_.move3 = Class_9.var_164;
        _loc2_.var_13 = 3;
        _loc2_.var_35 = 1;
        _loc2_.moveSelected = 1;
        _loc2_.var_27 = 0;
        param1.partyList = new Vector<Class_6>();
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_78;
        Class_13.method_2(_loc2_);
        _loc2_.level = 9;
        _loc2_.move1 = Class_9.var_164;
        _loc2_.move2 = Class_9.var_88;
        _loc2_.move3 = Class_9.var_412;
        _loc2_.move4 = Class_9.var_262;
        _loc2_.var_13 = 4;
        _loc2_.var_35 = 2;
        _loc2_.moveSelected = 1;
        _loc2_.var_27 = 0;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_12;
        Class_13.method_2(_loc2_);
        _loc2_.level = 9;
        _loc2_.move1 = Class_9.var_45;
        _loc2_.move2 = Class_9.var_88;
        _loc2_.move3 = Class_9.var_113;
        _loc2_.move4 = Class_9.var_141;
        _loc2_.var_13 = 4;
        _loc2_.var_35 = 3;
        _loc2_.moveSelected = 1;
        _loc2_.var_27 = 0;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_28;
        Class_13.method_2(_loc2_);
        _loc2_.level = 9;
        _loc2_.move1 = Class_9.var_45;
        _loc2_.move2 = Class_9.var_102;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 4;
        _loc2_.moveSelected = 1;
        _loc2_.var_27 = 0;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_30;
        Class_13.method_2(_loc2_);
        _loc2_.level = 9;
        _loc2_.move1 = Class_9.var_89;
        _loc2_.move2 = Class_9.var_190;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 5;
        _loc2_.moveSelected = 1;
        _loc2_.var_27 = 0;
        param1.partyList.push(_loc2_);
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_46;
        Class_13.method_2(_loc2_);
        _loc2_.level = 9;
        _loc2_.move1 = Class_9.var_100;
        _loc2_.move2 = Class_9.var_133;
        _loc2_.var_13 = 2;
        _loc2_.var_35 = 5;
        _loc2_.moveSelected = 1;
        _loc2_.var_27 = 0;
        param1.partyList.push(_loc2_);
    }

    override public function update_Wave_Info(param1:Int, param2:Int) {
        gfx_UI.waveInfo.text = "Energy: " + this.var_161;
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        super.start_Level(param1, false, param3);
        if (param1 && !param2) {
            _loc4_ = this.method_243();
            _loc5_ = this.method_334();
            _loc6_ = new Class_1104(this, _loc5_);
            _loc7_ = new Class_1104(this, _loc4_);
            method_10(_loc6_, 5);
            method_10(_loc7_, 1);
        }
    }

    function method_334():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_30;
        Class_13.method_2(_loc1_);
        _loc1_.level = 12;
        _loc1_.move1 = Class_9.var_190;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_426():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_39;
        Class_13.method_2(_loc1_);
        _loc1_.level = 4;
        _loc1_.move1 = Class_9.var_160;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_243():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_12;
        Class_13.method_2(_loc1_);
        _loc1_.level = 9;
        _loc1_.move1 = Class_9.var_541;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    @:allow(code) override function check_For_End_Of_Game():Bool {
        var _loc1_:ASAny = null;
        if (method_115()) {
            _loc1_ = i_Win();
        }
        else if (this.var_161 == 0) {
            _loc1_ = this.get_Lost_Popup();
        }
        else if (var_6 != null && var_79 != null && true) {
            var_6.wave_Gone();
        }
        if (_loc1_) {
            add_Popup(_loc1_);
            return true;
        }
        return false;
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 2;
    }

    override function unlock_Next_Level() {
        if (currentProfile.clevelCompleted < this.get_Level_Num()) {
            currentProfile.clevelCompleted = this.get_Level_Num();
            currentProfile.inventory.push(Class_13.const_197);
        }
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Challenge_Level_2();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1067(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_65(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_Challenge_2());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1068(this);
    }

    override public function get_Back_Screen():_Obj {
        return new Class_900(currentProfile, my_Parent);
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        if (var_127 != null) {
            return var_127.mouse_Down(param1);
        }
        if (!var_449) {
            return false;
        }
        if (gfx_UI.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
            _loc4_ = 1;
            while (_loc4_ <= 6) {
                _loc3_ = (gfx_UI : ASAny)["block_" + _loc4_];
                if (_loc3_.contains(ASCompat.dynamicAs(param1.target, DisplayObject))) {
                    if (_loc3_.currentFrame != 1) {
                        return false;
                    }
                    if (_loc3_.bg.currentFrame == 1) {
                        if (this.var_161 < 20) {
                            return false;
                        }
                        this.method_366(param1, _loc4_ - 1);
                        this.var_161 -= 20;
                        this.update_Wave_Info(0, 0);
                    }
                    else if (_loc3_.bg.currentFrame == 2) {
                        this.method_253(this.method_276(currentProfile.partyList[_loc4_ - 1]));
                    }
                    return false;
                }
                _loc4_++;
            }
            if (Std.is(param1.target, GfxMovieClip)) {
                _loc5_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
                if (!this.check_Mouse_Down_Pokeball(param1, _loc5_)) {
                    if (!this.check_Mouse_Down_Speed(_loc5_)) {
                        if (!method_81(_loc5_)) {
                            if (!check_Mouse_Down_Zoom(_loc5_)) {
                                if (!method_94(_loc5_)) {
                                    this.check_Mouse_Down_Potion(param1, _loc5_);
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        gfx_BG.startDrag(false, var_316);
        return false;
    }

    @:allow(code) override function check_Mouse_Down_Pokeball(param1:MouseEvent, param2:GfxMovieClip):Bool {
        return false;
    }

    @:allow(code) override function check_Mouse_Down_Potion(param1:MouseEvent, param2:GfxMovieClip):Bool {
        return false;
    }

    @:allow(code) override function check_Mouse_Down_Speed(param1:GfxMovieClip):Bool {
        return false;
    }

    public function method_253(param1:Poke) {
        method_14();
        method_72();
        var _loc2_ = new Class_905(param1, currentProfile, my_Parent);
        _loc2_.var_450 = this;
        send_Msg(["overlay_Screen", _loc2_]);
    }

    public function method_358(param1:Poke) {
        reset_Poke();
        var_6.unpause_Wave();
        method_20();
    }

    public function method_366(param1:MouseEvent, param2:Int) {
        var_622 = param2;
        var _loc3_ = currentProfile.partyList[param2];
        _loc3_.method_154();
        _loc3_.var_298 = -1;
        _loc3_.transformed = false;
        _loc3_ = this.add_Bonuses(_loc3_);
        add_Enemy_Poke(_loc3_, 1, var_562);
        currentProfile.fightList.push(_loc3_);
        reset_Poke();
    }

    @:allow(code) function add_Bonuses(param1:Class_6):Class_6 {
        return param1;
    }

    public function method_276(param1:Class_6):Poke {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < var_79.length) {
            _loc2_ = var_79[_loc3_];
            if (_loc2_.myProfile == param1) {
                return _loc2_;
            }
            _loc3_++;
        }
        return null;
    }

    override public function remove_Enemy(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < var_79.length) {
            _loc2_ = var_79[_loc3_];
            if (_loc2_ == param1) {
                gfx_BG.removeChild(param1);
                var_79.splice(_loc3_, 1);
                this.reset_Attacker(param1);
                return;
            }
            _loc3_++;
        }
        trace("ERROR-> screen_LEVEL -> remove_Enemy, should always be an enemy to remove");
    }

    @:allow(code) function reset_Attacker(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < currentProfile.fightList.length) {
            _loc2_ = currentProfile.fightList[_loc3_];
            if (_loc2_ == param1.myProfile) {
                currentProfile.fightList.splice(_loc3_, 1);
                break;
            }
            _loc3_++;
        }
        reset_Poke();
    }
}

