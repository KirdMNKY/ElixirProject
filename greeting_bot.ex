defmodule GreetingBot do
  # Greets user and asks for name
  # If name !== <myName>
  #   give basic greeting
  # else
  #   give special greeting

  def greet do
    name = IO.gets "Hello, what is your name?\n"
    case String.trim(name) do
      "Mike" -> IO.puts "Wow! Mike is my favorite name!! I was programmed by Mike!"

      _ -> IO.puts "Nice to meet you, #{name}"
    end
  end
end
