function dx = CD(t, x)

    % Parametros del circuito
    R = 10;        % resistencia (10 ohms)
    L = 2e-3;      % inductor (2 mH)
    C = 10e-6;     % capacitor (10 µF)
    Uin = 32;      % entrada (volts)
    fPWM = 100000;  % frecuencia (100 kHz)
    D = 0.4;       % PWM (40%)
    T = 1/fPWM;
    
    % Señal PWM (onda cuadrada)
    %d = (mod(t, T) < D*T);
    d = D * (mod(t, T) < T);

    %-----------------------------------------% 
    dx = zeros(2,1);

    %----- Dinamica del sistema -----%

    dx(1) = ((-1/L) * x(2)) + ((Uin/L) * d);
    dx(2) = ((1/C) * x(1) )- ((1/(R*C)) * x(2));

end
