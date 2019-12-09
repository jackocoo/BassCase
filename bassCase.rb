# Welcome to Sonic Pi v3.1

use_bpm 50


#percussion section, plays during the entire song 
live_loop :rhythm_section do
  tick
  sample :drum_heavy_kick, amp: (ring 0.75, 0, 0.75, 0, 0.75, 0.75, 0, 0, 0.75, 0.75, 0.75, 0.75, 0.75, 0, 0, 0).look
  sample :drum_cymbal_closed, amp: 0.25
  sample :drum_snare_soft, amp: (ring 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1).look
  
  sample :drum_tom_hi_hard, amp: (ring 0, 0, 0, 0.25, 0, 0.25, 0.25, 0, 0, 0.25, 0, 0.25, 0, 0.25, 0.25, 0.25).look
  
  
  sample :drum_cymbal_open, amp: (ring 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0).look, start: 0, finish: 0.35, decay: 2
  
  use_synth :fm
  play 45, amp: 0.25
  sleep 0.25
end


#played during the chorus, live coding alternate between amp = 0 and amp = 0.3
live_loop :uplifting_melody do
  use_synth :supersaw
  play_pattern_timed [74, 76, 77, 77], [2], amp: 0.3
end
