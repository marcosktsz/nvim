from collections import deque

T = int(input())

for _ in range(T):
    n, m = map(int, input().split())
    graph = {i: [] for i in range(n)}
    
    for _ in range(m):
        s, d = map(int, input().split())
        graph[s].append(d)
        graph[d].append(s)

    visited = set()  # Use a single set to track visited nodes with their parity
    queue = deque([(0, 0, [])])  # Queue stores tuples of (current node, current path length, path taken)

    found = False

    while queue:
        current, current_len, path = queue.popleft()

        # If we are back at the start node and the length of the path is odd, we've found our cycle
        if current == 0 and current_len > 0 and current_len % 2 != 0:
            print(current_len)
            print(' '.join(map(str, [0] + path)))
            found = True
            break

        visited.add((current, current_len % 2))

        for neighbor in graph[current]:
            if (neighbor, (current_len + 1) % 2) not in visited:
                queue.append((neighbor, current_len + 1, path + [neighbor]))
                visited.add((neighbor, (current_len + 1) % 2))

    if not found:
        print(0)
        print(0)
