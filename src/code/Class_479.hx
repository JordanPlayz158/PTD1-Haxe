package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_479 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Meteor Mash";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_254(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
        var _loc4_:Int;
        if ((_loc4_ = Std.int(Math.random() * 100 + 1)) <= 20) {
            this.increase_Attack();
        }
    }

    @:allow(code) override function get_Move_Power():Int {
        return 100;
    }

    @:allow(code) override function get_Accurary():Int {
        return 85;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_7;
    }

    @:allow(code) function increase_Attack() {
        if (var_2.check_Effects(Class_805) != null) {
            return;
        }
        var _loc1_ = var_2.check_Effects(Class_802);
        if (_loc1_ != null) {
            _loc1_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_805(var_2, Attack.ATTACK_TIME * 100));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

