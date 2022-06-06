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

class Class_35 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_63 = 1;

    static inline final const_157 = 2;

    static inline final const_117 = 3;

    static inline final const_150 = 4;

    static inline final const_173 = 5;

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
            _loc2_ = 150;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "4");
            }
        }
        else if (var_6 == 2) {
            _loc2_ = 300;
            _loc3_ = 100;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_150), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "3");
                var_11 = _loc3_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "3");
                var_11 = _loc3_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "3");
            }
        }
        else if (var_6 == 3) {
            _loc2_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_157), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_117));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_173));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_150));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_150), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 5) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_150), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 6) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_150), 1, "4");
            }
        }
        else {
            if (var_6 != 4) {
                return;
            }
            _loc2_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "3");
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_157), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_117), 1, "2");
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_173));
                my_Parent.add_Enemy_Poke(method_1(Class_35.const_63));
                var_11 = _loc2_;
                var_6 = 9;
                wave_Finished();
                return;
            }
        }
        method_4(++var_6);
        var_11 = 300;
        var_5 = 0;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        param3 = 102;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        _loc4_.var_48 = false;
        if (param1 == Class_35.const_63) {
            _loc4_.num = Class_13.const_63;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_624;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_35.const_157) {
            _loc4_.num = Class_13.const_157;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_103;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_35.const_150) {
            _loc4_.num = Class_13.const_150;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_610;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_35.const_117) {
            _loc4_.num = Class_13.const_117;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_593;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 12;
        }
        else if (param1 == Class_35.const_173) {
            _loc4_.num = Class_13.const_173;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_593;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 12;
        }
        _loc4_.var_26 *= 2;
        _loc4_.var_107 = true;
        _loc4_.var_39 = false;
        _loc4_.var_40 = 0;
        _loc4_.speed = Std.int(_loc4_.speed * 0.5);
        _loc4_.var_77 = true;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 4);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 4);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

