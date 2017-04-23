///Deletes hearts
for (i = 0; i < array_length_1d(health_array); i++) {
    with (health_array[i]) {
        instance_destroy();
    }
}
