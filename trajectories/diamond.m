function [desired_state] = diamond(t, qn)
% DIAMOND trajectory generator for a diamond

% =================== Your code goes here ===================
% You have to set the pos, vel, acc, yaw and yawdot variables

pos = [0; 0; 0];
vel = [0; 0; 0];
acc = [0; 0; 0];
yaw = 0;
yawdot = 0;
syms t1
if qn == 1
    pos = [t1/(2*pi);(abs(cos(t1))*cos(t1)); (abs(sin(t1))*sin(t1))];
    vel = [diff(pos(1)); diff(pos(2)); diff(pos(3))];
    acc = [diff(vel(1)); diff(vel(2)); diff(vel(3))];
    pos = double(vpa(subs(pos, t1, t)));
    vel = double(vpa(subs(vel, t1, t)));
    vel = double(vpa(subs(vel, t1, t)));
end

if pos(1) > 1
    pos  = [1; 0; 0];
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
