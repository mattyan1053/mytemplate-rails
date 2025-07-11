import { defineConfig, globalIgnores } from "eslint/config";
import globals from "globals";
import js from "@eslint/js";
import tseslint from "typescript-eslint";
import eslintConfigPrettier from "eslint-config-prettier/flat"

export default defineConfig([
  { files: ["**/*.{js,mjs,cjs,ts}"] },
  { files: ["**/*.js"], languageOptions: { sourceType: "commonjs" } },
  { files: ["**/*.{js,mjs,cjs,ts}"], languageOptions: { globals: globals.browser } },
  { files: ["**/*.{js,mjs,cjs,ts}"], plugins: { js }, extends: ["js/recommended"] },
  globalIgnores(["**/builds/**/*", "**/vendor/**/*", "**/node_modules/**/*", "**/jest.config.js", "tailwind.config.js", "postcss.config.js"], "Ignore build directory"),
  tseslint.configs.recommended,
  eslintConfigPrettier,
]);
