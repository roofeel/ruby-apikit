#--
# Copyright (c) Richard Uren 2016 <richard@teleport.com.au>
# All Rights Reserved
#
# LICENSE: Redistribution and use in source and binary forms, with or
# without modification, are permitted provided that the following
# conditions are met: Redistributions of source code must retain the
# above copyright notice, this list of conditions and the following
# disclaimer. Redistributions in binary form must reproduce the above
# copyright notice, this list of conditions and the following disclaimer
# in the documentation and/or other materials provided with the
# distribution.
#
# THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
# NO EVENT SHALL CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
# TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
# USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
# DAMAGE.
#++

class RailsCache
  # Construct a new Rails cache object.
  #
  def initialize(config={})
    unless defined? Rails
      raise "Cannot access Rails."
    end
    @cache = Rails.cache 
  end

  # Get key
  #
  def get(key)
    @cache.read key
  end

  # Set key
  #
  def set(key, data, ttl)
    @cache.write key, data, expires_in: ttl
  end

  # Delete key
  #
  def del(key)
    @cache.delete key
  end
  
  # Flush cache
  def flush
    @cache.clear
  end
end
