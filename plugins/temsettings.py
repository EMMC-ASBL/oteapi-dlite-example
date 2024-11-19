"""DLite storage plugin for serialising TEMImage metadata to json."""

from __future__ import annotations

import json
from pathlib import Path

import dlite


class temsettings(dlite.DLiteStorageBase):
    """DLite storage plugin for serialising TEMImage metadata to json.

    Arguments:
        location: Path to output JSON file.
        options: Unused
    """

    meta = "http://onto-ns.com/meta/0.1/TEMImage"

    def open(self, location, options=None):  # noqa: ARG002
        """Open output file `location`.  No options are supported."""
        self.location = location

    def save(self, inst):
        """Stores TEMImage metadata to storage."""
        settings = json.loads(inst.metadata)
        Path(self.location).write_text(json.dumps(settings, indent=2))
