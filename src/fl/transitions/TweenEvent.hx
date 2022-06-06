package fl.transitions
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.events.Event;

class TweenEvent extends Event {

    public static inline final MOTION_START = "motionStart";

    public static inline final MOTION_STOP = "motionStop";

    public static inline final MOTION_FINISH = "motionFinish";

    public static inline final MOTION_CHANGE = "motionChange";

    public static inline final MOTION_RESUME = "motionResume";

    public static inline final MOTION_LOOP = "motionLoop";


    public var time:Float = Math.NaN;

    public var position:Float = Math.NaN;

    public function new(param1:String, param2:Float, param3:Float, param4:Bool = false, param5:Bool = false) {
        super(param1, param4, param5);
        this.time = param2;
        this.position = param3;
    }

    override public function clone():Event {
        return new TweenEvent(this.type, this.time, this.position, this.bubbles, this.cancelable);
    }
}

