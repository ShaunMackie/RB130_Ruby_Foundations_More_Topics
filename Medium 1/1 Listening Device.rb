=begin

#Problem

- we are given a listening device
- it lets us record something that is said and store it for later use
- in general, this is how the device should be used:
  listen for something, and if anything is said, record it for later use
  if nothing is said, do not record anything

- Anything that is said is retrieved by this listening device via a block
- if nothing is said, then no block is passed  - this might mean that if the array stored in  the @recordings instance variabl
  is empty, then no block is passed
- the listening device can also output the most recent recording using a Device#play method
  this looks like it takes the last item stored in the @recordings array and returns it in the form of a string?

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

- listen for something, and if anything is said, record it for later use
- so when we call listen on the Device object, and a block is passed in, we want to pass that block to the @recordings instance variable
- we need an instance method called listen
- when we pass that a block, we want to call the record method and pass in the block(or maybe just the stirng from the block) as an argument
- if no block is given, just pass nothing?
- becuase the method needs to work - and not return an error - if nothing is passed in as an argument

=end


class Device
  #attr_reader :recordings

  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen(&block) #LS's solution did not take an argument and I like their way better, but my way still works
    record(block.call) if block_given?
  end

  def play
    p @recordings.last #I had recordings.join in my initial solution cause I forgot to account for outputting the most recent recording - my solution only output THE recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
