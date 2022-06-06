package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_103 extends Attack {


    static inline final name_2 = Std.int(1818.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Sunny Day";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = cast(var_2.my_Parent, Class_875);
        var _loc3_:Class_853 = new Class_856(_loc2_, var_2);
        if (_loc2_.method_23(Class_856) != null) {
            return;
        }
        _loc2_.add_path_effect(_loc3_, true);
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
        return Class_103.name_2;
    }
}

