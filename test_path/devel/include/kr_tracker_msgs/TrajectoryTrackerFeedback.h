// Generated by gencpp from file kr_tracker_msgs/TrajectoryTrackerFeedback.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_TRAJECTORYTRACKERFEEDBACK_H
#define KR_TRACKER_MSGS_MESSAGE_TRAJECTORYTRACKERFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kr_tracker_msgs
{
template <class ContainerAllocator>
struct TrajectoryTrackerFeedback_
{
  typedef TrajectoryTrackerFeedback_<ContainerAllocator> Type;

  TrajectoryTrackerFeedback_()
    : remaining_time(0.0)  {
    }
  TrajectoryTrackerFeedback_(const ContainerAllocator& _alloc)
    : remaining_time(0.0)  {
  (void)_alloc;
    }



   typedef double _remaining_time_type;
  _remaining_time_type remaining_time;





  typedef boost::shared_ptr< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryTrackerFeedback_

typedef ::kr_tracker_msgs::TrajectoryTrackerFeedback_<std::allocator<void> > TrajectoryTrackerFeedback;

typedef boost::shared_ptr< ::kr_tracker_msgs::TrajectoryTrackerFeedback > TrajectoryTrackerFeedbackPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::TrajectoryTrackerFeedback const> TrajectoryTrackerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.remaining_time == rhs.remaining_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b71b59cce98847d0bd0310eb052e8f3f";
  }

  static const char* value(const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb71b59cce98847d0ULL;
  static const uint64_t static_value2 = 0xbd0310eb052e8f3fULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/TrajectoryTrackerFeedback";
  }

  static const char* value(const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"float64 remaining_time\n"
"\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.remaining_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryTrackerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::TrajectoryTrackerFeedback_<ContainerAllocator>& v)
  {
    s << indent << "remaining_time: ";
    Printer<double>::stream(s, indent + "  ", v.remaining_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_TRAJECTORYTRACKERFEEDBACK_H
