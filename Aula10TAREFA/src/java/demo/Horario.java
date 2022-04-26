/*
 * TAREFA - AULA 10
 * 
 */
package demo;

/**
 *
 * @author caroline
 */
public class Horario {
    
    private int hour;
    private int minutes;
    private int seconds;
    

    public Horario(int hour, int minutes, int seconds) {
        this.hour = hour;
        this.minutes = minutes;
        this.seconds = seconds;
    }

      public String getHorario(){
        return this.hour + ":" + this.minutes + ":" + this.seconds;
    }
      
     
    public Horario(){
        hour = 16; minutes = 45; seconds = 59;
    }
    
    public int getHour() {
        return hour;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public int getMinutes() {
        return minutes;
    }

    public void setMinutes(int minutes) {
        this.minutes = minutes;
    }

    public int getSeconds() {
        return seconds;
    }

    public void setSeconds(int seconds) {
        this.seconds = seconds;
    }
    
    
    
}
