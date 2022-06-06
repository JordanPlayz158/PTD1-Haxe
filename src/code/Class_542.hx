package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_542 extends Class_194 {


    @:allow(code) var var_199:Int = 1;

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Rollout";
    }

    @:allow(code) override function get_Accurary():Int {
        return 90;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        if (param1.check_If_He_Hit_Me(var_2)) {
            ++this.var_199;
            if (this.var_199 > 5) {
                this.var_199 = 1;
            }
        }
        else {
            this.var_199 = 1;
        }
        if (var_2.check_Effects(Class_808) != null) {
            ++this.var_199;
        }
        _loc2_ *= this.var_199;
        var _loc3_ = method_3(param1, _loc2_);
        var _loc4_:Class_16;
        (_loc4_ = new Class_294(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 30;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_15;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}
