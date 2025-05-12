import Link from "next/link";
import { Card, CardContent } from "@/components/ui/card";

export default function DashboardPage() {
  return (
    <div className="flex min-h-screen bg-gray-100">
      {/* Sidebar */}
      <aside className="w-64 text-gray-700 font-bold mb-4 shadow-lg p-4 space-y-6 hidden md:block">
        <div className="text-2xl font-bold">ElmCSIS Dashboard</div>
        <nav className="space-y-4 text-sm">
          <Link href="/dashboard" className="block hover:text-blue-600">
            Dashboard
          </Link>
          <Link href="/dashboard/tools" className="block hover:text-blue-600">
            Tools
          </Link>
          <Link href="/dashboard/settings" className="block hover:text-blue-600">
            Settings
          </Link>
        </nav>
      </aside>

      {/* Main Content */}
      <main className="flex-1 p-6">
        {/* Topbar */}
        <div className="flex items-center justify-between mb-6">
          <div className="text-xl text-gray-700 font-semibold">
            Dashboard Overview
          </div>
        </div>

        {/* Placeholder Content */}
        <Card>
          <CardContent className="p-6 text-center text-gray-500">
            <div className="text-lg font-semibold mb-2">Profile</div>
            <p>
              Chart or table will go here. You can integrate Chart.js, D3,
              ApexCharts, or any content you want.
            </p>
          </CardContent>
        </Card>
      </main>
    </div>
  );
}