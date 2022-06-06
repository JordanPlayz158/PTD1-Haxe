package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_395 extends Class_17 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function on_Run() {
        if (var_1.check_Effects(Class_805) != null) {
            return;
        }
        if (var_1.check_Effects(Class_201) != null || var_1.check_Effects(Class_202) != null || var_1.check_Effects(Class_791) != null || var_1.check_Effects(Class_200) != null) {
            Attack.increase_Attack(var_1, 0);
            var_1.add_Effect(new Class_737(var_1, "Guts"));
        }
    }
}

