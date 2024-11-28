// Generated by gencpp from file kr_mav_manager/GoalTimedRequest.msg
// DO NOT EDIT!


#ifndef KR_MAV_MANAGER_MESSAGE_GOALTIMEDREQUEST_H
#define KR_MAV_MANAGER_MESSAGE_GOALTIMEDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kr_mav_manager
{
template <class ContainerAllocator>
struct GoalTimedRequest_
{
  typedef GoalTimedRequest_<ContainerAllocator> Type;

  GoalTimedRequest_()
    : goal()
    , duration()
    , t_start()  {
      goal.assign(0.0);
  }
  GoalTimedRequest_(const ContainerAllocator& _alloc)
    : goal()
    , duration()
    , t_start()  {
  (void)_alloc;
      goal.assign(0.0);
  }



   typedef boost::array<float, 4>  _goal_type;
  _goal_type goal;

   typedef ros::Duration _duration_type;
  _duration_type duration;

   typedef ros::Time _t_start_type;
  _t_start_type t_start;





  typedef boost::shared_ptr< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GoalTimedRequest_

typedef ::kr_mav_manager::GoalTimedRequest_<std::allocator<void> > GoalTimedRequest;

typedef boost::shared_ptr< ::kr_mav_manager::GoalTimedRequest > GoalTimedRequestPtr;
typedef boost::shared_ptr< ::kr_mav_manager::GoalTimedRequest const> GoalTimedRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator1> & lhs, const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator2> & rhs)
{
  return lhs.goal == rhs.goal &&
    lhs.duration == rhs.duration &&
    lhs.t_start == rhs.t_start;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator1> & lhs, const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_mav_manager

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3c9a1ea281c62219122f22aa2b508b97";
  }

  static const char* value(const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3c9a1ea281c62219ULL;
  static const uint64_t static_value2 = 0x122f22aa2b508b97ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_mav_manager/GoalTimedRequest";
  }

  static const char* value(const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[4] goal\n"
"duration duration\n"
"time t_start\n"
;
  }

  static const char* value(const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
      stream.next(m.duration);
      stream.next(m.t_start);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GoalTimedRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_mav_manager::GoalTimedRequest_<ContainerAllocator>& v)
  {
    s << indent << "goal[]" << std::endl;
    for (size_t i = 0; i < v.goal.size(); ++i)
    {
      s << indent << "  goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.goal[i]);
    }
    s << indent << "duration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.duration);
    s << indent << "t_start: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.t_start);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_MAV_MANAGER_MESSAGE_GOALTIMEDREQUEST_H
