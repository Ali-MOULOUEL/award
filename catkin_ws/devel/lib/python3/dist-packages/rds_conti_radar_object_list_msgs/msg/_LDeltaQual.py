# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rds_conti_radar_object_list_msgs/LDeltaQual.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LDeltaQual(genpy.Message):
  _md5sum = "46a34ed6db73a66ffc285aa58260c6bd"
  _type = "rds_conti_radar_object_list_msgs/LDeltaQual"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#RadarObject LDeltaQual field : Quality of OBB distances
uint8 LDELTAQUAL_ALL_INVALID = 0
uint8 LDELTAQUAL_LEFT_VALID =1
uint8 LDELTAQUAL_MID_VALID = 2
uint8 LDELTAQUAL_LEFT_MID_VALID = 3
uint8 LDELTAQUAL_RIGHT_VALID = 4
uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5
uint8 LDELTAQUAL_RIGHT_MID_VALID = 6
uint8 LDELTAQUAL_ALL_VALID = 7

uint8 LDeltaQual"""
  # Pseudo-constants
  LDELTAQUAL_ALL_INVALID = 0
  LDELTAQUAL_LEFT_VALID = 1
  LDELTAQUAL_MID_VALID = 2
  LDELTAQUAL_LEFT_MID_VALID = 3
  LDELTAQUAL_RIGHT_VALID = 4
  LDELTAQUAL_RIGHT_LEFT_VALID = 5
  LDELTAQUAL_RIGHT_MID_VALID = 6
  LDELTAQUAL_ALL_VALID = 7

  __slots__ = ['LDeltaQual']
  _slot_types = ['uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       LDeltaQual

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LDeltaQual, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.LDeltaQual is None:
        self.LDeltaQual = 0
    else:
      self.LDeltaQual = 0

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
      _x = self.LDeltaQual
      buff.write(_get_struct_B().pack(_x))
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
      start = end
      end += 1
      (self.LDeltaQual,) = _get_struct_B().unpack(str[start:end])
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
      _x = self.LDeltaQual
      buff.write(_get_struct_B().pack(_x))
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
      start = end
      end += 1
      (self.LDeltaQual,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
