package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_505 extends Class_194 {


    @:allow(code) var var_199:Int = 1;

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Trump Card";
        cantMiss = true;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        ++this.var_199;
        if (this.var_199 > 5) {
            this.var_199 = 1;
        }
        if (this.var_199 == 1) {
            _loc2_ = 40;
        }
        else if (this.var_199 == 2) {
            _loc2_ = 50;
        }
        else if (this.var_199 == 3) {
            _loc2_ = 60;
        }
        else if (this.var_199 == 4) {
            _loc2_ = 80;
        }
        else if (this.var_199 == 5) {
            _loc2_ = 200;
        }
        var _loc3_ = method_3(param1, _loc2_);
        var _loc4_:Class_16;
        (_loc4_ = new Class_275(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 40;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

