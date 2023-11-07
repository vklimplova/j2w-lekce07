package cz.czechitas.java2webapps.lekce7.service;

import java.time.LocalDate;

/**
 * @author Filip Jirsák
 */
public record DateDTO(String label, LocalDate date) {
}

/*recordy jsou podobný javabeanam, nevytváří se tam ale gettery a settery, když nadefinuji fieldy,
tak si to java udělá sama
        */
