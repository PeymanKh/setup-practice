from setup_practice import greet


def test_greet_uses_the_name() -> None:
    assert greet("Peyman") == "Hello, Peyman!"
