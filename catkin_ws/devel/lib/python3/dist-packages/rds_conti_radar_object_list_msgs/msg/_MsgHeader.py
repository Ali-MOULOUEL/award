# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rds_conti_radar_object_list_msgs/MsgHeader.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rds_conti_radar_object_list_msgs.msg

class MsgHeader(genpy.Message):
  _md5sum = "f65b5aa4f825d78a4a1dd55ce9d49881"
  _type = "rds_conti_radar_object_list_msgs/MsgHeader"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#MsgHeader fields
uint32 Seq          #sequence ID: consecutively increasing ID
Time stamp
TimeStampSource Timestamp_source
TimeStampSyncState TimeStamp_sync_state

================================================================================
MSG: rds_conti_radar_object_list_msgs/Time
#Time fields
uint32 Sec
uint32 Nsec 

================================================================================
MSG: rds_conti_radar_object_list_msgs/TimeStampSource
#MsgHeader field TimeStampSource
uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo

uint8 TimeStampSource 
================================================================================
MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState
#MsgHeader field TimeStampSyncState
uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all
uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all
uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism

uint8 TimeStampSyncState
"""
  __slots__ = ['Seq','stamp','Timestamp_source','TimeStamp_sync_state']
  _slot_types = ['uint32','rds_conti_radar_object_list_msgs/Time','rds_conti_radar_object_list_msgs/TimeStampSource','rds_conti_radar_object_list_msgs/TimeStampSyncState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Seq,stamp,Timestamp_source,TimeStamp_sync_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MsgHeader, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Seq is None:
        self.Seq = 0
      if self.stamp is None:
        self.stamp = rds_conti_radar_object_list_msgs.msg.Time()
      if self.Timestamp_source is None:
        self.Timestamp_source = rds_conti_radar_object_list_msgs.msg.TimeStampSource()
      if self.TimeStamp_sync_state is None:
        self.TimeStamp_sync_state = rds_conti_radar_object_list_msgs.msg.TimeStampSyncState()
    else:
      self.Seq = 0
      self.stamp = rds_conti_radar_object_list_msgs.msg.Time()
      self.Timestamp_source = rds_conti_radar_object_list_msgs.msg.TimeStampSource()
      self.TimeStamp_sync_state = rds_conti_radar_object_list_msgs.msg.TimeStampSyncState()

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
      buff.write(_get_struct_3I2B().pack(_x.Seq, _x.stamp.Sec, _x.stamp.Nsec, _x.Timestamp_source.TimeStampSource, _x.TimeStamp_sync_state.TimeStampSyncState))
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
      if self.stamp is None:
        self.stamp = rds_conti_radar_object_list_msgs.msg.Time()
      if self.Timestamp_source is None:
        self.Timestamp_source = rds_conti_radar_object_list_msgs.msg.TimeStampSource()
      if self.TimeStamp_sync_state is None:
        self.TimeStamp_sync_state = rds_conti_radar_object_list_msgs.msg.TimeStampSyncState()
      end = 0
      _x = self
      start = end
      end += 14
      (_x.Seq, _x.stamp.Sec, _x.stamp.Nsec, _x.Timestamp_source.TimeStampSource, _x.TimeStamp_sync_state.TimeStampSyncState,) = _get_struct_3I2B().unpack(str[start:end])
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
      buff.write(_get_struct_3I2B().pack(_x.Seq, _x.stamp.Sec, _x.stamp.Nsec, _x.Timestamp_source.TimeStampSource, _x.TimeStamp_sync_state.TimeStampSyncState))
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
      if self.stamp is None:
        self.stamp = rds_conti_radar_object_list_msgs.msg.Time()
      if self.Timestamp_source is None:
        self.Timestamp_source = rds_conti_radar_object_list_msgs.msg.TimeStampSource()
      if self.TimeStamp_sync_state is None:
        self.TimeStamp_sync_state = rds_conti_radar_object_list_msgs.msg.TimeStampSyncState()
      end = 0
      _x = self
      start = end
      end += 14
      (_x.Seq, _x.stamp.Sec, _x.stamp.Nsec, _x.Timestamp_source.TimeStampSource, _x.TimeStamp_sync_state.TimeStampSyncState,) = _get_struct_3I2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I2B = None
def _get_struct_3I2B():
    global _struct_3I2B
    if _struct_3I2B is None:
        _struct_3I2B = struct.Struct("<3I2B")
    return _struct_3I2B
