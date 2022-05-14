class TrainingEntry < ApplicationRecord

  enum when: {
    before: -1,
    during: 0,
    after: 1
  }

end
