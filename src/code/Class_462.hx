package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_462 extends Class_194 {


    static inline final name_2 = Std.int(36.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Haze";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = cast(var_2.my_Parent, Class_875);
        if (_loc2_.method_23(Class_862) != null) {
            return;
        }
        var_2.add_Effect(new Class_733(var_2, new Do_Poison_Gas()));
        var _loc3_:Class_853 = new Class_862(_loc2_, var_2);
        _loc2_.add_path_effect(_loc3_, true);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_462.name_2;
    }
}

