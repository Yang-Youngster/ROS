// Generated by gencpp from file kr_tracker_msgs/LissajousAdderGoal.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_LISSAJOUSADDERGOAL_H
#define KR_TRACKER_MSGS_MESSAGE_LISSAJOUSADDERGOAL_H


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
struct LissajousAdderGoal_
{
  typedef LissajousAdderGoal_<ContainerAllocator> Type;

  LissajousAdderGoal_()
    : x_amp()
    , y_amp()
    , z_amp()
    , yaw_amp()
    , x_num_periods()
    , y_num_periods()
    , z_num_periods()
    , yaw_num_periods()
    , period()
    , num_cycles()
    , ramp_time()  {
      x_amp.assign(0.0);

      y_amp.assign(0.0);

      z_amp.assign(0.0);

      yaw_amp.assign(0.0);

      x_num_periods.assign(0.0);

      y_num_periods.assign(0.0);

      z_num_periods.assign(0.0);

      yaw_num_periods.assign(0.0);

      period.assign(0.0);

      num_cycles.assign(0.0);

      ramp_time.assign(0.0);
  }
  LissajousAdderGoal_(const ContainerAllocator& _alloc)
    : x_amp()
    , y_amp()
    , z_amp()
    , yaw_amp()
    , x_num_periods()
    , y_num_periods()
    , z_num_periods()
    , yaw_num_periods()
    , period()
    , num_cycles()
    , ramp_time()  {
  (void)_alloc;
      x_amp.assign(0.0);

      y_amp.assign(0.0);

      z_amp.assign(0.0);

      yaw_amp.assign(0.0);

      x_num_periods.assign(0.0);

      y_num_periods.assign(0.0);

      z_num_periods.assign(0.0);

      yaw_num_periods.assign(0.0);

      period.assign(0.0);

      num_cycles.assign(0.0);

      ramp_time.assign(0.0);
  }



   typedef boost::array<double, 2>  _x_amp_type;
  _x_amp_type x_amp;

   typedef boost::array<double, 2>  _y_amp_type;
  _y_amp_type y_amp;

   typedef boost::array<double, 2>  _z_amp_type;
  _z_amp_type z_amp;

   typedef boost::array<double, 2>  _yaw_amp_type;
  _yaw_amp_type yaw_amp;

   typedef boost::array<double, 2>  _x_num_periods_type;
  _x_num_periods_type x_num_periods;

   typedef boost::array<double, 2>  _y_num_periods_type;
  _y_num_periods_type y_num_periods;

   typedef boost::array<double, 2>  _z_num_periods_type;
  _z_num_periods_type z_num_periods;

   typedef boost::array<double, 2>  _yaw_num_periods_type;
  _yaw_num_periods_type yaw_num_periods;

   typedef boost::array<double, 2>  _period_type;
  _period_type period;

   typedef boost::array<double, 2>  _num_cycles_type;
  _num_cycles_type num_cycles;

   typedef boost::array<double, 2>  _ramp_time_type;
  _ramp_time_type ramp_time;





  typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> const> ConstPtr;

}; // struct LissajousAdderGoal_

typedef ::kr_tracker_msgs::LissajousAdderGoal_<std::allocator<void> > LissajousAdderGoal;

typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderGoal > LissajousAdderGoalPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousAdderGoal const> LissajousAdderGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator2> & rhs)
{
  return lhs.x_amp == rhs.x_amp &&
    lhs.y_amp == rhs.y_amp &&
    lhs.z_amp == rhs.z_amp &&
    lhs.yaw_amp == rhs.yaw_amp &&
    lhs.x_num_periods == rhs.x_num_periods &&
    lhs.y_num_periods == rhs.y_num_periods &&
    lhs.z_num_periods == rhs.z_num_periods &&
    lhs.yaw_num_periods == rhs.yaw_num_periods &&
    lhs.period == rhs.period &&
    lhs.num_cycles == rhs.num_cycles &&
    lhs.ramp_time == rhs.ramp_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d1dd950c79374f41a6a89f6bb58553e";
  }

  static const char* value(const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d1dd950c79374f4ULL;
  static const uint64_t static_value2 = 0x1a6a89f6bb58553eULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/LissajousAdderGoal";
  }

  static const char* value(const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"float64[2] x_amp\n"
"float64[2] y_amp\n"
"float64[2] z_amp\n"
"float64[2] yaw_amp\n"
"float64[2] x_num_periods\n"
"float64[2] y_num_periods\n"
"float64[2] z_num_periods\n"
"float64[2] yaw_num_periods\n"
"float64[2] period\n"
"float64[2] num_cycles\n"
"float64[2] ramp_time\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_amp);
      stream.next(m.y_amp);
      stream.next(m.z_amp);
      stream.next(m.yaw_amp);
      stream.next(m.x_num_periods);
      stream.next(m.y_num_periods);
      stream.next(m.z_num_periods);
      stream.next(m.yaw_num_periods);
      stream.next(m.period);
      stream.next(m.num_cycles);
      stream.next(m.ramp_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LissajousAdderGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::LissajousAdderGoal_<ContainerAllocator>& v)
  {
    s << indent << "x_amp[]" << std::endl;
    for (size_t i = 0; i < v.x_amp.size(); ++i)
    {
      s << indent << "  x_amp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.x_amp[i]);
    }
    s << indent << "y_amp[]" << std::endl;
    for (size_t i = 0; i < v.y_amp.size(); ++i)
    {
      s << indent << "  y_amp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.y_amp[i]);
    }
    s << indent << "z_amp[]" << std::endl;
    for (size_t i = 0; i < v.z_amp.size(); ++i)
    {
      s << indent << "  z_amp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.z_amp[i]);
    }
    s << indent << "yaw_amp[]" << std::endl;
    for (size_t i = 0; i < v.yaw_amp.size(); ++i)
    {
      s << indent << "  yaw_amp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.yaw_amp[i]);
    }
    s << indent << "x_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.x_num_periods.size(); ++i)
    {
      s << indent << "  x_num_periods[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.x_num_periods[i]);
    }
    s << indent << "y_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.y_num_periods.size(); ++i)
    {
      s << indent << "  y_num_periods[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.y_num_periods[i]);
    }
    s << indent << "z_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.z_num_periods.size(); ++i)
    {
      s << indent << "  z_num_periods[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.z_num_periods[i]);
    }
    s << indent << "yaw_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.yaw_num_periods.size(); ++i)
    {
      s << indent << "  yaw_num_periods[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.yaw_num_periods[i]);
    }
    s << indent << "period[]" << std::endl;
    for (size_t i = 0; i < v.period.size(); ++i)
    {
      s << indent << "  period[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.period[i]);
    }
    s << indent << "num_cycles[]" << std::endl;
    for (size_t i = 0; i < v.num_cycles.size(); ++i)
    {
      s << indent << "  num_cycles[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.num_cycles[i]);
    }
    s << indent << "ramp_time[]" << std::endl;
    for (size_t i = 0; i < v.ramp_time.size(); ++i)
    {
      s << indent << "  ramp_time[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.ramp_time[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_LISSAJOUSADDERGOAL_H
