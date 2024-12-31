kubectl get secret admin-user -n kubernetes-dashboard -o jsonpath="{.data.token}" | ForEach-Object {
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_))
}