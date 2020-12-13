from prometheus_client import Gauge
sample_gauge_1 = Gauge('my_increment_example_requests', 'Description of increment gauge')
sample_gauge_2 = Gauge('my_decrement_example_requests', 'Description of decrement gauge')
sample_gauge_3 = Gauge('my_set_example_requests', 'Description of set gauge')

sample_gauge_1.inc()      # This will increment by 1
sample_gauge_2.dec(10)    # This will decrement by given value of 10
sample_gauge_3.set(48)   # This will set to the given value of 48
