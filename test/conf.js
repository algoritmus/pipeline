exports.config = {
  framework: 'jasmine',
  seleniumAddress: 'process.env.selenoid-4444.direct.labs.play-with-docker.com/wd/hub',
  specs: ['spec.js'],
capabilities: {
    browserName: 'chrome',
    enableVNC: true,
    enableVideo: true,
    videoFrameRate: 24,
    videoCodec: 'mpeg4',
    enableLog: true,
    name: "myCoolTestNameFromHost" 
  }
}