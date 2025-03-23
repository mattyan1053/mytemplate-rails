import { setHTML, startStimulus, stopStimulus } from "../stimulus_helper"
import HelloController from "../../app/typescript/controllers/hello_controller"

describe("HelloController", () => {
  beforeEach(() => {
    setHTML(`
      <div data-controller="hello" />
    `)
    startStimulus("hello", HelloController)
  })

  afterEach(() => {
    stopStimulus()
  })

  it("should display a greeting", () => {
    const div = document.querySelector("div")

    expect(div?.textContent).toBe("Hello World!")
  })
})
