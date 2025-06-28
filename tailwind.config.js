/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/typescript/**/*.ts',
  ],
  theme: {
    extend: {
      colors: {
        'btn-blue': 'var(--color-blue-500)',
        'btn-blue-hover': 'var(--color-blue-600)',
        'btn-red': 'var(--color-red-500)',
        'btn-red-hover': 'var(--color-red-600)',
        'btn-text': 'var(--color-white)',
      },
    },
  },
  plugins: [],
}
