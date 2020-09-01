Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD5JW35AKGQE2LZRKTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F42584C9
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:44 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id 18sf3904755vkw.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919824; cv=pass;
        d=google.com; s=arc-20160816;
        b=06bAHGVuUksbK58PoXLeAfVGRfir1GPRssU+zzJ3C00czwb+skkk5jILaLrUkjygR5
         WnOW6Uo4ZlHCuPJ9U8OjPoRAEAWhZGwPEuHUjaWoS2yDgLZpPsC6BdcUWtJ+i1Fddtwh
         /oALblJo/L8BR6HdnQEOxdHf848vyDV21bJ5W5ub0dc6kqvp+uowfKTYs7Jjbu05UC1j
         ifYq5ALopSKW99Whh5NZ2YTzDrkuzEJAfLt0EWsujrq3eLr+RA7qJY81rM0Vvdv/sf5n
         Ghjf/dJSBaqfKb2PVE6OqMTiklqwKooh0o6BQUjwfbY0mfN5SKPbWN1G3u5zAZOeqm+d
         QMPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=QfCC8ETSNuJT1vt6uGngRgJUmkeQJE8kGJw418zRLeo=;
        b=v6t0vIMmMFWM1pj3ZJ6GC1zjoJ7bWd9wyXjCNUBry0zcxhisqSDdBEtIEKtKA84nuP
         x3nI9IJIjNlF5Lr1wSKm7QmJ7mYc1BOtpgR7dNlpa6FBAa1C+2vcVn67w6vOA7R7FmHf
         08AMxKQAAZN0NpmjPeUdVsjihljW0SExecRYGCLAgbPFGXsb19czsgaLvAXEGoja4n0R
         o4h22C/n70UXAcTEIFm5pFuZ1bDfM8VW3UIfg+8o2vV0Ccv5fLtMH16QFbpTrHGq82VW
         ++7g1lNttBQbf2KHG0KWp0QExwkwKsQj5emueR4YlTNaDqrXekVKRjkMjO5jGzy26YeG
         4NYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iGmP64H3;
       spf=pass (google.com: domain of 3jprnxwwkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jpRNXwwKAO0cSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QfCC8ETSNuJT1vt6uGngRgJUmkeQJE8kGJw418zRLeo=;
        b=tYfpE/TL5709ZPm71Ao+U3GRgW/hzWnbTp9+iqU5TGLpUJFx4Nis+CGrYpbnMiyjdE
         qenOrJbK3gBPTck1o5dEPYJw+jv1U3h4l9IrGLTRdSFUc0AiMWAfwYeN/MG3l6xEwMAL
         rujbdssHqYVnvtLu+8h12tRu8bHiZWo15L2dcVuVWFXjh+mz01/W6abhmtCOnNNU0Up9
         eL0TScJ0CL1u0OTH+rUopHD9MCCfPFNWAf1D95JivSh1SlXk4O0KebQYPQ/n465hhUb/
         BzzNydNUAaHXEJ22X19rkF0P4YyIxrxom8zfkoOs9FfAACa9ssugZvU4O4xbi4YAesSt
         SVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QfCC8ETSNuJT1vt6uGngRgJUmkeQJE8kGJw418zRLeo=;
        b=FuXmcPLqNn7GZHTEOiTk74mc4H1aYjOIMavT7K9+gBXc+gWmQnObcCNUNIhOCJUw1w
         IGQn2wOVRwxLowLpIt7yo54Oj+MtJZBc9VNdmGGBrUMuuzcEMb/b9iGQ+e1QJmwjBw/y
         d60rvAttW3RJb0oW2xTKgbx3LhmSQGu069VkJFItCzEFixve6umRJ+13mrlmMVt+y8R6
         Y8JCZ0ULfbxw4UkZyM7ED4IUAwvUDe2O/2dtbTcOGtiN4TyGt6uIzxIL+F62Edfc6z3m
         5ykdRUc8oU/RQcJ+90h3mTsJY5eq7RqQIGFRkQdKuLfwt0oqc22x9vdsPzjTtV/Fn6SB
         XeQw==
X-Gm-Message-State: AOAM532pvGkIAEkagzZpyz0lVNiWqcGc+xfk3iTVOzrJPE4Mv4Szwg0j
	2A2Jh//Jb0/BlippckqY/MQ=
X-Google-Smtp-Source: ABdhPJx5yuqhdTtuEtW03Da4iw66SZVexMNgDNr/3kLrbzgApZO+d+u/IzXRyE040TX5JsGLjJS7WQ==
X-Received: by 2002:a67:8c89:: with SMTP id o131mr3663581vsd.41.1598919823853;
        Mon, 31 Aug 2020 17:23:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2667:: with SMTP id 94ls676334uag.0.gmail; Mon, 31 Aug
 2020 17:23:43 -0700 (PDT)
X-Received: by 2002:ab0:538c:: with SMTP id k12mr3318645uaa.78.1598919823339;
        Mon, 31 Aug 2020 17:23:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919823; cv=none;
        d=google.com; s=arc-20160816;
        b=tguDuiHNkGWWHlv9t1Oj/HoQ2yU6hfkbA2uvp/5yCiAmuhZ7wMNRTB+8tJB4MwhS/Q
         ZJnINgz8LW1hKf3TBQR/8p+P1tvZVNCLad0IcO/I3Jn7l4ossXYMDJb+DxA4MaIyaJdB
         xfHZ5E7bnVIQqTW/Ax6zglPRVQIMSFzuzuODJ4Fbx0M3Ms6qtEj7Cc4e+eYRHspl9Hjq
         sZxAOUy28y0WgVe5L4q7foHZsDsZqR8agDHDzRHn80+aV7T66PtjfCSTErjqw07WG31/
         yEyLb24EhhQyDO9OJbYO/m1BgbXBcGSSG1LFqvj3yBGNr+OSgc9QM/2jxqEYEU5xxL4r
         GuVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Atjbr5QaPNSyc9L6JLRq74W+KdS8XUB2zK1vE7a2/Jc=;
        b=ESIXpsIuBMgmPa5ZnTLwajBwIsTERI9fJnuG/4Y4r3YJmx548zcnbKVvBXcuD9cfiz
         cu5OdQAugyt5jZsVxNNJa97OGlvT2GGBP9sITkngO3PnerSi4uyT/GyAnJ5J7WHnKGkN
         TqPv5tVbyxjKVNkAizh32wF/g63C3DYL0JYZ6fe2zE5a8O7vSRoXEIQzjM4zMxaKuf9A
         oUTxg9XO4FcyhJooeiYQVQPIIsiuan7oovcN+1el71QvqDn5SFJ7gO/a4BLPRE7Bsmkc
         T7kvS+WrUqo6ayM5jwhZR8v9++ZMixWTy16pXA0H12Tq/ThcundfHF0IACWo/PCBrMAN
         8hLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iGmP64H3;
       spf=pass (google.com: domain of 3jprnxwwkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jpRNXwwKAO0cSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id x24si587050vsg.1.2020.08.31.17.23.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jprnxwwkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r1so11210318ybg.4
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:43 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:6908:: with SMTP id
 e8mr7239227ybc.83.1598919822850; Mon, 31 Aug 2020 17:23:42 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:25 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 6/7] kasan: Remove mentions of unsupported Clang versions
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iGmP64H3;       spf=pass
 (google.com: domain of 3jprnxwwkao0csthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jpRNXwwKAO0cSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Marco Elver <elver@google.com>

Since the kernel now requires at least Clang 10.0.1, remove any mention
of old Clang versions and simplify the documentation.

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Marco Elver <elver@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/dev-tools/kasan.rst | 4 ++--
 lib/Kconfig.kasan                 | 9 ++++-----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index 38fd5681fade..4abc84b1798c 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -13,10 +13,10 @@ KASAN uses compile-time instrumentation to insert validity checks before every
 memory access, and therefore requires a compiler version that supports that.
 
 Generic KASAN is supported in both GCC and Clang. With GCC it requires version
-8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
+8.3.0 or later. Any supported Clang version is compatible, but detection of
 out-of-bounds accesses for global variables is only supported since Clang 11.
 
-Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
+Tag-based KASAN is only supported in Clang.
 
 Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
 riscv architectures, and tag-based KASAN is supported only for arm64.
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 047b53dbfd58..033a5bc67ac4 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -54,9 +54,9 @@ config KASAN_GENERIC
 	  Enables generic KASAN mode.
 
 	  This mode is supported in both GCC and Clang. With GCC it requires
-	  version 8.3.0 or later. With Clang it requires version 7.0.0 or
-	  later, but detection of out-of-bounds accesses for global variables
-	  is supported only since Clang 11.
+	  version 8.3.0 or later. Any supported Clang version is compatible,
+	  but detection of out-of-bounds accesses for global variables is
+	  supported only since Clang 11.
 
 	  This mode consumes about 1/8th of available memory at kernel start
 	  and introduces an overhead of ~x1.5 for the rest of the allocations.
@@ -78,8 +78,7 @@ config KASAN_SW_TAGS
 	  Enables software tag-based KASAN mode.
 
 	  This mode requires Top Byte Ignore support by the CPU and therefore
-	  is only supported for arm64. This mode requires Clang version 7.0.0
-	  or later.
+	  is only supported for arm64. This mode requires Clang.
 
 	  This mode consumes about 1/16th of available memory at kernel start
 	  and introduces an overhead of ~20% for the rest of the allocations.
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-7-ndesaulniers%40google.com.
