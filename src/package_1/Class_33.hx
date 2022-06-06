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
import code.Class_878;
import code.Class_9;


class Class_33 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_235 = 55;

    static inline final const_226 = 100;

    static inline final const_251 = 15;

    static inline final const_332 = 1;

    var var_49:GfxMovieClip;

    public function new(param1:Class_875) {
        super(param1);
        this.var_49 = new Movie_Scene_Level_3_Youngster();
        my_Parent.gfx_BG.addChild(this.var_49);
    }

    override public function get_Total_Waves():Int {
        return 4;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_251));
                var_11 = 18;
            }
            else if (var_5 >= 1 && var_5 <= 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52));
                var_11 = 18;
            }
            else if (var_5 == 5) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_226, 5), 1.1);
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 2) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_235, 5), 1.1);
                var_11 = 18;
            }
            else if (var_5 >= 1 && var_5 <= 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52));
                var_11 = 18;
            }
            else if (var_5 == 5) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_251, 5), 1.1);
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 3) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_52, 5), 1.1);
                var_11 = 18;
            }
            else if (var_5 >= 1 && var_5 <= 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52));
                var_11 = 18;
            }
            else if (var_5 == 5) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_52, 5), 1.1);
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 4) {
            if (var_5 >= 0 && var_5 <= 9) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_52, Class_33.const_226));
                var_11 = 18;
            }
            else if (var_5 == 10) {
                my_Parent.add_Enemy_Poke(method_1(Class_33.const_332), 1.2);
                var_6 == 5;
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_33.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_33.const_251) {
                if (param3 == 0) {
                    param3 = Std.int(4 + Math.random() * 2);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_39;
                    _loc4_.move1 = Class_9.var_45;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ej";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_43;
                    _loc4_.move1 = Class_9.var_104;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ex";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Caterpie" && _loc4_.name != "Weedle") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_33.const_235) {
                _loc4_.num = Class_13.const_28;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(3 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                _loc4_.var_19 = "ew";
                if (_loc4_.level == 5) {
                    _loc4_.move2 = Class_9.var_102;
                    _loc4_.var_13 = 2;
                }
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else {
                _loc4_.num = Class_13.const_29;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(2 + Math.random() * 4);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.move2 = Class_9.var_70;
                _loc4_.var_13 = 2;
                _loc4_.var_19 = "ep";
                if (_loc4_.level >= 4) {
                    _loc4_.move3 = Class_9.var_96;
                    _loc4_.var_13 = 3;
                }
                if (_loc4_.name != "Rattata") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_33.const_332) {
            _loc4_.var_19 = "pje";
            _loc4_.num = Class_13.const_29;
            Class_13.method_2(_loc4_);
            _loc4_.level = 12;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.move2 = Class_9.var_70;
            _loc4_.var_13 = 2;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Rattata") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_40 = 0;
        _loc4_.var_23 *= 2;
        _loc4_.var_16 *= 12;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

