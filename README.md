MonotonicTime
==============

Monotonic clock time in seconds

[![Build Status](https://travis-ci.org/ledestin/monotonic_time.png)](https://travis-ci.org/ledestin/monotonic_time)

## Why

Existing cross-platform monotonic time gem `hitimes' returns nanoseconds, but I
find it more convenient to work with seconds. This gem provides that.

## Example

Only two methods are provided:

```ruby
  require 'monotonic_time'

  MonotonicTime.now #=> 7056926.918025866

  MonotonicTime.measure { sleep 0.5 } #=> 0.5000940272584558
```

## Installation

```
gem install monotonic_time
```
