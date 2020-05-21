Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBDGDTH3AKGQEL4UJWCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DB21DCBBF
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:05 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id b15sf2946911oti.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059404; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXLiU7p+qoFLgX7VJUNKBfwtsym2Auo+jMiDGgaxRrCbxIcgkwcVoL4Xsde27u49Sn
         jVh9asGsrlLdcj+j9hmqm4RdA8NpAouP50AhyHGYH0QyckAlIJkdYYu7zZpYRwbSzbAT
         v85dvwPNdu4B9pJ3ter7zvuLr3p4Idb8ROILI/9tqIsC1qUNR0DcaSS10j5HPzJ7YNiu
         YisTM+srH3lBZYip8N+RUzldmQHYzItMWt3/bLxbW5L6OBZ+FCl9ByzUUfNGzmA0SrEH
         3ow5Y5iJD9iK4uU3u5LpL/qAY58S8s44EaBFEBch0xMbP60dVIoY0lLGvas3YNTafx+O
         TRSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=PpdrxZRtWcBfFoPG5d7Gj5D+dsm30LjCXnGT0zLPQV8=;
        b=Zo8C7GAPWK6vOSX2tFfXw1IUr0wnf6mN9PH+kZvLznDgO3EBPG99dZ3+5TVJNEoOm6
         0TVagber+Ls9o6PxMK1JA8AipuhW+puRsRCHwMZ1wubGGaBiS0LssjdiGQ/g4ch7WjTv
         3rZl9m1exCUVHp2ARyzFSgw/1o+HYZVFwwbksGhNZSt/qU1XkRRyys7rwbLHkmM7qhBm
         zidKl5DKlyml/bMlAuZdAehJkBmcCcy0RZNY6tmYxjAVjH0Za4zv2041qaHOXzpKyrcz
         2X5SQ2+4jbP8z1KadKZEO4pHtuRjt2rAc1M4cbrEL0oK8vY2XbH6cK4ofVeaa4X8bd9E
         VbBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gv4cBg7D;
       spf=pass (google.com: domain of 3i2hgxgukewqgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i2HGXgUKEWQGNXGTIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PpdrxZRtWcBfFoPG5d7Gj5D+dsm30LjCXnGT0zLPQV8=;
        b=ackzu4b0n6Mvax5idWFitpsZzkjXcZTgO2AZ/PD/xog2n8o5Re0//ckwK1yCjlAzpD
         yexccKgeyqoAXwspyGWwaAdObOx05EWlHmW+Tx891P4RAntXM9wmIyKupXwnD1BrGWnd
         l0D4i/lniIEr1kKPiQ0gj89sWZUfcTWWoqPFZi4Gmz0BMMISDzlSqBnLt1wWRMP5VULP
         gbikiu2XLyVtVyKdIpWE3RUWFp21DuCh9mNbCLUKELRoWCLraCSKtCSTreNoXIsQzbAm
         n1qZZ6fC5PGGWLAaOMulJZ3yt95KtwjrItRo3sOZ0l7EOq6el1uJJHgSPr7ulVSJjMvh
         p8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PpdrxZRtWcBfFoPG5d7Gj5D+dsm30LjCXnGT0zLPQV8=;
        b=UGEM8zOzDlVOIYxQqWoCLEgyg4Pf4nNua0pt8EPPbDkJ591stKpk16EbGFhs9BFzu+
         5UWBm+8oQwtVnutdiQfXd5YS+Pw7s482LN+YDp/O6wB20Fq5yWddQ3zsBfSjlZn2Rk+w
         XPp+q+wuwa2QJsOBnstS1J7YZc1auGfTPkKJqG8gbyHQeM7NVmFwiaQlhCFzYuPD/Oun
         dNzODFbQSsjpYpT1M7PLiuomgmyWVfyNdn0e8O5QlOPdJwjJ5FhDgFihyAS4q1JPk4MA
         FkGWB8DZT1xVq0gKCBTlH0A6P9N75ngfR3zqNMf+AkQwPc/RfmF6WmI/4rUkgMwe8oaI
         jV8A==
X-Gm-Message-State: AOAM5325GdXsiDMSobYburKHJ14Ea3xU36ViUEwMrVijL9NI+GSTZnTR
	WY806dxhbB6BtvEm1HTCs8A=
X-Google-Smtp-Source: ABdhPJztGMZRYkClolbfMyn74K0xa0G0wWdbTIM/B1VwvTEoSr8SUuKIwfpl4FmpuHVO7m1BILKmGw==
X-Received: by 2002:a9d:6c11:: with SMTP id f17mr1606881otq.327.1590059404662;
        Thu, 21 May 2020 04:10:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a1a:: with SMTP id g26ls390870otn.0.gmail; Thu, 21 May
 2020 04:10:04 -0700 (PDT)
X-Received: by 2002:a9d:2dc1:: with SMTP id g59mr6746751otb.288.1590059404318;
        Thu, 21 May 2020 04:10:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059404; cv=none;
        d=google.com; s=arc-20160816;
        b=gojzOX3FSlsNf6wUC8QSLMBDf/iWCnu8jWtyS3Gl9lYKAp39tSzxn+QifpqXtpBhOF
         kVSsSN7Zqq0tHg8D6g+HJu+6sWxGFRGTFHoK9+sG3I/CoHhbKWeJ6nZ3hCapH2fbbJhy
         VnpiwW2GzKxVPWLCl/2L3M4ZV+fossN6J36XFNqwmDV0IZMdJMhnJSxLCX6VxR+1gEY0
         ZpVbO1mY3ivdu9NuJAb0tb2SsgjMO/MbRo37XRlfWD2ZTFFbgA8WefUXf0M38J6uXmfu
         CK5Krrhd6cn6EoDVmTeblY2RiYxBCW5wic4FOsq3jFyneS2W7uaAYLrCOF3fwklPEFll
         Q7fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=H/UmEzoy3I9ShhHc8I+RGwc8p1HVxWjO5wJlJG19fNM=;
        b=JKsbIfLy+qsOvzA/jmoNhGrAyta6VzfVwo7HCHM29SltQ6e9v/CBb3JVwu4iZrNVMQ
         ptXv/mspyMYhyt8LPLnixfY17PYI7z/CDdy1JBTJ5VUKGapFkbFphZWGF2d7JvDNGt3h
         GYR0wFe/5N+FyBIB8xeUm9kkFhUtFhEhI97+8uNP0XkwKuSRCiQ56lnsm6JX1cfu1sEq
         BH06Z3NV9hFp/gvOizXKrCfhOxWbDWAozAjOZBXrCQHWfQEQrNScAzWk4G6TOHTIzFY4
         zvI3lsu5baenDJduX7+kK5kAKMm2iq3fWa8pgsguStxSyQhautqqBmF319BNJSastiF5
         s3UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gv4cBg7D;
       spf=pass (google.com: domain of 3i2hgxgukewqgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i2HGXgUKEWQGNXGTIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id d4si372253oic.3.2020.05.21.04.10.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i2hgxgukewqgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id h129so4865679ybc.3
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:04 -0700 (PDT)
X-Received: by 2002:a05:6902:6a8:: with SMTP id j8mr13222758ybt.46.1590059403861;
 Thu, 21 May 2020 04:10:03 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:49 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-7-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 06/11] kcsan: Restrict supported compilers
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gv4cBg7D;       spf=pass
 (google.com: domain of 3i2hgxgukewqgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i2HGXgUKEWQGNXGTIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The first version of Clang that supports -tsan-distinguish-volatile will
be able to support KCSAN. The first Clang release to do so, will be
Clang 11. This is due to satisfying all the following requirements:

1. Never emit calls to __tsan_func_{entry,exit}.

2. __no_kcsan functions should not call anything, not even
   kcsan_{enable,disable}_current(), when using __{READ,WRITE}_ONCE => Requires
   leaving them plain!

3. Support atomic_{read,set}*() with KCSAN, which rely on
   arch_atomic_{read,set}*() using __{READ,WRITE}_ONCE() => Because of
   #2, rely on Clang 11's -tsan-distinguish-volatile support. We will
   double-instrument atomic_{read,set}*(), but that's reasonable given
   it's still lower cost than the data_race() variant due to avoiding 2
   extra calls (kcsan_{en,dis}able_current() calls).

4. __always_inline functions inlined into __no_kcsan functions are never
   instrumented.

5. __always_inline functions inlined into instrumented functions are
   instrumented.

6. __no_kcsan_or_inline functions may be inlined into __no_kcsan functions =>
   Implies leaving 'noinline' off of __no_kcsan_or_inline.

7. Because of #6, __no_kcsan and __no_kcsan_or_inline functions should never be
   spuriously inlined into instrumented functions, causing the accesses of the
   __no_kcsan function to be instrumented.

Older versions of Clang do not satisfy #3. The latest GCC currently doesn't
support at least #1, #3, and #7.

Link: https://lkml.kernel.org/r/CANpmjNMTsY_8241bS7=XAfqvZHFLrVEkv_uM4aDUWE_kh3Rvbw@mail.gmail.com
Signed-off-by: Marco Elver <elver@google.com>
---
 lib/Kconfig.kcsan | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index a7276035ca0d..3f3b5bca7a8f 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -3,6 +3,12 @@
 config HAVE_ARCH_KCSAN
 	bool
 
+config HAVE_KCSAN_COMPILER
+	def_bool CC_IS_CLANG && $(cc-option,-fsanitize=thread -mllvm -tsan-distinguish-volatile=1)
+	help
+	  For the list of compilers that support KCSAN, please see
+	  <file:Documentation/dev-tools/kcsan.rst>.
+
 config KCSAN_KCOV_BROKEN
 	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
 	depends on CC_IS_CLANG
@@ -15,7 +21,8 @@ config KCSAN_KCOV_BROKEN
 
 menuconfig KCSAN
 	bool "KCSAN: dynamic data race detector"
-	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
+	depends on HAVE_ARCH_KCSAN && HAVE_KCSAN_COMPILER
+	depends on DEBUG_KERNEL && !KASAN
 	depends on !KCSAN_KCOV_BROKEN
 	select STACKTRACE
 	help
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-7-elver%40google.com.
