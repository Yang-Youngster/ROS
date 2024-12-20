# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kr_tracker_msgs/LissajousAdderGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LissajousAdderGoal(genpy.Message):
  _md5sum = "0d1dd950c79374f41a6a89f6bb58553e"
  _type = "kr_tracker_msgs/LissajousAdderGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
float64[2] x_amp
float64[2] y_amp
float64[2] z_amp
float64[2] yaw_amp
float64[2] x_num_periods
float64[2] y_num_periods
float64[2] z_num_periods
float64[2] yaw_num_periods
float64[2] period
float64[2] num_cycles
float64[2] ramp_time
"""
  __slots__ = ['x_amp','y_amp','z_amp','yaw_amp','x_num_periods','y_num_periods','z_num_periods','yaw_num_periods','period','num_cycles','ramp_time']
  _slot_types = ['float64[2]','float64[2]','float64[2]','float64[2]','float64[2]','float64[2]','float64[2]','float64[2]','float64[2]','float64[2]','float64[2]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x_amp,y_amp,z_amp,yaw_amp,x_num_periods,y_num_periods,z_num_periods,yaw_num_periods,period,num_cycles,ramp_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LissajousAdderGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.x_amp is None:
        self.x_amp = [0.] * 2
      if self.y_amp is None:
        self.y_amp = [0.] * 2
      if self.z_amp is None:
        self.z_amp = [0.] * 2
      if self.yaw_amp is None:
        self.yaw_amp = [0.] * 2
      if self.x_num_periods is None:
        self.x_num_periods = [0.] * 2
      if self.y_num_periods is None:
        self.y_num_periods = [0.] * 2
      if self.z_num_periods is None:
        self.z_num_periods = [0.] * 2
      if self.yaw_num_periods is None:
        self.yaw_num_periods = [0.] * 2
      if self.period is None:
        self.period = [0.] * 2
      if self.num_cycles is None:
        self.num_cycles = [0.] * 2
      if self.ramp_time is None:
        self.ramp_time = [0.] * 2
    else:
      self.x_amp = [0.] * 2
      self.y_amp = [0.] * 2
      self.z_amp = [0.] * 2
      self.yaw_amp = [0.] * 2
      self.x_num_periods = [0.] * 2
      self.y_num_periods = [0.] * 2
      self.z_num_periods = [0.] * 2
      self.yaw_num_periods = [0.] * 2
      self.period = [0.] * 2
      self.num_cycles = [0.] * 2
      self.ramp_time = [0.] * 2

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
      buff.write(_get_struct_2d().pack(*self.x_amp))
      buff.write(_get_struct_2d().pack(*self.y_amp))
      buff.write(_get_struct_2d().pack(*self.z_amp))
      buff.write(_get_struct_2d().pack(*self.yaw_amp))
      buff.write(_get_struct_2d().pack(*self.x_num_periods))
      buff.write(_get_struct_2d().pack(*self.y_num_periods))
      buff.write(_get_struct_2d().pack(*self.z_num_periods))
      buff.write(_get_struct_2d().pack(*self.yaw_num_periods))
      buff.write(_get_struct_2d().pack(*self.period))
      buff.write(_get_struct_2d().pack(*self.num_cycles))
      buff.write(_get_struct_2d().pack(*self.ramp_time))
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
      end += 16
      self.x_amp = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.y_amp = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.z_amp = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.yaw_amp = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.x_num_periods = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.y_num_periods = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.z_num_periods = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.yaw_num_periods = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.period = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.num_cycles = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.ramp_time = _get_struct_2d().unpack(str[start:end])
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
      buff.write(self.x_amp.tostring())
      buff.write(self.y_amp.tostring())
      buff.write(self.z_amp.tostring())
      buff.write(self.yaw_amp.tostring())
      buff.write(self.x_num_periods.tostring())
      buff.write(self.y_num_periods.tostring())
      buff.write(self.z_num_periods.tostring())
      buff.write(self.yaw_num_periods.tostring())
      buff.write(self.period.tostring())
      buff.write(self.num_cycles.tostring())
      buff.write(self.ramp_time.tostring())
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
      end += 16
      self.x_amp = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.y_amp = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.z_amp = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.yaw_amp = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.x_num_periods = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.y_num_periods = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.z_num_periods = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.yaw_num_periods = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.period = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.num_cycles = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.ramp_time = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
