package package_1
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import code.Class_13;
import code.Class_6;
import code.Class_875;
import code.Class_9;


class Class_43 extends Class_7 {


    static inline final const_12 = 1;

    static inline final const_16 = 2;

    static inline final const_31 = 3;

    var var_525:GfxMovieClip;

    public function new(param1:Class_875) {
        super(param1);
        this.var_525 = new Movie_Scene_Level_5_Brock();
        my_Parent.gfx_BG.addChild(this.var_525);
    }

    override public function get_Total_Waves():Int {
        return 10;
    }

    override public function do_Wave() {
        var _loc1_:ASAny = null;
        if (var_6 >= 1 && var_6 <= 9) {
            _loc1_ = "p";
            if (var_6 == 1 || var_6 == 3 || var_6 == 5 || var_6 == 7 || var_6 == 9) {
                _loc1_ = "2";
            }
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_43.const_12), 1, _loc1_);
                var_11 = 18;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_43.const_12), 1, _loc1_);
                var_11 = 18;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_43.const_31), 1, _loc1_);
                if (var_6 == 9) {
                    var_6 = -1;
                    var_5 = -1;
                    var_11 = -1;
                    return;
                }
                method_4(++var_6);
                var_5 = 0;
                var_11 = 300;
                return;
            }
        }
        else if (var_6 == 10) {
            if (var_5 == 0) {
                my_Parent.move_Screen(0, 0, 1);
                var_11 = 30;
            }
            else if (var_5 == 1) {
                my_Parent.gfx_BG.addChild(this.var_525);
                this.var_525.gotoAndStop(2);
                var_11 = 240;
            }
            else if (var_5 == 2) {
                my_Parent.gfx_UI.visible = true;
                this.var_525.gotoAndStop(3);
                my_Parent.shake = true;
                var_11 = 240;
            }
            else if (var_5 == 3) {
                this.var_525.gotoAndPlay(4);
                var_11 = 30;
            }
            else if (var_5 == 4) {
                my_Parent.shake = false;
                this.method_278();
                my_Parent.add_Enemy_Poke(method_1(Class_43.const_16));
                var_11 = 18;
            }
            else if (var_5 == 5) {
                my_Parent.add_Enemy_Poke(method_1(Class_43.const_16), 1, "2");
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    function method_278() {
        var _loc1_:ASAny = null;
        var _loc2_:ASAny = null;
        var _loc3_ = my_Parent.currentProfile;
        var _loc4_:Int = 0;
        while (_loc4_ < _loc3_.fightList.length) {
            _loc1_ = _loc3_.fightList[_loc4_];
            _loc2_ = my_Parent.get_Tower_By_Profile(_loc1_);
            my_Parent.return_Poke(_loc2_);
            this.remove_From_Party(_loc1_);
            _loc4_ = --_loc4_ + 1;
        }
        my_Parent.reset_Poke();
    }

    function remove_From_Party(param1:Class_6) {
        var _loc2_:ASAny = null;
        var _loc3_ = my_Parent.currentProfile;
        var _loc4_ = 0;
        while (_loc4_ < _loc3_.partyList.length) {
            _loc2_ = _loc3_.partyList[_loc4_];
            if (param1 == _loc2_) {
                _loc3_.partyList[_loc4_] = null;
                return;
            }
            _loc4_++;
        }
        trace("wave_Level_5_Pewter_Gym, this should not happen!");
    }

    override public function wave_Gone() {
        if (var_6 == -1) {
            my_Parent.gfx_UI.visible = false;
            var_6 = 10;
            method_4(var_6);
            var_5 = 0;
            var_11 = 1;
        }
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_43.const_16) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.level = 14;
            _loc4_.move1 = Class_9.var_80;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Onix") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_43.const_31) {
            _loc4_.num = Class_13.const_31;
            Class_13.method_2(_loc4_);
            _loc4_.level = 11;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Sandshrew") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_43.const_12) {
            _loc4_.num = Class_13.const_12;
            Class_13.method_2(_loc4_);
            _loc4_.level = 12;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Geodude") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_40 = 0;
        _loc4_.var_23 *= 2;
        _loc4_.var_16 *= 4;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

