// Generated by gencpp from file demo_comm_pkg/Server_01.msg
// DO NOT EDIT!


#ifndef DEMO_COMM_PKG_MESSAGE_SERVER_01_H
#define DEMO_COMM_PKG_MESSAGE_SERVER_01_H

#include <ros/service_traits.h>


#include <demo_comm_pkg/Server_01Request.h>
#include <demo_comm_pkg/Server_01Response.h>


namespace demo_comm_pkg
{

struct Server_01
{

typedef Server_01Request Request;
typedef Server_01Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Server_01
} // namespace demo_comm_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::demo_comm_pkg::Server_01 > {
  static const char* value()
  {
    return "097f053be1ce46a72625da291a31fe63";
  }

  static const char* value(const ::demo_comm_pkg::Server_01&) { return value(); }
};

template<>
struct DataType< ::demo_comm_pkg::Server_01 > {
  static const char* value()
  {
    return "demo_comm_pkg/Server_01";
  }

  static const char* value(const ::demo_comm_pkg::Server_01&) { return value(); }
};


// service_traits::MD5Sum< ::demo_comm_pkg::Server_01Request> should match
// service_traits::MD5Sum< ::demo_comm_pkg::Server_01 >
template<>
struct MD5Sum< ::demo_comm_pkg::Server_01Request>
{
  static const char* value()
  {
    return MD5Sum< ::demo_comm_pkg::Server_01 >::value();
  }
  static const char* value(const ::demo_comm_pkg::Server_01Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::demo_comm_pkg::Server_01Request> should match
// service_traits::DataType< ::demo_comm_pkg::Server_01 >
template<>
struct DataType< ::demo_comm_pkg::Server_01Request>
{
  static const char* value()
  {
    return DataType< ::demo_comm_pkg::Server_01 >::value();
  }
  static const char* value(const ::demo_comm_pkg::Server_01Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::demo_comm_pkg::Server_01Response> should match
// service_traits::MD5Sum< ::demo_comm_pkg::Server_01 >
template<>
struct MD5Sum< ::demo_comm_pkg::Server_01Response>
{
  static const char* value()
  {
    return MD5Sum< ::demo_comm_pkg::Server_01 >::value();
  }
  static const char* value(const ::demo_comm_pkg::Server_01Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::demo_comm_pkg::Server_01Response> should match
// service_traits::DataType< ::demo_comm_pkg::Server_01 >
template<>
struct DataType< ::demo_comm_pkg::Server_01Response>
{
  static const char* value()
  {
    return DataType< ::demo_comm_pkg::Server_01 >::value();
  }
  static const char* value(const ::demo_comm_pkg::Server_01Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DEMO_COMM_PKG_MESSAGE_SERVER_01_H