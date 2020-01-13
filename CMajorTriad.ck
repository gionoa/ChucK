SinOsc mog => dac;

[262.0, 327.5, 393.0] @=> float Cmaj[]; // Key of C represented as frequencies
3 => int count;

1.0 => mog.gain;

0 => int i;
while (true) {
    Cmaj[i++ % count] => mog.freq;
    0.5::second => now;
}
