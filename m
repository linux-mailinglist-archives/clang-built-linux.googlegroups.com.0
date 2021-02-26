Return-Path: <clang-built-linux+bncBAABBYN34SAQMGQEDP7CPNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9CF326549
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 17:12:18 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id x27sf5207909otr.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 08:12:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614355937; cv=pass;
        d=google.com; s=arc-20160816;
        b=jkpsorRBkEAa8xC3J+5S5/jP4t878N5pgswziuF5taz5Yy/w89n2/2V/67tr84eyzl
         KEmC6jyJPhZ/W+JO/UQX82RnMic1hQfvsGBqQLsutHCT3FRGDrLObdxo2YjjEEXUAATs
         XXivUoVCWlMkdDi4Wnr6z8iQZoxrML146aizKR7OdtURLePscjZxWO087YBgzwmzPpEq
         LyNnhcCVrQJca/kmBoiD2EHiB3UCoooGMvsGNba6CQzyjNmr3qLJAJ98obaPubizuUu3
         YgSaERLbJzL6yNLWWY0Ie5h2TgL/vtIgoY2uSrf6rrmZzRGQbXPYbh+1nf5FjCNqieQ/
         QbZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=eMYyixu7hkbOIFy0XanhTpHBMpBSwFCAfEHiLI4Yt0M=;
        b=R6WZeYv/gGh7/XBtXOJcDzNL0c+jclXuGWRKjyUttsqkzUmSIV5/s1Jc5UEwjFhvrb
         szqG29BZcbVrfQKNj0b+K2SFUqf2OzuahuO7ybmP7BVH1SNgQWhN9iaJdbkJLYnNXGqT
         AN6X7U8+2C2fo/yTn+Y7LU20M3YZyBHtMXSI8TkzYjWFzgZ2Qoe6TamTp4NKwgPSalDk
         PrCaPi1SO6YMuLHrNP+ACfcTHvFjW8vrTVG8IyxtavRXujLCL4oXRU9ae560jgZ+Dpsx
         Bihyk8xU6qTx9OXLFCwIkv30Y3b+QkNjgDdD67UKOyaQpJdomgEBAtjs2e016PELhTVO
         F4pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DP9nkO3o;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMYyixu7hkbOIFy0XanhTpHBMpBSwFCAfEHiLI4Yt0M=;
        b=T70b91f1JcQMTDMGEiOO5PKogirr9h+N71IAfeTakTAQ1EFn/11sUqvs+SPjPx8my1
         apuCKmhG1gxPEu5qs9kCubNn546sxe9XJjgxhrZePdxBXddCxbwHrnpVf8dYGtZyQf6E
         /7Jj/vIUgGPU08rVAhr3aQYrbHwkjdVKiZ/fubnKcsu2EkLPfOwvrZ8+9zTr3y+r6+f5
         Ggs/g+B9qQuSg2nZwfyqNMqvQTw0GPN7ozrMokLTqvbgP8OPnyn9UhLvg5PZwJO1a7O3
         XWFeFco9/lZmbUuo97siPJBpX/ucH+oJQtCgyilx8QJElGws9jfLLnhAC1+2qgBeESPt
         qQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eMYyixu7hkbOIFy0XanhTpHBMpBSwFCAfEHiLI4Yt0M=;
        b=Pnz9dg6r/oiE2MpcQ4AP4lN7lVbjXD+k8gzEq9oQJ93tkaK7387puq3xL3VD7MVITX
         tHLtT2MSt+nFTNmXggPZ9o1LFw896U3se/uMaD38s4wa3w7yDdtZ2kNrqb85M/eZL1Fv
         bUKcNqNm6CC+oXjq7LuoCyZleJU543rscCgCR07cJ5JBW/mKHJEekg11N9Y0wQJUKMBl
         mlPQ9zs1PcShUyo3tdVM6D3k41UqXsr6UWvQXlccFhLtRmTkI+/EmeK3mNeE56HoV2L0
         uPoa4Y9dYzS13/d7osLEqr97cfOKQky5GY0C+q/gFdU0g08vZWNpcnfPgyvAn+SP4A3a
         rT0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YURUuYNc5V0BUQC6Z/cwSAgpd8DjPw1tCUXoAktZptR6EyxKj
	5FKrAVSxWGg5OKu5KrbS3Bc=
X-Google-Smtp-Source: ABdhPJxsfPJqyeWZsXPTNqbT++EoIhNgGyA4DMfOCKSIRGcQ9W4nTPgVfRTUjTiVp4NO3K4PptRkvw==
X-Received: by 2002:a05:6830:1342:: with SMTP id r2mr2784599otq.2.1614355937566;
        Fri, 26 Feb 2021 08:12:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:827:: with SMTP id t7ls2668605ots.8.gmail; Fri, 26
 Feb 2021 08:12:17 -0800 (PST)
