/** @type {import('ts-jest').JestConfigWithTsJest} **/
module.exports = {
  testEnvironment: "jsdom",
  testMatch: ["**/jest/**/*.test.ts"],
  moduleNameMapper: {
    "^@/(.*)$": "<rootDir>/app/typescript/$1",
  },
  transform: {
    "^.+\.ts?$": "ts-jest",
  },
};
