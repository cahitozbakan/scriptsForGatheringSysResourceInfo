#!/bin/bash
((usercount=$(w | wc -l)- 2))
echo $usercount
