# cloudnative-pg-playground

<https://cloudnative-pg.io/docs>

## Usage

```bash
./01-setup.sh
./01-create-secret.sh
```

Then follow instructions in `lab-postgres-upgrade.sh`

## Notes

### Check pg version

```sql
SELECT version();
```

### Scale postgres to zero

```bash
kubectl annotate cluster test-postgres cnpg.io/hibernation="on" # hibernate
kubectl annotate cluster test-postgres cnpg.io/hibernation-     # unhibernate
```
