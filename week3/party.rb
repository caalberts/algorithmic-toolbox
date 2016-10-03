def group_children(children)
  i = 0
  group_count = 0

  while i < children.size
    age = children[i]
    max_age = age + 1

    group_count += 1
    i += 1

    while i < children.size && children[i] <= max_age
      i += 1
    end
  end

  group_count
end
