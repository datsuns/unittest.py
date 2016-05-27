#!/usr/bin/env python
# -*- coding: utf-8 -*-

from testtools import TestCase
from testtools.matchers import Equals
from product.product1 import Product1

class TestBase(TestCase):
  def setUp(self):
    super(TestBase, self).setUp()
    self.p = Product1()

  def test_hello(self):
    self.assertThat(1, Equals(1))

  def test_method(self):
    self.assertThat(self.p.hello(), Equals(0))
