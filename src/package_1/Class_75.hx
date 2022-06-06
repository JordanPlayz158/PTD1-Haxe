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

class Class_75 extends Class_7 {


    static inline final const_282 = 1;

    static inline final const_262 = 2;

    static inline final const_260 = 3;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1(Class_75.const_282));
            var_11 = 30;
        }
        else if (var_5 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_75.const_262));
            var_11 = 30;
        }
        else if (var_5 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_75.const_260));
            var_11 = 60;
            wave_Finished();
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_75.const_282) {
            _loc4_.num = Class_13.const_28;
            Class_13.method_2(_loc4_);
            _loc4_.level = 26;
            _loc4_.move1 = Class_9.var_150;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 3;
            if (_loc4_.name != "Pidgey") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_75.const_262) {
            _loc4_.num = Class_13.const_40;
            Class_13.method_2(_loc4_);
            _loc4_.level = 26;
            _loc4_.move1 = Class_9.var_146;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 3;
            if (_loc4_.name != "Oddish") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_75.const_260) {
            _loc4_.num = Class_13.const_44;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_208;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 3;
            if (_loc4_.name != "Bellsprout") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_19 = "pje";
        _loc4_.var_27 *= 5;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

