# GitHubFollowers

A polished, production-quality iOS app for discovering GitHub users and exploring their follower graphs — built entirely with UIKit, fully programmatic (no Storyboards), and modernized with async/await, diffable data sources, and content states. While inspired by a tutorial, every line of code is my own, reflecting my craft, architectural decisions, and attention to UX details.

---

## 🚀 Highlights

- Blazing-fast search with live filtering using `UISearchController` and diffable data sources
- Infinite scrolling follower lists with smart pagination and loading states
- Modern async/await networking with robust error handling and retry-safe UI
- Content-aware empty/search states using `UIContentUnavailableConfiguration`
- Fully reusable UI components (cells, buttons, alerts) and consistent design system
- Favorites management with persistence and conflict-safe updates
- Seamless navigation: push, modal, and embedded Safari for profiles and links
- Highly responsive layout with custom compositional-style flow layout helper
- Accessibility- and performance-minded: image caching, main-thread safety, and large titles

---

## ✨ What’s New (Modernized)

- Adopted Swift Concurrency (`async/await`) for networking and data flows
- Implemented `UICollectionViewDiffableDataSource` for smooth, performant updates
- Integrated `UIContentUnavailableConfiguration` for elegant empty/search UI
- Refined infinite scroll with back-pressure control (`hasMoreFollowers`, `isLoadingMoreFollowers`)
- Search that scales: live filtering on large datasets with instant UI updates
- Safer UI updates with main-thread dispatching and unified loading overlays
- Clear separation of concerns: networking, persistence, and presentation

---

## 🧭 Core Features

- Search GitHub users by username with instant feedback
- Browse paginated followers with smooth infinite scroll
- Tap through follower networks to explore related users
- Rich user profiles: repos, stats, and key metadata
- Add/remove favorites with persistent storage and conflict messaging
- Shareable UX patterns: custom alerts, loading views, and empty states

---

## 🛠 Technologies & Skills Demonstrated

- UIKit-first architecture, 100% programmatic UI
- Auto Layout with layout helpers and reusable components
- `UICollectionView` + Diffable Data Source
- `UISearchController` with live updates
- Swift Concurrency (`async/await`) for networking
- JSON decoding and API modeling
- Navigation patterns (UINavigationController, modal flows, SafariVC)
- Persistence layer with clear API and error surfacing
- Defensive programming: error mapping, default fallbacks, and user messaging

---

## 🏗 Architecture

- Pragmatic MVC with composition:
  - Controllers focus on orchestration and navigation
  - Views and cells are reusable and stateless
  - Managers (Networking, Persistence) expose clean async APIs
- Protocol-based delegation for cross-screen communication (e.g., requesting followers from profile)

---

## 📷 Screenshots

### Home/Search Screen
<img width="406" height="2622" alt="image" src="https://github.com/user-attachments/assets/bca778ed-3505-420d-9a87-3740a3157eb7" />


### User Profile
<img width="406" height="2622" alt="image" src="https://github.com/user-attachments/assets/772a27a4-648f-4639-b4b9-9fb4b0d56c68" />


### Followers List
<img width="406" height="2622" alt="image" src="https://github.com/user-attachments/assets/ea3d733f-97e1-4eaf-aab0-b58566d737af" />


### Favorites List
<img width="406" height="2622" alt="image" src="https://github.com/user-attachments/assets/0b2a504d-7156-497c-b568-afbf1093ffcb" />


### SafariVC 
<img width="406" height="2622" alt="image" src="https://github.com/user-attachments/assets/b6b03dc5-e439-4b10-8b86-640ce2ca4bc5" />


### Custom Alerts
<img width="406" height="2622" alt="image" src="https://github.com/user-attachments/assets/08b393d2-a14e-4b31-97fb-0b6e60268498" />

---

## 📚 Inspiration & Credits

Originally inspired by a tutorial. The implementation is bespoke, modernized, and extended to showcase professional UIKit practices.

---

## 👤 Repo Owner

- Daniel Martin  
- LinkedIn: https://www.linkedin.com/in/daniel-felipe-martín-franco-140bb1241/  
- GitHub: https://github.com/dmartin110620

---

_This app demonstrates the ability to build real-world, scalable UIKit apps with modern APIs, clean architecture, and refined UX._
