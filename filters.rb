# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.select { |candidate| candidate[:id] === id}
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def github_points(candidate)
  candidate[:github_points] >= 100
end

def languages(candidate)
  candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
end

def recent_appliction(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

 def ofAge(candidate)
  candidate[:age] >= 18
end

def qualified_applicant(candidates)
  candidates.select do |candidate|
  experienced?(candidate) && github_points(candidate) && languages(candidate) && recent_appliction(candidate) && ofAge(candidate)
  end
end


def ordered_by_qualifications(candidates)
  ordered_candidates = candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }
  return (ordered_candidates).reverse
end

