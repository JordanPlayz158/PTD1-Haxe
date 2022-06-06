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

class Class_66 extends Class_7 {


    static inline final const_12 = 1;

    static inline final const_19 = 2;

    static inline final const_51 = 3;

    static inline final const_16 = 4;

    static inline final const_46 = 5;

    static inline final const_102 = 6;

    static inline final const_54 = 7;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 20;
    }

    override public function do_Wave_2() {
        if (var_6 <= 10) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_12));
            var_478 = 30;
        }
    }

    override public function start_Wave() {
        super.start_Wave();
        method_158();
    }

    override public function do_Wave() {
        if (var_6 <= 4) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_19), 1, "2");
            var_11 = 9;
            if (var_5 == 5) {
                method_4(++var_6);
                var_5 = 0;
                var_11 = 45;
            }
        }
        else if (var_6 == 5) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_51), 1, "2");
            var_11 = 60;
            if (var_5 == 2) {
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
            }
        }
        else if (var_6 <= 9) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_16), 1, "2");
            var_11 = 9;
            if (var_5 == 5) {
                method_4(++var_6);
                var_5 = 0;
                var_11 = 120;
            }
        }
        else if (var_6 == 10) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_46), 1, "2");
            var_11 = 24;
            if (var_5 == 3) {
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
            }
        }
        else if (var_6 == 11) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_102), 1, "2");
            var_11 = 60;
            if (var_5 == 3) {
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
            }
        }
        else if (var_6 <= 20) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_66.const_54), 1, "2");
            var_11 = 15;
            if (var_5 == 9) {
                if (var_6 == 20) {
                    var_6 = 21;
                    wave_Finished();
                    return;
                }
                method_4(++var_6);
                var_5 = 0;
                var_11 = 90;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_66.const_12) {
            _loc4_.num = Class_13.const_12;
            Class_13.method_2(_loc4_);
            _loc4_.level = 29;
            _loc4_.move1 = Class_9.var_135;
            _loc4_.move2 = Class_9.var_136;
            _loc4_.move3 = Class_9.var_88;
            _loc4_.var_13 = 3;
            _loc4_.speed = 40;
            _loc4_.shiny = 1;
            _loc4_.var_77 = true;
            _loc4_.var_27 = 0;
        }
        else if (param1 == Class_66.const_19) {
            _loc4_.num = Class_13.const_19;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_189;
            _loc4_.move2 = Class_9.var_125;
            _loc4_.move3 = Class_9.var_158;
            _loc4_.var_13 = 3;
            _loc4_.var_26 *= 10;
            _loc4_.var_39 = false;
            _loc4_.var_27 = 0;
        }
        else if (param1 == Class_66.const_51) {
            _loc4_.num = Class_13.const_51;
            Class_13.method_2(_loc4_);
            _loc4_.level = 19;
            _loc4_.move1 = Class_9.var_162;
            _loc4_.var_13 = 3;
            _loc4_.var_27 = 0;
        }
        else if (param1 == Class_66.const_16) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.level = 15;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_27 = 0;
        }
        else if (param1 == Class_66.const_46) {
            _loc4_.num = Class_13.const_46;
            Class_13.method_2(_loc4_);
            _loc4_.level = 24;
            _loc4_.move1 = Class_9.var_100;
            _loc4_.var_13 = 1;
            _loc4_.shiny = 1;
            _loc4_.var_27 = 0;
        }
        else if (param1 == Class_66.const_102) {
            _loc4_.num = Class_13.const_102;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_268;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_26 *= 1000;
            _loc4_.var_27 = 400;
        }
        else if (param1 == Class_66.const_54) {
            _loc4_.num = Class_13.const_54;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_268;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_27 = 0;
        }
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

