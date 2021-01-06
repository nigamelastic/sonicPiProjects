
# HIHAT
define :hihat do
  use_synth :pnoise
  with_fx :hpf, cutoff: 120 do
    play release: 0.01, amp: 13
  end
end

live_loop :hihat_loop do
  divisors = ring 2, 4, 2, 2, 2, 2, 2, 6
  divisors.tick.times do
    hihat
    sleep 1.0 / divisors.look
  end
end