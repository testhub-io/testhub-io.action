## Upload your JUnit Test results and Cobertura coverage reports to TestHub

## Usage

In your `.github.workflows` folder include a `workflow.yml` file include a step to push to Testhub.

For example

```yaml
- name: Upload test results
      id: hello
      uses: testhub-io/testhub-io.action@v0.57
      with:        
        test_result_pattern: "/target/surefire-reports/**/*.xml"
        test_coverage_pattern: "/target/site/jacoco/jacoco.xml"
```        

## License
The code in this project is released under the MIT License.
