# commit-msg-hook
Git hook that enforces semantic commit messages.

## Installation

### Manual 
```
curl --fail -o .git/hooks/commit-msg https://raw.githubusercontent.com/One2r/commit-msg-hook/master/commit-msg.sh && chmod 500 .git/hooks/commit-msg
```

### By pre-commit
See detail by: https://pre-commit.com

## Usage

Git commit message format:
```
type: message
```
A example commit:
```
git commit -a -m "feat: a new featur"
```

### Type 
Must be one of the following:

* **feat**: a new feature is introduced with the changes
* **fix**: a bug fix has occurred
* **chore**: changes that do not relate to a fix or feature and don't modify src or test files (for example updating dependencies)
* **refactor**: refactored code that neither fixes a bug nor adds a feature
* **docs**: updates to documentation such as a the README or other markdown files
* **style**: changes that do not affect the meaning of the code, likely related to code formatting such as white-space, missing semi-colons, and so on.
* **test**: including new or correcting previous tests
* **perf**: performance improvements
* **ci**: continuous integration related
* **build**: changes that affect the build system or external dependencies
* **revert**: reverts a previous commit 
* **workflow**:
* **release**:
