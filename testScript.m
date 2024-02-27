import matlab.unittest.TestSuite
import matlab.unittest.TestRunner
import matlab.unittest.plugins.CodeCoveragePlugin

% Create a test suite
suite = TestSuite.fromFile('simpleModelTest.mldatx');

% Create a test runner
runner = TestRunner.withNoPlugins;

% Add a code coverage plugin (optional)
coveragePlugin = CodeCoveragePlugin.forFolder('path/to/your/project');
runner.addPlugin(coveragePlugin);

% Run the tests
results = runner.run(suite);

% Display test results
disp(results);
