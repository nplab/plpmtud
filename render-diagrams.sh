#!/bin/sh

diagrams=diagrams

rm tmp.svg

goat $diagrams/dplpmtud-impl-examples.txt > tmp.svg
svgcheck -r tmp.svg > $diagrams/dplpmtud-impl-examples.svg

goat $diagrams/dplpmtud-phases.txt > tmp.svg
svgcheck -r tmp.svg > $diagrams/dplpmtud-phases.svg

goat $diagrams/dplpmtud-statemachine.txt > tmp.svg
svgcheck -r tmp.svg > $diagrams/dplpmtud-statemachine.svg

goat $diagrams/event-driven-state-changes.txt > tmp.svg
svgcheck -r tmp.svg > $diagrams/event-driven-state-changes.svg

goat $diagrams/packet-sizes-relationships.txt > tmp.svg
svgcheck -r tmp.svg > $diagrams/packet-sizes-relationships.svg

goat $diagrams/probe-timer-state-changes.txt > tmp.svg
svgcheck -r tmp.svg > $diagrams/probe-timer-state-changes.svg

rm tmp.svg
