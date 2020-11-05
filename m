Return-Path: <clang-built-linux+bncBCS7XUWOUULBBUUCSH6QKGQEIEFAKCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2481F2A85EC
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 19:15:48 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id q3sf1791564iow.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 10:15:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604600147; cv=pass;
        d=google.com; s=arc-20160816;
        b=yo5JOYaPVx3OBbKp1X8kJnKTAzMl4BHmEEiCC/xgg0UCI++v4bzZ0V/HFYPXZLAv2c
         me32FPGm3MZQb4ZhQCO7Ej3IY6/gmrG/iCLJeuElw++MFzKT2cWKN4NQkOtr1H4MvmtS
         ZPTkExWNcOs5nsxKiOPPPDiMr88t7YcAPjzmGaSWhxnRRI8OAO9YsLkOg4AAj9mGlRCn
         2tl6Us1xXhooXOwKqMdr3FC1pD1vFhtpa1onq7F60UJ+Z1wsIlW54gcDUi3rfRbxtLOt
         P1bUEkUgi/vRWG2CF64gXNB9uSHJx8ZuQTQCTNjVvk7Uy3UezCLOTNZ28HQ2ECia7+Vc
         ez2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=FxdTE3Az+bOIe0GqkX4bM5s+37p0Pdtbp24WWLaLVms=;
        b=Z3YynbZPjhpyBLe7KNKal4GhnfPZXLXt5gOfG7A0LWlouePqxtOr+SnSatDNM8PJgL
         DH5Ebwqq3gJvUoZSE8n31/c0++bqD+QEcrylziZNUcr2HhH8c+7zOjiRQzEqq+ig/450
         slXkx8DtmIPE+4HxyxSWln8bi0nZ+xp34euGE0dbPuHx3Q9Xv0d2bRgsjFKWnuQKuBHJ
         lOHYSNqS9uIzj7LIRg7761+O9tCEhryALQo8G4hgf3zVrYhXYCdSQpGE7L/buWo+fXP4
         FZivMuMJrmBMC5AP3RTER1C78CwRmUioSZkboHY3sm4AVbXB5xVBIW77lDHBfcfFLGpf
         J0Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mrsCyjcg;
       spf=pass (google.com: domain of 3uugkxwckewgsgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3UUGkXwcKEWgSGYQXGeMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FxdTE3Az+bOIe0GqkX4bM5s+37p0Pdtbp24WWLaLVms=;
        b=UKNUNsF/Z2jrAvybeOKC8TuMOoAG/jorgP9cCcYMRQOU9tdo1ybXsRN4CSJAQJlTc+
         3bviVCJnlOKNNzJK9dVGpCuczQLpubDIC6i7hOu0UpOSjhz+GdCl0fW900kKjZlXInBq
         hCz3aX76DR+6dANRB8/JNMCWXw0X6l2am11TwpjW3fOoNJ/E0g6Xj2TxDhYhDitIzUpV
         bfIZ4LwyVOh1a61FOfF7eh7Z/UrFrFh0SqLSBqd8LcVL/Bbza1YRn+DyU//3fZpy3h2z
         oJMXk/MfzY9AtDhbghA+2gWipECFGOeqBkp5s8XvB9GqQUtCoKiqjhm46Q43VIHJenNP
         r/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FxdTE3Az+bOIe0GqkX4bM5s+37p0Pdtbp24WWLaLVms=;
        b=JcFgsBLIxm6evta/n4LxqthYrdfSGcyb9NNZg8et5YAbDVDLDlaKCMdITtszdEEeim
         plTTzoDmUH3htwuIO0KZUafyQjHvqUO9zZKqoWLRSyHypKNejb3kkcGLCYlbwbJYkg8o
         uQGfqxekpc13FmCNZ3mYTg0NduAbwI+xz8pgexzPx4gFK2fjRslMFpmTZY/8CvGGYZOP
         28ll1faeD3JXflKeTEuEdA6pCxk9Z8qBQvS12CPeVHV0Fdq+KjgQaqGMjQpBVTYJGjJg
         cZxQ/6iQnigBY11M4pdJB68fCOI813zGdkx6x670Jo3isMn2AQhJ8jp2445ra5Ie4ghe
         QO8w==
X-Gm-Message-State: AOAM533X9oYtt54/kMuNAqMu8/FQq9BVXU/2M1a5PPIQtIc7J2GenM+0
	4N+GNDB264uYNyJxLkQR2ps=
X-Google-Smtp-Source: ABdhPJxQ9290qgOgyXYH3hYIv4LauQcHuIH1xfXl4qoOgqcLxqa8fhpj1/4yViABrvC4UB51N+R7fw==
X-Received: by 2002:a92:4442:: with SMTP id a2mr2695071ilm.220.1604600147095;
        Thu, 05 Nov 2020 10:15:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:50c:: with SMTP id d12ls478811ils.10.gmail; Thu, 05
 Nov 2020 10:15:46 -0800 (PST)
X-Received: by 2002:a92:d9ca:: with SMTP id n10mr2643031ilq.21.1604600146619;
        Thu, 05 Nov 2020 10:15:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604600146; cv=none;
        d=google.com; s=arc-20160816;
        b=NIA2eEXUq2O9ndnQt+tIl4Ws+P3Rz51i33tAgYUJSQX95xjZ9kXExRF6BdcdPB4yv7
         puex9Aeo0WaJS5yYG8BZ8jhkTC+C1ftcNDrhkuNop61BIoxQUaX04fl5NABwre+UDdP/
         huc0FV4yXftZCe3e7/Lou1NOWhN0XZ8s5d96Xsk/Z88NagBNsotD9Y7TFO0fh70gV7xV
         K7ahANAthmL3N+BUtY9rrM3P7IOPgnHDpPxkX1jgltIaaLlMpdXxRAyj6H7bQZUHV1ER
         YHzRD3/iOeuN+WINRrS00MOBxPRNmzAyqaEbxHnG3Wlprjedc/c3s1B+Ne2zY6k6pith
         HpcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Fulm6bh4vJe0WfYOxJrqTZUhsR1WOBLa0EYYfbd7Xic=;
        b=F6Z/4SQKy5izqPf9SvED8Ogb74EfAZQCmYkUpo5D5JfGbCQEJvryOel6mMnjOs09nN
         zwZQLaR1rLRaHCKMp0GKxUmC/nJxAO12bGlVtqnJ8By2BpqSeYu1bn3whLiI77aJKyk0
         Qv093Ju7S7Z80/pL+qd1upBIluJnzNEP3pf41IJVLk2BF6bUgnUhq3Nte1vijyNqIVIm
         XajkMs5hfT+G96hYvrO/YWRwGekv8MZmHuqOWdlXJ903IqKfR3MEETfTnBt+DpQtX5dD
         GyNGTklIIz30IRBA0q+5RP7+YG2aLbhEkQd9w5zwBXI/LTI/o8DMRuY1SGfyOlcLKzth
         DxDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mrsCyjcg;
       spf=pass (google.com: domain of 3uugkxwckewgsgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3UUGkXwcKEWgSGYQXGeMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id o19si162372ilt.2.2020.11.05.10.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 10:15:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3uugkxwckewgsgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id p5so533024pjv.6
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 10:15:46 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a17:90a:9b15:: with SMTP id
 f21mr398825pjp.0.1604600145433; Thu, 05 Nov 2020 10:15:45 -0800 (PST)
Date: Thu,  5 Nov 2020 10:15:42 -0800
Message-Id: <20201105181542.854788-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] ARM: Change arch/arm/lib/mem*.S to use WEAK instead of .weak
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>, Abbott Liu <liuwenliang@huawei.com>, 
	Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mrsCyjcg;       spf=pass
 (google.com: domain of 3uugkxwckewgsgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3UUGkXwcKEWgSGYQXGeMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Commit d6d51a96c7d6 ("ARM: 9014/2: Replace string mem* functions for
KASan") add .weak directives to memcpy/memmove/memset to avoid collision
with KASAN interceptors.

This does not work with LLVM's integrated assembler (the assembly snippet
`.weak memcpy ... .globl memcpy` produces a STB_GLOBAL memcpy while GNU as
produces a STB_WEAK memcpy). LLVM 12 (since https://reviews.llvm.org/D90108)
will error on such an overridden symbol binding.

Use the appropriate WEAK macro instead.

Fixes: d6d51a96c7d6 ("ARM: 9014/2: Replace string mem* functions for KASan")
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1190
---
 arch/arm/lib/memcpy.S  | 3 +--
 arch/arm/lib/memmove.S | 3 +--
 arch/arm/lib/memset.S  | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
index ad4625d16e11..e4caf48c089f 100644
--- a/arch/arm/lib/memcpy.S
+++ b/arch/arm/lib/memcpy.S
@@ -58,10 +58,9 @@
 
 /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
 
-.weak memcpy
 ENTRY(__memcpy)
 ENTRY(mmiocpy)
-ENTRY(memcpy)
+WEAK(memcpy)
 
 #include "copy_template.S"
 
diff --git a/arch/arm/lib/memmove.S b/arch/arm/lib/memmove.S
index fd123ea5a5a4..6fecc12a1f51 100644
--- a/arch/arm/lib/memmove.S
+++ b/arch/arm/lib/memmove.S
@@ -24,9 +24,8 @@
  * occurring in the opposite direction.
  */
 
-.weak memmove
 ENTRY(__memmove)
-ENTRY(memmove)
+WEAK(memmove)
 	UNWIND(	.fnstart			)
 
 		subs	ip, r0, r1
diff --git a/arch/arm/lib/memset.S b/arch/arm/lib/memset.S
index 0e7ff0423f50..9817cb258c1a 100644
--- a/arch/arm/lib/memset.S
+++ b/arch/arm/lib/memset.S
@@ -13,10 +13,9 @@
 	.text
 	.align	5
 
-.weak memset
 ENTRY(__memset)
 ENTRY(mmioset)
-ENTRY(memset)
+WEAK(memset)
 UNWIND( .fnstart         )
 	ands	r3, r0, #3		@ 1 unaligned?
 	mov	ip, r0			@ preserve r0 as return value
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105181542.854788-1-maskray%40google.com.
