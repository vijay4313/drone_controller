function [desired_state] = circle(t, qn)
% CIRCLE trajectory generator for a circle

% =================== Your code goes here ===================
% You have to set the pos, vel, acc, yaw and yawdot variables

pos = [0; 0; 0];
vel = [0; 0; 0];
acc = [0; 0; 0];
yaw = 0;
yawdot = 0;

if qn == 1
    pos  = [5 * cos(t); 5 * sin(t); (2.5/(2*pi)) * t];
    vel = [5 * -sin(t); 5 * cos(t); (2.5/(2*pi))];
    acc = [5 * -cos(t); 5 * -sin(t); 0];
end

if pos(3) > 2.5
    pos  = [5; 0; 2.5];
    vel = [0;0;0];
    acc = [0;0;0];
end

% =================== Your code ends here ===================

desired_state.pos = pos(:);
desired_state.vel = vel(:);
desired_state.acc = acc(:);
desired_state.yaw = yaw;
desired_state.yawdot = yawdot;

end
