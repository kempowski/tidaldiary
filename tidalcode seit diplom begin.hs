
speaker = [ 0.1, 0.2, 0.3, 0.4, 0.5, 0.8, 0.9]
sub = speaker!!5
horn = speaker!!6
teufel = [ 0, 0.1, 0.4, 0.5]
bla = [ 0.2, 0.3, 0.6, 0.7]

try = range 0 4 sine


d1 $ n (scale "messiaen7" "0 1 2 3 4 5 6 7") # sound "supermandolin" # pan (fit 1 speaker1 "0 1 2 3 4 5
 ")

d3 $ s "nis" # pan (choose(bla)) # speed 0.3 # gain 1.4 # cut 1
 

d2 $ slow 4 $ n ("f3 a3 c3 e4") # s "supertron" # cutoff 2000*sine


d1 $ off 0.25 ( (# pan sine) . (# gain 1.2)) $ slow 4 $ n "f3 a3" 
  # s "psin" 
  # decay "0.2 0.4 0.1" 
  # accelerate "[1 0.2]/4"
  # cps "0.2 0.5 0.4 1"
  # gain 0.8
--   # room 0.3

d2 $ euclid 3 8 $ s "[hih bd]!3" # pan 0.8 # gain 1.3

d2 silence

cps(0.1)

d5 $ slow 4 $ chop 16 $ s "tacscan*64" # cut 2 # lpf 1000

d4 $ sound "numbers" # n "[0 1 2 3]/4" # pan (choose bla)

--   # voice "[0.5 0]/8" 

let anxiety = striate'
    afk = (const $ s "")
    stfu = afk

let together p = stutter 3 (2/16) $ p

let asdf sampleName = density 8 
                        $ s sampleName
                        # n (irand 4)
                        # unit "c"
                        # speed 8

d1 $ slow 4 $ anxiety "<2 8 4 >" (0.25/4) $ s "numbers:0 numbers:1"

d1 $ stack[
    s "spbss" # cut 1,
    every 2 afk $ s "ilBd"
]

d1 $ chop 16 $ s "test" # gain 2 # cut 1

d1 $ slow 2 $ chop 4 $ s "drums*4" # gain 1 # cut 1 # speed "0.4 1 0.5 0.7"

d1 $ s "bd sn bd sn"

once $ s "str"

d1 $ anxiety 14 (1/16) $ s "noEvent"

let asdf sampleName = density 8 
                        $ s sampleName
                        # n (irand 4)
                        # unit "c"
                        # speed 8

d1 $ chop 2 $ asdf "spbss" # cps ((0.5) * (range 1 7 $ slow 1.5 saw))


d3 $ s "bd(3,8)"

xfadeIn 3 8 $ s "arpy*4"

d1 $ sound "jvbass(3,8)"

clutch 1 $ sound "bd sn" 


d1 $ sound "arpy*16" # cutoff 100

interpolate 1 $ sound "arpy*16" # cutoff 16000

d1 $ s "[bd ~ [bd [ht lt]] ho]"

d2 $ s "hh27:2*4 cp*3"

wait 2 4 $ s "feel:4*4 cp*3"


d1 $ chop 8 $ rev $ anxiety 4 0.125 $ s "numbers*8" # nTake "sus" [0 .. 1]

d1 $ slow 2 $ n "-8" 
    # s "supersquare" 
    # decay "[0.4 0.7]/2"
    # voice "<0.1 0.2 0.3>"
    # accelerate 0.4
    # resonance (0.1)
    # lfo 0.4
    # rate 666
    # semitone "[3 5 7]/3"
    # cps 1

d2 $ n "g'min " # s "supersaw" 

chordList

d1 $ stack[
    slow 2 $ ghost $ n "1 3 7 5"
        # s "psin" # room 0.5 # gain 0.6,
    every 4 (fast 2) . euclid 3 8 $ s "ilBd",
    s "tascan" # cut "2",
    off 0.125 (# pan square) $ echo 1 0.32 0.5 $ s "hih:3*16?" # hpf 6000 # hpq 0.8 # gain 0.5  
]

d1 $ stack[
    slow 4 $ ghost $ n "1 3 7 5" # s "psin" # pan sub # gain 0.8,
    stfu $ off 0.125 (#pan 0.3) $ s "hih:3*16?" #hpf 6000
]

d1 $ anxiety 23 $ s "test" # pan (speaker!!1) # gain 1.1 # cut 1

d2  $ every 2 ( anxiety "22 66")$  s "supersquare" # n "19 18 17" # pan circle # decay 0.9  # gain "[0.3 0.5 0.3 0.4]/4"

d3 $ silence

d3 $ chop 32 $ s "powerUp" # pan (choose(speaker)) # gain 0.5

d4 $ slow 3 $ anxiety 22 $ euclid "<3 5>" "<8 11>" $ s "glitch" # pan (choose(speaker)) # gain "<0.4 0.5 0.6>"

d5 $ together $ every 3 (jux $ rev ) $ slow 5 $ s "popup" # pan (choose(speaker)) 

d1 $ s "popup"

d1 $ slow 3 $ s "noEvent" # gain 0.6 # pan (choose(speaker))

d1 
    $ slow 4
    $ stutWith 2 (0.125) (# pan circle ) 
    $ s "noEvent"
    # pan jump 
    # cut "<0 1>"
    # gain 0.8

d5 $ s "bd*16?" # pan jump # gain 0.6

d2 $ silence


hush

d1 $ stfu $ s "test" # cut "1" # pan circle # gain 2

d2 $ stfu $ slow 4 $ anxiety "<22 66> " $ s "powerUp*4" # gain 0.5  # pan jump

d3 $ s "popup" # gain "<0.5 0.4 0.6>" # pan circle

d4 $ s "noEvent" # gain 0.4 

d2 $ silence

d4 $ s "popup"

let aufloesung = (chop 16)

d5 $ every 3 (rev) $ chop 128 $ s "glitch:0 glitch:1" # gain 0.8 # pan circle # cps "<0.4 0.5 1 3>/2"


d2 $ stack[
    s "bd ~ [bd bd] [sd sd clap]" 
    # gain 0.4,
    stfu $ s "hih*16" # gain 0.5 
] # cps (perlin + 0.5) 


d1 $ s "glitch:3" # gain 0.5 # pan circle

hush

-- impro mit niko im soundlab

d1 $ s "test" # cut "<0 1>" # pan circle # gain 0.5

d2 $ anxiety "<22 66>" $ slow 3 $ s "powerUp" # gain 0.7 # pan jump 

d3 $ s "bd*16?" # pan (speaker!!5) # gain 0.8
 
d4 $ every 4 (rev) $ chop 22 $ s "popup" # pan circle # 0.4

d3 $ silence

d1 $ slow 4 $ s "test" # cut "<1 0>" # gain 1.4 # speed "0.6"


d1 $ s "bd"

let a = [1..100]

let rytm = (# s "rytm")

let bd p = (# s "rytm") . ( # midichan 0) $ p
let bd = (# s "rytm") . ( # midichan 0)


    sd = "c'2"

d1 $ euclid 3 8 $ n "c3" # s "rytm ~" # midichan 0

d2 $ n "c3" # s "~ rytm" # midichan 1 # gain 0.8

d3 $ degradeBy 0.3 $ anxiety 2 $ n "c3 f3 [b2*2] e3" # s "rytm" # midichan 8

d1 $ stack [
    euclid 3 8 $ n "c3" # s "rytm ~" # midichan 0,
    every 2 ( fast 4) $ degradeBy 0.3 $ every 4 (ghost) $ n "~ c3" # s "rytm" # midichan 1 # gain 0.9,
    degradeBy 0 $ slow 1 $ n "c3*<3 4 8 12>" # s "rytm" # midichan 8 # gain 0.7
]  # cps 0.82


# cps (slow 4 (range 0.2 1 tri))

d1 $ s "test" # gain 0.6 # cut "<1 0>" # pan circle

d2 $ degradeBy 0.4 $ euclid 3 8 $ s "popup*5" # gain 0.5 # pan jump 
d3 $ asdf "dexter" # gain 0.5 # pan jump # cps (range 0.4 1.2 tri)


d3 $ asdf "emanative" # gain 0.7  # cps 0.1 # pan circle

cps(1)

d1 $ s "hih" # pan (fit 0 (diagonal1) "<0 1 2 3 4 5 6 7 8>") # gain 0.4 # cps 1 # speed 1 # cut 1

d2 $ s "hih" # pan (fit 0  (quer1) liste) # gain 0.4


d2 $ every 4 (ghost) $ s "hih*4" # pan jump # gain 0.3 # hpf ((range 2000 7000 tri))

d3 $ anxiety 3 $ euclid 3 8 $ s "bd:2?" # gain 0.4 # pan jump

d4 $ slow 2 $ s "start" # gain 0.3 # speed 0.1 # cut "1" # pan jump

d2 $ stfu $ s "test" # cut "<0 1> " # gain 0.5 # pan (speaker!!0)

d3 $ null $ every 2 (rev) $ asdf "dexter" # gain 0.3 # pan (speaker!!5) # pan circle





let a = fit 1 diagonal1 "0 1"

a


d1 $ stfu $ s "start" # speed 0.1 # gain 0.3 # pan jump # cut "1"

d2 $ s "test" # cut "1" # gain 0.6 # pan jump

d2 $ silence

d3 $ chop "<24 12 9>" $ s "perc" # cut 1 # gain 0.2 # pan jump

d4 $ s "hih*8?" # gain 0.2 # speed "<0.5 1.2 1>"

d4 $ silence

d5 $ every 4 (fast 2) $ chop 4 $ s "powerUp" # gain 0.2 # pan circle

d6 $ stfu $ asdf "dexter" # gain 0.3

d1 $ chop 3 $ s "hih" # gain 0.3 # pan (fit 2 diagonal2 liste)


d1 $ stack [
    stfu $ slow 2 $ s "start" # gain 0.2 # speed "<0.1 0.3>" # cut "<1 0>" # pan jump,
    stfu $ s "test" # cut "1" # gain 0.6 # pan circle,
    stfu $ slow 2 $ s "emanative" # gain 0.3 # pan (fit 1 lang2 liste) # speed 0.8,
    euclid 3 8 $ s "~ emanative:5" # gain 0.3 # speed 0.8 # pan (fit 0 quer1 liste)
] # cps "<1 1 0.4>"



d1 $ ghost $ fast 3 $ s "pff" # pan (fit 0 (diagonal1++quer1++lang1) liste) # gain 0.3

d1 $ slow 2 $ s "start" # gain 0.2 # speed 1 # cut "1statsstr" 

d2 $ s "test" # gain 0.4

d1 $ stack [
    stfu $  every 4 (struct "") $ slow 2 $ s "start" # gain 0.2 # cut "2" # pan circle # speed 0.3,
    s "test" # gain 0.3 # cut "1",
    stfu $ every 4 (fast 4) $ chop "6 8" $ s "powerUp" # gain 0.2 # pan jump,
    degradeBy 0.8 $ euclid 3 8 $ s "pff" # pan (fit 0 (diagonal1) liste) # gain 0.5 
]

d2 $ degradeBy 0.2 $ anxiety 32 $ asdf  "glitch" # gain "<0.3 0.1 0.2>" # pan jump

d3 $ every 4 (hurry 3) $ chop 16 $ n "1 4 7" # s "supersaw" # gain 0.2 # pan (choose(speaker)) # crush "<0.4 0.6 0.3>"

-- zuhause am laptop verfasst


d1 $ slow 4 $ striate 3 $ s "numbers:0 numbers:1 numbers:2 numbers:3" # gain 0.7

d1 $ slow 4 $ chop 3 $ s "numbers:0 numbers:1 numbers:2 numbers:3"

d1 $ slow 3 $ striate 5 $ s "noEvent" 

d1 $ slow 2 $ striateBy 32 (1/16) $ sound "noEvent"

d1 $ echo 4 0.125 0.77 $ s "bd"

d1 $ echo 4 "<-0.02 [0.125 0.4]/2>" 0.77 $ s "bd"

d1 $ echoWith "<4 3>" "0.25 0.333" (#pan (choose(jump))) $ s "bd"


d1 $ slow 2 $ every 2 (struct "") $ striate 1 $ echo "<4 5 3>" "<0.1 -0.2 0.15>" 0.8 $ s "bonus" # gain 0.6 # speed 0.4

d2 $ echoWith 4 (-0.125) ((# pan "<0 1>").(|* gain 0.77)) $ degradeBy 0.6 $ euclid 5 8 $ s "knacks" # gain 1.2 # hpf (range 2000 3000 tri) # hpq 0.5 # fshift "100"


d1 $ every 4 ( echo 3 (-0.125) 0.9) $ slow 4 $ n "a2" # s "supersaw" # gain 0.7 # decay (range 0.7 0.9 tri ) # semitone 2 # crush "<16 4>"

d1 $ every 1 ( echoWith 3 (-0.125) ((#crush (8+perlin)).(#cut "1"))) $ slow 4 $ n "a2" # s "supersaw" # gain 0.7 # decay (range 0.7 0.9 tri ) # semitone 2 


d1 $ slow 4 $ n "a3" # s "supersaw" # gain 0.6 # speed perlin

d1 $ "dexter" # speed ( fast 2 $ perlin + 0.5)



d2 $ slow 2 $ echo 4 perlin 0.8 $ s "noEvent" # cut "<1 0>" # speed perlin + 0.5


d3 $ degradeBy perlin $ chop 12 $ s "powerUp" # gain 0.5 # speed 0.4 # cut 1

d4 $ slow 4 $ s "pff"  

d1 $ slow 4 $ s "start" # speed 0.3 # cut "1" 

d2 $ slow 4 $ chop 5$ ghost $ s "glitch" # gain 0.9 # pan "<0 1>"


d2 $ jux $ s "test" # cut "1" 

d3 $ slow 2 $ degradeBy perlin $ chop 21 $ s "powerUp" # speed 0.8 # gain 0.8


once $ slow 4 $ striate "<16 32 24 18>" $ s "str*4" # cut 1 # speed 0.3


d1 $ asdf "knacks" # gain 0.8

d1 $ s "bd" # pan circle # gain 0.8

cps (1)

d1 $ asdf "dexter" # gain 1 # cps "<0.4 1.3 0.5 0.3 6>" # pan jump


d1 $ slow 4 $ s "start" # gain 0.5 # speed 0.2 # cut "1"


d2 $ chop 14 $ s "glitch" # n (irand 4) # gain 0.8 # pan jump


once $ s "child" 

d1 $ slow 32 $ n "a3" # s "supersaw"

once $ s "test" # cut "<1 0>"


d1 $ stack [ 
    slow 2 $ s "start" # gain 0.3 # speed 0.2 # cut "1",
    chop "<22 67> " $ s "" # pan jump # gain 0.8,
    euclid 3 8 $ s "ilBd?" # gain 0.5 # pan jump
]

d1 $ slow 2 $ s "start" # gain "<0.4 0.2 0.3>" # speed "<0.3 0.2>" # pan jump # cut "1"

d2 $ every 3 (struct "") $ every 4 (hurry 2) $ degradeBy perlin $ echo 3 (-0.124) 0.5 $ s "bonus" # gain 0.5

d3 $ ghost $ chop 4 $ s "perc" # n (irand 4) # gain 0.3 # pan circle

d4 $ euclid "<3 5>" 8 $ s "glitch" # n (irand 4) # gain 0.3 # pan zig

once $ slow 4 $ s "child" # pan (speaker!!0) # gain 0.3


d1 $ stack [
     slow 2 $ s "noise ~ noise:2 ~ noise:1" # gain "<0.3 0.4>" # pan jump # cut "1", 
     every 4 (fast 3) $ euclid 2 9 $ s "ilbd" # gain 0.4 # speed "<1 0.8 0.77>",
     stfu $ s "null" # gain 0.3 # cut "2" # pan zig, 
     s "crack" # gain 0.7 # cut "4" # pan circle,
     slow 4 $ s "lucA" # gain 0.8 # speed "<0.8 1 1.2>"
] # cps "<1 0.8 2 0.7>"

d1 $ echo 3 "<-0.333 0.1555>" 0.8 $ slow 2 $ s "rainbow" # gain 0.9 # pan circle

d1 $ slow "<3 6 4>" $ s "start" # gain "<0.4 0.2 0.3> "# speed 0.3 # cut "<1 0>"

d2 $ chop "<12 24 6>" $ s "perc" # n (irand 4) # pan circle


d3 $ anxiety 22 $ s "powerup" # gain 0.3 # pan (speaker!!0)

once $ s"child" # gain 0.3 # pan 0.25

d3 $ s "test" # cut "1" # gain 0.4 # pan circle

d4 $ stfu $ s "lucA" # gain 0.4 # speed "<1 0.8 1.3 0>" # pan jump

d5 $ s"groove" # gain 1 # cut "1" # speed "<0.9 0.8 1.1>"

d5 $ degradeBy perlin $ every 2 (fast 3) $ euclid 3 8 $ s "ilbd" # gain 0.6 # pan jump

d3 $ s "knacks*16" # gain 0.4 # n (irand 12) # pan zig 

d3 $ euclid 5 8 $ s "noEvent?" #gain "<0.3 1 0.9 0.7>" #speed 0.3 #cut 1 #pan zig 



-- transitions

d1 $ slow 6 $ n "d3'min7 g3'dom7 c3'maj7" # s "supersaw" # gain 0.5

d1 $ slow 12 $ n "d3'min7 g3'dom7 c3'maj7 c3'six" 
    #s "supersaw" 
    #gain 0.6 
    -- #lfo 0.1
    -- #rate 0.3

d1  $ slow 6 $ n "d3'min7 g3'dom7 c3'maj7" 
    # s "supertron" 
    # gain 0.7
    

d2 $ slow 1 $ s "supernoise*8" # n perlin
    # gain (slow 16(range 0 1 sine)) 
    # pan (slow 16(range 0 1 sine))
    # cut 1

d2 $ slow 1 $ s "supernoise*8" # n "<2 7 5>"
    # gain ((ramp 16 tri)-0.3) 
    # cut 1

d3 $ every 8 (fast 6) $ echoWith 3 0.333 ((|+ speed (2/3)).(|- gain 0.2).(#pan q1)) $ slow 4 $ s "lucA" # gain 1 # speed "<0.9 1.4 1.2>"

once $ s "child" # gain 0.3 

d5 $ degradeBy (ramp 0.6 square) $ slow 1 $ asdf "dexter" # gain 0.8 # speed "<5 0.3 5 0.4 2>"

d3 $ degradeBy 0.1 $ echo 2 (-0.124) 0.8 $ euclid 3 8 $ s "null" 

d4 $ stack[
    s "supernoise*8" # n "<2 7 5>" # gain ((ramp 4 tri)-0.3),
    slow 4 $ s "~ [glitch glitch] ~" # n (irand 4),
    every 8 (rev) $ echo 3 0.25 0.75 $ slow 2 $ s "~ funky:3" # speed 0.9 # gain 0.8, 
    echo "<2 3>" "<-0.125 0.125>" 0.9 $ slow 8 $ euclid 5 8 $ s "ilbd"
] # cps 1

d4 silence

d4 $ every 16 (rev) $ slow 4 $ s "lucA" #speed "<0.9 1.4 1.2>" #cutoff 600 # gain 0.9

interpolateIn 4 16 $ slow 4 $ s "lucA" #speed "<0.9 1.4 1.2>" # cutoff 2000 # gain 0.9

d2 $ every 3 (fast 6) $ s "glitch*4?" # n (irand 4) # gain 1  # pan jump

d2 $ slow 4 $ s"lucA" # speed depricated # gain 0.8

d5 $ striate 5 $ slow "<3 2>" $ s "groove" # cut 1

d3 $ slow 1 $ s "supernoise*8" # n perlin
    # gain (slow 16(range 0 1 cosine)) 
    # cut 2


d2 $ slow "[8 16 24]/3" $ s "supernoise*8" # n perlin
    # gain (slow "[8 16 24]/3"(range 0 1 tri)) 



    
d3 $ slow 4 $ s "superfork*4" # n "d3'min7 g3'dom7 c3'maj7"

d3 $ slow 4 $ every 4 (#n "c'maj c'six") $ s "superhammond*2" # n "d'min7 g'dom7" # voice 6 # gain 0.6

d3 $ slow 4 $ s "superhammond*2" # n "c'maj c'six" # gain 0.6



d1 $ slow 2 
    $ s "sub37:1*<2 3>" 
    # speed depricated 
    # cut "<1 0>" 
    # lpf (ramp1 4 200 12000 tri) 
    # pan jump

d1 $ degradeBy 0.1 $ stutter 3 0.1 $ s "noise:1?" # cut "1"


once $ s "child" # cut "1"

hush

d1$ s "bd" # pan (speaker!!0) # gain 1



-- mit ferdi iim soundlab

d1 $ degradeBy 0.6 $ every 3 (hurry 4) $ chop 18 $ s "rainbow" # pan circle # gain 0.8 # speed depricated # crush 6

d2 $ degrade 0.9$ chop 14 $ echo 3 (-0.25) 0.77 $ slow 2 $ s "lucA" # speed depricated # lpf "<200 400 2000>"

interpolate $ echo 5 (-0.25) 0.77 $ slow 2 $ s "lucA" # speed depricated # lpf 40000

d3 $ degradeBy 0.4 $ s "glitch*16" # n (irand 3) # gain (ramp1 2 0.7 1.3) # pan jump 

d2 $ silence

d1 $ slow 5 $ s "child" # pan circle 


d2 $ echoWith "<13 58>" (ramp1 1 0.1 0.99 cosine) (#pan zig) $ s "knacks ~ [knacks:1 knacks:2] ~" # pan zig 

d3 $ s "select*4" #  pan u2

d1 $ s"bd*15" # pan zig


d1 $ slow 2 $ s "start" # pan circle # speed "<0.3 0.2 0.4>" # cut "1" # gain 0.8

d2 $ echo "<5 12>" 0.1111 0.8 $ s "perc" # pan jump # gain 0.9 # hpf 1000 

d3 $ every 4 (hurry 2) $ slow 4 
    $ echoWith 4 (-0.11) ((# pan zig).(# gain 0.8)) 
    $ s "~ powerup"

d4 $ slow 3 $ s "[~ glitch] glitch:2" # n (irand 4) # pan jump

d3 $ silence

d3 $ stfu $ degrade 0.8 $ anxiety 11 $ s "noise" 

d1 $ s "test" # cut "1"  

d2 $ slow 3 $ s "lucA" # speed depricated 

d3 $ degradeBy 0.7 $ asdf "emanative" # speed "<4 1 9 2>" # pan zig # gain 0.1

d1 $ asdf "funky"'

d1 $ slow 4 $ s "angho" # cut 1 # speed "<0.7 1>" # gain (ramp1 0.2 0.5 1.2 sine)

d2 $ stack [
    slow 2 $ s "start" # speed 0.2 # pan jump # gain 0.7 # cut "1",
    s "glitch*8?" # n (irand 4) # gain 0.7 # pan zig,
    euclid 3 4 $ s "powerup*4?" # gain 0.6 # pan (choose quer1),
    slow 4 $ s "supernoise*15" # cut "2" # n 1 # pan (choose quer2) # gain (ramp1 2 0 0.7 sine)
] # cps 1

once $ slow 23 $ s "child" # cut 1 # pan 0.25

d4 $ stack [
    s "test" # cut "3" # pan u, 
    degradeBy "<0 0.2 0.4>" $ slow 3 $ s "lucA" # speed depricated # pan circle # gain 0.6,
    fast 4 $ s "~ <perc:2 perc:4>" # gain (ramp1 6 0.3 0.7 sine) # pan (ramp1 5 (speaker!!0) (speaker!!5) tri),
    asdf "dexter" # gain (ramp1 3 0 0.6 tri) # speed (ramp1 3 4 2 tri) # pan circle
] # cps "<0.2 1 2 8>"

cps "1"

d5 $ stack[ 
    fast "<3 4 5>" $ s "~ sub37" # speed depricated # gain 0.7 # pan zig, 
    slow 2 $ s "groove" # cut "1" # pan jump # speed 1.5 # gain 0.8,
    lost u2 $ s "popup" # gain 0.7
] # cps perlin


let direction = jump

d1 $ lost jump $ s "popup" # gain 0.5 # pan jump

d1 $ s "bd*8" # pan 


d1 $ asdf "dexter" 
    # pan circle 
    # gain 0.8 
    # cps 0.5

d2 $ s ""

d1 $ slow 4 $ s "start" # pan circle # speed 0.3 # cut "1" 
 
d2 $ degradeBy 0.3 $ chop 4 $ s "bd*16" # n (irand 4) # pan zig # gain (ramp1 2 0.3 1 sine)

d2 $ silence

d3 $ stack[
    s "bd(3,8)" # pan circle,
    s "~ sd(5,8)" # pan jump
]

d4 $ slow 4 $ s "sub37:3*4" # pan (speaker!!0) # speed 2

d5 $ echo 2 0.9 0.8 $ s "knacks" 

d1 $ slow 4 $ s "sub37:1 ~ ~ sub37:1" # n "<1.5 2 1.25 1>"  # pan q1 # cut "<1 0>"


d1 $ echoWith 7 "<0.5 0.333>" ((# pan (choose quer1)) . (|* gain 0.97)) $ stack[
    slow 2 $ s "sub37:1" # speed "1.5",
    slow 2 $ s "~ ~ ~ sub37:1" # speed "2",
    slow 4 $ slow 3 $ s "~ ~  sub37:1 ~ " # speed "1.3"
] # pan circle # gain 0.8 # cps perlin


d2 $ chop 16 $ euclid 3 8 $ s "~ knacks:1" # pan q3 

d1 $ slow 4 $ echoWith 3 2.1 ((#pan q1).(|* gain 1)) $ s "bd" # pan q1


d1 $ echoWith "<3 4>" 0.3333 ((# pan jump).(|* gain 0.8)) $ slow 2 $ s "start" # speed "<0.3 0.4>" # pan circle # gain (ramp1 2 0.8 1.1 tri)

d2 $ degradeBy "<0.4 0.6 0.3>" $ anxiety "<1 22 42>" $ euclid 3 8 $ s "glitch" # pan zig # gain (ramp1 4 0.8 1.9 tri)

d2 $ silence

d3 $ stack[ 
    degradeBy 0.3 $ every 4 (fast 8 ) $ slow 3 $ s "lucA" # speed depricated # gain (ramp1 3 0.5 1.2 tri),
    echoWith "<3 4>" 0.222 ((#pan zig) . (|*gain 0.97)) $ slow 2 $ s "sub37:1" # pan jump #,
    every 12 (hurry 4) $ asdf "dexter" # pan q3 # speed "<8 4 80 >" # gain (ramp1 2 0.3 1 sine)
] # cps 1

hush
d2 $ stack[ 
    slow 4 $ s "start" # pan circle # speed "<0.3 0.4>" # gain (ramp1 2 0.4 1.1 tri),
    chop "<3 16 6>" $ s "glitch?" # pan jump,
    echo 3 (-0.3) 0.6 $ s "popup?" # pan q1
] # cps 1


d3 $ stack [
    slow 3 $ s "lucA" # speed depricated,
    degradeBy 1.5 $ anxiety 13 $ slow 3 $ s "knacks*16?" # pan jump,
    s "test" # cut "<0 1>" # pan circle # gain (ramp1 3 0.5 1.1 tri),
    every 6 (stfu) $ asdf "dexter" # gain 0.8 # speed "<1 10 0.4>" # pan circle
] # cps 1


d3 $ asdf "dexter" # pan circle # cps 0.4

hello 

d1 $ stack[
    slow 2 $ ghost $ n "1 3 7 5" 
        # s "psin" # room 0.5 # gain 0.6,
    every 4 (fast 2) . euclid 3 8 $ s "ilBd",
    s "tascan" # cut "2",
    off 0.125 (# pan square) $ echo 1 0.32 0.5 $ s "hih:3*16?" # hpf 6000 # hpq 0.8 # gain 0.5  
]

d2 $ s "bd" # speed (range 0.5 1.5 saw)

hush
d1 $ degradeBy 0.4 $ slow "<1 2>" $ echo 12 0.11 0.9 
    $ s "sub37*3" # n "1 0" 
    # pan circle 
    # cut "<1 0 0>"
    # gain (ramp1 2 0.7 1.2 sine)

d1 $ si lence

d2 $ degradeBy 0.4
    $ fast "<3 2>" 
    $ chop "<12 3>" 
    $ s "glitch" # pan zig

d3 $ stack[
     echo 4 0.333 0.7 $ s "feedback*4" 
    # pan zig
    # speed (ramp1 2 "<2 7>" 0.8 sine)
    # gain (ramp1 0.6 0.4 0.9 tri)
    # lpf (ramp1 3 2000 600 sine),
    asdf "emanative" # gain "<0.8 1 1.1>" # pan circle
] # cps"<1 0.6 0.4 10>"
    # lpf 19



d1 $ degradeBy 0.9 $ echoWith "<4 5>" 0.111 ((#pan q2).(|*gain 0.8)) 
    $ slow 2 $ s "feedback*4" 
    # speed (ramp1 2 0.3 1 sine)
    # pan q3 
    # gain 0.9
    # cut "<1 0>"

d2 $ silence

d2 $ degradeBy 0.9 $ fast "<2 3 7>" $ chop 14 $ s "noise"
    # pan jump
    # gain (ramp1 1 0.9 1.3 square)

d3 $ fast "<3 5>" $ echo 12 0.3 0.9
    $ s "sub37*2" #n "0 1" # pan q1
    # speed (ramp1 2 0.3 1.2 sine)
    # cut 0
    # hpf (ramp1 3 0 2000 sine)

d4 $ degradeBy 0.3
    $ asdf "emanative" 
    # speed "<0.4 10 2 3>" 
    # gain (ramp1 4 0.2 1 tri)
    # pan q2

d1 $ chop "<3 12 5 24>" $ echo "<3 6>" "<0.111 0.2>" 0.8 
    $ s "feedback*4" 
    # gain (ramp1 "<1 4>" 0.5 1 sine) 
    # pan circle
    # speed "<0.4 2 1 0.3>"
    # cps "<0.3 1 0.5>"


d2 $ every 2 (fast "<2 3>")
    $ anxiety 5
    $ s "knacks(3,8)?"
    # n (irand 5) 
    # pan q1
    # gain (ramp1 "<1 3>" 0.99 1.9 cosine)
    # hpf 2000

clutchIn 1 16 $ echo 4 "<0.1 -0.2>" 0.8 
    $ slow 3 $ s "sub37*4" 
    # n (irand 2)
    # gain 1.3
    # pan circle
    # cut "<1 0 0>"

d1 $ s "Superstatic"


d1 $ echo "<3 6>" "<0.111 0.2>" 0.8 $ s "feedback*4" 
    # pan circle #gain (ramp1 "<1 4>" 0.5 0.8 sine)
    # speed "<0.4 2 1 0.3>"
    # hpf "<2000 200 4000>"


d2 $ s "knacks(3,8)" # pan q1
    # n (irand 2 )


d1 $ degradeBy 0.3
    $ every 2 (fast 3) 
    $ echo "<3 4 6>" "<0.11 0.2>" 0.8 $ s "feedback*4" 
    # gain (ramp1 "<1 4>" 0.6 0.8 sine)
    # pan circle
    # speed "<0.4 2 1 0.3>"
    # hpf (ramp1 2 200 2500 sine)

d2 $ chop "<12 16>" $ euclid 4 9 $ s "glitch*4?" 
    # n (irand 3)
    # pan circle
    # gain (ramp1 0.2 0.5 1 tri)

d2 $ silence

d1 $ echoWith 3 0.22 (#pan q1) $ fast 1.4 
    $ s "sub37*4" # n "<1 0>" # pan q2
    # gain (ramp1 1 1 1.1 sine)
    # speed depricated
    # cut "<1 0 0>"

d2 $ degradeBy  $ chop "<12 2 32>" $ every 2 (fast 3) 
    $ s "~ glitch" # pan q3
    # gain (ramp1 2 0.9 1.4 sine)


d1 $ stack [
    degradeBy 0.1
    $ echo 3 0.122 0.7 $ s "lucA" 
    # pan q1
    # speed depricated,
    s "test" # cut "1 0 1",
    degradeBy 0.1 $ asdf "emanative" 
    # gain (ramp1 2 0.8 1.1 sine)
    # pan circle # speed "<0.3 1 4 12>"
] # cps 1 # hpf "<0 200 1000>"




d1 $ chop "<4 12>" $ slow "<2 1 1.5>" $ s "feedback*4" 
    # pan jump 
    # cut "<0 1>" 
    # speed "<0.4 1 1.23>"
    # gain (ramp1 2 0.8 1 sine)
    # cps 1
    # lpf (ramp1 3 3000 100 cosine)

d2 $ echo 12 0.111 0.8 $ chop "<12 24>" $ s "glitch" 
    # n(irand 4) 
    # pan dia1

cps 1

d1 $ asdf "emanative" # pan circle # speed 1 # gain 0.5 # cps "<1 0.4 2 10>"


d1 $ degradeBy 0.99999 $ echo "<7 5>" 0.111 0.8 $ s "feedback*4" # pan circle # cut "<0 1 0>" 
    # speed "<0.4 1 1.222 0.8 0.222 0.1>"
    # hpf (ramp1 "<0.25 2 4>" 20 2000 perlin)
    
d2 $ fast "<3 3 4>" $ s "~ sub37:1*3" # pan q1 # cut "<1 0>" # n "<0 1>" 
    # lpf 200
    # speed "<0.8 1 1.3>"

d2 $ silence

d3 $ degradeBy "<0.2 0.7>" $ every 2 (fast "<3 6>") $ chop "<12 24>" $ euclid 3 9 $ s "glitch" 
    # n(irand 2)
    # pan dia1 
    # speed depricated
    # gain (ramp1 5 0.4 1.3 tri)
    # cps 1

d4 $ degrade 
    $ every 3 (hurry 2) 
    $ euclid "<3 4>" 13 
    $ echo "<2 8>" 0.2 0.8 $ s "pff" 
    # pan zig # gain (ramp1 4 0.5 1.2 tri)
    # speed (1 + perlin)

d5 $ degradeBy 0.3 $ every "<2 6>" (stfu) $ chop 2 $ asdf "emanative" # pan dia2 
    # cps 1 
    # gain (ramp1 0.5 0.3 1.2 cosine)


d5 $ asdf "emanative" # speed 2 # pan u2
    # cps ("<0.1 1 3 41 0.01>" + (ramp "<2 3>" sine))

    d3 $ stack[ 
    degradeBy 0.3 
    $ every 4 (fast 8 ) 
    $ slow 3 $ s "popup" 
    # speed depricated 
    # gain (ramp1 3 0.5 1.2 tri),
    echoWith "<3 4>" 0.222 (#pan zig) 
    $ slow 2 $ s "sub37:1" 
    # pan jump,
    every 12 (hurry 4) 
] # cps 1

d1 $ stack[
 slow 2 $ ghost $ n "1 3 7 5"
  # s "psin" # room 0.5 # gain 0.6,
 every 4 (fast 2) . euclid 3 8 $ s "ilBd",
 s "tascan" # cut "2",
 off 0.125 (# pan square) $ echo 1 0.32 0.5 $ s "hih:3*16?" # hpf 6000 # hpq 0.8 # gain 0.5   
]

d1 $ fast "<1 2 0.5>" 
    $ every 7 (stfu)
    $ echoWith 4 "<-0.12 0.22>" ((#pan q1).(|* gain 0.8)) 
    $ fast "<3 6>" 
    $ s "sub37" # n "0 1" # pan u2 # gain (ramp1 4 0.8 0.9 tri)
    # lpf (ramp1 0.5 200 2000 tri)
    # cut "<1 0 0>"

d2 $ s "supernoise*4" 
    # n perlin 
    # gain (ramp1 2 0.2 0.8 perlin)
    # pan circle
    # cut "<1 0>"

d3
    $ echo 5 "<0.123 0.22>" 0.9 $ s "knacks" 
    # n "1 2"
    # gain "<1.1 1 0.8 <1.3 0>>"
    # pan x
    # crush (ramp1 8 "<3 5>" 16 square)

d4  $ degradeBy 0.5 $ every 2 (chop 3) $ euclid 5 8 
    $ s "glitch" # n "<1 2 0>" # pan circle
    # gain (ramp1 2 0.5 1.1 square)

d1 $ stack[
    fast 3 $ s "sub37:1" # pan dia1 # cut "<0 1 <0 1>>",
    every 3 (echo 3 0.12 0.8) $ s "~ glitch" # n (irand 4) # pan zig
] # gain (ramp1 2 0.3 1 sine)

quer


d3 $ asdf "emanative" 
    # gain 0.8
    # pan circle
    # speed "<0.4 1 1.75>"

d4 $ echo 4 0.333 0.7 $ s "feedback*4" # gain 0.5 
    # pan q1
    # speed (ramp1 0.2 "<2 10>" 0 tri)
    # cut "<1 0 0>"
    -- # speed 0.5


d3 $ stack[  
    asdf "emanative" 
    # gain 0.8
    # pan circle
    # speed "<0.4 1 1.75>",
    every 6 (stfu)
    $ echo 4 0.333 0.7 
    $ s "feedback*4" # gain 0.5 
    # pan x
    # speed 5
] # cps (ramp1 3 0.42 100 square)

d1 $ s "sub37" # pan q1 # cut 1

d1 $ silence

 d2 $ s "sub37:1 ~" # pan x # cut 2 

d2 $ slow "<1 4>" $ s "sub37" # pan circle # cut "<1 0>"
    # speed "<0.9 1 1.3 >"

d2 $ s "feedback*4" # gain (ramp1 2 0.4 0.6 sine)
    # pan q1
    # speed (ramp1 0.2 "<2 10>" 0 tri)
    # cut "<1 0>"

d3 $ every 4 (stfu)  $ asdf "emanative" # pan circle # speed "<2 0.4 1>"
    # gain (ramp1 4 0.2 1.1 sine)

d5 $ every 3 (rev) $ s "bd*8" # pan circle

cps 1

d1 $ fast 3 $ s "start" # pan circle # speed 0.3 # cut "<1 0>"
    #speed "<0.3 0.75 0.5>"

d1 $ silence

d2 $ echo 5 0.12 0.8 $ chop "<1 4 16>" $ s "popup*8" # pan zig
    # gain (ramp1 2 0.3 1 tri)

d3 $ asdf "funky*8" # pan circle # speed 24


d1 $ s "null" # pan zig

d1 $ stack [
    slow 2 $ s "start" # pan circle # speed "<0.3 0.4>" # cut "<0 1>",
    every 5 (rev) $ chop "3 16 24" $ s "glitch" # n (irand 4) # gain 0.8 # pan jump,
]

once $ s "child" 

d1 $ stack [
    echoWith 12 0.11 ((#pan zig).(|*gain 0.9)) $ slow 3 $ s "lucA" # speed depricated # pan q3,
    fast 4 $ chop 17 $ s "~ knacks" # n (irand 4) # pan jump
]

d1 $ stack [
    slow 2 $ s "start" # pan circle # speed "<0.3 0.35>" # cut "<1 0>",
    chop "<3 12 15>" $ s "glitch" # n (irand 4) # pan jump,
    echoWith 12 0.111 (#pan zig) $ s "powerup" # gain (ramp1 3 0.2 1.2 tri) # hpf (ramp1 4 200 2000 sine)
] # hpf (ramp1 4 200 2000 sine) # cps "<1 3 5 10 >" # gain 0.8


once $ s "child" # cps 1

hush

d2 $ slow 3 $ s "lucA" # pan zig # speed depricated

d3 $ chop "<12 15 99>" $ s " knacks" # pan jump

d3 $ degradeBy "<0.3 0 0.2>" $ slow "<2 4 3>" $ s "sub37*4" # speed "1 1.2 1.75 1.5" # n (irand 2) # pan circle # cut "<1 0>"

d3 $ s "sub37" # speed (ramp1 1 1 1.1 tri)


-- AUDIO SETUP VARIABLEN ZUHAUSE
speaker = [ 0.1, 0.2, 0.3, 0.4, 0.5, 0.8, 0.9]
speaker1 = [ 0.1, 0.2, 0.3, 0.4, 0.5]
sub = speaker!!5
horn = speaker!!6
teufel = [ 0, 0.1, 0.4, 0.5]
bla = [ 0.2, 0.3, 0.6, 0.7]

try = range 0 4 sine

-- AUDIO SETUP VARIABLEN dk soundlab
-- 8 kanal speaker aray
let speaker = [ 0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875]

-- 8 kanal array umgeschreiben fuer 6 kanal speaker array im soundlabor!!!
-- FUER PERFORMANCE ANGLEICHEN AN VENUE!!!!!!
let speaker = [ 0.25, 0.375, 0.5, 0.625, 0.75, 0.875]    
    speakerStep = 1.6
-- BEWEGUNGEN GEOMETRISCH
    diagonal1 = [speaker!!0, speaker!!3]
    diagonal2 = [speaker!!5, speaker!!2]
    diakur1   = [speaker!!0, speaker!!4]
    diakur2   = [speaker!!5, speaker!!1]
    diakur3   = [speaker!!1, speaker!!3]
    diakur4   = [speaker!!4, speaker!!2]
    quer1     = [speaker!!0, speaker!!5]
    quer2     = [speaker!!1, speaker!!4]
    quer3     = [speaker!!2, speaker!!3]
    lang1     = [speaker!!0, speaker!!2]
    lang2     = [speaker!!5, speaker!!3]
-- BEWEGUNG
    zigzag = [speaker!!5, speaker!!0, speaker!!4, speaker!!1, speaker!!3, speaker!!2]
    u = [speaker!!0, speaker!!1, speaker!!4, speaker!!5, speaker!!1, speaker!!2, speaker!!3, speaker!!4]
    diapatternX = diagonal2 ++ diagonal1
-- PATTERN 
    liste = "<0 1 2 3 4 5>"
    depricated = "<0.9 1.4 1.2>"
-- ARRAY BEWEGUNGEN
    circle = (fit 1 speaker "0 1 2 3 4 5")
    jump = (fit 3 speaker "0 1 2 3 4 5")
    zig = (fit 1 zigzag "0 1 2 3 4 5")
    u2 = (fit 1 u "0 1 2 3 4 5")
    x = (fit 1 diapatternX "0 1 2 3")
    dia1 = (fit 1 diagonal1 "0 1")
    dia2 = (fit 1 diagonal2 "0 1 2 3 4 5")
    q1 = (fit 1 quer1 "0 1")
    q2 = (fit 1 quer2 "0 1")
    q3 = (fit 1 quer3 "0 1")
-- EIGENE FUNKTIONEN
    anxiety = striate
    lost panning = echoWith 10 0.124 ((# pan panning).(|* gain 0.9))
    afk = (const $ s "")
    stfu = afk
    null = afk
    together p = stutter 3 (2/16) $ p
    asdf sampleName = density 8 
                        $ s sampleName
                        # n (irand 4)
                        # unit "c"
                        # speed 8
    ramp a b = (slow a (range 0 1 b))
    ramp1 a b c d = (slow a(range b c d ))

reverse_list :: [Int] -> [Int]
reverse_list = \list ->
    case list of
        [] -> []
        x:xs -> reverse_list xs ++ [x]