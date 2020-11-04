Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPXQ76QKGQEH5PPBIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4C82A5B40
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:53:51 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id z31sf12443881pgk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:53:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451230; cv=pass;
        d=google.com; s=arc-20160816;
        b=VxZQG2UdNkYThPn8r39DGYDo8N5g/MWFRnExrytCqYx007W3MvdVXSCCUzX7F3pSGP
         2J6IGP+gPtPgjDcKT5FKHpy8atlEgOo82zfcjcLPdoYM/CAdrF86G4ZKPnOzPRlEiMEe
         656dmYUyYdXiFH35F3lHjhxoQQ2+i4gVefWPwxxXEMmjulGIwMB/3GQVdSBg749/yNFN
         TkcbwNmgJKNCeTDZ3lkQDhiKq4jD06W8i6yCuSw0v5HvUUFurEuJFw8zLu8poOKJZj8L
         0sohoHGlvPqpbJM0/iI9LLpfbQ3axkR+pwrYxnx0bEJ9dtfVXoELTKP4BOdbjDf1h7Y6
         4oPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=pSWEXeongQJ2k/px6eFWqAf1MNxyPkBmzu+z7oxEBDE=;
        b=QHri30PRIq/1osBaqIX66tmnLb85KC9mkjKtxIEuLmTo0Ce1JEagcESnds/aF5+tnF
         no/IoCrU9YQaoZV44iT4cNquPS00fkyHlmiN9NM4mxotXrElv0vcJsY6/grV7Z/2x4vb
         X84h1OadVkloS4le9FguBoIRWpDoaPwS2evq1FRER4by6ts8W1R17MiilgGRQC/fuNiB
         Fnu3Dyh1EmhJ3J4PTdRryLwQ3IqpwRldUF2CBX4aPFPg+qWNE9IQg0wzkP0EAe8yFPyW
         qgRw/LAd/b2tSCZNaVrZxd+oVYUsWHDj5w4lVPTg8VLs/92AgHvYuyH36FlB46ifRwjP
         WO3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qCw8+F/+";
       spf=pass (google.com: domain of 3npuhxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3nPuhXwwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pSWEXeongQJ2k/px6eFWqAf1MNxyPkBmzu+z7oxEBDE=;
        b=a1bbuxb5bCtGVVS2rNbcottoOQ+SbAy5weqEr3p/8LETSEPx+YSVZYdf2U/AHiRMEX
         EOoUuDGDtlTqKxJ91dy9P2F7mYFwsx0PLIUR0uvbZ+5kb1ZFXQDbkHepln2MacV2vUdd
         64HZ1ra06wGJK8rI+FHYDBL/KjQLPLKcXG+qtm4PDjeJKzCCyXNitAs5IXnXmxz999h2
         36SjhfqbCucGkGa/KTbKr4mBpKF25veF1i3gYVOB3n2FDCyEYZKze8TgNczn7Z9MB01g
         RTzJ38SKu/+B8GUOJWh5dRyON0yeVQGHPlQqd+Pr/qazOkSNqt9eg5pGSj1vuqv9MqCy
         h4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pSWEXeongQJ2k/px6eFWqAf1MNxyPkBmzu+z7oxEBDE=;
        b=CiFfi7IQKeQm1sKK6l1D3OBPCPS4zJVGnO7d/PLIsPPBRqH+VQU2dmEWP7q2hG8WqU
         MzjDlK5ECsw89DJbTIU27oYLFzQ5oiOwldz/urwlsCkO8xngtAzI2FtV4vCKi85p3yJ2
         ryMd9GR5B4Fgoh/aRGlPHHdJrb6dUfP3nSp2d6JtCjfUupMoiSSiFVyPwu6QZ6dMl5XD
         BTQzvH/NpAjLW/PlTFprvB3hXpmupW5C+h1j6w8KqI0+cM7e0Sro6XNMclOtVlpmesdp
         ZxEEt/M5N5J/ylZx6Il4f2JPN4kzBt49r+6nWRVgiLuQutsS5A9uhRkayWSPCqMBDFhY
         mtEQ==
X-Gm-Message-State: AOAM533/ZP7ZqXmVp2JEhUeb7ixcaOxTFt8/Y+r+vmKjf+NhEYw8pI9d
	WpMTP3WmK3pLEdmeAMiUxnk=
X-Google-Smtp-Source: ABdhPJzuFZUTW1UxDzjkHdBbX5lYdFsBJrRiEwfbUGxXMJv5x/FHEGszRwPHKbznCuAS+0sg8qX7xA==
X-Received: by 2002:a63:5466:: with SMTP id e38mr19419733pgm.23.1604451230089;
        Tue, 03 Nov 2020 16:53:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls274367pjx.2.canary-gmail;
 Tue, 03 Nov 2020 16:53:49 -0800 (PST)
X-Received: by 2002:a17:90a:4fa6:: with SMTP id q35mr980656pjh.55.1604451229394;
        Tue, 03 Nov 2020 16:53:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451229; cv=none;
        d=google.com; s=arc-20160816;
        b=bzdnhIox+H4nPKzGN+8oBDS0Zk5mZJSrSMGhG/mGRzmm4cCOaOm3j75U6IsxQ3MlWk
         CRVZ4j5TlCxcMnWArPM8fz0CpDRHM/bbOm6KjvhDNNMerlqwnf7PA2IMKocFnZeBVBpU
         OOrMHgTHl4x9YuB/5BuzKVbtrUeZV8hxi6oRPb9WSscfsE6k33qzfVf4cR37q0lVGShI
         4oJs9u2oJ+8z0mtHHddZWIFV+n1RM6nVZpVA4J2iRMCGbnPIUsPq1xjO6KR6d3a1bhv2
         6MlIrZL2JPbVoDcsFqeeL1ppGGyHX6fLdNcwAIavz381Ld2ExzrOB5NgwqEqz9HogqQw
         mWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=6nth1Ay7JTmqSTdpD6CAIOaNAdyMhdLz3pdbFkquv2w=;
        b=c4OPX5DJR29Fje0d7/N81uNwJ6vrpXiUoPWx69NkvxE8wUKsAbJa7lvti6wwhxPx7S
         sIc8PM2cZ1pSJKdFBXew2O5IIJC0YCscNHhJE8bkJBfx5QnyNalAJuT61JNKlIbU2gdc
         dA9cfEcSsNamWYMuGzL4c7jqBYTxIKvioi2gV/3KwS4vD6YkZDvrrmJvDRMnW/x0zfU0
         bQiSUXQIQ+yRJcv8vGYY3FJHmiC7+2OBykeMXuz6lP0jQeWV43iDur3tlMAj2IjLPnrS
         rx+EO0mV4YI7q1MsOEDvjD/19k02QcxWQoj9IbIZQk73ZTojMJoafQ7y9P3Qyd1+yXJN
         mVpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qCw8+F/+";
       spf=pass (google.com: domain of 3npuhxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3nPuhXwwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t126si26828pgc.0.2020.11.03.16.53.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:53:49 -0800 (PST)
Received-SPF: pass (google.com: domain of 3npuhxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id c9so19978300ybs.8
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:53:49 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:3188:: with SMTP id
 x130mr31763518ybx.64.1604451228585; Tue, 03 Nov 2020 16:53:48 -0800 (PST)
Date: Tue,  3 Nov 2020 16:53:40 -0800
In-Reply-To: <20201104005343.4192504-1-ndesaulniers@google.com>
Message-Id: <20201104005343.4192504-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v2 1/4] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="qCw8+F/+";       spf=pass
 (google.com: domain of 3npuhxwwkab8i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3nPuhXwwKAB8I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

From: Fangrui Song <maskray@google.com>

Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
memset/memmove/memcpy functions") added .weak directives to
arch/x86/lib/mem*_64.S instead of changing the existing ENTRY macros to
WEAK. This can lead to the assembly snippet `.weak memcpy ... .globl
memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
https://reviews.llvm.org/D90108) will error on such an overridden symbol
binding.

Commit ef1e03152cb0 ("x86/asm: Make some functions local") changed ENTRY in
arch/x86/lib/memcpy_64.S to SYM_FUNC_START_LOCAL, which was ineffective due to
the preceding .weak directive.

Use the appropriate SYM_FUNC_START_WEAK instead.

Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
Fixes: ef1e03152cb0 ("x86/asm: Make some functions local")
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: <stable@vger.kernel.org>
---
 arch/x86/lib/memcpy_64.S  | 4 +---
 arch/x86/lib/memmove_64.S | 4 +---
 arch/x86/lib/memset_64.S  | 4 +---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
index 037faac46b0c..1e299ac73c86 100644
--- a/arch/x86/lib/memcpy_64.S
+++ b/arch/x86/lib/memcpy_64.S
@@ -16,8 +16,6 @@
  * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
  */
 
-.weak memcpy
-
 /*
  * memcpy - Copy a memory block.
  *
@@ -30,7 +28,7 @@
  * rax original destination
  */
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_LOCAL(memcpy)
+SYM_FUNC_START_WEAK(memcpy)
 	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
 		      "jmp memcpy_erms", X86_FEATURE_ERMS
 
diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
index 7ff00ea64e4f..41902fe8b859 100644
--- a/arch/x86/lib/memmove_64.S
+++ b/arch/x86/lib/memmove_64.S
@@ -24,9 +24,7 @@
  * Output:
  * rax: dest
  */
-.weak memmove
-
-SYM_FUNC_START_ALIAS(memmove)
+SYM_FUNC_START_WEAK(memmove)
 SYM_FUNC_START(__memmove)
 
 	mov %rdi, %rax
diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
index 9ff15ee404a4..0bfd26e4ca9e 100644
--- a/arch/x86/lib/memset_64.S
+++ b/arch/x86/lib/memset_64.S
@@ -6,8 +6,6 @@
 #include <asm/alternative-asm.h>
 #include <asm/export.h>
 
-.weak memset
-
 /*
  * ISO C memset - set a memory block to a byte value. This function uses fast
  * string to get better performance than the original function. The code is
@@ -19,7 +17,7 @@
  *
  * rax   original destination
  */
-SYM_FUNC_START_ALIAS(memset)
+SYM_FUNC_START_WEAK(memset)
 SYM_FUNC_START(__memset)
 	/*
 	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005343.4192504-2-ndesaulniers%40google.com.
