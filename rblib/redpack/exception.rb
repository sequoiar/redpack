#
# RedPack-RPC for Ruby modified from MessagePack-RPC
#
# Copyright (C) 2010 FURUHASHI Sadayuki
# Copyright (C) 2010 Lux Delux Inc
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#
module RedPack

class Error < StandardError
end

class RPCError < Error
	def initialize(msg)
		super(msg)
	end
end

class RemoteError < RPCError
	def initialize(msg, result = nil)
		super(msg)
		@result = result
	end
	attr_reader :result
end

class TimeoutError < Error
	def initialize(msg = "request timed out")
		super
	end
end

class ConnectError < TimeoutError
	def initialize(msg = "connect failed")
		super
	end
end

end
