require 'hitimes'

# Access monotonic clock time (in seconds).
class MonotonicTime
  NANOS_IN_SECOND = 1_000_000_000

  # Return time taken by block execution (in seconds).
  def self.measure &b
    start = now
    yield
    now - start
  end

  # Return current monotonic clock time in seconds.
  def self.now
    Hitimes::Interval.now.start_instant.to_f/NANOS_IN_SECOND
  end
end
