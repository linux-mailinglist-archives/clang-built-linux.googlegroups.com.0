Return-Path: <clang-built-linux+bncBAABBINI36AQMGQEA7HN6GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D95C03253CC
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 17:45:22 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id h10sf3313638ooj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 08:45:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614271522; cv=pass;
        d=google.com; s=arc-20160816;
        b=amMNdY14H8Nd0E0Ao46hJ3DgnxyanqNqY4KQs7JEAYusT+AwhnTG2LYlS3CWkCXjXH
         IwRjMKUC4g3n+3I4wOHY+lFEGk3TwskW6r8s0IqxNQKtZSsMUG/lhfMfZrh4tjGuFZAk
         GE7YLVz/Vr15gGtkvmKbcwC39xD14lkP4G+A0G8Tv2FpH1hbyDTy1s5tN+xOblmWf15B
         jHLViJRb87cRQXBGG4+REpcHpSUWdVujS+zk6ldFGFh0dglL8irjRbDcgftAbyFvWxHy
         oYhjLGDe5oXGi4AgIjCAEcCAOdYB9F1gy/CMJL7dZ6grP6DSD0kIh8F2Vya82gsih80y
         ufTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wf1ycAjfpGluI595xbgMBvDyjN7Y/Zl3cYpxedPQ9g4=;
        b=JvcJKnKwLd8M/IjqVmF3x3aVuKSxdjTz83v1Aw009+nsU1y+SZBP0LKPRDbe7e+zC7
         qx1C9V1E6WLtiEcXmJyMdr2FvMa2GGuvnFZ2PTl3X2/lnhxm2vZasvvfLvBRP9TswVB1
         /OF9e19fy8ordTesGnzSPovOAGa3T9J4jJG576SHUnEw2NxWQkzW+1gDc1rdn1a7OuzC
         lUkm/1F9GZE7Jr2bYfB5fZRhqhga/GeR5A+Wj4uoXJKcW13olkV5FzWGCqUNvO4jz3AB
         42A1Tg3JfT9daBrHZ6J1m5nAfN+p55Bn1NPVNGhuqLwTc94wXBAvfmS5MFb++PXWDofb
         XA6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sXQX2Mh/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wf1ycAjfpGluI595xbgMBvDyjN7Y/Zl3cYpxedPQ9g4=;
        b=VMY7OpVTL5xwjERgphoKLu4IwF+m6vjS7go0oMKS9ZonqoOw9SCsFNULWzJ/OV4/94
         3nZHhh3JlGkGYu9x3CI/4m1kxsfoTb9t6qnWwhzQwJnRhStCWlyAZIHoEIW10uS1PWR+
         iGbphPCdEycwHAEZkNkK7xCkmXXA+GS/UEyy+Jiwf+HgleuCdx2N5EvIU6iNYITHJmFg
         SXC/VzpEI6dxAxL3SU8NBkkNBxAXD9IjCnQHglmyYnSnUuM/0eqoRGxEs9QKUSoeYYb3
         XV8766SWntUV00olZzSCCfFEGrZmH6ElRthE2JbpRwOeOVo3uqXWoxJwexHa9mYNMx1+
         bCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wf1ycAjfpGluI595xbgMBvDyjN7Y/Zl3cYpxedPQ9g4=;
        b=f5uBfQmtLFngrKnlu8/SSCkBMfTPocdkNzWQKR9FBm9g0mVSOMEZjkoNPpGdLQ845t
         gEwLslWvUOVtzPIwlcSJ0Bs8dWMX1VtVrPTOAUR+6rq1CvJNHUYc96bB/1qtVgFLKB1X
         SdlPkPiFNfYlF0ZfHL5Ze+J+Ny8W1OVesmzIpwL1ZFrvEMeO14jtiSvWT5e5nWiykQmX
         FinbgCaeRPNodCKrFLFrpyxiBQgIAW8Fe7S6x0hc0phuSi0johmzB9T4JV2i/rCt/dbA
         4FrshcvZi7H7VFzao6gkERN1j1sALGHgoU+BB8cyI9k2vTPQES+6nR9jKKskzBNwxSCV
         MylA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/n1Jic8CnxgxXNlszREk62lB8GYHZI7eiXJ6NoBPIWT9LUbF8
	nQH+RoW/SDOPlBCzX0iodPI=
