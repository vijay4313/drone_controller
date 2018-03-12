function [desired_state] = unit(t, qn)
% CIRCLE trajectory generator for a circle

% =================== Your code goes here ===================
% You have to set the pos, vel, acc, yaw and yawdot variables

pos = [0; 0; 0];
vel = [0; 0; 0];
acc = [0; 0; 0];
yaw = 0;
yawdot = 0;

if qn == 1
    pos  = [t;t;t];
    vel = [1;1;1];
    acc = [0;0;0];
end

if t > 2.5
    pos = [2.5;2.5;2.5];
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
