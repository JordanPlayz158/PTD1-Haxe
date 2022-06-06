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

class Class_76 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_103 = 1;

    static inline final const_220 = 10;

    static inline final const_57 = 2;

    static inline final const_147 = 3;

    static inline final const_257 = 4;

    static inline final const_209 = 9;

    static inline final const_108 = 5;

    static inline final const_225 = 6;

    static inline final const_261 = 7;

    static inline final const_142 = 8;

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
            _loc2_ = 400;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_225));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_103), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_220), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_103), 1, "4");
            }
        }
        else if (var_6 == 2) {
            _loc2_ = 400;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_142), 1, "4");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_257), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_142), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_108));
            }
        }
        else if (var_6 == 3) {
            _loc2_ = 400;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_261));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_57), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_57), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_57), 1, "4");
            }
        }
        else if (var_6 == 4) {
            _loc2_ = 400;
            _loc3_ = 300;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_147), 1, "4");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_147), 1, "3");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_209), 1, "2");
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_76.const_209));
                var_6 = 5;
                wave_Finished();
                return;
            }
        }
        if (var_6 <= 4) {
            method_4(++var_6);
            var_11 = 500;
            var_5 = 0;
        }
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        param3 = 102;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        _loc4_.var_48 = false;
        _loc4_.var_77 = true;
        var _loc5_ = 12;
        if (param1 == Class_76.const_147 || param1 == Class_76.const_257 || param1 == Class_76.const_209) {
            _loc4_.num = Class_13.const_147;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_73;
            if (param1 == Class_76.const_257) {
                _loc4_.move1 = Class_9.var_72;
            }
            else if (param1 == Class_76.const_209) {
                _loc4_.move1 = Class_9.var_225;
            }
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 18;
        }
        else if (param1 == Class_76.const_108 || param1 == Class_76.const_225 || param1 == Class_76.const_261) {
            _loc4_.num = Class_13.const_108;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_230;
            _loc5_ = 18;
            if (param1 == Class_76.const_225) {
                _loc5_ = 10;
                _loc4_.move1 = Class_9.var_36;
            }
            else if (param1 == Class_76.const_261) {
                _loc5_ = 10;
                _loc4_.move1 = Class_9.var_44;
            }
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= _loc5_;
        }
        else if (param1 == Class_76.const_57) {
            _loc4_.num = Class_13.const_57;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_62;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 18;
        }
        else if (param1 == Class_76.const_103 || param1 == Class_76.const_220) {
            _loc4_.num = Class_13.const_103;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_115;
            if (param1 == Class_76.const_220) {
                _loc4_.shiny = 1;
            }
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 18;
        }
        else if (param1 == Class_76.const_142) {
            _loc4_.num = Class_13.const_142;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_106;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 18;
        }
        _loc4_.var_26 *= 2;
        _loc4_.var_107 = true;
        _loc4_.var_39 = false;
        _loc4_.var_40 = 0;
        _loc4_.speed = Std.int(_loc4_.speed * 0.5);
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 2);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 2);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

