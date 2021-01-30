%% Tailobatic Varbiable initialisation

Simulation.MaxRollRate   = 2*pi*100;
Simulation.MaxPitchRate  = 2*pi*100;


%% body diameters
Robot.BodyMass      = (27+ 235+8.4+9.9+25+24.3)*10^-3;
Robot.TailMass      = 11e-3;

Robot.BodyLength    = 236*10^-3;
Robot.BodyWidth     = 56e-3;
Robot.BodyThickness = 30e-3;
Robot.Body = [Robot.BodyLength 
              Robot.BodyWidth 
              Robot.BodyThickness];
Robot.BodyInertia = [1.10855E-04, 1.5545E-03, 1.61592E-03];


Robot.TailLength    = 215e-3;
Robot.TailDiameter  = 10e-3;


Robot.RollP         = 2;
Robot.RollI         = 0.01;
Robot.RollD         = 0.4;

% Robot.PitchP         = 1;
Robot.PitchP         = 10;
Robot.PitchI         = 0.01;
Robot.PitchD         = 0.4;

Robot.InitialVel = [-360, 0, 0]; % deg/s, roll, pitch, yaw
% Robot.InitialVel = [0, 0, 0]; % deg/s, roll, pitch, yaw
Robot.tail_InitialPitchAng = -pi/2; % -90: neutral
Robot.tail_InitialRollAng = -pi/2; % -90: horizontal, 0: vertical
          
Motor.Kp   = 1;
Motor.Ki   = 1e-5;
Motor.Kd   = 0;
Motor.Vs   = 5;
Motor.V    = 12;
% Motor.kV   = 200 <- original;
Motor.kV   = 10;
Motor.R0   = 10;
Motor.H0   = 0.1e-3;
Motor.I0   = 0.1;
Motor.Im  = 100;


assignin('base','Simulation',Simulation);
assignin('base','Robot',Robot);
assignin('base','Motor',Motor);

