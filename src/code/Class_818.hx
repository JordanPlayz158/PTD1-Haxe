package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_818 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, new Do_Safeguard(), param2);
    }

    @:allow(code) override function run() {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < var_1.effect_List.length) {
            _loc1_ = var_1.effect_List[_loc2_];
            if (Std.is(_loc1_, Class_796)) {
                _loc1_.remove_Me();
            }
            else if (Std.is(_loc1_, Class_202)) {
                _loc1_.remove_Me();
            }
            else if (Std.is(_loc1_, Class_200)) {
                _loc1_.remove_Me();
            }
            else if (Std.is(_loc1_, Class_791)) {
                _loc1_.remove_Me();
            }
            else if (Std.is(_loc1_, Class_201)) {
                _loc1_.remove_Me();
                _loc2_++;continue;
            }
            _loc2_++;
        }
        super.run();
    }
}

