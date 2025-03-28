"use client";

import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button"; // Import the shadcn button
import { Sun, Moon } from "lucide-react"; // Import icons from lucide-react

export default function DarkModeToggle() {
  const [isDarkMode, setIsDarkMode] = useState(false);

  useEffect(() => {
    const root = document.documentElement;
    const savedMode = localStorage.getItem("theme");
    if (savedMode === "dark") {
      root.classList.add("dark");
      setIsDarkMode(true);
    }
  }, []);

  const toggleDarkMode = () => {
    const root = document.documentElement;
    if (isDarkMode) {
      root.classList.remove("dark");
      localStorage.setItem("theme", "light");
    } else {
      root.classList.add("dark");
      localStorage.setItem("theme", "dark");
    }
    setIsDarkMode(!isDarkMode);
  };

  return (
    <Button
      onClick={toggleDarkMode}
      variant="ghost" // Use the "ghost" variant for no background
      className="w-10 h-10 p-0 rounded-full border border-transparent hover:border-gray-300 dark:hover:border-gray-600"
    >
      {isDarkMode ? (
        <Sun className="w-5 h-5 text-gray-800 dark:text-gray-200" />
      ) : (
        <Moon className="w-5 h-5 text-gray-800 dark:text-gray-200" />
      )}
    </Button>
  );
}