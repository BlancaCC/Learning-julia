a = zeros(10)
Threads.@threads for i = 1:10
    a[i] = Threads.threadid()
end
println("There is $(Threads.nthreads()) threads")
println("The id that change the value is $a")
