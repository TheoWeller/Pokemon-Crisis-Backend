class Api::V1::PokemonsController < ApplicationController



  def index
    forbiddenMoves = [
      "double-slap", "comet-punch", "guillotine", "razor-wind", "fly", "bind", "double-kick", "jump-kick", "fury-attack", "horn-drill", "wrap", "take-down", "thrash", "double-edge", "twineedle", "pin-missile", "submission", "low-kick", "counter", "fissure", "dig", "rage", "bide", "self-destruct", "clamp", "skull-bash", "spike-cannon", "constrict", "high-jump-kick", "barrage", "sky-attack", "explosion", "fury swipes", "bonemerang", "super-fang", "struggle", "triple-kick", "flail", "reversal", "bone-rush", "outrage", "rollout", "return", "present", "frustration", "magnitude", "beat-up", "focus-punch", "endeavor", "secret-power", "dive", "arm-thrust", "ice-ball", "sand-tomb", "bullet-seed", "icicle-spear", "bounce", "rock-blast", "gyro-ball", "natural-gift", "metal-burst", "fling", "punishment", "flare-blitz", "sucker-punch", "brave-bird", "giga-impact", "head-smash", "double-hit", "crush-grip", "shadow-force", "heavy-slam", "sky-drop", "wild-charge", "heat-crash", "tail-slap", "phantom-force", "solar-blade", "power-trip", "double-iron-bash", "razor-wind", "sonic-boom", "hyper-beam", "solar-beam", "petal-dance", "dragon-rage", "fire-spin", "night-shade", "dream-eater", "snore", "psywave", "hidden-power", "twister", "mirror-coat", "future-sight", "whirlpool", "uproar", "spit-up", "blast-burn", "hydro-cannon", "frenzy-plant", "sheer-cold", "doom-desire", "trump-card", "wring-out", "grass-knot", "roar-of-time", "magma-storm", "psyshock", "electro-ball", "stored-power", "final-gambit", "water-shuriken", "swords-dance", "whirlwind", "sand-attack", "tail-whip", "leer", "growl", "roar", "sing", "supersonic", "disable", "mist", "leech-seed", "growth", "poison-powder", "stun-spore", "sleep-powder", "string-shot", "thunder-wave", "toxic", "hypnosis", "meditate", "agility", "teleport", "mimic", "screech", "double-team", "recover", "harden", "minimize", "smokescreen", "confuse-ray", "withdraw", "defense-curl", "barrier", "light-screen", "haze", "reflect", "focus-energy", "metronome", "mirror-move", "amnesia", "kinesis", "soft-boiled", "glare", "poison-gas", "lovely-kiss", "transform", "spore", "flash", "splash", "acid-armor", "rest", "sharpen", "conversion", "substitute", "sketch", "spider-web", "mind-reader", "nightmare", "curse", "conversion-2", "cotton-spore", "spite", "protect", "scary-face", "sweet-kiss", "belly-drum", "spikes", "foresight", "destiny-bond", "perish-song", "detect", "lock-on", "sandstorm", "endure", "charm", "swagger", "milk-drink", "mean-look", "attract", "sleep-talk", "heal-bell", "safeguard", "pain-split", "baton-pass", "encore", "sweet-scent", "morning-sun", "synthesis", "moonlight", "rain-dance", "sunny-day", "psych-up", "stockpile", "swallow", "hail", "torment", "flatter", "will-o-wisp", "memento", "follow-me", "nature-power", "charge", "taunt", "helping-hand", "trick", "role-play", "wish", "assist", "ingrain", "magic-coat", "recycle", "yawn", "skill-swap", "imprison", "refresh", "grudge", "snatch", "camouflage", "tail-glow", "feather-dance", "teeter-dance", "mud-sport", "slack-off", "aromatherapy", "fake-tears", "odor-sleuth", "metal-sound", "grass-whistle", "tickle", "cosmic-power", "iron-defense", "block", "howl", "bulk-up", "water-sport", "calm-mind", "dragon-dance", "roost", "gravity", "miracle-eye", "healing-wish", "tailwind", "acupressure", "embargo", "psycho-shift", "heal-block", "power-trick", "gastro-acid", "lucky-chant", "me-first", "copycat", "power-swap", "guard-swap", "worry-seed", "toxic-spikes", "heart-swap", "aqua-ring", "magnet-rise", "rock-polish", "switcheroo", "nasty-plot", "defog", "trick-root", "captivate", "stealth-rock", "defend-order", "heal-order", "lunar-dance", "dark-void", "hone-claws", "wide-guard", "guard-split", "power-split", "wonder-room", "autotomize", "rage-powder", "telekinesis", "magic-room", "quiver-dance", "soak", "coil", "simple-beam", "entrainment", "after-you", "quick-guard", "ally-switch", "shell-smash", "heal-pulse", "shift-gear", "quash", "reflect-type", "bestow", "work-up", "cotton-guard", "mat-block", "rototiller", "sticky-web", "trick-or-treat", "noble-roar", "ion-deluge", "forest's-curse", "parting-shot", "topsy-turvy", "crafty-shield", "flower-shield", "grassy-terrain", "misty-terrain", "electrify", "fairy-lock", "king's-shield", "play-nice", "confide", "spiky-shield", "aromatic-mist", "eerie-impulse", "venom-drench", "powder", "geomancy", "magnetic-flux", "happy-hour", "electric-terrain", "celebrate", "hold-hands", "baby-doll-eyes", "shore-up", "baneful-bunker", "floral-healing", "strength-sap", "spotlight", "toxic-thread", "laser-focus", "gear-up", "psychic-terrain", "speed-swap", "purify", "instruct", "aurora-veil", "extreme-evoboost", "tearful-look"
    ]

    all_pokes = build_api_hash(Pokemon.all)
    all_winning_pokes = []

    grass_pokes = select_winning_pokes(all_pokes, "grass")
    fire_pokes = select_winning_pokes(all_pokes, "fire")
    dark_pokes = select_winning_pokes(all_pokes, "dark")
    dragon_pokes = select_winning_pokes(all_pokes, "dragon")
    electric_pokes = select_winning_pokes(all_pokes, "electric")
    fairy_pokes = select_winning_pokes(all_pokes, "fairy")
    fighting_pokes = select_winning_pokes(all_pokes, "fighting")
    flying_pokes = select_winning_pokes(all_pokes, "flying")
    ghost_pokes = select_winning_pokes(all_pokes, "ghost")
    ground_pokes = select_winning_pokes(all_pokes, "ground")
    ice_pokes = select_winning_pokes(all_pokes, "ice")
    normal_pokes = select_winning_pokes(all_pokes, "normal")
    poison_pokes = select_winning_pokes(all_pokes, "poison")
    psychic_pokes = select_winning_pokes(all_pokes, "psychic")
    rock_pokes = select_winning_pokes(all_pokes, "rock")
    steel_pokes = select_winning_pokes(all_pokes, "steel")
    water_pokes = select_winning_pokes(all_pokes, "water")
    bug_pokes = select_winning_pokes(all_pokes, "bug")




    grass_pokes.each{|p|all_winning_pokes << p}
    fire_pokes.each{|p|all_winning_pokes << p}
    dark_pokes.each{|p|all_winning_pokes << p}
    dragon_pokes.each{|p|all_winning_pokes << p}
    electric_pokes.each{|p|all_winning_pokes << p}
    fairy_pokes.each{|p|all_winning_pokes << p}
    fighting_pokes.each{|p|all_winning_pokes << p}
    flying_pokes.each{|p|all_winning_pokes << p}
    ghost_pokes.each{|p|all_winning_pokes << p}
    ice_pokes.each{|p|all_winning_pokes << p}
    normal_pokes.each{|p|all_winning_pokes << p}
    poison_pokes.each{|p|all_winning_pokes << p}
    psychic_pokes.each{|p|all_winning_pokes << p}
    rock_pokes.each{|p|all_winning_pokes << p}
    steel_pokes.each{|p|all_winning_pokes << p}
    water_pokes.each{|p|all_winning_pokes << p}
    ground_pokes.each{|p|all_winning_pokes << p}
    bug_pokes.each{|p|all_winning_pokes << p}


    # format_moves(fairy_pokes)
    all_winning_pokes = format_moves(all_winning_pokes, forbiddenMoves)
    render json: all_winning_pokes
  end

  def select_winning_pokes(all_pokes, type)
    winning_pokes = []

    all_pokes.map{|poke|
        if poke[:types].map{ |t| t["type"]["name"].include?(type)}.include?(true)
          winning_pokes << poke
        end
      }
      winning_pokes = winning_pokes.sample(2)
    end
  end

  def format_moves(pokes, array)

    pokes.each{|poke|
      move_container = []

      poke[:moves].each{|move|
        if move[:move].class == Hash
          puts poke
          
        end
        puts move["move"]
        puts move.keys[0]
        puts move.values[0]["name"]

        puts "---------------"

          move = move["move"] || move[:move]
          formatted_moves = {}
          level_learned_obj = {}

          formatted_moves.store(:move, move)
          move_container << formatted_moves
      }
        updated_moves = move_container.select{|move|!array.include?(move[:move]["name"])}
        poke[:moves] = updated_moves.sample(4)
    }
  end








  def build_api_hash(all_pokemon)
    api_hash = []

    all_pokemon.each do |pokemon|
      poke_hash = {}
      name = pokemon.name
      api_id = pokemon.api_id.to_i
      sprites = eval(pokemon.sprites)
      types = eval(pokemon.types)
      base_xp = eval(pokemon.base_xp)
      abilities = eval(pokemon.abilities)
      moves = eval(pokemon.moves)
      stats = eval(pokemon.stats)



      poke_hash.store(:name, name)
      poke_hash.store(:id, api_id)
      poke_hash.store(:sprites, sprites)
      poke_hash.store(:types, types)
      poke_hash.store(:base_xp, base_xp)
      poke_hash.store(:abilities, abilities)
      poke_hash.store(:moves, moves)
      poke_hash.store(:stats, stats)
      api_hash << poke_hash
    end

    api_hash
  end

  # bug_pokes.first[:moves].first["version_group_details"][0]["level_learned_at"]
