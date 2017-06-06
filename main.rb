# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

# pp @candidates

 # pp experienced?(@candidates)

# pp find(5)

# pp github_points(100)

 # pp languages(@candidates)

 # pp recent_appliction(@candidates)

 # pp ofAge(@candidates)

  # pp qualified_applicant(@candidates)

pp ordered_by_qualifications(@candidates)