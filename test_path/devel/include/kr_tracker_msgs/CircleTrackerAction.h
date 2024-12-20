// Generated by gencpp from file kr_tracker_msgs/CircleTrackerAction.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_CIRCLETRACKERACTION_H
#define KR_TRACKER_MSGS_MESSAGE_CIRCLETRACKERACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kr_tracker_msgs/CircleTrackerActionGoal.h>
#include <kr_tracker_msgs/CircleTrackerActionResult.h>
#include <kr_tracker_msgs/CircleTrackerActionFeedback.h>

namespace kr_tracker_msgs
{
template <class ContainerAllocator>
struct CircleTrackerAction_
{
  typedef CircleTrackerAction_<ContainerAllocator> Type;

  CircleTrackerAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  CircleTrackerAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kr_tracker_msgs::CircleTrackerActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::kr_tracker_msgs::CircleTrackerActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::kr_tracker_msgs::CircleTrackerActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> const> ConstPtr;

}; // struct CircleTrackerAction_

typedef ::kr_tracker_msgs::CircleTrackerAction_<std::allocator<void> > CircleTrackerAction;

typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerAction > CircleTrackerActionPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::CircleTrackerAction const> CircleTrackerActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd05511e5781b703ef5fb955cec2b71c";
  }

  static const char* value(const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd05511e5781b703ULL;
  static const uint64_t static_value2 = 0xef5fb955cec2b71cULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/CircleTrackerAction";
  }

  static const char* value(const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"CircleTrackerActionGoal action_goal\n"
"CircleTrackerActionResult action_result\n"
"CircleTrackerActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/CircleTrackerActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"CircleTrackerGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/CircleTrackerGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"float64 Ax\n"
"float64 Ay\n"
"float64 T\n"
"float64 duration\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/CircleTrackerActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"CircleTrackerResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/CircleTrackerResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"# time duration of the trajectory\n"
"float64 duration \n"
"# approximate arc length of the trajectory (ie. sum of distances between position commands)\n"
"float64 length \n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/CircleTrackerActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"CircleTrackerFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: kr_tracker_msgs/CircleTrackerFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"# time in tracker\n"
"float64 duration\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CircleTrackerAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::CircleTrackerAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::kr_tracker_msgs::CircleTrackerActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::kr_tracker_msgs::CircleTrackerActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::kr_tracker_msgs::CircleTrackerActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_CIRCLETRACKERACTION_H
