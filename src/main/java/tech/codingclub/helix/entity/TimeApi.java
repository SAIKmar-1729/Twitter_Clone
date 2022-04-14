package tech.codingclub.helix.entity;

public class TimeApi {

    private String time_str;
    private Long epoch_Time;

    public TimeApi(){

    }
    public TimeApi(String time_str, Long epoch_Time) {
        this.time_str = time_str;
        this.epoch_Time = epoch_Time;
    }
}
