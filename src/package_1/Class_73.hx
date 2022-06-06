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

class Class_73 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_81 = 1;

    static inline final const_210 = 2;

    static inline final const_214 = 3;

    static inline final const_217 = 4;

    static inline final const_88 = 5;

    static inline final const_79 = 6;

    static inline final const_16 = 7;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 4;
    }

    override public function do_Wave() {
        var _loc2_ = 0;
        var _loc3_ = 0;
        if (var_6 == 1) {
            _loc2_ = 300;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_214));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_210), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_217), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_81), 1, "4");
            }
        }
        else if (var_6 == 2) {
            _loc2_ = 400;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_88));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_79), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_16), 2, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_81), 1, "4");
            }
        }
        else if (var_6 == 3) {
            _loc2_ = 300;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_214));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_210), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_217), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_81), 1, "4");
            }
        }
        else {
            if (var_6 != 4) {
                return;
            }
            _loc2_ = 400;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_88));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_79), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_16), 2, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_73.const_81), 1, "4");
                var_6 = 5;
                wave_Finished();
                return;
            }
        }
        method_4(++var_6);
        var_11 = 300;
        var_5 = 0;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        var _loc5_ = 0;
        _loc4_ = new Class_6();
        param3 = 102;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        _loc4_.var_48 = false;
        _loc4_.var_77 = true;
        if (param1 == Class_73.const_81 || param1 == Class_73.const_210 || param1 == Class_73.const_217 || param1 == Class_73.const_214) {
            _loc4_.num = Class_13.const_81;
            Class_13.method_2(_loc4_);
            _loc5_ = 12;
            _loc4_.move1 = Class_9.var_515;
            if (param1 == Class_73.const_210) {
                _loc4_.move1 = Class_9.var_118;
            }
            else if (param1 == Class_73.const_217) {
                _loc4_.move1 = Class_9.var_128;
            }
            else if (param1 == Class_73.const_214) {
                _loc4_.move1 = Class_9.var_116;
            }
            else {
                _loc5_ = 17;
            }
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_73.const_88) {
            _loc4_.num = Class_13.const_88;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_256;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 17;
        }
        else if (param1 == Class_73.const_79) {
            _loc4_.num = Class_13.const_79;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_143;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 17;
        }
        else if (param1 == Class_73.const_16) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_141;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 22;
        }
        _loc4_.var_26 *= 2;
        _loc4_.var_107 = true;
        _loc4_.var_39 = false;
        _loc4_.var_40 = 0;
        _loc4_.speed *= 0.5;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 /= 2;
        _loc4_.var_28 /= 2;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

