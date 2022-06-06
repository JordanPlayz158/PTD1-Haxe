package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_790 extends Class_732 {


    var var_632:Int = 0;

    public function new(param1:Poke, param2:Int) {
        super(param1, null, param2);
        speed = -10;
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.y = 0;
        super.remove_Me();
    }

    @:allow(code) override function run() {
        super.run();
        if (this.var_632 == 2) {
            var_1.gfx.y += speed;
            speed = -speed;
            this.var_632 = 0;
        }
        else {
            ++this.var_632;
        }
    }
}

