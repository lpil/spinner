import gleam/erlang/process
import gleam/io
import gleam_community/ansi
import spinner

pub fn main() {
  start_test()
  io.println("✅ Done!")

  with_spinner_test()
  io.println("✅ Done!")
}

fn start_test() {
  let spinner =
    spinner.new("Baking Bread for Toasters")
    |> spinner.with_colour(ansi.cyan)
    |> spinner.start

  process.sleep(1000)
  spinner.set_text(spinner, "Compositing Vampiric Complexions")
  spinner.set_colour(spinner, ansi.pink)

  process.sleep(1000)
  spinner.set_text(spinner, "Timing Temperature Transference")
  spinner.set_colour(spinner, ansi.blue)

  process.sleep(1000)
  spinner.stop(spinner)
}

fn with_spinner_test() {
  use spinner <- spinner.with_spinner(
    spinner.new("Activating Deviance Threshold")
    |> spinner.with_colour(ansi.green),
  )

  process.sleep(1000)
  spinner.set_text(spinner, "Routing Neural Network Infanstructure")
  spinner.set_colour(spinner, ansi.yellow)

  process.sleep(1000)
  spinner.set_text(spinner, "Extrapolating Empire Eigenvectors")
  spinner.set_colour(spinner, ansi.red)

  process.sleep(1000)
}

