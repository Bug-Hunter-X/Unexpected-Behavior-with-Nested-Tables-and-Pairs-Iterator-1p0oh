local function foo(t, path)
  path = path or {}
  for k, v in ipairs(t) do
    if type(v) == "table" then
      foo(v, {table.unpack(path), k})
    else
      if #path > 0 then
        local access = t
        for i, key in ipairs(path) do
          access = access[key]
        end
        print(access)
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
print(t.b.d.e)