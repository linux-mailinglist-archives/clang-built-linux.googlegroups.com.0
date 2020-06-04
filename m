Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBAE34L3AKGQENFBCXDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7DF1EDCCA
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 07:58:26 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id y5sf4065452qtd.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 22:58:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591250305; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iq27wcX9Fh2jPSulj1mEFqBB7P+vUq54SQVJ1p6kAgM7sXXfJvTLatpm7IEkFg84Jz
         Fux1Hyuf9fmwJvjb0yqQ/cPvZv++6PTxrlqDixkgWHL1GsFl/+C7R+6rzwXo6nN6Tigu
         ro0MY+IeIG3e7ldm0FCE6RcK8dHDNb+E4Lqozqz9fcKl5eXx4iXHCMSzlV1yiAVAlsr6
         6DUHW9uz/ZWAqUvjJ1X1aJ9B8GgJJdq/qfYbXHEzIwoh9j6Q55YOlx58rs4X9Gux5kaZ
         bU1xOxM6Srnn8TK/Qwp5tsXYq0Y3gaZLNrtq9iIx/7SXxFyxLPatHTuQjGqsUawUPNqm
         Lm0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=RJGxTCDLPgbVf/RFDM5q+sh9vCBS4/zVDVYk3mtG7CM=;
        b=eQhvB/zI6xnQKXkuZ6hknAm5Az5LpNgPYkVGN8w4qCMmSCssK5sWVzR6x1HYUgSbve
         poGs3Vw8861+9M9ml4rV4rYxyxEu0XeRQ8oJxPaJtah/sAdjoydPVfllhZXkIylg1G4i
         MWPkb6vozA+wRKo35AfGZFMkOs/sdTpgNKBKKjJkMqLkdDU42T6QxJq82mWfZs92ZjGu
         4IQVgtv7Yn3j2vHgCCt+GoF/QZl0OzdpzlINWLhPyOgX6c6Isj35xgAfb7Am8dHVmKgf
         M85YUsXdLqR1W2XBeMt/c1znJO29yZczE38sg4PxdNqOqreLhvgz/GjE4TbzsTv0w5qF
         y/rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I4BZ4MPd;
       spf=pass (google.com: domain of 3f43yxgukefgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3f43YXgUKEfgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RJGxTCDLPgbVf/RFDM5q+sh9vCBS4/zVDVYk3mtG7CM=;
        b=AVt+KCISMd1/B9Sbk87BnFAZqW4Ji/e9mlboES9c/DiASRRDruoyLHg0XyyOnvMULX
         PFiDQGbzCZj6PavTEndFPA4iQNfAwwn8HrZRDjVgF6t2Ov6JGdOY5jxlSA8hLSQ/BsVx
         i4fgrOAuYnq8l4nkCak2rBhM84xQWwvEZsPNseAYHAYrFrx5jkst/Oo31SXLwELD/gyE
         NjGb5IWznzRt49GcSxRpx3GhABQ+jG6sgLLQN9SfrH5sHAzfBQnTlgZfo8oYSVCiTN7l
         fA1q6n2s2dgDR25w4077kxIKG7rf/Yp1iVQujvusBCpRu7L5mHcMxpw8F5arx3pEw7Kc
         Hh7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RJGxTCDLPgbVf/RFDM5q+sh9vCBS4/zVDVYk3mtG7CM=;
        b=Un5+M0PFJSr339B66RWSFIAENEqRFukMkVQYH2+YbAG60U14AH6hVdSTKGTpqyje7P
         piJgggdCnfsWZ/WCCMmKipFmHLYmmLYViKoz2M2XP7ek7OdKhp0xpcZrHtxfdvS16A8a
         szChauBvs/1giL25E151tkLI3bKWX3ub55ts6rhwz75V1yQv3HMtxpeKZPRATNkkh2rl
         pIKlbm8rPIBuLiOmQq+iUhIxWavwWo4T9KlO0yoJcnRTl4I1EOFRbbdxHWJJ3DkALJrj
         LisPIwIUQFIZtSQiv6yxRqHv+I4Qz3S8V3c0ZjCjjXuFINKWVU6BPjW0GrPyC+/PIbv4
         Ucwg==
X-Gm-Message-State: AOAM531wWZVrmVy4NxZe6axA3lazHjYDpC956nRTyNwjmzx4Dw2fquF0
	r+cyMg4UhMX4VcduL/qCG+s=
X-Google-Smtp-Source: ABdhPJw9sgnEoMJB0/xYeFkv7AtvGlRsqGI+7qKbiVKwzn8S7ZMTojrbKjKbLYCZ0E2XPQs4tkFTow==
X-Received: by 2002:a37:a7c5:: with SMTP id q188mr3111967qke.384.1591250304187;
        Wed, 03 Jun 2020 22:58:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2756:: with SMTP id n83ls2186202qkn.1.gmail; Wed, 03 Jun
 2020 22:58:23 -0700 (PDT)
X-Received: by 2002:a37:63c2:: with SMTP id x185mr3352643qkb.82.1591250303830;
        Wed, 03 Jun 2020 22:58:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591250303; cv=none;
        d=google.com; s=arc-20160816;
        b=UttK1ylMxdt67neV6Ae+AOuddWS83OHthePd7M2U42cXC5X4Y5E5KkMlAaar8ER6Pw
         4AtQpW1im1iYBijinmxvx40ApKyKzKLR5HSRz+hgiQSVuhzdevCR1Vq1d0MUoMq9bAPE
         bAEe7hZcC9YILPiq5E7deTd3fJEbuOitoFnDT91/gyKu5klUbXjoNmRGbZFQbuJuGQd+
         4Q/fTrXbZ7K7EGiVjD4tlF8AYpqx4Dc/XyCJj7d3GJ1PUXFH3OG/rKvU2mhF41KE9w7Y
         A6EHRjcERdQDsrUAfaNoCxlxmTsMJC0bX50YztnQq93WmbClcRodA6Zu9ie/3ZnPr61T
         YJ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=Y2WghFK4jI/68L/mvE2beXccHpF2A1uuR6W3fE75YUg=;
        b=JNLIuX3CU6XK6zK6xNvjrKjPZOdtSe6CD2DtCje+cEHOZJn1mvnrE/odGlcwndI4Aw
         JETHM0i/5lzrUGV1ggnILWPa9YKOBka/fsRenBeAsoYOQ46sPnK96buhg8JKGhWXMq3m
         WYxPEYe8U86/KG+tWlFGVIMttuUjdEA2tRY5QqPJCQyz60cTE1Qg2zkxApwz+U+i1WkN
         ke5PlfEsDogaXd2Us6WX6epqBDWCi4ROlM2PmB69+VWxkqlZgJuOhGGGa872NMgMZuZY
         TUsSE+ijAbM0JDc5zGhHMvvBqpEF8FsTmxbJogmfKyyZ1HTGMlnaAySb8nf0p30xbAlB
         k+2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I4BZ4MPd;
       spf=pass (google.com: domain of 3f43yxgukefgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3f43YXgUKEfgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id d3si281979qtg.0.2020.06.03.22.58.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 22:58:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f43yxgukefgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id q21so4020114qtn.20
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 22:58:23 -0700 (PDT)
X-Received: by 2002:a05:6214:1842:: with SMTP id d2mr3212300qvy.197.1591250303486;
 Wed, 03 Jun 2020 22:58:23 -0700 (PDT)
Date: Thu,  4 Jun 2020 07:58:10 +0200
Message-Id: <20200604055811.247298-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH -tip v2 1/2] kasan: Bump required compiler version
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: will@kernel.org, peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, 
	mingo@kernel.org, clang-built-linux@googlegroups.com, paulmck@kernel.org, 
	dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I4BZ4MPd;       spf=pass
 (google.com: domain of 3f43yxgukefgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3f43YXgUKEfgjq0jwlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--elver.bounces.google.com;
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

Adds config variable CC_HAS_WORKING_NOSANITIZE_ADDRESS, which will be
true if we have a compiler that does not fail builds due to
no_sanitize_address functions. This does not yet mean they work as
intended, but for automated build-tests, this is the minimum
requirement.

For example, we require that __always_inline functions used from
no_sanitize_address functions do not generate instrumentation. On GCC <=
7 this fails to build entirely, therefore we make the minimum version
GCC 8.

Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Acked-by: Andrey Konovalov <andreyknvl@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Marco Elver <elver@google.com>
---
Apply after:
https://lkml.kernel.org/r/20200602173103.931412766@infradead.org

v2:
* No longer restrict UBSAN (and KCSAN), since the attributes behave
  differently for different sanitizers. For UBSAN the above case with GCC
  <= 7 actually works fine (no compiler error). So it seems that only
  KASAN is affected by this -- let's limit our restriction to KASAN.
---
 lib/Kconfig.kasan | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 81f5464ea9e1..af0dd09f91e9 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -15,11 +15,15 @@ config CC_HAS_KASAN_GENERIC
 config CC_HAS_KASAN_SW_TAGS
 	def_bool $(cc-option, -fsanitize=kernel-hwaddress)
 
+config CC_HAS_WORKING_NOSANITIZE_ADDRESS
+	def_bool !CC_IS_GCC || GCC_VERSION >= 80000
+
 config KASAN
 	bool "KASAN: runtime memory debugger"
 	depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC) || \
 		   (HAVE_ARCH_KASAN_SW_TAGS && CC_HAS_KASAN_SW_TAGS)
 	depends on (SLUB && SYSFS) || (SLAB && !DEBUG_SLAB)
+	depends on CC_HAS_WORKING_NOSANITIZE_ADDRESS
 	help
 	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
 	  designed to find out-of-bounds accesses and use-after-free bugs.
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604055811.247298-1-elver%40google.com.
