Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBI45TL3AKGQEIXF5OEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D90C1DCF7A
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:29 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id n1sf2920866vke.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070948; cv=pass;
        d=google.com; s=arc-20160816;
        b=hFWoB5ydanAHOj5f3nb90hvKZzmaJ6RpHx6Q2pTA0Zchv1jdE+AtfNG6lu1X7fq1FQ
         JpwgwTaN9ZAFRsUv0xdUj5+iQ+2TX56LFGd9Ii91tXzj5hseUYnd3uP5iVwtgSRyvzv9
         cJIcFPgXK7Mj6xhxE3FnmXHPxj0rnGAF5qLY8DB8DQz3/hbQiuP1eeGNbi2o73bpSiOb
         yEJgAt2BdMFQ/cMRhSHmbNTGNUaH8ydK/HR4CSZv/r/F5BHlyRCdX5b5Np2nhxsoocK8
         TJM8QtVIAJcoccu6tt5OqD37BzomWT2f0egF99ZhGo6pZLHkF/GXX/EmBP0KHy3+yoxz
         xdCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5qfICXllly8eM6AH3ByGxxczTHUrnbrGWcyXlE5z218=;
        b=L7MgdEm41iadKVm+IqQmGXEHUdBaA5Wv4/ICKauI+Hx8Q3Vt5Wb8uWBaedDtcPE+++
         vj3SeeSsyJWbhL9dJ8QbDN0i8jhOnfr93O+Ie603sHx8MsPopha/4wv6iNSK2MKfaO8y
         Psi0A/8dts52eAne3BHbBZ+RjXKaQNiV/mqCsKDsa7sArxSdiKx5OVMCsBbye6urYBvM
         8s5CrpozQ7D/YLTZDt93knm8x0cCrp7FnvXqJVeHmUu1hVgNDjIXswAEcH1nVlzsScyW
         dzz75xveF5gcWZihcFvmOesAu+2CYe5x9fP4TnM9DcAMhq1BRu8CBeLxrlfN3L5e962A
         eCUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b9oWgHML;
       spf=pass (google.com: domain of 3o47gxgukedy6dn6j8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3o47GXgUKEdY6DN6J8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qfICXllly8eM6AH3ByGxxczTHUrnbrGWcyXlE5z218=;
        b=UKOXH079NpEHgpgd9bgsGm+QxSXOzP8Yfp5gyje/vS+nB34E8qwk4LEi8LNCjtXFYb
         1J2h9ZG11xaMduCWsrrM4Z4ZPuA4EuQobEt5m7J8QqwkiduD5CJ2iF39OzkdYWI3qmjK
         /j+j5rT4WWs3j138429lOdtFdXsgdkxavnZZTl6tc2hnqq6n86L3ukltkCY4HRdOZTU2
         lhpZR8RDqPACJWJpgZBdMT6A1RBpAvoR2mdEcktvWDey049ecRMk23NGpKMn6rmm5yJ2
         pdfS6uPtqRSwGCyux8+ZS66KgR4GAtBPmM4XGSTM0pntgWauZ59bJESUfTZYbBajTsOb
         MFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qfICXllly8eM6AH3ByGxxczTHUrnbrGWcyXlE5z218=;
        b=ZtGxD5EvSnM4g8kA8iCupPqZlKBuUoQDd0PJ87o2xbp81ll7TpUDamZY23sKDeNqyC
         vv8gFahfRD4IEZhOhMwwIeLZ11yZCcOh+drLqPqgZxcsZUoYJyCwa11P4guqNYziCoQ6
         31GMm4ISDHm7iVF7D4LJ2+VuKI4E2PqFA1vvY/ftKBcYkJp2gvDghk3z5nzWAcBaXgH3
         UplBA0XN0W8jGLOdEfM/us9PzjRxDn3Wxdki7iCPwUiNWi2gZj5J+UXaVzpGPxAfSbHQ
         WMGNkAxpRB7cVQzcTpG90k1iuTKngtgZXfFHrJ+21/JXhBCX6FzXP5uZZsLuYvfEYrw4
         56ww==
X-Gm-Message-State: AOAM533o1PYgM4HprOqSZXaDDv7+RBMkvG74VZCi51g7mxYIhnwiO02w
	Y1BrTJaZiEJWFSJIIcz4a8U=
X-Google-Smtp-Source: ABdhPJw36UGurOj0gfrqkfSaoivQRGLbTVeqea+bf5/jhS8V1I5OHg+UFq0+fJVLDNmK6/pT5JxFWQ==
X-Received: by 2002:a67:ea1a:: with SMTP id g26mr6733582vso.211.1590070947969;
        Thu, 21 May 2020 07:22:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:418:: with SMTP id d24ls260990vsq.7.gmail; Thu, 21
 May 2020 07:22:27 -0700 (PDT)
X-Received: by 2002:a67:6b07:: with SMTP id g7mr7191203vsc.10.1590070947538;
        Thu, 21 May 2020 07:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070947; cv=none;
        d=google.com; s=arc-20160816;
        b=PokoAkxMuM0y5sIqfPikCurwqtGzkfy5whb+F9+GJZ9J7mWR4l/cOCrqiuA4Indd8k
         i7P/hYAV5/p6Mm4FPbc2IFNKSjrazamGegTAoIkyiC+fqtnRdmUiA3QoADQ1aOL9aeVj
         8YqFDAgbKIucgHtk81bQP6d2oY+NT+5E08+yOEzJmPaHs9MDBM+rBwmoHk61PA2FzpT3
         Cmi1MT4kolHGiwWtoPhgpnfdVHMvVsj82Jn8AxFY+9ZJ1ffxwgly0luW/G/JO4MRICSs
         0ya2028HK3skCXzkLoLAvUUpu5TmvJkv9z6cC0ZV5O8zhrpgB2kMg447V6dc+W4x6hUE
         7jFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PC9Hjj7vUN5/seVEDSBqpv8gGPtTVfQoZ63r2GRfhtk=;
        b=ILzVB+/cGrjiThzmLISKlHz+aWCsGSkS7o50+Vj5TOyCnkXrH/cUjICC+gJrueM1ts
         5riycVXc000vvX1VewuhiVUsQw9g6C3Do8GmQYzJciszrGsZCjMuF3QSrYFMLiRK+x9d
         IgOl84ErdEIRp9LQSF9+iU0ssICyE2NqhU4Mbqb8jaDyjo1wt3cHUOtiFCYT0m+Cbq4q
         pHduPB872jhJ2Y3Tg69qD7e08bX6UiKKEuVykGp1u1PsZgONvgeMQjwxnHkLvX+iaf8I
         kf/7AZm/rPAtS36izMU9crweM/XK/Hk2fHdxcwTQgMXALt/148WuRU4HWHGUjhLHoyNN
         gWeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b9oWgHML;
       spf=pass (google.com: domain of 3o47gxgukedy6dn6j8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3o47GXgUKEdY6DN6J8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id m16si341718ual.1.2020.05.21.07.22.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3o47gxgukedy6dn6j8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d69so1264504ybc.22
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:27 -0700 (PDT)
X-Received: by 2002:a25:6cd6:: with SMTP id h205mr15954705ybc.404.1590070947070;
 Thu, 21 May 2020 07:22:27 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:39 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-4-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 03/11] kcsan: Support distinguishing volatile accesses
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
 header.i=@google.com header.s=20161025 header.b=b9oWgHML;       spf=pass
 (google.com: domain of 3o47gxgukedy6dn6j8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3o47GXgUKEdY6DN6J8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--elver.bounces.google.com;
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

In the kernel, volatile is used in various concurrent context, whether
in low-level synchronization primitives or for legacy reasons. If
supported by the compiler, we will assume that aligned volatile accesses
up to sizeof(long long) (matching compiletime_assert_rwonce_type()) are
atomic.

Recent versions Clang [1] (GCC tentative [2]) can instrument volatile
accesses differently. Add the option (required) to enable the
instrumentation, and provide the necessary runtime functions. None of
the updated compilers are widely available yet (Clang 11 will be the
first release to support the feature).

[1] https://github.com/llvm/llvm-project/commit/5a2c31116f412c3b6888be361137efd705e05814
[2] https://gcc.gnu.org/pipermail/gcc-patches/2020-April/544452.html

This patch allows removing any explicit checks in primitives such as
READ_ONCE() and WRITE_ONCE().

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
v2:
* Reword Makefile comment.
---
 kernel/kcsan/core.c    | 43 ++++++++++++++++++++++++++++++++++++++++++
 scripts/Makefile.kcsan |  5 ++++-
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/kernel/kcsan/core.c b/kernel/kcsan/core.c
index a73a66cf79df..15f67949d11e 100644
--- a/kernel/kcsan/core.c
+++ b/kernel/kcsan/core.c
@@ -789,6 +789,49 @@ void __tsan_write_range(void *ptr, size_t size)
 }
 EXPORT_SYMBOL(__tsan_write_range);
 
+/*
+ * Use of explicit volatile is generally disallowed [1], however, volatile is
+ * still used in various concurrent context, whether in low-level
+ * synchronization primitives or for legacy reasons.
+ * [1] https://lwn.net/Articles/233479/
+ *
+ * We only consider volatile accesses atomic if they are aligned and would pass
+ * the size-check of compiletime_assert_rwonce_type().
+ */
+#define DEFINE_TSAN_VOLATILE_READ_WRITE(size)                                  \
+	void __tsan_volatile_read##size(void *ptr)                             \
+	{                                                                      \
+		const bool is_atomic = size <= sizeof(long long) &&            \
+				       IS_ALIGNED((unsigned long)ptr, size);   \
+		if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
+			return;                                                \
+		check_access(ptr, size, is_atomic ? KCSAN_ACCESS_ATOMIC : 0);  \
+	}                                                                      \
+	EXPORT_SYMBOL(__tsan_volatile_read##size);                             \
+	void __tsan_unaligned_volatile_read##size(void *ptr)                   \
+		__alias(__tsan_volatile_read##size);                           \
+	EXPORT_SYMBOL(__tsan_unaligned_volatile_read##size);                   \
+	void __tsan_volatile_write##size(void *ptr)                            \
+	{                                                                      \
+		const bool is_atomic = size <= sizeof(long long) &&            \
+				       IS_ALIGNED((unsigned long)ptr, size);   \
+		if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
+			return;                                                \
+		check_access(ptr, size,                                        \
+			     KCSAN_ACCESS_WRITE |                              \
+				     (is_atomic ? KCSAN_ACCESS_ATOMIC : 0));   \
+	}                                                                      \
+	EXPORT_SYMBOL(__tsan_volatile_write##size);                            \
+	void __tsan_unaligned_volatile_write##size(void *ptr)                  \
+		__alias(__tsan_volatile_write##size);                          \
+	EXPORT_SYMBOL(__tsan_unaligned_volatile_write##size)
+
+DEFINE_TSAN_VOLATILE_READ_WRITE(1);
+DEFINE_TSAN_VOLATILE_READ_WRITE(2);
+DEFINE_TSAN_VOLATILE_READ_WRITE(4);
+DEFINE_TSAN_VOLATILE_READ_WRITE(8);
+DEFINE_TSAN_VOLATILE_READ_WRITE(16);
+
 /*
  * The below are not required by KCSAN, but can still be emitted by the
  * compiler.
diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
index 20337a7ecf54..75d2942b9437 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -9,7 +9,10 @@ else
 cc-param = --param -$(1)
 endif
 
+# Keep most options here optional, to allow enabling more compilers if absence
+# of some options does not break KCSAN nor causes false positive reports.
 CFLAGS_KCSAN := -fsanitize=thread \
-	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls)
+	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls) \
+	$(call cc-param,tsan-distinguish-volatile=1)
 
 endif # CONFIG_KCSAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-4-elver%40google.com.
