import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { execSync } from 'child_process';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

function bumpVersion(currentVersion) {
    const parts = currentVersion.split('.');
    if (parts.length === 3) {
        parts[2] = (parseInt(parts[2], 10) + 1).toString();
        return parts.join('.');
    }
    return currentVersion + ".1";
}

function runCommand(cmd) {
    console.log(`Running: ${cmd}`);
    try {
        return execSync(cmd, { stdio: 'inherit' });
    } catch (error) {
        console.error(`Error: ${error.message}`);
    }
}

const packageJsonPath = path.join(__dirname, '..', 'package.json');
if (!fs.existsSync(packageJsonPath)) {
    console.error('package.json not found');
    process.exit(1);
}

const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
const oldVersion = packageJson.version || '0.0.0';
const newVersion = bumpVersion(oldVersion);

packageJson.version = newVersion;
fs.writeFileSync(packageJsonPath, JSON.stringify(packageJson, null, 2) + '\n');

console.log(`Bumped version: ${oldVersion} -> ${newVersion}`);

// Git operations
runCommand(`git add package.json`);
try {
    const status = execSync('git status --porcelain').toString();
    if (status.trim()) {
        runCommand(`git commit --no-verify -m "chore: bump version to ${newVersion}"`);
        runCommand(`git push`);
    } else {
        console.log('No changes to commit');
    }
} catch (e) {
    console.log('Git operations failed or no changes');
}
