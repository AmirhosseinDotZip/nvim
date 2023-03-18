function opt(scope, key, value)
    vim[scope][key] = value
    if scope ~= 'o' then
        vim['o'][key] = value
    end
end

opt('wo', 'number', true) -- Show absolute line number
