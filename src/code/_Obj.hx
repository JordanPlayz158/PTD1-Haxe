package code;

import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.display.DisplayObject;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TouchEvent;
import compat.ASObject;

class _Obj extends GfxMovieClip {
    @:allow(code) var my_Parent:_Obj;

    public function new(param1:_Obj) {
        super();
        this.my_Parent = param1;
    }

    public function send_Msg_Public(param1:ASObject):ASObject {
        return this.send_Msg(param1);
    }

    @:allow(code) function send_Msg(param1:ASObject):ASObject {
        if (this.my_Parent != null) {
            return this.my_Parent.send_Msg(param1);
        }
        return null;
    }

    @:allow(code) function get_BG():GfxMovieClip {
        return null;
    }

    @:allow(code) function back_Pressed() {}

    @:allow(code) function run(param1:Event = null):Bool {
        return false;
    }

    @:allow(code) function key_Up(param1:KeyboardEvent) {}

    @:allow(code) function key_Down(param1:KeyboardEvent) {}

    @:allow(code) function mouse_Up_On_Me(param1:MouseEvent = null):Bool {
        return true;
    }

    @:allow(code) function touch_Begin_On_Me(param1:TouchEvent = null):Bool {
        return true;
    }

    @:allow(code) function touch_End_On_Me(param1:TouchEvent = null):Bool {
        return true;
    }

    @:allow(code) function mouse_Down_On_Me(param1:MouseEvent = null):Bool {
        return true;
    }

    @:allow(code) function mouse_Down(param1:MouseEvent = null):Bool {
        if (this.contain_Me(param1)) {
            return this.mouse_Down_On_Me(param1);
        }
        return false;
    }

    @:allow(code) function mouse_Up(param1:MouseEvent = null):Bool {
        if (this.contain_Me(param1)) {
            return this.mouse_Up_On_Me(param1);
        }
        return false;
    }

    @:allow(code) function mouse_Move(param1:MouseEvent = null):Bool {
        return false;
    }

    @:allow(code) function touch_Begin(param1:TouchEvent = null):Bool {
        if (this.contain_Me(param1)) {
            return this.touch_Begin_On_Me(param1);
        }
        return false;
    }

    @:allow(code) function touch_Move(param1:TouchEvent = null):Bool {
        return false;
    }

    @:allow(code) function touch_End(param1:TouchEvent = null):Bool {
        if (this.contain_Me(param1)) {
            return this.touch_End_On_Me(param1);
        }
        return false;
    }

    @:allow(code) function contain_Me(param1:Event):Bool {
        var _loc2_:ASAny = null;
        if (Std.is(param1.target, DisplayObject)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, DisplayObject);
            if (this.contains(_loc2_)) {
                return true;
            }
            return false;
        }
        return false;
    }
}
