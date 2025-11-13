variable "ingress_rules" {
    description = "list of ingress rules"
    type = list(object({
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)

    }))
    default = [
        {
           from_port = 22
           to_port = 22
           description = "for ssh type"
           protocol = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
        },
         {
           from_port = 80
           to_port = 80
           description = "for application type"
           protocol = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
        },
         {
           from_port = 8080
           to_port =  8080
           description = "for ssh type"
           protocol = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}