package sptech.school.exemplo.actions.service;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CalculadoraServiceTest {
    @Test
    @DisplayName("Quando aciona com 10 e 2, então deve retornar 5")
    public void testDividir(){
        CalculadoraService calculadoraService = new CalculadoraService();
        double a = 10;
        double b = 9;
        double esperado = 5;

        double resultado = calculadoraService.dividir(a, b);

        assertEquals(esperado, resultado);
    }
}
