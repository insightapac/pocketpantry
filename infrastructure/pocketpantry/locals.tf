locals {
    solution-name       = "${trimspace(var.solution-name)}"
    solution-name-trim  = "${replace(local.solution-name,"/\\W/","")}"
    solution-name-lower = "${lower(local.solution-name-trim)}"
}