X-Received: by 2002:a05:6830:1f4e:: with SMTP id u14mr2762507oth.65.1614355937228;
        Fri, 26 Feb 2021 08:12:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614355937; cv=none;
        d=google.com; s=arc-20160816;
        b=jCWabyahJPYG5c/T1iHX3GTLuacdHW+c3kqd19HhbyOyb+mjMkgrLaS6auM+OnI2j3
         GooAFZ4OblAcJzyRLXEdN3oiV5AVeWW/txmoR97/G6KQlZRqh0JAQXJ8nBxevYAGX+8M
         +pcmxZwB8miwOUCyZqLa9AMca8Ezc3waZPJA+mupH9141f/mTz4o8FAGr/gjB/lsb961
         f7J/qjr5sp2Q+lC+WdTFdmkov/ol5KTEX2ckvfHWpOyfwE4mu3akFDMlx9bVQBo4Ob3O
         51gDo/LZH/4JFpmPvaGgDPKy5wFHwll7Q6XXacBzk7kZQgF9s+vvWLWR7inEOrLfpgFk
         4UQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=t4FnK7H4b3dBGlgxLP0iduaR+uQx3OnuCffK0+i97OE=;
        b=eIMyosYWJXdy3WixpOq9QOpbswD3B0DONlDlStSh8fOWr0rk0ly/p71pfBvjltnZ78
         2inGtNyhmmUpRNb0pNut9irt7/HujNsWSzZ/XluNQCezSOO9lJSEhs1TI5hH6K4bjmAz
         g44hFyRWYn3Q9n+PHuvdZDBpXrNo2plVRNoNIRgd0e89u6BXYcMH4MKTkOlbbiA1UBZ6
         ZvTw0KSTtzmSeYDlzngDnaVYrfsGmeOwNy+wPrXBWOPkj6/9bveULAuYYTbCfAIW/p5b
         z6MsUV5k1zhcII/92F0ncMKcF3Isl50m2STgeQeDJQEO8cfxg3e96lrhWibqLhy8V219
         LdxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DP9nkO3o;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o21si696204otk.4.2021.02.26.08.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 08:12:17 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7822664EBA;
	Fri, 26 Feb 2021 16:12:10 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nick Hu <nickhu@andestech.com>,
	Greentime Hu <green.hu@gmail.com>,
	Vincent Chen <deanbo422@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-csky@vger.kernel.org
Subject: [PATCH] [v2] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Date: Fri, 26 Feb 2021 17:11:12 +0100
Message-Id: <20210226161151.2629097-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DP9nkO3o;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
back to the open-coded version and hoping that the compiler detects it.

Since all versions of clang support the __builtin_bswap interfaces,
add back the flags and have the headers pick these up automatically.

This results in a 4% improvement of compilation speed for arm defconfig.

Note: it might also be worth revisiting which architectures set
CONFIG_ARCH_USE_BUILTIN_BSWAP for one compiler or the other, today
this is set on six architectures (arm32, csky, mips, powerpc, s390,
x86), while another ten architectures define custom helpers (alpha,
arc, ia64, m68k, mips, nios2, parisc, sh, sparc, xtensa), and the rest
(arm64, h8300, hexagon, microblaze, nds32, openrisc, riscv) just get
the unoptimized version and rely on the compiler to detect it.

A long time ago, the compiler builtins were architecture specific, but
nowadays, all compilers that are able to build the kernel have correct
implementations of them, though some may not be as optimized as
the inline asm versions.

The patch that dropped the optimization landed in v4.19, so as discussed
it would be fairly safe to backport this revert to stable kernels to
the 4.19/5.4/5.10 stable kernels, but there is a remaining risk for
regressions, and it has no known side-effects besides compile speed.

Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/20210225164513.3667778-1-arnd@kernel.org/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
 - drop exception for sparse
 - expand changelog text
---
 include/linux/compiler-clang.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 6478bff6fcc2..917f7f88cef0 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -33,6 +33,12 @@
 #define __no_sanitize_thread
 #endif
 
+#if defined(CONFIG_ARCH_USE_BUILTIN_BSWAP)
+#define __HAVE_BUILTIN_BSWAP32__
+#define __HAVE_BUILTIN_BSWAP64__
+#define __HAVE_BUILTIN_BSWAP16__
+#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
+
 #if __has_feature(undefined_behavior_sanitizer)
 /* GCC does not have __SANITIZE_UNDEFINED__ */
 #define __no_sanitize_undefined \
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226161151.2629097-1-arnd%40kernel.org.
