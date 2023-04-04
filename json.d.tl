local record json
    decode: function<T>(string): T
    encode: function<T>(T): string
end
return json
