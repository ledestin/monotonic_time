require 'rspec'
require 'monotonic_time'

describe MonotonicTime do
  it '#now works' do
    MonotonicTime.now.is_a? Float
  end
end
