#!/usr/bin/env ruby

def return_block
    yield
end

def return_proc ( &proc )
  yield
end

return_block { puts 'Got block!' }
return_block { puts 2*3^34 }
return_proc { puts 'Got block, convert to proc!' }
