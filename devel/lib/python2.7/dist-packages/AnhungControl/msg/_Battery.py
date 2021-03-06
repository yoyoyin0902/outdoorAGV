# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from AnhungControl/Battery.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Battery(genpy.Message):
  _md5sum = "49990e1b1b63370ee64f7539c711f8c7"
  _type = "AnhungControl/Battery"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 Voltage
float64 Current
float64 RelativeSOC1
float64 RelativeSOC2
float64 RelativeSOC3
float64 RelativeSOC4
float64 AbsoluteSOC1
float64 AbsoluteSOC2
float64 AbsoluteSOC3
float64 AbsoluteSOC4
float64 Temp1
float64 Temp2
float64 Temp3
float64 Temp4
"""
  __slots__ = ['Voltage','Current','RelativeSOC1','RelativeSOC2','RelativeSOC3','RelativeSOC4','AbsoluteSOC1','AbsoluteSOC2','AbsoluteSOC3','AbsoluteSOC4','Temp1','Temp2','Temp3','Temp4']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Voltage,Current,RelativeSOC1,RelativeSOC2,RelativeSOC3,RelativeSOC4,AbsoluteSOC1,AbsoluteSOC2,AbsoluteSOC3,AbsoluteSOC4,Temp1,Temp2,Temp3,Temp4

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Battery, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Voltage is None:
        self.Voltage = 0.
      if self.Current is None:
        self.Current = 0.
      if self.RelativeSOC1 is None:
        self.RelativeSOC1 = 0.
      if self.RelativeSOC2 is None:
        self.RelativeSOC2 = 0.
      if self.RelativeSOC3 is None:
        self.RelativeSOC3 = 0.
      if self.RelativeSOC4 is None:
        self.RelativeSOC4 = 0.
      if self.AbsoluteSOC1 is None:
        self.AbsoluteSOC1 = 0.
      if self.AbsoluteSOC2 is None:
        self.AbsoluteSOC2 = 0.
      if self.AbsoluteSOC3 is None:
        self.AbsoluteSOC3 = 0.
      if self.AbsoluteSOC4 is None:
        self.AbsoluteSOC4 = 0.
      if self.Temp1 is None:
        self.Temp1 = 0.
      if self.Temp2 is None:
        self.Temp2 = 0.
      if self.Temp3 is None:
        self.Temp3 = 0.
      if self.Temp4 is None:
        self.Temp4 = 0.
    else:
      self.Voltage = 0.
      self.Current = 0.
      self.RelativeSOC1 = 0.
      self.RelativeSOC2 = 0.
      self.RelativeSOC3 = 0.
      self.RelativeSOC4 = 0.
      self.AbsoluteSOC1 = 0.
      self.AbsoluteSOC2 = 0.
      self.AbsoluteSOC3 = 0.
      self.AbsoluteSOC4 = 0.
      self.Temp1 = 0.
      self.Temp2 = 0.
      self.Temp3 = 0.
      self.Temp4 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_14d().pack(_x.Voltage, _x.Current, _x.RelativeSOC1, _x.RelativeSOC2, _x.RelativeSOC3, _x.RelativeSOC4, _x.AbsoluteSOC1, _x.AbsoluteSOC2, _x.AbsoluteSOC3, _x.AbsoluteSOC4, _x.Temp1, _x.Temp2, _x.Temp3, _x.Temp4))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 112
      (_x.Voltage, _x.Current, _x.RelativeSOC1, _x.RelativeSOC2, _x.RelativeSOC3, _x.RelativeSOC4, _x.AbsoluteSOC1, _x.AbsoluteSOC2, _x.AbsoluteSOC3, _x.AbsoluteSOC4, _x.Temp1, _x.Temp2, _x.Temp3, _x.Temp4,) = _get_struct_14d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_14d().pack(_x.Voltage, _x.Current, _x.RelativeSOC1, _x.RelativeSOC2, _x.RelativeSOC3, _x.RelativeSOC4, _x.AbsoluteSOC1, _x.AbsoluteSOC2, _x.AbsoluteSOC3, _x.AbsoluteSOC4, _x.Temp1, _x.Temp2, _x.Temp3, _x.Temp4))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 112
      (_x.Voltage, _x.Current, _x.RelativeSOC1, _x.RelativeSOC2, _x.RelativeSOC3, _x.RelativeSOC4, _x.AbsoluteSOC1, _x.AbsoluteSOC2, _x.AbsoluteSOC3, _x.AbsoluteSOC4, _x.Temp1, _x.Temp2, _x.Temp3, _x.Temp4,) = _get_struct_14d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_14d = None
def _get_struct_14d():
    global _struct_14d
    if _struct_14d is None:
        _struct_14d = struct.Struct("<14d")
    return _struct_14d
