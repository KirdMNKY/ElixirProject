# filename = IO.gets "File to count the words from: " |> String.trim()
filename = String.trim IO.gets "File to count the words from: "

# body = File.read!(filename) |> String.split()
words =
  File.read!(filename)
  |> String.split(~r{(\\n|[^\w']|_)+})
  |> Enum.filter(fn x -> x != "" end)

words |> Enum.count |> IO.puts

# run with elixir word_count.exs
