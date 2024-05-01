#!/bin/bash
xinput | rg -i track | sed -n 1p | awk '{print $8}' | awk -F = '{print $2}'
