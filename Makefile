all: parallel

parallel:
	julia --threads 5 parallel/for-print-multi-threading.jl
	julia --threads 5 parallel/lock.jl
