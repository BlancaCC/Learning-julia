
lk = ReentrantLock() 

function Hello()
    number = rand()
    sleep(number)
    println("Hello I am $(Threads.threadid()) thread, I have slept $number seconds")
    
end
Threads.@threads for i = 1:Threads.nthreads()
 lock(Hello, lk)
end

Threads.@threads for i = 1:Threads.nthreads()
    lock(lk)
    number = rand()
    sleep(number)
    println("Hello I am $(Threads.threadid()) thread, I have slept $number seconds")
    unlock(lk)
   end


