# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
=begin
SELECT  projects.title, SUM(amount) FROM projects JOIN pledges ON pledges.project_id=projects.id GROUP BY projects.id ORDER BY projects.title
=end
  "SELECT  projects.title, SUM(amount) FROM projects JOIN pledges ON pledges.project_id=projects.id GROUP BY projects.id ORDER BY projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
=begin
SELECT users.name, users.age, SUM(amount) FROM users JOIN pledges ON pledges.user_id= users.id GROUP BY users.id ORDER BY users.name
=end
  "SELECT users.name, users.age, SUM(amount) FROM users JOIN pledges ON pledges.user_id= users.id GROUP BY users.id ORDER BY users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
=begin
  SELECT  projects.title,  (SUM(amount) -projects.funding_goal) AS over_goal FROM projects JOIN pledges ON pledges.project_id=projects.id GROUP BY projects.id HAVING SUM(amount)> projects.funding_goal
=end
  "SELECT  projects.title,  (SUM(amount) -projects.funding_goal) AS over_goal FROM projects JOIN pledges ON pledges.project_id=projects.id GROUP BY projects.id HAVING SUM(amount)>= projects.funding_goal"

end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
=begin
SELECT users.name,  SUM(pledges.amount) AS total FROM users JOIN pledges ON pledges.user_id= users.id GROUP BY users.id ORDER BY total
=end
  "SELECT users.name,  SUM(pledges.amount) FROM users JOIN pledges ON users.id=pledges.user_id  GROUP BY users.id ORDER BY SUM(pledges.amount)"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
=begin
SELECT projects.category, pledges.amount FROM pledges JOIN projects ON pledges.project_id=projects.id where projects.category="music"
=end
  "SELECT projects.category, pledges.amount FROM pledges JOIN projects ON pledges.project_id=projects.id where projects.category=\"music\""
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
=begin
  SELECT projects.category, SUM(pledges.amount) FROM pledges JOIN projects ON pledges.project_id=projects.id GROUP BY projects.category HAVING projects.category="books"
=end
  "SELECT projects.category, SUM(pledges.amount) FROM pledges JOIN projects ON pledges.project_id=projects.id GROUP BY projects.category HAVING projects.category=\"books\""
end
