Return-Path: <clang-built-linux+bncBCIO53XE7YHBBCO2TX6AKGQE3Z35T4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D3128E85F
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 23:26:35 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id m23sf607331ioj.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 14:26:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602710794; cv=pass;
        d=google.com; s=arc-20160816;
        b=BSkwe4PYK6dbQw7veAsLW6GhkcJLhJ/oYdXLUiHezUjXh4bowxpHSEPRJRzQxMUvaB
         kL0qakBag+TPLaYQRq9ulupfE7DVR9lfMIS8+5OTgD6xuMZXDWF4cgpQqiRTr8w+lQKh
         PXvz88n81TDhx04kfml+ggOybCWrlFFH4+K6iL61gfGHJBd8r7fUGI4pwjy02JKPvWkG
         Nz0WdDNYZ0aFxp5LmZXLCO7Q6Lah/B4MUhhV8+9ml++42EU/f0MldaX2ziXaPna6iq65
         6NkQF+U9DIITuIec3MMkuHWh5J2EgVfli/OZXWmJuYLu3lDdq81eU/nPxcxaduAarPBB
         rTig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OADBnHV5rIZk/zUCk/rjD6zaesbKF6t4WcSjxOhTS+o=;
        b=KnCBc0Ue9kaoMS38LKmW1ZIi/oCKl/pbZzJa62zWpk7I36nxxCCUQFi6ufN7mktMIC
         83p3PaBwsier3lhfhfwgZON6LGQuH4HDSq1E6AQnK8vwXp9N9BRyiIq0mXuexMyMkkRE
         aJuE2jLZDOHSTqjky9bhWGap1ip+JqHzMjb5nE3hYP7gXcyhy8lxkjD2FnqRdg4Hn+rT
         4KAl9XtwemcRhUQyWiSgGsnm1sh+QMIb5pyhEQOGepalJtxY5d9FhEMmL9CY6y636z6V
         PloUjsd1eGyKKRnJbIDrFwaIgomYQae+L3DRBhHXziHOrxVMkR4sZMd83yAmqzZ3g61/
         vSZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.166.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OADBnHV5rIZk/zUCk/rjD6zaesbKF6t4WcSjxOhTS+o=;
        b=B68h6ph7oes2msHMrE2mzkEokY9GnvAsH56DkyUZuvpGx0Ywii3ZdgeP3+kSr6xz5F
         uDut/riV1nq+p7MKKbAiulZ4fHKV5ba9qDetlVlB+sAovl5Tflyf3VeSdVlBF3y2JhVQ
         +5doFaiPJN9HOe2QtcW6kpEt/xqdZ1m4kZK4Wki8O+TatC8EN2FNMeZggmmFhZ7WpepK
         XattfHyNi2BQt3+NBEVFpewO4+9V0YkLxtdyefa1wMc1dCUNJEVRpBf5Mo0auLK+DslC
         WnkxlHnemkjs6CTc8uSTAgtKbzfv1a4Kukc4USffOkwKntDP7o5bxO3URka5A46Rs1oo
         AJ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OADBnHV5rIZk/zUCk/rjD6zaesbKF6t4WcSjxOhTS+o=;
        b=QA5YDoqIkMovJfnejGhd34sZAcfozU0RTJ7cunQmPQrTnQsOjK/hm/AsrJHVH6dCuu
         a8NrHaEZJdJM/mfmVHAoKLS1NqYc+CYzREkTVX3ugOzbu1IrcNjRzl+XNWd6yvVEYjAp
         gH0yFRH9Oy11ZK6VwAGDK4dFUrpq/gKwakKIabjz7D25ofpwxX9XbQ/I7IsTlwHuNzdM
         muwn7//492cjaDONC7jgTIHXZHrewAo/GkKrRr05CZT3SQL/guRrLuiDyYnFZsW0dMMz
         /RvZO8yG4X5j0KHGBZD/XuNy2rxcxXJfmxWcTPNQsF7v/Va6LKwQ8F3vRIEDO5wXVSav
         2qbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318DddDDVbilG6BkBTT/NmSXEvaNRaItXAy8G9rz2S45vBbqnwj
	JwXf+BpCeAFDCOMjdz9V76Q=
X-Google-Smtp-Source: ABdhPJxwtkgZe5zDTmaQxxo2eP0xsOQdP1kMQZ5YZO9nuodrJQ9ZQ7ntS7U4z4kwlHki9ARIU+3geQ==
X-Received: by 2002:a5d:80cc:: with SMTP id h12mr1042118ior.73.1602710794043;
        Wed, 14 Oct 2020 14:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:770f:: with SMTP id s15ls116631ilc.11.gmail; Wed, 14 Oct
 2020 14:26:33 -0700 (PDT)