pub const phrases = [
  "Abolishing Pedestrian Posturing", "Abstracting Loading Procedures",
  "Activating Deviance Threshold", "Activating Hotel Staff",
  "Activating Story Arc", "Adapting Behavioral Model", "Adding Hidden Agendas",
  "Adjusting Acceptable Apparel", "Adjusting Bell Curves",
  "Adjusting Emotional Weights", "Anesthetizing Industrial Areas",
  "Aggregating Need Agents", "Aligning Covariance Matrices",
  "Alphabetizing Books", "Amplifying Sun to '11'", "Analyzing Adolescent Angst",
  "Analyzing Axe Trajectories", "Applying Feng Shui Shaders",
  "Applying Lampshade Headwear", "Applying Theatre Soda Layer",
  "Appointing Appealing Appurtenances", "Ascending Maslow's Hierarchy",
  "Assembling Playground", "Assembling Shower Stalls",
  "Asserting Packed Exemplars", "Assessing Loam Particle Sizes",
  "Assigning Mimic Propagation", "Atomizing Atomic Particles",
  "Attempting to Lock Back-Buffer", "Augmenting Assets",
  "Augmenting Occupational Conduits", "Baking Bread for Toasters",
  "Balancing Domestic Coefficients", "Besmirching Reputations",
  "Binding Sapling Root System", "Binding Trace Enchantments",
  "Blurring Reality Lines", "Borrowing Something Blue", "Boxing BILLY Bookcases",
  "Branching Family Trees", "Breaking Down Restorable Cars", "Breeding Fauna",
  "Bribing The Orangutans", "Buffing Splines for Reticulation",
  "Building Bedroom Displays", "Building Boring Bedrooms? As If!",
  "Building Data Trees", "Building High Ceilings",
  "Bureacritizing Bureaucracies", "Burning Calories", "Cabalizing NPC Controls",
  "Caffeinating Student Body", "Calculating Exchange Rate",
  "Calculating Inverse Probability Matrices", "Calculating Lifetime Aspirations",
  "Calculating Llama Expectoration Trajectory", "Calculating Maximum Velocity",
  "Calculating Money Supply", "Calculating Native Restlessness",
  "Calculating Snowball Trajectories", "Calculating Vincent's Wealth",
  "Calibrating Blue Skies", "Calibrating Canine Customization",
  "Calibrating Fame Indicant", "Calibrating Personality Matrix",
  "Calling Psychic Phone Pals", "Canceling Un-cancelable Actions",
  "Capacitating Genetic Modifiers", "Captivating Conspiracy Theorists",
  "Capturing Youthful Exuberance", "Catalyzing Chemicals",
  "Catching Cat Burglars", "Ceiling Fan Rotation = dL/dT",
  "Charging Ozone Layer", "Checkering Flags", "Chlorinating Car Pools",
  "Clearing Shipping Lanes", "Cluttering Closets", "Coalescing Cloud Formations",
  "Cohorting Exemplars", "Collecting Meteor Particles",
  "Compiling Reticulated Splines", "Compiling Riley's Wardrobe",
  "Composing Melodic Euphony", "Compositing Vampiric Complexions",
  "Compounding Inert Tessellations", "Compressing Fish Files",
  "Computing Optimal Bin Packing", "Concatenating Sub-Contractors",
  "Concatenating Vertex Nodes", "Configuring Lemony Squeezation",
  "Configuring Studio Operations", "Constructing Clothes Hangers",
  "Containing Existential Buffer", "Cooling Down Refrigerators",
  "Crash-Proofing Parties", "Creating Handmade Lampshades",
  "Crenellating Crenellations", "Cultivating Quality and Class",
  "Dampening Stray Generators", "De-chlorophyllizing Leaves",
  "De-inviting Don Lothario", "De-wrinkling Worry-Free Clothing",
  "Debarking Ark Ramp", "Debunching Unionized Commercial Services",
  "Deciding What Message to Display Next", "Decomposing Singular Values",
  "Decrementing Alice's Funds", "Decrementing Feline Life-Count",
  "Decrementing Tectonic Plates", "Deleting Ferry Routes",
  "Delineating Mask Dynamics", "Depixelating Inner Mountain Surface Back Faces",
  "Depositing Slush Funds", "Desalinizing Snorkels",
  "Destabilizing Economic Indicators", "Destabilizing Orbital Payloads",
  "Determining Rent Guidelines", "Determining Width of Blast Fronts",
  "Deunionizing Bulldozers", "Developing Delicious Designs", "Dicing Models",
  "Diluting Livestock Nutrition Variables", "Disgruntling Employees",
  "Distilling Doggie Dynamics", "Distressing Jeans",
  "Downloading Satellite Terrain Data", "Downloading Weather Data",
  "Dragon-proofing Dressers", "Dumbing Down Doofuses",
  "Eliminating Would-be Chicanery", "Enabling Lot Commercialization",
  "Enforcing Storyline", "Enhancing Crown Reflectivity",
  "Enlisting Elite Forces", "Ensuring Transplanar Synergy",
  "Eschewing Everyday Aesthetics", "Establishing Gift Registry",
  "Estimating Volcanic Activity", "Examining Tiles from All Zooms and Angles",
  "Exposing Flash Variables to Streak System", "Extracting Resources",
  "Extrapolating Empire Eigenvectors", "Extruding Mesh Terrain",
  "Fabricating Imaginary Infrastructure", "Faceting Precious Gems",
  "Factoring Fairy Frolicking Frequencies", "Factoring Hobby Enthusiasm",
  "Factoring Pay Scale", "Falsifying Faux Finishes", "Fashioning Late Arrivals",
  "Fiercely Reticulating Splines", "Filling in the Blanks",
  "Fixing Election Outcome Matrix", "Flavorizing Side-Dishes",
  "Flood-Filling Ground Water", "Flushing Pipe Network",
  "Formulating Fitting Rooms", "Gathering Particle Sources",
  "Generating Compatible Roommates", "Generating Gothic Glamour",
  "Generating Intrigue", "Generating Jobs", "Generating Population Model",
  "Generating Sand Grains", "Generating Schmoozing Algorithm",
  "Gesticulating Mimes", "Gleefully Stacking Inventories",
  "Going Apartment Hunting", "Graduating Scholars", "Graphing Whale Migration",
  "Grooming Grooms", "Growing Greener Gardens",
  "Happy 14th Birthday Reticulated Splines!", "Hiding Garden Gnomes",
  "Hiding Willio Webnet Mask", "Homogenizing Interest Anatomy",
  "Hybridizing Plant Material", "Hydrating Harvestables",
  "Hyperactivating Children", "Igniting Pilot Lights",
  "Implementing Impeachment Routine", "Importing Entertainment Talent",
  "Importing Personality Anchors", "Increasing Accuracy of RCI Simulators",
  "Increasing Magmafacation", "Increasing Water Plant Population",
  "Individualizing Snowflakes", "Infuriating Furious Bits",
  "Initializing Dastardly Schemes", "Initializing Forth-Rallying Protocol",
  "Initializing My Sim Tracking Mechanism", "Initializing Operant Construct",
  "Initializing Rhinoceros Breeding Timetable",
  "Initializing Robotic Click-Path AI", "Initializing Secret Societies",
  "Inserting Chaos Generator", "Inserting Extension Algorithms",
  "Inserting Sublimated Messages", "Integrating Curves",
  "Integrating Illumination Form Factors", "Integrating Population Graphs",
  "Intensifying Hawaiian Prints", "Interpreting Family Values",
  "Inventing Internets", "Inverting Career Ladder",
  "Invigorating Dull Habitations", "Iterating Cellular Automata",
  "Iterating Chaos Array", "Lacing Football Cleats", "Launching SimSat 9000",
  "Lecturing Errant Subsystems", "Leveling Playing Fields",
  "Like, Totally Reticulating Splines, Dude", "Limiting Litterbox Loads",
  "Loading \"First Batch\" Metrics", "Loading \"Vroom\" Sounds",
  "Loading School Spirit Algorithm", "Locating Misplaced Calculations",
  "Making a Little Bit of Magic", "Making a Mess", "Making Manic Mansions",
  "Making Many Mini Wrenches", "Making Owners Look Like Pets",
  "Making Pets Look Like Owners", "Making Stephen Loyal",
  "Managing Managers' Managers", "Manipulating Modal Memory",
  "Mapping Influence Attributes", "Mapping The Llama Genome",
  "Matching Walls and Floors", "Maximizing Social Network",
  "Meditating Modifiers", "Mingling", "Mitigating Time-Stream Discontinuities",
  "Mixing Genetic Pool", "Modeling Marquetry", "Modeling Object Components",
  "Monitoring Moody Minors", "Mopping Occupant Leaks",
  "Navigating Stormy Waters", "Neutralizing Shuriken Oxidization",
  "Normalizing Power", "Normalizing Social Network",
  "Obfuscating Quigley Matrix", "Optimizing Baking Temperature",
  "Originating Ocean Currents", "Over-Waxing Banisters",
  "Overconstraining Dirty Industry Calculations",
  "Partitioning City Grid Singularities", "Partitioning Prose",
  "Partitioning Social Network", "Perfecting Playground Pieces",
  "Performing A Sound Check", "Perturbing Matrices", "Pixalating Nude Patch",
  "Polarizing Image Conduits", "Polishing Water Highlights",
  "Populating Empyreal Entities", "Populating Lot Templates",
  "Populating Yards with Bugs and Birds", "Pre-fluffing Pillows",
  "Pre-Inking Simoleon Plates", "Predicating Predestined Paths",
  "Predicting Pagoda Peaks", "Predicting Puddle Prevalence",
  "Predicting Weather Unpredictability", "Prelaminating Drywall Inventory",
  "Preparing a Tasty Grilled Cheese Sandwich",
  "Preparing Bacon for Homeward Transportation", "Preparing Captive Simulators",
  "Preparing for Pops and Locks", "Preparing Perfect Plumbing",
  "Preparing Personal Spaces", "Preparing Sprites for Random Walks",
  "Preparing Vacation Days", "Pressurizing Fruit Punch Barrel Hydraulics",
  "Priming Mascot Mischief Coefficients", "Prioritizing Landmarks",
  "Projecting Law Enforcement Pastry Intake", "Proscribing Plebeian Palates",
  "Putting Down Toilet Seats", "Randomizing Inhabitant Characteristics",
  "Rasterizing Reputation Algorithms", "Rasterizing Rodent Residences",
  "Re-Activating Story Arc", "Re-Inverting Career Ladder",
  "Re-Re-Re-Re-Re-Reticulating Splines", "Readjusting Emotional Weights",
  "Readying Relaxation Receptors", "Realigning Alternate Time Frames",
  "Recomputing Mammal Matrix", "Reconfiguring Genetic Algorithms",
  "Reconfiguring User Mental Processes", "Recruiting Snooty Food Judges",
  "Recycling Hex Decimals", "Redefining Family Values",
  "Redistributing Resources", "Rehearsing Dinner", "Reinforcing Story Lines",
  "Relaxing Splines", "Remodeling Spline Reticulator",
  "Removing Road Network Speed Bumps", "Removing Texture Gradients",
  "Removing Vehicle Avoidance Behavior", "Renewing Urban Combinatorics",
  "Replacing Wheel Bearings", "Requisitioning Alumni Donations",
  "Resolving GUID Conflict", "Restocking Sim Inventories",
  "Reticulated Splines for Sale: §2000", "Reticulating 3-Dimensional Splines",
  "Reticulating 4-D Splines", "Reticulating Dog Show Object Splines",
  "Reticulating Golden Splines", "Reticulating Graduated Splines",
  "Reticulating Ninja Splines", "Reticulating Splines",
  "Reticulating Splines Again", "Reticulating Splines in the Zone",
  "Reticulating Splines One Last Time", "Reticulating Story Splines",
  "Reticulating Underwater Splines", "Reticulating Unreticulated Splines",
  "Reticulator of Splines Reticulating", "Retracting Phong Shader",
  "Retrieving from Back Store", "Reverse Engineering Image Consultant",
  "Reverse-Engineering Party Scores", "Rezoning Residual Residents",
  "Roof = Roof(1/3*pi*r^2*h)", "Routing Neural Network Infanstructure",
  "Scattering Rhino Food Sources", "Scheduling Copious Catnaps",
  "Scolding Splines for Reticulating", "Scrubbing Terrain",
  "Searching for Llamas", "Securing Online Grades Database",
  "Seeding Architecture Simulation Parameters",
  "Sequencing Cinematic Specifiers", "Sequencing Particles",
  "Setting Advisor Moods", "Setting Inner Deity Indicators",
  "Setting Universal Physical Constants", "Severing Civilization Connections",
  "Shampooing Dirty Rugs", "Simmering Swedish Meatballs",
  "Simulating Program Execution", "Simulating Sparkling Surfaces",
  "Some Spline Reticulating Required",
  "Sonically Enhancing Occupant-Free Timber", "Space Ponies: Achieved",
  "Sparking Imaginations", "Spawning Sights to See",
  "Speculating Stock Market Indices", "Spinning New Tunes",
  "Splatting Transforms", "Spooling IKEA Awesomeness", "Spreading Rumors",
  "Still Reticulating Splines", "Stocking Clearance Racks", "Stocking Ponds",
  "Stocking Stylish Sinks", "Stooping and Scooping",
  "Stopping To Smell The Flowers", "Storing Solar Energy",
  "Stratifying Ground Layers", "Strengthening Award Foundations",
  "Stress-Testing POÄNG Chairs", "Stuffing Genies Into Bottles",
  "Sub-Sampling Water Data", "Submerging Bedroom Furniture",
  "Supplying Self-Serve Furniture Area", "Sweetening Sixteens",
  "Synthesizing Gravity", "Synthesizing Natural Selection",
  "Synthesizing Wavelets", "Tabulating Spell Effectors", "Tabulating Traits",
  "Tailoring Trendy Threads", "Taking Countertops for Granite",
  "Teasing Teenage Hair-dos", "Telling Splines to Reticulate More Quietly",
  "Testing Test Subjects", "Testing Underworld Telecommunications",
  "Texture-Compositing Teddy Bears", "Threading Fabric Compositors",
  "Threading Sewing Needles", "Time-Compressing Simulator Clock",
  "Timing Temperature Transference", "Training Team Mascots",
  "Training Tour Guides", "Transmitting Message Bottles", "Turning On Turn-Ons",
  "Twisting Spiral Staircases", "Unable to Reveal Current Activity",
  "Unexpectedly Reticulating Splines", "Unfolding Foldy Chairs",
  "Unfolding Helix Packet", "Unloading Loading Screens",
  "Updating Hotel Registry", "Updating Vacancy Request Hotline",
  "Upgrading Gadgets", "Upholstering Sofas and Loveseats",
  "Weathering Buildings", "Wrangling All Wreckage",
  "Writing Scrolling Startup String Text", "Zeroing Crime Network",
]
