  Plan.create(name: '表参道ぶらりデートプラン', cost: "30000", time: "2018-01-10", season: "春")
  Plan.create(name: '表参道ぶらりデートプラン2', cost: "40000", time: "2018-01-11", season: "夏")

  Place.create(name: 'アップル表参道', latitude: "35.666217", longtitude: "139.711096")
  Place.create(name: '竹下通り', latitude: "35.683358", longtitude: "139.701045")
  Place.create(name: '代官山', latitude: "35.003771", longtitude: "135.88208")

  Order.create(plan_id: 1, place_id: 3, order: 1)
  Order.create(plan_id: 1, place_id: 2, order: 2)
  Order.create(plan_id: 1, place_id: 1, order: 3)

  Order.create(plan_id: 2, place_id: 1, order: 3)
  Order.create(plan_id: 2, place_id: 1, order: 3)
  Order.create(plan_id: 2, place_id: 1, order: 3)
