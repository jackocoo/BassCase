# Welcome to Sonic Pi v3.1

use_bpm 50

/
live_loop :things do
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

/

live_loop :boom do
  use_synth :supersaw
  play_pattern_timed [74, 76, 77, 77], [2], amp: 2
end

/

live_loop :boom do

  use_synth :piano

  in_thread do
    2.times do
      sample :drum_heavy_kick, amp: 0.5
      sleep 0.5
    end
  end

  in_thread do
    3.times do
      sleep 1
      play chord(:c, :major)
    end
    sleep 0.5
    1.times do
      play 67
      sleep 0.25
    end
    1.times do
      play 72
      sleep 0.25

      play chord(:c, :major)

    end
    1.times do
      play 77, sustain: 4
      sleep 0.25

    end
    1.times do
      play 76, sustain: 4
      sleep 0.25

    end
    1.times do
      play 74, sustain: 4
      sleep 0.25

    end
    1.times do
      play 72, sustain: 4
      sleep 0.25
    end

    play chord(:Bb, :major7)

    1.times do
      play 77, sustain: 4
      sleep 0.5

    end
    1.times do
      play 76, sustain: 4
      sleep 0.5

    end
    1.times do
      play 72, sustain: 4
      sleep 0.5
    end


  end

  4.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1
  end
end
/




