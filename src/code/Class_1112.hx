package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_1112 extends Class_904 {


    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_37:Class_6;

    @:allow(code) var var_600:Array<ASAny>;

    @:allow(code) var var_617:Array<ASAny>;

    public function new(param1:Class_903, param2:Class_6, param3:Class_878) {
        this.currentProfile = param3;
        this.var_37 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.method_269();
    }

    @:allow(code) function method_269() {
        this.method_409(this.currentProfile.inventory.copy());
        var _loc1_ = 1;
        while (_loc1_ <= 4) {
            this.method_290(_loc1_);
            _loc1_++;
        }
    }

    @:allow(code) function method_409(param1:Array<ASAny>) {
        var _loc2_:ASAny = null;
        var _loc4_ = 0;
        this.var_600 = [];
        var _loc5_ = 0;
        while (_loc5_ < param1.length) {
            if (!this.method_303(this.var_37.num, param1[_loc5_])) {
                param1.splice(_loc5_, 1);
                _loc5_--;
            }
            else {
                _loc2_ = new ASObject();
                _loc2_.num = param1[_loc5_];
                _loc2_.amount = 1;
                param1.splice(_loc5_, 1);
                _loc4_ = 0;
                while (_loc4_ < param1.length) {
                    if (_loc2_.num == param1[_loc4_]) {
                        _loc2_.amount += 1;
                        param1.splice(_loc4_, 1);
                        _loc4_--;
                    }
                    _loc4_++;
                }
                this.var_600.push(_loc2_);
                _loc5_--;
            }
            _loc5_++;
        }
        this.var_617 = this.var_600.copy();
    }

    @:allow(code) function method_290(param1:Int):Bool {
        if (this.var_617.length == 0) {
            if (param1 == 1) {
                gfx.actual.item_1.item_name.text = "No useable items.";
            }
            else {
                gfx.actual["item_" + param1].item_name.text = "";
            }
            gfx.actual["item_" + param1].use_butt.visible = false;
            return true;
        }
        var _loc2_:ASObject = this.var_617[0];
        this.var_617.splice(0, 1);
        var _loc3_ = this.method_345(_loc2_.num);
        gfx.actual["item_" + param1].item_name.text = _loc3_ + " x" + _loc2_.amount;
        return false;
    }

    @:allow(code) function method_315(param1:Int) {
        var _loc2_ = param1 - 1;
        var _loc3_:ASObject = this.var_600[_loc2_];
        var _loc4_ = 0;
        while (_loc4_ < this.currentProfile.inventory.length) {
            if (_loc3_.num == this.currentProfile.inventory[_loc4_]) {
                this.currentProfile.inventory.splice(_loc4_, 1);
                break;
            }
            _loc4_++;
        }
        this.var_37.whichStone = _loc3_.num;
        this.method_348();
    }

    @:allow(code) function method_348() {
        remove_Me();
        var_165.add_Popup(new Class_1107(var_165, this.var_37));
    }

    @:allow(code) function method_303(param1:Int, param2:Int):Bool {
        if (param2 == Class_13.const_175) {
            if (param1 == Class_13.const_30 || param1 == Class_13.const_32) {
                return true;
            }
        }
        else if (param2 == Class_13.const_182) {
            if (param1 == Class_13.const_62 || param1 == Class_13.const_71 || param1 == Class_13.const_32) {
                return true;
            }
        }
        else if (param2 == Class_13.const_215) {
            if (param1 == Class_13.const_132 || param1 == Class_13.const_145 || param1 == Class_13.const_77 || param1 == Class_13.const_78) {
                return true;
            }
        }
        else if (param2 == Class_13.const_176) {
            if (param1 == Class_13.const_82 || param1 == Class_13.const_68 || param1 == Class_13.const_32 || param1 == Class_13.const_67) {
                return true;
            }
        }
        else if (param2 == Class_13.const_202) {
            if (param1 == Class_13.const_124 || param1 == Class_13.const_102 || param1 == Class_13.const_122) {
                return true;
            }
        }
        return false;
    }

    @:allow(code) function method_345(param1:Int):String {
        if (param1 == Class_13.const_175) {
            return "Thunder Stone";
        }
        if (param1 == Class_13.const_182) {
            return "Fire Stone";
        }
        if (param1 == Class_13.const_176) {
            return "Water Stone";
        }
        if (param1 == Class_13.const_202) {
            return "Leaf Stone";
        }
        if (param1 == Class_13.const_215) {
            return "Moon Stone";
        }
        return "Error";
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        if (false) {
            if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
                _loc2_ = cast(param1.target, GfxMovieClip);
                trace(_loc2_.name);
                if (_loc2_.name == "done_butt") {
                    remove_Me();
                }
                else if (_loc2_.name == "use_butt") {
                    _loc3_ = _loc2_.parent.name.split("_")[1];
                    this.method_315(_loc3_);
                }
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Item();
    }
}

