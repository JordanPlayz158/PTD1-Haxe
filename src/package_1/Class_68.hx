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

class Class_68 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_74 = 1;

    static inline final const_58 = 2;

    static inline final const_70 = 3;

    static inline final const_120 = 4;

    static inline final const_279 = 5;

    static inline final const_93 = 6;

    static inline final const_83 = 7;

    static inline final const_19 = 8;

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
            _loc2_ = 25;
            _loc3_ = 100;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3);
                var_11 = _loc3_;
                ++var_5;
                return;
            }
            if (var_5 < 6) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_19));
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 6) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_19));
            }
        }
        else if (var_6 == 2) {
            _loc2_ = 25;
            _loc3_ = 100;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3);
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3, "2");
                var_11 = _loc3_;
                ++var_5;
                return;
            }
            if (var_5 < 6) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_19));
                if (var_5 == 1 || var_5 == 3 || var_5 == 5) {
                    my_Parent.add_Enemy_Poke(method_1(Class_68.const_83), 1, "2");
                }
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 6) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_19));
            }
        }
        else if (var_6 == 3) {
            _loc2_ = 25;
            _loc3_ = 100;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3, "2");
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3, "3");
                var_11 = _loc3_;
                ++var_5;
                return;
            }
            if (var_5 < 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_19));
                if (var_5 == 1 || var_5 == 3) {
                    my_Parent.add_Enemy_Poke(method_1(Class_68.const_83), 1, "2");
                }
                else if (var_5 == 2 || var_5 == 4) {
                    my_Parent.add_Enemy_Poke(method_1(Class_68.const_93), 1, "3");
                }
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_19));
            }
        }
        else {
            if (var_6 != 4) {
                return;
            }
            _loc2_ = 25;
            _loc3_ = 100;
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3, "3");
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3, "4");
                var_11 = _loc3_;
                ++var_5;
                return;
            }
            if (var_5 < 4) {
                if (var_5 == 1) {
                    my_Parent.add_Enemy_Poke(method_1(Class_68.const_279), 1, "4");
                }
                else if (var_5 == 2) {
                    my_Parent.add_Enemy_Poke(method_1(Class_68.const_120), 1, "3");
                }
                else if (var_5 == 3) {
                    my_Parent.add_Enemy_Poke(method_1(Class_68.const_58), 1, "2");
                }
                var_11 = _loc2_;
                ++var_5;
                return;
            }
            if (var_5 == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_70));
                my_Parent.add_Enemy_Poke(method_1(Class_68.const_74), 3, "4");
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
        var _loc4_ = new Class_6();
        param3 = 102;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        _loc4_.var_48 = false;
        _loc4_.var_77 = true;
        if (param1 == Class_68.const_74) {
            _loc4_.num = Class_13.const_74;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_560;
            _loc4_.move2 = Class_9.var_626;
            _loc4_.var_13 = 2;
            _loc4_.var_16 *= 15;
            _loc4_.var_490 = true;
            _loc4_.var_77 = false;
        }
        else if (param1 == Class_68.const_58) {
            _loc4_.num = Class_13.const_58;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_68.const_83) {
            _loc4_.num = Class_13.const_83;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_146;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 6;
        }
        else if (param1 == Class_68.const_279) {
            _loc4_.num = Class_13.const_98;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_381;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 12;
        }
        else if (param1 == Class_68.const_19) {
            _loc4_.num = Class_13.const_19;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_187;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 8;
        }
        else if (param1 == Class_68.const_70) {
            _loc4_.num = Class_13.const_70;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_99;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 12;
        }
        else if (param1 == Class_68.const_120) {
            _loc4_.num = Class_13.const_120;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_555;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_68.const_93) {
            _loc4_.num = Class_13.const_93;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_375;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 12;
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

