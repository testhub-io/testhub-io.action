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

## Viewing pushed coverage and test results

Test results and coverages can be viewed after successful push on [TestHub](https://test-hub.io) @ `https://test-hub.io/<org>`

![image](https://user-images.githubusercontent.com/454732/101276483-25fe9300-37d3-11eb-849f-4950ffa9b1f6.png)

![image](https://user-images.githubusercontent.com/454732/101276538-a91fe900-37d3-11eb-922c-77cd9fc6f671.png)



## License
The code in this project is released under the MIT License.
