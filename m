Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW5K73WAKGQER6VMFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id ED25ED321F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 22:32:28 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 63sf5589101ybv.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 13:32:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570739548; cv=pass;
        d=google.com; s=arc-20160816;
        b=fR4iTp6hebtwSHvMHbVmWtGfpGWXA3yWXgdsXRITaaFYzdKQrdJtAHXCr6MMDAZW80
         6d1EAxYh5Yrj7A4rvuvMK7VMqx6ALQtfOqrHn8irSvPg6/Ze0rBVAgpVxgjmL1hv3pB9
         H2dB8Zfm4oWN5lQaLN+5owEhW1KWkLS8OmLboD/KN3j27UK+F9GuSOxnekBi8iw62bX4
         e+yiTDHKf64PP21792ugX3C/2VP2ICY8fLqhX9Y0y4r8gL7HcdAKYf08VRlYAjvxO2L1
         8BV2qkrrRTa/k9SbTT/zdh5pPMy6IGgBvKcJszBFnCMb/viPJN1Uw3sp7sQtQk00j7sk
         zm+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=5+zm4adBbFV8Yq5YYsBagSmVh8zFejTonrdsmw07cvQ=;
        b=LjSIaxFqZh4JeXPlWvqLGyF/z8GQBwbjuMXfDgosjdpLVDZr9eSf14hT1wfNmcwpZv
         SYX7XyLHYdGogjLUQ7S3MiosHxfbAPJSyDQZmZMl7qZ9SxJrCwjBgNAYppEwEQC3tcYV
         2glJb8ToLBB008pmY7/Br+kTMQVVz+PvzXCdyU5eYpS4LQCE1ScOYiJxS44JtzQaDOed
         AYMagdZ3SIC2EHk+oCJgI4IZdGGLbaLqKcEAF0Nl4Cr4gF5mngyClS5H3vZUcg0vm23Q
         VEAlK8rUZPbPhVan+RtF2v7r3nV3ro4A5Ew3AY7qSmsjp+DOll2Ovt9WGLzYqjQEfsvk
         gPdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nzzPZFBy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5+zm4adBbFV8Yq5YYsBagSmVh8zFejTonrdsmw07cvQ=;
        b=O7P5jXj2D/tgk62a7RE1Viwl+fAAbkdtjpEQFa05ZhI/Lca2F46ZB/UvKwiPANTUu7
         KJQCicSKtnKGD3Zukw6hT2cVvBXI2Jc9EghSmd1JHeJ6b8hSyWwV5eQ2H9NoQQ/opoJb
         m4A3tgFn6jbwcXoJ4aPKFApnX1wsvez+4yAg6L7NsUFKMDUnIDfXLNGkq9j+cEYxFi+k
         d3NfMzsX4c+MkPEOqgkW4ij70qq2Sj9yAAG759PePCeoe0291EYXDJ0Xtie4nxCthuqI
         RWgnBBVFyLHWTkDzCyFH4VVLrhT2zcGc87DtBBpxSwfSOex4s37cxjuj4z29a3dln8+s
         a9QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5+zm4adBbFV8Yq5YYsBagSmVh8zFejTonrdsmw07cvQ=;
        b=tZkBe+qZd9KbvBnK93/UBLl6gHvcobgPlB1ZzPqi5pwGtGZxUxTE9u9vuAmCLFdqqX
         x/VYUjqGmbo3bIoU6AViBRq3JN74WdiT8DOuhoCC2rYe9shD+A37KjuZAzzfoFxO4imv
         1mYINFGzOPhV3/D80ehBA7c2cANNQ+RRGU5kU4I5jcKHwUczape0ThDDGuwYtVL3toxg
         U8AOryI3yG8LGQ7IZTWKKX5V43nAfeh5PigdMHl826l9k0Gt6/aViHVV3zJQb1pB7FHD
         u6dJhxZ49ewf+Akb6W6IZ+bX6y1bYxye+/NUwugSZLJXSH8lGszN62/NACRK9mVgq0fO
         0Vzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5+zm4adBbFV8Yq5YYsBagSmVh8zFejTonrdsmw07cvQ=;
        b=TTvTtt6oIFbydUyx+sljUIe2f7adHBVZSBkwhc76pyj7hfxX5A+MowyFyj8U/r9i0R
         4ZCcFPUolFmba+VqL8lh9JpQZTiIn6pvHuTJzn3vwn73FOBlpgvRfK3BU/l0C4NtHAcn
         7MvFr+1QwsNZn2DXIOdZDGEpuM6qQQqLSE+TAdPXCSt+bI8To4+amr0bpV0KC8Nj/2Xw
         nDudpXg7itAjHBMjxvIA3Z/M7kYbk4GyY5DzPd0yKCet/dRD2vAmUUj7K/E3jkulEhiG
         H+7l7Y5cto5zLLWmHFoFIsd6Iu4QeaeNyFfTi3OxspCzV5zcHSuGTSFnJlcasY4l5fQ7
         BBgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1HkEp4qK09Z7cCzy0EIDKddlNhpFBt/7vvubNUqhL33EAQMbH
	7SQAX92868fu8KYCR6Rk3Qs=