X-Google-Smtp-Source: ABdhPJw6jigXBRTo9jEHWzh6xB2HCFsuWalG+07uFDFotQNSz+puK6/PKirUZLmDKn2Fq7sN14wpRg==
X-Received: by 2002:a05:6808:1144:: with SMTP id u4mr2481696oiu.11.1614271521907;
        Thu, 25 Feb 2021 08:45:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls1592529oif.10.gmail; Thu, 25
 Feb 2021 08:45:21 -0800 (PST)
X-Received: by 2002:a54:408a:: with SMTP id i10mr2502628oii.123.1614271521533;
        Thu, 25 Feb 2021 08:45:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614271521; cv=none;
        d=google.com; s=arc-20160816;
        b=hkovE/i3qIFTpk6AYnWCCiYPUzX2xBCeFj44eZ1iSCi4x4MR8Gan1CoX8oSA7uIB+O
         8r9CWKi0bp8tTstSX7Ixn4r4BQOyn4nSOrXi024e+DDL6i2Wt6OEpbjBK0xKv9JLCc/o
         ggWvrOBA70ylNIeAuTi7TD8hhCxXT2vFuE0U6ysu5k7A88y3UaxxyBRg+s67i6W+AJs8
         JtmuczgL217rmuCHSAm+hJm2Fq5OASbpweXdsgZR7ELj11GXNXWcViu9eKQIYgnrj9cC
         yt6chMsrDQYuQdrdiOyZXqQNb7ltOBqLtwaBoWxcrIQw4dAVOB/c4PBiZODk4L3dfSip
         bzRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kx0YmsyhMpw6/oF7CzbvPp4EV6GcuhPhu2ZRMb4ciNw=;
        b=BCypt/5TwfdLbCXWRY5whwE2K13OWxxnfOrikyB0pRs2xhwVe1hDw/p8kd/tn56ZNJ
         MaFhiW/ghlU8CWmjQKOzuuavz4U3+lP4HZtxt3f/Is3ES0eCc+/bkTahg6QCn+vlYzwl
         5FZpKfdI+VDlCGaavv/0Z22G2NfciN6NAPCRZY+b9OooQokpRRXbdpf9BrLEXdBHj0uI
         wpOOsJzLzLiLpHQnK9NMv85MvU1EBjZV5fxmbBtDwQU9CMR3gqQgDn394wFcc6qvCls2
         SrcwmFiYbnmhU2eYNBWW9K0RjUE7PIT9WskhdAc9U7nxKxET1W5s1o0QryRoNXqTmUHg
         i3dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sXQX2Mh/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o21si460133otk.4.2021.02.25.08.45.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 08:45:21 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 349F664F03;
	Thu, 25 Feb 2021 16:45:16 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Miguel Ojeda <ojeda@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Date: Thu, 25 Feb 2021 17:45:09 +0100
Message-Id: <20210225164513.3667778-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="sXQX2Mh/";       spf=pass
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

Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/compiler-clang.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 6478bff6fcc2..bbfa9ff6a2ec 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -33,6 +33,16 @@
 #define __no_sanitize_thread
 #endif
 
+/*
+ * sparse (__CHECKER__) pretends to be gcc, but can't do constant
+ * folding in __builtin_bswap*() (yet), so don't set these for it.
+ */
+#if defined(CONFIG_ARCH_USE_BUILTIN_BSWAP) && !defined(__CHECKER__)
+#define __HAVE_BUILTIN_BSWAP32__
+#define __HAVE_BUILTIN_BSWAP64__
+#define __HAVE_BUILTIN_BSWAP16__
+#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP && !__CHECKER__ */
+
 #if __has_feature(undefined_behavior_sanitizer)
 /* GCC does not have __SANITIZE_UNDEFINED__ */
 #define __no_sanitize_undefined \
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225164513.3667778-1-arnd%40kernel.org.
