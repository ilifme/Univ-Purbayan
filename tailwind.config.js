import defaultTheme from 'tailwindcss/defaultTheme';

/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/**/*.blade.php',
        './resources/**/*.js',
        './resources/**/*.vue',
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ['Figtree', ...defaultTheme.fontFamily.sans],
                montserrat: ['Montserrat', 'sans-serif'],
                poppins: ['Poppins', 'sans-serif'],
            },
            colors: {
                primary: {
                    200: '#264790',
                },
                xneutral: {
                    0: '#ffffff',
                    100: '#d9d9d9',
                    200: '#939393',
                    300: '#565656',
                    400: '#272829',
                },
                neutral: {
                    0: '#ffffff',
                },
            },
        },
    },
    plugins: [],
};