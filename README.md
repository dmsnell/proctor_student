# proctor_student

Interactive quiz site for proctoring students.


## Running in development

```bash
rebar3 shell
```

## Configuration

Edit `src/sys.config` to change application settings.

| Config name | Description |
|---|---|
| `web_port` | On which port to listen for web connections. Use `80` if you want to access at `http://localhost/` without specifying the port in the URL. |

## Building a release

When deploying start by creating a release tarball for the system.

```bash
~$ rebar3 as prod tar
```

If all builds successfully it should create a tarball and report its location.

```bash
~$ rebar3 as prod tar                                                                                 10.150s
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling proctor_student
===> Assembling release proctor_student-0.0.0...
===> Warnings generating release:
*WARNING* stdlib: Object code (filename) out of date
*WARNING* public_key: Object code (pubkey_os_cacerts) out of date
===> Release successfully assembled: _build/prod/rel/proctor_student
===> Building release tarball proctor_student-0.0.0.tar.gz...
===> Tarball successfully created: _build/prod/rel/proctor_student/proctor_student-0.0.0.tar.gz
```

Untar the tarball in the directory of your choice and run with the `bin/proctor_student` command.

```bash
~$ tar -xzf proctor_student-0.0.0.tar.gz
~$ bin/proctor_student foreground
```