X-Google-Smtp-Source: APXvYqy0dOBLy/HG7eNg65rIneQg2ez2x0ZuVDD4SVlp9hC6Mvd+RpBScf0n2axH/Y7BY6zShDAUPQ==
X-Received: by 2002:a25:808b:: with SMTP id n11mr8012305ybk.191.1570739547868;
        Thu, 10 Oct 2019 13:32:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e090:: with SMTP id x138ls837669ybg.4.gmail; Thu, 10 Oct
 2019 13:32:27 -0700 (PDT)
X-Received: by 2002:a25:6c82:: with SMTP id h124mr409192ybc.243.1570739547512;
        Thu, 10 Oct 2019 13:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570739547; cv=none;
        d=google.com; s=arc-20160816;
        b=PJCHO0hNL0zqI06CtqRuYB51TlpHiWA8q4eNLJKwdffQc38X4yQ36BXWR7l7Gsl7a+
         Hh2q2hR667qv1p039tVS21tSkE94pW4LLJqML2TJeG5wlTuJJSd5nC2fEhZ0O864S5Tc
         abPtNzwN9VMRA+ttpWVXPRCRHG4dyuMLVUnm51GnS5hLYkOrNRuwW61gBxD8dN5NwkLZ
         TOHea8hcUWjH7Oo3jfKl1lX6EhLJVPOH881uiVwXucjJZ/c545DrFtmTO+26hW7TCDpm
         hSeE3XC/FhZJl8Z77jUBXqFkWpPlot79xa6umqpHl+IJ7rtRTo0riR+vTwwBE8WaqFkh
         8P3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fWk3YhiiJHg8k8ptjSkAx7ItL9F1legAJpF+beihn+4=;
        b=Pl/Bwq1NdW3SboDBsHaITdcVCZ1CVve4tN7dTNDwEkJXCNC1IhVXdGUhJJ4iRIEI76
         v2QxkhQxSbtFNXi9iYeJtFao2NLikFhf+vxge7qu2rhvpHQnqHMiEdh+xQpzC7Gg3tjK
         ZoHtwZBxRB1WVa4+PSDhB9olx+drR7Kod3qBMNMiYV2on06xdPfrcNM1XNimqhGcO+gN
         CSWk5tGvLY1sL+weaeDTYaGXk8A5uiEi77r52vA0OtEJxd0A/XZ09QkvNgpztHBTNHub
         DRFhfzM5+CBKK+IWRxp0Y4IKpa5XNnJZQf5kwPG+lKNSW2y8mLGmgpqdHopkd56CTvVB
         agXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nzzPZFBy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y7si408127ybg.5.2019.10.10.13.32.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 13:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 21so6054417otj.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 13:32:27 -0700 (PDT)
X-Received: by 2002:a9d:5605:: with SMTP id e5mr9056238oti.150.1570739546944;
        Thu, 10 Oct 2019 13:32:26 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l17sm1726636oic.24.2019.10.10.13.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 13:32:26 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mips: Fix unroll macro when building with Clang
Date: Thu, 10 Oct 2019 13:31:59 -0700
Message-Id: <20191010203159.20565-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nzzPZFBy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Building with Clang errors after commit 6baaeadae911 ("MIPS: Provide
unroll() macro, use it for cache ops") since the GCC_VERSION macro
is defined in include/linux/compiler-gcc.h, which is only included
in compiler.h when using GCC:

In file included from arch/mips/kernel/mips-mt.c:20:
./arch/mips/include/asm/r4kcache.h:254:1: error: use of undeclared
identifier 'GCC_VERSION'; did you mean 'S_VERSION'?
__BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I, Hit_Invalidate_I, 32,
)
^
./arch/mips/include/asm/r4kcache.h:219:4: note: expanded from macro
'__BUILD_BLAST_CACHE'
                        cache_unroll(32, kernel_cache, indexop,
                        ^
./arch/mips/include/asm/r4kcache.h:203:2: note: expanded from macro
'cache_unroll'
        unroll(times, _cache_op, insn, op, (addr) + (i++ * (lsize)));
        ^
./arch/mips/include/asm/unroll.h:28:15: note: expanded from macro
'unroll'
        BUILD_BUG_ON(GCC_VERSION >= 40700 &&                    \
                     ^

Use CONFIG_GCC_VERSION, which will always be set by Kconfig.
Additionally, Clang 8 had improvements around __builtin_constant_p so
use that as a lower limit for this check with Clang (although MIPS
wasn't buildable until Clang 9); building a kernel with Clang 9.0.0
has no issues after this change.

Fixes: 6baaeadae911 ("MIPS: Provide unroll() macro, use it for cache ops")
Link: https://github.com/ClangBuiltLinux/linux/issues/736
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/include/asm/unroll.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/unroll.h b/arch/mips/include/asm/unroll.h
index df1cdcfc5a47..c628747d4ecd 100644
--- a/arch/mips/include/asm/unroll.h
+++ b/arch/mips/include/asm/unroll.h
@@ -25,7 +25,8 @@
 	 * generate reasonable code for the switch statement,	\
 	 * so we skip the sanity check for those compilers.	\
 	 */							\
-	BUILD_BUG_ON(GCC_VERSION >= 40700 &&			\
+	BUILD_BUG_ON((CONFIG_GCC_VERSION >= 40700 ||		\
+		      CONFIG_CLANG_VERSION >= 80000) &&		\
 		     !__builtin_constant_p(times));		\
 								\
 	switch (times) {					\
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010203159.20565-1-natechancellor%40gmail.com.
