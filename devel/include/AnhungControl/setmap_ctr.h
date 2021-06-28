// Generated by gencpp from file AnhungControl/setmap_ctr.msg
// DO NOT EDIT!


#ifndef ANHUNGCONTROL_MESSAGE_SETMAP_CTR_H
#define ANHUNGCONTROL_MESSAGE_SETMAP_CTR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace AnhungControl
{
template <class ContainerAllocator>
struct setmap_ctr_
{
  typedef setmap_ctr_<ContainerAllocator> Type;

  setmap_ctr_()
    : type()
    , Name()
    , ini_pose_x(0.0)
    , ini_pose_y(0.0)
    , ini_pose_z(0.0)  {
    }
  setmap_ctr_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , Name(_alloc)
    , ini_pose_x(0.0)
    , ini_pose_y(0.0)
    , ini_pose_z(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Name_type;
  _Name_type Name;

   typedef float _ini_pose_x_type;
  _ini_pose_x_type ini_pose_x;

   typedef float _ini_pose_y_type;
  _ini_pose_y_type ini_pose_y;

   typedef float _ini_pose_z_type;
  _ini_pose_z_type ini_pose_z;





  typedef boost::shared_ptr< ::AnhungControl::setmap_ctr_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AnhungControl::setmap_ctr_<ContainerAllocator> const> ConstPtr;

}; // struct setmap_ctr_

typedef ::AnhungControl::setmap_ctr_<std::allocator<void> > setmap_ctr;

typedef boost::shared_ptr< ::AnhungControl::setmap_ctr > setmap_ctrPtr;
typedef boost::shared_ptr< ::AnhungControl::setmap_ctr const> setmap_ctrConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::AnhungControl::setmap_ctr_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::AnhungControl::setmap_ctr_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::AnhungControl::setmap_ctr_<ContainerAllocator1> & lhs, const ::AnhungControl::setmap_ctr_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.Name == rhs.Name &&
    lhs.ini_pose_x == rhs.ini_pose_x &&
    lhs.ini_pose_y == rhs.ini_pose_y &&
    lhs.ini_pose_z == rhs.ini_pose_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::AnhungControl::setmap_ctr_<ContainerAllocator1> & lhs, const ::AnhungControl::setmap_ctr_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace AnhungControl

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::AnhungControl::setmap_ctr_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::AnhungControl::setmap_ctr_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::AnhungControl::setmap_ctr_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8c23a07c53b1d6aa0bb1c34e1d6baaf2";
  }

  static const char* value(const ::AnhungControl::setmap_ctr_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8c23a07c53b1d6aaULL;
  static const uint64_t static_value2 = 0x0bb1c34e1d6baaf2ULL;
};

template<class ContainerAllocator>
struct DataType< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "AnhungControl/setmap_ctr";
  }

  static const char* value(const ::AnhungControl::setmap_ctr_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string type\n"
"string Name\n"
"float32 ini_pose_x\n"
"float32 ini_pose_y\n"
"float32 ini_pose_z\n"
;
  }

  static const char* value(const ::AnhungControl::setmap_ctr_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.Name);
      stream.next(m.ini_pose_x);
      stream.next(m.ini_pose_y);
      stream.next(m.ini_pose_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct setmap_ctr_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::AnhungControl::setmap_ctr_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::AnhungControl::setmap_ctr_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "Name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Name);
    s << indent << "ini_pose_x: ";
    Printer<float>::stream(s, indent + "  ", v.ini_pose_x);
    s << indent << "ini_pose_y: ";
    Printer<float>::stream(s, indent + "  ", v.ini_pose_y);
    s << indent << "ini_pose_z: ";
    Printer<float>::stream(s, indent + "  ", v.ini_pose_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANHUNGCONTROL_MESSAGE_SETMAP_CTR_H
