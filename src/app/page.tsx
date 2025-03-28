import React from "react";
import Header from "@/components/Header";

export default function Home() {
  return (
    <div className="flex flex-col min-h-screen bg-gray-50">
      {/* Header */}
      <Header />

      {/* Main Content */}
      <main className="flex flex-1 flex-col items-center justify-center text-center p-8">
        {/* Info Section */}
        <h1 className="text-4xl text-gray-700 font-bold mb-4">Welcome to ElmCSIS Dashboard</h1>
        <p className="text-lg text-gray-600 max-w-2xl mb-8">
          This platform is designed to help students and faculty manage their academic
          activities efficiently. Use the login or register buttons above to get started.
        </p>
        <div className="bg-white shadow-md rounded-md p-6 max-w-lg">
          <h2 className="text-2xl text-gray-500 font-semibold mb-4">How to Use This Site</h2>
          <ol className="list-decimal list-inside text-left text-gray-400 space-y-2">
            <li>Login or register to access your dashboard.</li>
            <li>Navigate through the menu to view your courses, grades, and more.</li>
            <li>Contact support if you encounter any issues.</li>
          </ol>
        </div>
      </main>

      {/* Footer */}
      <footer className="text-center p-4 bg-gray-100 text-gray-500">
        © 2025 ElmCSIS Dashboard. All rights reserved.
      </footer>
    </div>
  );
}