# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rds_msgs/msg_novatel_bestpos.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class msg_novatel_bestpos(genpy.Message):
  _md5sum = "dbab3b4899e83ce77d1e6c53cf057239"
  _type = "rds_msgs/msg_novatel_bestpos"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 message_id
uint8 port_address
uint16 sequence
uint8 idle
uint8 time_status
uint16 gps_week
uint32 gps_millisecs
uint32 status
int32 solution_status
int32 position_type
float64 latitude
float64 longitude
float64 height
float32 undulation
int32 datum_id
float32 latitude_standard_deviation
float32 longitude_standard_deviation
float32 height_standard_deviation
int8[] base_station_id
float32 differential_age
float32 solution_age
uint8 number_of_satellites
uint8 number_of_satellites_in_solution
uint8 num_gps_plus_glonass_l1
uint8 num_gps_plus_glonass_l2
uint8 extended_solution_status
uint8 signals_used_mask
uint8[] crc"""
  __slots__ = ['message_id','port_address','sequence','idle','time_status','gps_week','gps_millisecs','status','solution_status','position_type','latitude','longitude','height','undulation','datum_id','latitude_standard_deviation','longitude_standard_deviation','height_standard_deviation','base_station_id','differential_age','solution_age','number_of_satellites','number_of_satellites_in_solution','num_gps_plus_glonass_l1','num_gps_plus_glonass_l2','extended_solution_status','signals_used_mask','crc']
  _slot_types = ['uint16','uint8','uint16','uint8','uint8','uint16','uint32','uint32','int32','int32','float64','float64','float64','float32','int32','float32','float32','float32','int8[]','float32','float32','uint8','uint8','uint8','uint8','uint8','uint8','uint8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       message_id,port_address,sequence,idle,time_status,gps_week,gps_millisecs,status,solution_status,position_type,latitude,longitude,height,undulation,datum_id,latitude_standard_deviation,longitude_standard_deviation,height_standard_deviation,base_station_id,differential_age,solution_age,number_of_satellites,number_of_satellites_in_solution,num_gps_plus_glonass_l1,num_gps_plus_glonass_l2,extended_solution_status,signals_used_mask,crc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(msg_novatel_bestpos, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.message_id is None:
        self.message_id = 0
      if self.port_address is None:
        self.port_address = 0
      if self.sequence is None:
        self.sequence = 0
      if self.idle is None:
        self.idle = 0
      if self.time_status is None:
        self.time_status = 0
      if self.gps_week is None:
        self.gps_week = 0
      if self.gps_millisecs is None:
        self.gps_millisecs = 0
      if self.status is None:
        self.status = 0
      if self.solution_status is None:
        self.solution_status = 0
      if self.position_type is None:
        self.position_type = 0
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.height is None:
        self.height = 0.
      if self.undulation is None:
        self.undulation = 0.
      if self.datum_id is None:
        self.datum_id = 0
      if self.latitude_standard_deviation is None:
        self.latitude_standard_deviation = 0.
      if self.longitude_standard_deviation is None:
        self.longitude_standard_deviation = 0.
      if self.height_standard_deviation is None:
        self.height_standard_deviation = 0.
      if self.base_station_id is None:
        self.base_station_id = []
      if self.differential_age is None:
        self.differential_age = 0.
      if self.solution_age is None:
        self.solution_age = 0.
      if self.number_of_satellites is None:
        self.number_of_satellites = 0
      if self.number_of_satellites_in_solution is None:
        self.number_of_satellites_in_solution = 0
      if self.num_gps_plus_glonass_l1 is None:
        self.num_gps_plus_glonass_l1 = 0
      if self.num_gps_plus_glonass_l2 is None:
        self.num_gps_plus_glonass_l2 = 0
      if self.extended_solution_status is None:
        self.extended_solution_status = 0
      if self.signals_used_mask is None:
        self.signals_used_mask = 0
      if self.crc is None:
        self.crc = b''
    else:
      self.message_id = 0
      self.port_address = 0
      self.sequence = 0
      self.idle = 0
      self.time_status = 0
      self.gps_week = 0
      self.gps_millisecs = 0
      self.status = 0
      self.solution_status = 0
      self.position_type = 0
      self.latitude = 0.
      self.longitude = 0.
      self.height = 0.
      self.undulation = 0.
      self.datum_id = 0
      self.latitude_standard_deviation = 0.
      self.longitude_standard_deviation = 0.
      self.height_standard_deviation = 0.
      self.base_station_id = []
      self.differential_age = 0.
      self.solution_age = 0.
      self.number_of_satellites = 0
      self.number_of_satellites_in_solution = 0
      self.num_gps_plus_glonass_l1 = 0
      self.num_gps_plus_glonass_l2 = 0
      self.extended_solution_status = 0
      self.signals_used_mask = 0
      self.crc = b''

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
      buff.write(_get_struct_HBH2BH2I2i3dfi3f().pack(_x.message_id, _x.port_address, _x.sequence, _x.idle, _x.time_status, _x.gps_week, _x.gps_millisecs, _x.status, _x.solution_status, _x.position_type, _x.latitude, _x.longitude, _x.height, _x.undulation, _x.datum_id, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation))
      length = len(self.base_station_id)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.Struct(pattern).pack(*self.base_station_id))
      _x = self
      buff.write(_get_struct_2f6B().pack(_x.differential_age, _x.solution_age, _x.number_of_satellites, _x.number_of_satellites_in_solution, _x.num_gps_plus_glonass_l1, _x.num_gps_plus_glonass_l2, _x.extended_solution_status, _x.signals_used_mask))
      _x = self.crc
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      end += 69
      (_x.message_id, _x.port_address, _x.sequence, _x.idle, _x.time_status, _x.gps_week, _x.gps_millisecs, _x.status, _x.solution_status, _x.position_type, _x.latitude, _x.longitude, _x.height, _x.undulation, _x.datum_id, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation,) = _get_struct_HBH2BH2I2i3dfi3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.base_station_id = s.unpack(str[start:end])
      _x = self
      start = end
      end += 14
      (_x.differential_age, _x.solution_age, _x.number_of_satellites, _x.number_of_satellites_in_solution, _x.num_gps_plus_glonass_l1, _x.num_gps_plus_glonass_l2, _x.extended_solution_status, _x.signals_used_mask,) = _get_struct_2f6B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.crc = str[start:end]
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
      buff.write(_get_struct_HBH2BH2I2i3dfi3f().pack(_x.message_id, _x.port_address, _x.sequence, _x.idle, _x.time_status, _x.gps_week, _x.gps_millisecs, _x.status, _x.solution_status, _x.position_type, _x.latitude, _x.longitude, _x.height, _x.undulation, _x.datum_id, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation))
      length = len(self.base_station_id)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.base_station_id.tostring())
      _x = self
      buff.write(_get_struct_2f6B().pack(_x.differential_age, _x.solution_age, _x.number_of_satellites, _x.number_of_satellites_in_solution, _x.num_gps_plus_glonass_l1, _x.num_gps_plus_glonass_l2, _x.extended_solution_status, _x.signals_used_mask))
      _x = self.crc
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      end += 69
      (_x.message_id, _x.port_address, _x.sequence, _x.idle, _x.time_status, _x.gps_week, _x.gps_millisecs, _x.status, _x.solution_status, _x.position_type, _x.latitude, _x.longitude, _x.height, _x.undulation, _x.datum_id, _x.latitude_standard_deviation, _x.longitude_standard_deviation, _x.height_standard_deviation,) = _get_struct_HBH2BH2I2i3dfi3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.base_station_id = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      _x = self
      start = end
      end += 14
      (_x.differential_age, _x.solution_age, _x.number_of_satellites, _x.number_of_satellites_in_solution, _x.num_gps_plus_glonass_l1, _x.num_gps_plus_glonass_l2, _x.extended_solution_status, _x.signals_used_mask,) = _get_struct_2f6B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.crc = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f6B = None
def _get_struct_2f6B():
    global _struct_2f6B
    if _struct_2f6B is None:
        _struct_2f6B = struct.Struct("<2f6B")
    return _struct_2f6B
_struct_HBH2BH2I2i3dfi3f = None
def _get_struct_HBH2BH2I2i3dfi3f():
    global _struct_HBH2BH2I2i3dfi3f
    if _struct_HBH2BH2I2i3dfi3f is None:
        _struct_HBH2BH2I2i3dfi3f = struct.Struct("<HBH2BH2I2i3dfi3f")
    return _struct_HBH2BH2I2i3dfi3f
