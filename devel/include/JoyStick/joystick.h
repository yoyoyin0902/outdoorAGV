// Generated by gencpp from file JoyStick/joystick.msg
// DO NOT EDIT!


#ifndef JOYSTICK_MESSAGE_JOYSTICK_H
#define JOYSTICK_MESSAGE_JOYSTICK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace JoyStick
{
template <class ContainerAllocator>
struct joystick_
{
  typedef joystick_<ContainerAllocator> Type;

  joystick_()
    : btn_id(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  joystick_(const ContainerAllocator& _alloc)
    : btn_id(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _btn_id_type;
  _btn_id_type btn_id;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::JoyStick::joystick_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::JoyStick::joystick_<ContainerAllocator> const> ConstPtr;

}; // struct joystick_

typedef ::JoyStick::joystick_<std::allocator<void> > joystick;

typedef boost::shared_ptr< ::JoyStick::joystick > joystickPtr;
typedef boost::shared_ptr< ::JoyStick::joystick const> joystickConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::JoyStick::joystick_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::JoyStick::joystick_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::JoyStick::joystick_<ContainerAllocator1> & lhs, const ::JoyStick::joystick_<ContainerAllocator2> & rhs)
{
  return lhs.btn_id == rhs.btn_id &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::JoyStick::joystick_<ContainerAllocator1> & lhs, const ::JoyStick::joystick_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace JoyStick

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::JoyStick::joystick_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::JoyStick::joystick_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::JoyStick::joystick_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::JoyStick::joystick_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::JoyStick::joystick_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::JoyStick::joystick_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::JoyStick::joystick_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5722394311bf6914b14e0d79b7966426";
  }

  static const char* value(const ::JoyStick::joystick_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5722394311bf6914ULL;
  static const uint64_t static_value2 = 0xb14e0d79b7966426ULL;
};

template<class ContainerAllocator>
struct DataType< ::JoyStick::joystick_<ContainerAllocator> >
{
  static const char* value()
  {
    return "JoyStick/joystick";
  }

  static const char* value(const ::JoyStick::joystick_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::JoyStick::joystick_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 btn_id\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::JoyStick::joystick_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::JoyStick::joystick_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.btn_id);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct joystick_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::JoyStick::joystick_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::JoyStick::joystick_<ContainerAllocator>& v)
  {
    s << indent << "btn_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.btn_id);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JOYSTICK_MESSAGE_JOYSTICK_H
