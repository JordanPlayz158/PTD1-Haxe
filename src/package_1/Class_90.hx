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

class Class_90 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_293 = 1;

    static inline final const_194 = 2;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        my_Parent.add_Enemy_Poke(method_1(Class_90.const_293));
        my_Parent.add_Enemy_Poke(method_1(Class_90.const_194));
        if (var_5 == 3) {
            var_6 = 2;
            wave_Finished();
            return;
        }
        var_11 = 90;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_90.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1000 + 1);
            }
            method_11(_loc4_);
        }
        else if (param1 == Class_90.const_293) {
            _loc4_.num = Class_13.const_16;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Onix") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_90.const_194) {
            _loc4_.num = Class_13.const_51;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Golem") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

