Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPXLSGEAMGQEGHOVE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2B13DC092
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:57:19 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id s16-20020a170902b190b029011aafb8fbadsf8636015plr.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:57:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682238; cv=pass;
        d=google.com; s=arc-20160816;
        b=dJL2vpSQWV/X9fGdyJGYGAd8fAZjNF7RReVWBhc8OYP2u+GalyvfB8kHRywnMjLqzr
         m5/MxDQqWya8jb/XX+PAUEW9yizGDZUTbBu4kozMTYUpV40XksPBqm4yht/x9edNVND/
         JesHuB4h85yVHf8QmxC/eNQPOD2vXRpsRrCs8NoD8OR2HKpM2y75QC1Rw/dZCwo9ucY6
         byQatu91RUPPR9Gi6SI2HJKi5wXN+IQpkkMD0bQqJPvkX5XawRBOeQnfg+C4EZHbrXwZ
         r6Vrzd/FkEWnK6KsIBVwZIz6pdZ4Ok4nAdm3YYOKCJU+46x/I+CwP+H4hy7BJMuVUs4T
         4jfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7EDjWqbX0JAywQ20gKflzbd8C4qgGxhcTRlQrJVnUSA=;
        b=Xsr1Hu166NSSIYRtFzm6sYNcgS3icGwYIXYpGDsq3k7c/t5O03yEgmb2+RF/DHlk4y
         u6XAJFk5A82FXOLa9KF5MY0NNR4G3oIC8BJFWKjoAXBaX3QtOfCThUzXeD87g5pFZyZy
         iROpRwNFU1vMNymKpySsPKbrb8Z2ahDvwNf8ILCZzwsfXpCyvOg6VjNBR4Wa2JZmxUnX
         YhjNZsr6z4GGDKudjn9FTeRG6ivO24S9wYePGp36vXkFvvlQoOgIdtDydTrpBWCibT9i
         W7kLlfUC9SWprDEkHAUg9CWf9MUeGl7hoeWE2ixuZzrYKRSAKznpNvInum9t2B9aOf+R
         r0xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oc1f766n;
       spf=pass (google.com: domain of 3vxueyqwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vXUEYQwKAMg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7EDjWqbX0JAywQ20gKflzbd8C4qgGxhcTRlQrJVnUSA=;
        b=EAiMDAthX71SBgcDwro31/KVIAKiLDF0DnX99WYzWR/TxxTtp7sLTvjXAgtdJ5a8fz
         a36MV47a6rKIW9EhPQhHMgaxPbvcAHMPTEfUiODsjt+hA3Qa7aiLulJd8pUjFoP5nTXW
         RHZyWW3XHRrK3HtKRrNza9wBOuboiZmJ8MNuQnbm4CPmm2Sq6UzgdmxY5jbBHVgd1e2X
         HbB4qmfh4hDF98SnddcxdyWEdvhN/irahMSSwMrqd7wlpp2Y6Gb1OMoO4uPghEC8arqp
         bvPm43lzj9CHo7n3wHvOf3k5DtFmnfeIhUSGTCDorHHzR2TJmCqwv6e97McF2PrOu3Nc
         AJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7EDjWqbX0JAywQ20gKflzbd8C4qgGxhcTRlQrJVnUSA=;
        b=nhzhNFql20s5f6c3lrBc3JRw59OuKE+sL1M5+jVPc3fJg0XvgNcnXumTTbh2WgxQvo
         ieDuWQUSHeC3sIyXf5IRJeDfHxeY+236bir78kHd1GNhPbUCoxYNM4JOEZuIPklOiNO0
         1MkaBzcnC5uaj5TVcTrK80DByk+tYX8h6BGmPkQ1f1T4ytJmUQr2bHCUqx395BPzAhfm
         LG7KtpSZGhzIVcasgo77VIQQ/8w0YSAE+3BQGEoTAqN12ecuVvLd6hnZLWvXnFolkACR
         EbfxnQNQTfl4k7iznpHB131YZR5J8yOCXTLxrTI88XT1qJSr4PSzUoJnz4hB1t7HpzZc
         29sQ==
X-Gm-Message-State: AOAM533xhgEpXUBU/L+1qoWdP9Wb+Idrws4JwUozyns1asSPrzMD3gp2
	8u5kImjujLWDusfpo7XR8hE=
X-Google-Smtp-Source: ABdhPJyD7QZVUkhuoLfysaAiHudHE0c6JfWrhiF4j+w3TpIfX/jH+3qkWuaEoHPRLkX7tT4xEgKpSw==
X-Received: by 2002:a17:90a:c8c:: with SMTP id v12mr5288165pja.37.1627682238522;
        Fri, 30 Jul 2021 14:57:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:192:: with SMTP id z18ls1545197plg.5.gmail; Fri, 30
 Jul 2021 14:57:18 -0700 (PDT)
X-Received: by 2002:a17:90a:1c81:: with SMTP id t1mr5208828pjt.119.1627682237935;
        Fri, 30 Jul 2021 14:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682237; cv=none;
        d=google.com; s=arc-20160816;
        b=gvD9+x7A36g8JWfHDaFq3ClbjnXwYTkbLwXjYwC0ck/nriY2M4BZZ2WnixhzLt4Kvv
         cfTkOV0OfY8LTdzvgdN7kNwqqrlUf0Uerq9Ho99I1+RwZqWulW0rnNkSL+AvovwBSVEV
         Yv+y3NR6mNTn5WuXq4mQVi0v/UrXOw2YF3eF+kHfCBr34kchfp6NZ93pKtuNq6Cg30Wc
         RCnPpgfPr+PmiUoLzRorlSCYPEVrz173E92Vn5oLwwk0miLkmgV+mdA7bYBmdyqurzR9
         VLd+qZEWcHmPLp8ZuExXixQYf90ims6RGlpmmU6YybznwJP9LugOhdjkDO4kiH+ZDRRW
         VKOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Uxes+3KgPBRk8hTWxCPQ73ggKqkGn4KDKi7P3lIrrmE=;
        b=dTHQLwWcPs7uDQ/0btC/Ja5ATNo1KhAfPc5B/gdtry8zlD6ebi7sSnvgJg3ZGxcELP
         TDGWl+KcXGMFYoXK2Py8I6DYPO2XJsWGYUjNXGsvTeehz0yGD0uQa4kIRaNjt60ercYS
         V9oCgVTxMunbuFIfiI5hwcqjFAiRk89/Ymg3UlNNGX+8xzO5L7dywK0bjBPCWqPjCfPY
         dwTX95B0zhz6qZNsfNdkWidOZEREIrsblpFLzFpfJpbzJ5RBi9kQOazb8JGti2jNr1vs
         0YRJF1dENZZTtwVE+9zd1vZ0jW2xqeBNyqIOPPc054Lu1Yt71zqr417yLZoEUOWURSxp
         X3dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oc1f766n;
       spf=pass (google.com: domain of 3vxueyqwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vXUEYQwKAMg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v24si171686pgh.2.2021.07.30.14.57.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vxueyqwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2so11948143ybi.13
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:57:17 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:cf8a:: with SMTP id
 f132mr6504203ybg.387.1627682237084; Fri, 30 Jul 2021 14:57:17 -0700 (PDT)
Date: Fri, 30 Jul 2021 14:57:07 -0700
In-Reply-To: <20210730215708.276437-1-ndesaulniers@google.com>
Message-Id: <20210730215708.276437-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210730215708.276437-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v5 2/3] Makefile: infer --target from ARCH for CC=clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oc1f766n;       spf=pass
 (google.com: domain of 3vxueyqwkamg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vXUEYQwKAMg1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long when compiling with LLVM. CROSS_COMPILE is helpful when a toolchain
has a prefix of the target triple, or is an absolute path outside of
$PATH.

Since a Clang binary is generally multi-targeted, we can infer a given
target from SRCARCH/ARCH.  If CROSS_COMPILE is not set, simply set
--target= for CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS based on
$SRCARCH.

Previously, we'd cross compile via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
Now:
$ ARCH=arm64 make LLVM=1 LLVM_IAS=1

For native builds (not involving cross compilation) we now explicitly
specify a target triple rather than rely on the implicit host triple.

Link: https://github.com/ClangBuiltLinux/linux/issues/1399
Suggested-by: Arnd Bergmann <arnd@kernel.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Arnd Bergmann <arnd@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v3 -> v4:
* Reword commit message and oneline, as per Nathan.
* Drop documentation change (it's the next patch, could be squashed in,
  I guess).
* Drop LLVM_IAS=1 requirement, as per Masahiro.
* Carry Arnd's and Nathan's AB/RB/TB tags, confirmed OK on IRC+Discord.

Changes v2 -> v3:
* Drop check/requirement for LLVM=1, as per Masahiro.
* Change oneliner from LLVM=1 LLVM_IAS=1 to CC=clang LLVM_IAS=1.
* Don't carry forward Nathan's RB/TB tags. :( Sorry Nathan, but thank
  you for testing+reviewing v2.
* Update wording of docs slightly.

Changes v1 -> v2:
* Fix typos in commit message as per Geert and Masahiro.
* Use SRCARCH instead of ARCH, simplifying x86 handling, as per
  Masahiro. Add his sugguested by tag.
* change commit oneline from 'drop' to 'infer.'
* Add detail about explicit host --target and relationship of ARCH to
  SRCARCH, as per Masahiro.

Changes RFC -> v1:
* Rebase onto linux-kbuild/for-next
* Keep full target triples since missing the gnueabi suffix messes up
  32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
  drop references to arm64.
* Flush out TODOS.
* Add note about -EL/-EB, -m32/-m64.
* Add note to Documentation/.

 scripts/Makefile.clang | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 297932e973d4..f983f65dd9f5 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,6 +1,32 @@
-ifneq ($(CROSS_COMPILE),)
+# Individual arch/{arch}/Makefiles should use -EL/-EB to set intended
+# endianness and -m32/-m64 to set word size based on Kconfigs instead of
+# relying on the target triple.
+ifeq ($(CROSS_COMPILE),)
+ifeq ($(SRCARCH),arm)
+CLANG_FLAGS	+= --target=arm-linux-gnueabi
+else ifeq ($(SRCARCH),arm64)
+CLANG_FLAGS	+= --target=aarch64-linux-gnu
+else ifeq ($(SRCARCH),hexagon)
+CLANG_FLAGS	+= --target=hexagon-linux-gnu
+else ifeq ($(SRCARCH),m68k)
+CLANG_FLAGS	+= --target=m68k-linux-gnu
+else ifeq ($(SRCARCH),mips)
+CLANG_FLAGS	+= --target=mipsel-linux-gnu
+else ifeq ($(SRCARCH),powerpc)
+CLANG_FLAGS	+= --target=powerpc64le-linux-gnu
+else ifeq ($(SRCARCH),riscv)
+CLANG_FLAGS	+= --target=riscv64-linux-gnu
+else ifeq ($(SRCARCH),s390)
+CLANG_FLAGS	+= --target=s390x-linux-gnu
+else ifeq ($(SRCARCH),x86)
+CLANG_FLAGS	+= --target=x86_64-linux-gnu
+else
+$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
+endif # SRCARCH
+else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
+endif # CROSS_COMPILE
+
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
 else
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730215708.276437-3-ndesaulniers%40google.com.
