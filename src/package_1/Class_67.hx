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

class Class_67 extends Class_7 {


    static inline final const_249 = 1;

    static inline final const_258 = 2;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_67.const_249), 1, "p");
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_67.const_249), 1, "2");
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_67.const_258), 1, "3");
            my_Parent.add_Enemy_Poke(this.get_Poke_Profile(Class_67.const_258), 1, "4");
            var_6 = 2;
            wave_Finished();
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_67.const_249) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.level = 10;
            _loc4_.move1 = Class_9.var_80;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            _loc4_.speed = 10;
            _loc4_.var_16 *= 10;
            _loc4_.var_23 *= 4;
        }
        else if (param1 == Class_67.const_258) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.level = 10;
            _loc4_.move1 = Class_9.var_136;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            _loc4_.speed = 30;
            _loc4_.var_16 *= 2;
        }
        _loc4_.var_40 = 0;
        _loc4_.var_27 = 0;
        _loc4_.var_26 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

