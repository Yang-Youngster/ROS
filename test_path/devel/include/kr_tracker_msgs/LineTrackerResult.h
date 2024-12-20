// Generated by gencpp from file kr_tracker_msgs/LineTrackerResult.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_LINETRACKERRESULT_H
#define KR_TRACKER_MSGS_MESSAGE_LINETRACKERRESULT_H


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
struct LineTrackerResult_
{
  typedef LineTrackerResult_<ContainerAllocator> Type;

  LineTrackerResult_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , duration(0.0)
    , length(0.0)  {
    }
  LineTrackerResult_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , duration(0.0)
    , length(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _duration_type;
  _duration_type duration;

   typedef double _length_type;
  _length_type length;





  typedef boost::shared_ptr< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> const> ConstPtr;

}; // struct LineTrackerResult_

typedef ::kr_tracker_msgs::LineTrackerResult_<std::allocator<void> > LineTrackerResult;

typedef boost::shared_ptr< ::kr_tracker_msgs::LineTrackerResult > LineTrackerResultPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::LineTrackerResult const> LineTrackerResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.yaw == rhs.yaw &&
    lhs.duration == rhs.duration &&
    lhs.length == rhs.length;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ded8f5612bed1e7951000cd5b755c5f";
  }

  static const char* value(const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ded8f5612bed1e7ULL;
  static const uint64_t static_value2 = 0x951000cd5b755c5fULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/LineTrackerResult";
  }

  static const char* value(const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"# send back goal\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 yaw\n"
"# time duration of the trajectory\n"
"float64 duration\n"
"# approximate arc length of the trajectory (ie. sum of distances between position commands)\n"
"float64 length\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
      stream.next(m.duration);
      stream.next(m.length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LineTrackerResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::LineTrackerResult_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
    s << indent << "length: ";
    Printer<double>::stream(s, indent + "  ", v.length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_LINETRACKERRESULT_H
