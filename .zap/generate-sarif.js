var sarifExporter = Java.type("org.zaproxy.addon.sarifreport.SarifExporter");
var alerts = org.parosproxy.paros.model.Model.getSingleton().getSession().getSiteTree();
var exporter = new sarifExporter();
var file = new java.io.File("/zap/wrk/zap-report.sarif");
exporter.exportReport(file, alerts);
print("SARIF report saved to " + file.getAbsolutePath());
