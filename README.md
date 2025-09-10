# SwiftUI Instrument Workshop — Swift Island 2025

This repository contains the sample projects for the **SwiftUI Instrument** workshop, prepared and presented by **Sofia Diniz** at the **2025 edition of Swift Island**.  

The repository includes two demo apps, **WaitUpHangs** and **WaitUpHitches**, each intentionally built with performance issues for you to diagnose and fix using Xcode’s Instruments.  

---

## 📋 Requirements

- macOS 26  
- iOS 26  
- Xcode **Beta 7** (or later)  
- The WaitUp projects (included in this repository)  

---

## 🎯 Workshop Goals  

By the end of this workshop, you should be able to:  

1. Understand **what Instruments is**.  
2. Recognize the **advantages of using Instruments** in app development.  
3. Learn **what the SwiftUI Instrument does**.  
4. Use it to **diagnose performance issues** in SwiftUI apps.  
5. Identify and fix **common performance issues**.  

---

## 🛠 Projects Overview  

### 🚦 WaitUpHitches  
This project is intentionally filled with issues that cause **frame drops and laggy animations** (commonly known as *hitches*).  

You’ll use Instruments to:  
- Profile the app.  
- Detect the causes of animation hitches.  
- Apply the workshop’s solution guidelines to optimize performance.  

---

### 🕒 WaitUpHangs  
This project has a noticeable **hang (freeze)** when opening the `OrdersView`.  

You’ll use Instruments — particularly the **SwiftUI Instrument** and **Time Profiler** — to:  
- Identify what causes the hang.  
- Optimize the code.  
- Implement a caching system.  
- Leverage **SwiftUI’s lazy loading views** for better performance.  
