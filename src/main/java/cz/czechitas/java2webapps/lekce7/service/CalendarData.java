package cz.czechitas.java2webapps.lekce7.service;

import java.time.LocalDate;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;

/**
 * @author Filip Jirsák
 */
public class CalendarData implements Iterable<DateData> {
  private final Deque<DateData> list = new LinkedList<>();

  public CalendarData append(String label, LocalDate date) {
    list.add(new DateData(label, date));
    return this;
  }

  @Override
  public Iterator<DateData> iterator() {
    return list.iterator();
  }

  public LocalDate getFirstDay() {
    return list.getFirst().date();
  }

  public LocalDate getLastDay() {
    return list.getLast().date();
  }
}
