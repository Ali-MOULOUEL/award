# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rds_conti_radar_object_list_msgs/SensorMsgHeader.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rds_conti_radar_object_list_msgs.msg

class SensorMsgHeader(genpy.Message):
  _md5sum = "c61f492b9657164b862e05bce5436fda"
  _type = "rds_conti_radar_object_list_msgs/SensorMsgHeader"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#SensorMsgHeader fields
MsgHeader CommonHeader
uint32 SensorId             #sensor ID
SignalStatus SignalStatus   #status of the signals in the data packet
================================================================================
MSG: rds_conti_radar_object_list_msgs/MsgHeader
#MsgHeader fields
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

================================================================================
MSG: rds_conti_radar_object_list_msgs/SignalStatus
#SensorMsgHeader SignalStatus field
uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2

uint8 SignalStatus"""
  __slots__ = ['CommonHeader','SensorId','SignalStatus']
  _slot_types = ['rds_conti_radar_object_list_msgs/MsgHeader','uint32','rds_conti_radar_object_list_msgs/SignalStatus']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       CommonHeader,SensorId,SignalStatus

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SensorMsgHeader, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.CommonHeader is None:
        self.CommonHeader = rds_conti_radar_object_list_msgs.msg.MsgHeader()
      if self.SensorId is None:
        self.SensorId = 0
      if self.SignalStatus is None:
        self.SignalStatus = rds_conti_radar_object_list_msgs.msg.SignalStatus()
    else:
      self.CommonHeader = rds_conti_radar_object_list_msgs.msg.MsgHeader()
      self.SensorId = 0
      self.SignalStatus = rds_conti_radar_object_list_msgs.msg.SignalStatus()

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
      buff.write(_get_struct_3I2BIB().pack(_x.CommonHeader.Seq, _x.CommonHeader.stamp.Sec, _x.CommonHeader.stamp.Nsec, _x.CommonHeader.Timestamp_source.TimeStampSource, _x.CommonHeader.TimeStamp_sync_state.TimeStampSyncState, _x.SensorId, _x.SignalStatus.SignalStatus))
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
      if self.CommonHeader is None:
        self.CommonHeader = rds_conti_radar_object_list_msgs.msg.MsgHeader()
      if self.SignalStatus is None:
        self.SignalStatus = rds_conti_radar_object_list_msgs.msg.SignalStatus()
      end = 0
      _x = self
      start = end
      end += 19
      (_x.CommonHeader.Seq, _x.CommonHeader.stamp.Sec, _x.CommonHeader.stamp.Nsec, _x.CommonHeader.Timestamp_source.TimeStampSource, _x.CommonHeader.TimeStamp_sync_state.TimeStampSyncState, _x.SensorId, _x.SignalStatus.SignalStatus,) = _get_struct_3I2BIB().unpack(str[start:end])
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
      buff.write(_get_struct_3I2BIB().pack(_x.CommonHeader.Seq, _x.CommonHeader.stamp.Sec, _x.CommonHeader.stamp.Nsec, _x.CommonHeader.Timestamp_source.TimeStampSource, _x.CommonHeader.TimeStamp_sync_state.TimeStampSyncState, _x.SensorId, _x.SignalStatus.SignalStatus))
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
      if self.CommonHeader is None:
        self.CommonHeader = rds_conti_radar_object_list_msgs.msg.MsgHeader()
      if self.SignalStatus is None:
        self.SignalStatus = rds_conti_radar_object_list_msgs.msg.SignalStatus()
      end = 0
      _x = self
      start = end
      end += 19
      (_x.CommonHeader.Seq, _x.CommonHeader.stamp.Sec, _x.CommonHeader.stamp.Nsec, _x.CommonHeader.Timestamp_source.TimeStampSource, _x.CommonHeader.TimeStamp_sync_state.TimeStampSyncState, _x.SensorId, _x.SignalStatus.SignalStatus,) = _get_struct_3I2BIB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I2BIB = None
def _get_struct_3I2BIB():
    global _struct_3I2BIB
    if _struct_3I2BIB is None:
        _struct_3I2BIB = struct.Struct("<3I2BIB")
    return _struct_3I2BIB