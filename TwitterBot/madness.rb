def secondly_loop
    last = Time.now
    while true
        yield
        now = Time.now
        _next = [last + 5,now].max
        sleep (_next-now)
        last = _next
    end
end

secondly_loop{

  i = 100
  a = 0

  while a < i
    p a
    p "for {#{a}}"
    a +=1
  end

}
