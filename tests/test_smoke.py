import pytest

from setup_practice import main


def test_main_prints_a_greeting(capsys: pytest.CaptureFixture[str]) -> None:
    main()
    assert "Hello" in capsys.readouterr().out
