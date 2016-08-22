/* Translate ids in implication table to human readable names
 *
 * Copyright © 2016 Wilson, Brandon
 * 
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
 * OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


.mode insert implication

SELECT  ltag.name   AS ltag,
	lvalue.name AS lvalue,
	rtag.name   AS rtag,
	rvalue.name AS rvalue
	FROM implication
	LEFT OUTER JOIN tag AS ltag
		ON implication.tag_id = ltag.id
	LEFT OUTER JOIN value AS lvalue
		ON implication.value_id = lvalue.id
	LEFT OUTER JOIN tag AS rtag
		ON implication.implied_tag_id = rtag.id
	LEFT OUTER JOIN value AS rvalue
		ON implication.implied_value_id = rvalue.id;