X-Received: by 2002:a92:9944:: with SMTP id p65mr846700ili.127.1602710793567;
        Wed, 14 Oct 2020 14:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602710793; cv=none;
        d=google.com; s=arc-20160816;
        b=I0ChwzP1rGoOAkdnNglJYioAiwHqitS9mPk4qkrZfAwY9UU+Vw1OeiPZVix8xiKRTS
         rqpujgV69R4SF9I0PuW2Jp3A+MM8uIUzz8LQ4QWP+Jha+c/dq45pi8DAp7klqRG1OrXW
         NQmHgv1XtAmEkQi+54ctWMTVPd3nC4MD6w8Urq1j3gxC7C4RleAHMhQw/cmlg1bSOuc9
         wIXqSxhNjEU5Ndyvqy7VOKOtYnEvmjz/8VUucXUgi9z9lET3zDT+9oY2KfLOqf+UEjfE
         foMh/XSPXlhzEXHyJ2j+7zFO0xLIFkAwo0bhDUNMAVB9BCS4EafDxTzC1l0uCuB5zaoS
         Npdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=O1nywZUMtAWTHD6N03tdA5btMKZB3dhRS89gnTJeMJo=;
        b=0Gr113/EowWub+JvNRlZXV6HH6k9Zm9ju/Gc9KNGL8XV9s5kaAVADZn+ZV56CA7Vz9
         dHIejdJNPOU1//3MVgTWxDEQszmoRLByMNQ3tEjMauzHCyeANkD2+9FpBUZ96qz6j0Nq
         XAIFL6xqXq0lkmMTia2EOxP1pZn2JXxXMKMmZK5/AxPEt7c6EpaKzno6tbxwxtNkzWct
         87Mb/0+/iLd3uC8YMQQjKubgJMPZfovYSGeWzY62lQS4kSQy0+hBipj2e7FvIvY8Btbo
         wAWmo/bz/UyP0qa1bdF/AAOF1vypGOC5fsSRd3DI10uVsWXj1mB5Gz87r48eDVZE1nY4
         86BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.166.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com. [209.85.166.68])
        by gmr-mx.google.com with ESMTPS id z85si68959ilk.1.2020.10.14.14.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 14:26:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.166.68 as permitted sender) client-ip=209.85.166.68;
Received: by mail-io1-f68.google.com with SMTP id m17so1266766ioo.1
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 14:26:33 -0700 (PDT)
X-Received: by 2002:a6b:6001:: with SMTP id r1mr1040527iog.29.1602710793012;
        Wed, 14 Oct 2020 14:26:33 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z15sm734385ioj.22.2020.10.14.14.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 14:26:32 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH] compiler.h: Fix barrier_data() on clang
Date: Wed, 14 Oct 2020 17:26:31 -0400
Message-Id: <20201014212631.207844-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.166.68 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Commit
  815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")

neglected to copy barrier_data() from compiler-gcc.h into
compiler-clang.h. The definition in compiler-gcc.h was really to work
around clang's more aggressive optimization, so this broke
barrier_data() on clang, and consequently memzero_explicit() as well.

For example, this results in at least the memzero_explicit() call in
lib/crypto/sha256.c:sha256_transform() being optimized away by clang.

Fix this by moving the definition of barrier_data() into compiler.h.

Also move the gcc/clang definition of barrier() into compiler.h,
__memory_barrier() is icc-specific (and barrier() is already defined
using it in compiler-intel.h) and doesn't belong in compiler.h.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
---
 include/linux/compiler-clang.h |  6 ------
 include/linux/compiler-gcc.h   | 19 -------------------
 include/linux/compiler.h       | 18 ++++++++++++++++--
 3 files changed, 16 insertions(+), 27 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index cee0c728d39a..04c0a5a717f7 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -52,12 +52,6 @@
 #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
 #endif
 
-/* The following are for compatibility with GCC, from compiler-gcc.h,
- * and may be redefined here because they should not be shared with other
- * compilers, like ICC.
- */
-#define barrier() __asm__ __volatile__("" : : : "memory")
-
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
 #endif
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7a3769040d7d..fda30ffb037b 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -15,25 +15,6 @@
 # error Sorry, your compiler is too old - please upgrade it.
 #endif
 
-/* Optimization barrier */
-
-/* The "volatile" is due to gcc bugs */
-#define barrier() __asm__ __volatile__("": : :"memory")
-/*
- * This version is i.e. to prevent dead stores elimination on @ptr
- * where gcc and llvm may behave differently when otherwise using
- * normal barrier(): while gcc behavior gets along with a normal
- * barrier(), llvm needs an explicit input variable to be assumed
- * clobbered. The issue is as follows: while the inline asm might
- * access any memory it wants, the compiler could have fit all of
- * @ptr into memory registers instead, and since @ptr never escaped
- * from that, it proved that the inline asm wasn't touching any of
- * it. This version works well with both compilers, i.e. we're telling
- * the compiler that the inline asm absolutely may see the contents
- * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
- */
-#define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
-
 /*
  * This macro obfuscates arithmetic on a variable address so that gcc
  * shouldn't recognize the original var, and make assumptions about it.
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 92ef163a7479..dfba70b2644f 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -80,11 +80,25 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 
 /* Optimization barrier */
 #ifndef barrier
-# define barrier() __memory_barrier()
+/* The "volatile" is due to gcc bugs */
+# define barrier() __asm__ __volatile__("": : :"memory")
 #endif
 
 #ifndef barrier_data
-# define barrier_data(ptr) barrier()
+/*
+ * This version is i.e. to prevent dead stores elimination on @ptr
+ * where gcc and llvm may behave differently when otherwise using
+ * normal barrier(): while gcc behavior gets along with a normal
+ * barrier(), llvm needs an explicit input variable to be assumed
+ * clobbered. The issue is as follows: while the inline asm might
+ * access any memory it wants, the compiler could have fit all of
+ * @ptr into memory registers instead, and since @ptr never escaped
+ * from that, it proved that the inline asm wasn't touching any of
+ * it. This version works well with both compilers, i.e. we're telling
+ * the compiler that the inline asm absolutely may see the contents
+ * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
+ */
+# define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
 #endif
 
 /* workaround for GCC PR82365 if needed */
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014212631.207844-1-nivedita%40alum.mit.edu.
