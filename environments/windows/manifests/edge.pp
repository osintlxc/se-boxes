pget { 'download-microsoft-webdriver':
  source  => 'https://download.microsoft.com/download/3/2/D/32D3E464-F2EF-490F-841B-05D53C848D15/MicrosoftWebDriver.exe',
  target  => 'C:/tools/selenium',
  require => Package['selenium-gecko-driver'], # it creates target directory
}
