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
import code.Class_93;

class Class_26 extends Class_7 {


    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 10;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_7.const_218));
                method_4(++var_6);
                var_11 = 1000;
                var_5 = 0;
                return;
            }
        }
        else {
            if (var_6 > 1 && var_6 < 10) {
                method_4(++var_6);
                var_11 = 1000;
                if (var_6 == 10) {
                    var_11 = 0;
                }
                return;
            }
            if (var_6 == 10) {
                var_6 = 11;
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).level = 91;
        _loc4_.var_48 = false;
        if (param1 == Class_7.const_218) {
            _loc4_.level = 91;
            _loc4_.var_19 = "pje";
            _loc4_.num = Class_13.const_92;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_604;
            _loc4_.move2 = Class_9.var_608;
            _loc4_.var_13 = 2;
            _loc4_.myAI = new Class_93();
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 100;
            _loc4_.var_23 *= 6;
            _loc4_.var_24 *= 6;
            _loc4_.var_490 = true;
            _loc4_.var_77 = false;
        }
        _loc4_.var_39 = false;
        _loc4_.var_26 *= 30;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

