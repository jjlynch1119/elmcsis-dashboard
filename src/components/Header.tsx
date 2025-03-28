import React from "react";
import Image from "next/image";
import Link from "next/link";

export default function Header() {
  return (
    <header className="flex justify-between items-center p-6 bg-white shadow-md">
      {/* University Logo Placeholder */}
      <div className="flex items-center">
        <Image
          src="/placeholder-logo.png" // Replace with your logo path
          alt="University Logo"
          width={120}
          height={40}
          priority
        />
      </div>
      {/* Login / Register Buttons */}
      <div className="flex gap-4">
        <Link href="/login">
          <a className="px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600">
            Login
          </a>
        </Link>
        <Link href="/register">
          <a className="px-4 py-2 bg-gray-200 text-gray-800 rounded-md hover:bg-gray-300">
            Register
          </a>
        </Link>
      </div>
    </header>
  );
}