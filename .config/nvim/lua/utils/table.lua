local M = {}

function M.merge(src_tbl, tbl)
    for _,v in ipairs(tbl) do
        table.insert(src_tbl, v)
    end

    return src_tbl
end

function M.dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. M.dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

return M
