# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from move_robot/Node_recv.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Node_recv(genpy.Message):
  _md5sum = "66cc5de5f9e7ba3174d5b24188e5cfba"
  _type = "move_robot/Node_recv"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 check
int8 value
string kin
int16 id
int16 type
int32 time
bool btn_finish
float32 x
float32 y
float32 z
int8 line
float32 radius
string map
int8 floor
"""
  __slots__ = ['check','value','kin','id','type','time','btn_finish','x','y','z','line','radius','map','floor']
  _slot_types = ['int8','int8','string','int16','int16','int32','bool','float32','float32','float32','int8','float32','string','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       check,value,kin,id,type,time,btn_finish,x,y,z,line,radius,map,floor

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Node_recv, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.check is None:
        self.check = 0
      if self.value is None:
        self.value = 0
      if self.kin is None:
        self.kin = ''
      if self.id is None:
        self.id = 0
      if self.type is None:
        self.type = 0
      if self.time is None:
        self.time = 0
      if self.btn_finish is None:
        self.btn_finish = False
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.line is None:
        self.line = 0
      if self.radius is None:
        self.radius = 0.
      if self.map is None:
        self.map = ''
      if self.floor is None:
        self.floor = 0
    else:
      self.check = 0
      self.value = 0
      self.kin = ''
      self.id = 0
      self.type = 0
      self.time = 0
      self.btn_finish = False
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.line = 0
      self.radius = 0.
      self.map = ''
      self.floor = 0

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
      buff.write(_get_struct_2b().pack(_x.check, _x.value))
      _x = self.kin
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2hiB3fbf().pack(_x.id, _x.type, _x.time, _x.btn_finish, _x.x, _x.y, _x.z, _x.line, _x.radius))
      _x = self.map
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.floor
      buff.write(_get_struct_b().pack(_x))
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
      end += 2
      (_x.check, _x.value,) = _get_struct_2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.kin = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.kin = str[start:end]
      _x = self
      start = end
      end += 26
      (_x.id, _x.type, _x.time, _x.btn_finish, _x.x, _x.y, _x.z, _x.line, _x.radius,) = _get_struct_2hiB3fbf().unpack(str[start:end])
      self.btn_finish = bool(self.btn_finish)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.map = str[start:end]
      start = end
      end += 1
      (self.floor,) = _get_struct_b().unpack(str[start:end])
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
      buff.write(_get_struct_2b().pack(_x.check, _x.value))
      _x = self.kin
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2hiB3fbf().pack(_x.id, _x.type, _x.time, _x.btn_finish, _x.x, _x.y, _x.z, _x.line, _x.radius))
      _x = self.map
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.floor
      buff.write(_get_struct_b().pack(_x))
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
      end += 2
      (_x.check, _x.value,) = _get_struct_2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.kin = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.kin = str[start:end]
      _x = self
      start = end
      end += 26
      (_x.id, _x.type, _x.time, _x.btn_finish, _x.x, _x.y, _x.z, _x.line, _x.radius,) = _get_struct_2hiB3fbf().unpack(str[start:end])
      self.btn_finish = bool(self.btn_finish)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.map = str[start:end]
      start = end
      end += 1
      (self.floor,) = _get_struct_b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2b = None
def _get_struct_2b():
    global _struct_2b
    if _struct_2b is None:
        _struct_2b = struct.Struct("<2b")
    return _struct_2b
_struct_2hiB3fbf = None
def _get_struct_2hiB3fbf():
    global _struct_2hiB3fbf
    if _struct_2hiB3fbf is None:
        _struct_2hiB3fbf = struct.Struct("<2hiB3fbf")
    return _struct_2hiB3fbf
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
