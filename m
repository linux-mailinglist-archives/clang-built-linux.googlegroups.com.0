Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBBWDTH3AKGQE6VLNNIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 230551DCBB5
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:09:59 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id l4sf3223710oog.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:09:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059398; cv=pass;
        d=google.com; s=arc-20160816;
        b=m+ZKV1nkA/FYAZEDW2kJNh4FJ5IF2mObLiaLfdG2T+t1yyy6C6CjpeyzYwHZ6xcP4p
         xSYpNxW8Zj57uyAPJlhJDZQzZ04c+aLE6KQ92QEAl8K4V0R3cHQkGXzmXdED9duvAEhc
         XWELi8Nt/qD2yZ5yVgVg8D3b1u9LUK4Wiv/6ySGZjRdZjSBkX53Ren5e2y7DY9ZXimeu
         73tAJwJRhW+1PSOyPymBKuR5yFPzEhXeWzf/ytoyPf4oeUZjfc1FvIdEeLpxDadsjmsj
         N4q4bKlXnddgumpu/Xl4bEYML9pI6hzw3SvL7WsfXmwzrhSQlu8Ce35Go7nsG3PxDfk3
         SqRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=26K8ubgfF/Bm1T1VWG2msGpgqqqwaskcNZFtdDB77mE=;
        b=fjZM5ZOflOTFCbePFDg+zm+lTdtLdtHfl6sOUuVLNuITfC+oaWZsXIIzjPJuW2GMfx
         4eL5fLZs8chwyPNY+W4EQySko4sk/izLl56hiJs1c9PWqVvnwwhVmAG7/b8vE9aDtnSk
         oUrdG5HmbBuPfF+CvGhteNgR8QV1jLN/YiuFGKiFgAxeJnWdpvn+WC7nKCKP4czYppM0
         DofIVfde856qurm/OcfiSdz/ixejcUNv7UBfuXnd4TFhIn4psGcbbsE6ZT0ewrQFTsBf
         7bVMGKspAX2kNHh1INuorWq7GZS0PYnZH5qygFMD0QXuelDTlvN/a1gzpoq1WA6rEEJR
         4B6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oY/uD0ly";
       spf=pass (google.com: domain of 3hwhgxgukev4ahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3hWHGXgUKEV4AHRANCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=26K8ubgfF/Bm1T1VWG2msGpgqqqwaskcNZFtdDB77mE=;
        b=VPQU6Cz+ZGc3JDErFVL/wD4n0wf5PLFmdV8oDZ1vJSllc/5FgCvVJuF0HGpQJb7CpR
         Ul9zZBBByG2znrtBhwX5KJ/g/cs2wi9IJ+nTLjCxFLqj5mO/9I8lsaCtutX5VRHv8bwQ
         3LCEpa2Af+F4VOnYnGoOrhXQtWZ//8gjGfymCQpUD5PTTpHDdLfe/AUovFq4AmqF9rJ6
         GG3VKdX3JFHmFySRRD5Haif9lV7zOA9fwy14gWHq8Sn1JXfHMqK+gOoVD5XhXsu/wTyD
         ctwwSzrwhHj0ilIdgalkR9ePh8zrNLsXZZMHuDMR41YIn0yJrVdm2VLb+8oBWSuG4VJS
         3dhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=26K8ubgfF/Bm1T1VWG2msGpgqqqwaskcNZFtdDB77mE=;
        b=t8bn240hfmtorJRV+5f1pgcv6dzayabgTCskuxfWqjZXEDcx7vGwqxVKU0xSGY4Nd6
         b2PA0VUmG7YlvwoANln4azKrM5rqBrflTBBYd/hU1EMSvaQGNz5svH9fh4K7bmNWJunB
         a2oaYl5lL9zoVCEFBdADEfuLuF44v+DP79jEXh3UJCr4oH7C95U5/d8H9XbyhjFYWec9
         gEZxnS/znaOxvaotpL2AGtuGClnq154mdWB6cTeCBRzGL4XDpg8iKGD4EG9zZuUP3iu5
         Mnf5QarsGvQisICfToL65Ei/vLSkDyYl1drNikJIW40fYCiyenRmXp/pdUCorTwMOxrI
         Kirg==
X-Gm-Message-State: AOAM533/WnpQhyIKqqaGLIhFMbh3LcbZXuzneGi6hf7o7CPM8lbyEnZg
	SjRTf2qA41OElTxlpWxUtX8=
X-Google-Smtp-Source: ABdhPJzMOHInT8OOg/KLyUhboLy+ytyIEadPovDjqYaykmsJUyO0RN1t9+sEi6Y2tpvGFoQt6DpYyA==
X-Received: by 2002:a9d:6d03:: with SMTP id o3mr6764822otp.283.1590059398097;
        Thu, 21 May 2020 04:09:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:524f:: with SMTP id g76ls337644oib.6.gmail; Thu, 21 May
 2020 04:09:57 -0700 (PDT)
X-Received: by 2002:aca:2402:: with SMTP id n2mr6416856oic.129.1590059397749;
        Thu, 21 May 2020 04:09:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059397; cv=none;
        d=google.com; s=arc-20160816;
        b=z1eU9/MZbjnbUfcXVxVLMF6ufHRvhRnPqiz6SnsMXIpdqaCmTrebGVG81vV+Lk0m0b
         oA3LYEu2YyqNHrBhgLiFTKHjErpi6mjO+ZwlWmBfERelAfz3r4/IuKM8RA0Cs9Lj5P8W
         Ac6CaZq7TXDz/HGv246G1/EC9p1OpoglDG3Bmy0Kt05+ETSF6mPnsIYMz+XpkxGDIpF/
         qVRDo3b9XTcRkbThPs+lQkCzBrF8bcZlQ/BDR7b/lVkT9y7eJdlhCu9aIn7t14YRz8bX
         tVfBmQ/xRUiV6V2v7UlcPkGA0WyXRx67zaQ7iVf161+Fg+aItdnyqeeo9x/ezuxL+tlg
         dVLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=E0UepZUl50HW0uHDfJhRs9oZIgYHrAECVMB9g20DGiQ=;
        b=aDQv99MDMynUGl7EI0KPp12zwN0xG5DljAdOu3HdknS1XA0Wmz3uK6N/DqoS8pDP2F
         5FhS3Jz1hC0OovO/F/98avw+AHfKVvVkgoLMiviEKllEDtwAqyGJmvBUgE6DWfLCzaxA
         p2uoOhd6SB/s2TghDTfQa7dVD+3zAoc+pHVYTXHT3oCd1GR05QfiokAkibhVnIq2Qeus
         zwhRKM7FB0mJHAUXNDcvNiJDDz/tHLrH5itbMIfsPb+wCdvOvAmMfxFvs7PeW0otZQQZ
         7/1tltAUwsZZY0gftWU6Jgh9SBJeMmJEIUYhJrhHW+nW/UwYS7kNVeW+sC8zURotNPQY
         R/Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oY/uD0ly";
       spf=pass (google.com: domain of 3hwhgxgukev4ahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3hWHGXgUKEV4AHRANCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a62si341741oii.1.2020.05.21.04.09.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hwhgxgukev4ahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d69so708223ybc.22
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:09:57 -0700 (PDT)
X-Received: by 2002:a25:41c3:: with SMTP id o186mr14043993yba.48.1590059397203;
 Thu, 21 May 2020 04:09:57 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:46 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-4-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 03/11] kcsan: Support distinguishing volatile accesses
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
 header.i=@google.com header.s=20161025 header.b="oY/uD0ly";       spf=pass
 (google.com: domain of 3hwhgxgukev4ahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3hWHGXgUKEV4AHRANCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--elver.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-4-elver%40google.com.
