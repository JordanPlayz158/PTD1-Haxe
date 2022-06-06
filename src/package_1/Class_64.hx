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

class Class_64 extends Class_7 {


    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 5;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 180;
        }
        else if (var_5 == 1) {
            method_4(2);
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 18;
        }
        else if (var_5 == 2) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 180;
        }
        else if (var_5 == 3 || var_5 == 4) {
            if (var_5 == 3) {
                method_4(3);
            }
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 18;
        }
        else if (var_5 == 5) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 180;
        }
        else if (var_5 >= 6 && var_5 <= 8) {
            if (var_5 == 6) {
                method_4(4);
            }
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 18;
        }
        else if (var_5 == 9) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 180;
        }
        else if (var_5 >= 10 && var_5 <= 13) {
            if (var_5 == 10) {
                method_4(5);
            }
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 18;
        }
        else if (var_5 == 14) {
            my_Parent.add_Enemy_Poke(method_1());
            wave_Finished();
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        method_11(_loc4_);
        _loc4_.num = Class_13.const_29;
        _loc4_.level = Std.int(2 + Math.random() * 4);
        _loc4_.move1 = Class_9.var_45;
        _loc4_.move2 = Class_9.var_70;
        _loc4_.var_19 = "ep";
        _loc4_.var_13 = 2;
        if (_loc4_.level == 4) {
            _loc4_.move3 = Class_9.var_96;
            _loc4_.var_13 = 3;
        }
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        Class_13.method_2(_loc4_);
        _loc4_.speed = Std.int(_loc4_.speed / 2);
        if (_loc4_.name != "Rattata") {
            my_Parent.end_hack();
            return null;
        }
        return _loc4_;
    }
}

