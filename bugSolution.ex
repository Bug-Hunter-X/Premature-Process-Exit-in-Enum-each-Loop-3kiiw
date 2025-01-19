```elixir
list = [1, 2, 3, 4, 5]

result = Enum.map(list, fn x ->
  if x == 3 do
    {:error, x}
  else
    {:ok, x}
  end
end)

IO.inspect(result)

#Alternative using Enum.reduce
result2 = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    [{:error, x} | acc]
  else
    [{:ok, x} | acc]
  end
end)
IO.inspect(result2)
```