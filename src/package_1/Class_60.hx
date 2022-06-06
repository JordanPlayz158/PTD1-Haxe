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

class Class_60 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_57 = 1;

    static inline final const_60 = 2;

    static inline final const_75 = 3;

    static inline final const_148 = 4;

    static inline final const_76 = 5;

    static inline final const_37 = 6;

    var var_725:Int = 0;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 6;
    }

    override public function defeated_Poke(param1:Class_6) {
        if (var_6 < 6) {
            method_4(++var_6);
            var_11 = 100;
            var_5 = 0;
        }
    }

    override public function start_Wave() {
        method_4();
        var_11 = 10;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_60.const_148));
                var_11 = 100;
                ++var_5;
            }
        }
        else if (var_6 == 2) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_60.const_76));
                var_11 = 100;
                ++var_5;
            }
        }
        else if (var_6 == 3) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_60.const_37));
                var_11 = 100;
                ++var_5;
            }
        }
        else if (var_6 == 4) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_60.const_75));
                var_11 = 100;
                ++var_5;
            }
        }
        else if (var_6 == 5) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_60.const_60));
                var_11 = 100;
                ++var_5;
            }
        }
        else if (var_6 == 6) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_60.const_57));
                var_6 = 7;
                wave_Finished();
            }
        }
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        param3 = 105;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        _loc4_.var_48 = false;
        _loc4_.var_77 = true;
        var _loc5_ = 15;
        if (param1 == Class_60.const_60) {
            _loc4_.num = Class_13.const_60;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_208;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_60.const_75) {
            _loc4_.num = Class_13.const_75;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_60;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_60.const_57) {
            _loc4_.num = Class_13.const_57;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_62;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_60.const_148) {
            _loc4_.num = Class_13.const_148;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_42;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_60.const_76) {
            _loc4_.num = Class_13.const_76;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_143;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_60.const_37) {
            _loc4_.num = Class_13.const_37;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_125;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        _loc4_.var_26 *= 2;
        _loc4_.var_107 = true;
        _loc4_.var_39 = false;
        _loc4_.var_40 = 0;
        _loc4_.speed = 0;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 2);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 2);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

