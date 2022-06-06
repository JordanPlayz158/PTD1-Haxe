package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_127 extends Attack {


    var name_1:Int = Std.int(1800.0);

    var name_2:Int = Std.int(324.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Sharpen";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        if (var_2.check_Effects(Class_805) != null) {
            return;
        }
        var _loc2_ = var_2.check_Effects(Class_802);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
            _loc3_ = new Class_22(Class_22.const_17);
            return;
        }
        var_2.add_Effect(new Class_197(var_2, new Do_Sharpen()));
        var_2.add_Effect(new Class_805(var_2, this.name_1));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_coolDown():Int {
        return this.name_2;
    }
}

