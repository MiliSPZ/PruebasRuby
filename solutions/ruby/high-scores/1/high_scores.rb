=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.

Su tarea es escribir métodos que devuelvan la puntuación más alta de la lista, la última puntuación agregada y las tres puntuaciones más altas.
=end
class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse.first(3)
  end

  def latest_is_personal_best?
    @scores.last == @scores.max ? true : false
  end
end