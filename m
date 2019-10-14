Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKWFR7WQKGQESDESWMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D64D59AA
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 04:51:24 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id s14sf16666409qtn.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:51:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571021483; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHGP9cwqXGfQbac21z2hhgy8uVaSGMIoSgp/kVyWM5P+BdHMIfFIUhMCyqAnhQPXzK
         Cm01+PT6H6bMgzLT3pP+HqKJvxmv303IUxZD6LUZtaVe2MDmx9PLH/0x7u46nPD29Y73
         qHzKJkYqFCmOXkWhawA98GlxxVWQTkfXV1s2ghyrhCHapLNKzrQKoNTuDWnywV1Td4LL
         HowHS46Li11PZXQ0D2GGXlesmWvkF5ikfT4EOYKhj0txIwy3CwIdHpnGFU3H0gCGbXRs
         1FmGyWiDK1yF3rtmepJtgptWJ8IRiAJDRZUSPJf8YNgKRwjy8HfmyJTvNBHu0GsHgZbh
         xC1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=MfNe6nFPjbcwDnibqhpin68WZ3Xzg2txdOf9byWvLq0=;
        b=tkI8ndUxeodRHWGTVB3wvkcZtRk423twj3jeBAVlXpuGndTcd8oUCx9nDCNu2kjJ3e
         vUU/RAfi1jCLPzvyMJ4OoFw2vb47mXtLE18vFbpOcaP6OmxystUWdXWOe6T7MqdFErOM
         7JVSe72/XhEw+JWX5otnqmOzaUPSTHauBjpL3m/XNeLXChbXbqTwGpEZXoBsHD9TgJwz
         o7fsiFCIkOMuni0mC6BY6eV0WjWP5SP+KKAl74hE5EN2VcdLPFWTnW2WynVenISdj8Ms
         KmBCnV1j5d67vls+Zja/kKDYTkWQvT/eDXdrK/TH97FpL6trie7WqJHQIdAAOWQZHv3l
         9xqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z/ZH4sY6";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfNe6nFPjbcwDnibqhpin68WZ3Xzg2txdOf9byWvLq0=;
        b=elLYf8eOx9peO5+AkYfbWrfwXox95d08Pa9bVsKs1kR4RIhlB7g+GU3+zRXd7l0Ae1
         AmHvUiUUEHrx8ggkTqOrJkXk3T+ahU5RQMv+yOCqACa44kuIOBr4KiwrdM1d6ByVNW7V
         /WjwSeYdM96yYLSBwu5uneMdHAOUuf5A+TmAHqG3cjnu5ZKovVBpevwiBJ+iB0zg4aiC
         DTlerJb03wJ0An4agkAs8yHbxJho5lUC6oAgvhlegL6hhrHI3e60GdbBZJ15+AdjTgCR
         SuHUMcPAg059AfC46uVDxUisxWzNKW/TUSJ+6109va/8K7H50Jye6iGWjDJ36OzUiWQf
         Jk8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfNe6nFPjbcwDnibqhpin68WZ3Xzg2txdOf9byWvLq0=;
        b=oUteAKXavN+X9m2Bwie/duQ4Y1wRjnoiwkGlr0+X+aP7nfB0lWOeJDy5tVWsPq5wPR
         BdV6bjoSgkzok2l2TYaO6qfmyZYioCuBaBrkaj3ViASB+s6Dp28ZE5iwN9iFlBoBsZF2
         q4E4ozMRScD2+CxBSGZ+yBhH0IJrOLGZ1lVF96f9s38+x0b5U/sH1UgfQwM1O6uSNuxt
         krL3piz9kIls8i7biElk3TSi3MWDSa0F61GHpC71byRnteMK9mRSBkKSn29XXMzQ5R/0
         P1z9p+o9KsLpWFxIFjCmmuojsPnT9KzTMzDsEnKGCrt619Bf+dlOw9R9XHE1cKaQucJh
         LmKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfNe6nFPjbcwDnibqhpin68WZ3Xzg2txdOf9byWvLq0=;
        b=WzBuUzP5QUlql/KRcvuof+cvXN50x1naxmqsMlMii+Qx6FNn31pZQAMVI6W9xvxqEA
         VRUMh5MHcoEU4k0aId5gQiEV5WTsRVxzO8SnAZH1iIirhhhBVBnCSHBtwzQfxzONMxz6
         wc4iOqLRuLqxB5TiQGOTluVZ4gDSLB2bqHtUyV5IonhzuJm/Eb9MzKcyOeyjz+1Hncvf
         mdBXKu4gXHyf/9Gu+NVAcuWo5sDAkcZc5eo/4Hd0zqqiWbv2ZkxVyxHXjAtV81i37/rU
         NdumwBnnjrtVlh+ZhB+zIkby6Km/T76Pxcf/Tv0i04+26cr8vqzBIcn7SZb+n/zNKzjV
         be8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyy1JvN9ItgJ66uFg90/gB+CUEaZHVng4gRLncCN5Y1D6haKIO
	zKHgn7JuLg+jYSFtZOFKFKw=
X-Google-Smtp-Source: APXvYqyA40VqlCsIHvc8IcvfBQZtneAjLHamDScHe2XsEqAHhO1zuvSQ8mWMF9EB0gwFLXaCtjls/w==
X-Received: by 2002:a05:620a:13f2:: with SMTP id h18mr27583195qkl.218.1571021482982;
        Sun, 13 Oct 2019 19:51:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3f5d:: with SMTP id w29ls3480958qtk.0.gmail; Sun, 13 Oct
 2019 19:51:22 -0700 (PDT)
X-Received: by 2002:ac8:60c4:: with SMTP id i4mr22115886qtm.129.1571021482719;
        Sun, 13 Oct 2019 19:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571021482; cv=none;
        d=google.com; s=arc-20160816;
        b=Ye5ekLYDNxnMAsfu+4jMNnHzTqBhNGtxuKV41m5NRBUAJ+5PPNgtwB/L9kSTEniepR
         vkrYyWqpcUdPJWryTExlQZJz4kooiVV4u/d1VebNNZTmmmIajP1ZqaRO96dXUTa/VkgB
         bFMn0dV0mC5GtZjUd7WokanSIRjvyvmzhDt3gZPCJtwuby64UYOU9YCFIjFSyX5994Kg
         22C3XPHQb+9ZHZfzI8RZ/u9cdeWAzgWu6DJiid02aaKazqdGXhKp2nBDOrzbWYPyZIxP
         7i1PxjSugzLXHKDlpUdTpb8NMmc1FNX/kF4addd7gCO+WdiMaIs6zPtY09ODzl1oiWRS
         T8GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CHmUbEEX69AqhdbGgT5mtRK+KzbNgJpahv1dD9kcoow=;
        b=N5Gn23HI3w20sYY3doYrMMM3dm0V2oIYfMjtgS+4CfA3rLquC3osqUK2SJbLI5uW4z
         k5M6mwMmqXhD+kGhGTcPWgZAsz9AXBm1/sRDKpFwfP0ZzfRYi+8qtLZzDa2qqRy4xq9K
         pOS+E8T883RkzJygM/M5dMobvj2kI2hhLYAEGW6u1qHn1QKRAbY15YHOXLJSXVudF5m1
         ggLMZAh9Iddu/JO1+R0PgeqWoYP71e0at1biP902GHunx528AceXwy3qiDE4RfkC1GcU
         YzhPPt+VSrXLNASuw1/E0SAKfeBAoKfF/doBOURh327farBBCRhITjB8Ml9vg5emB/jW
         F2bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z/ZH4sY6";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id h4si517539qkm.2.2019.10.13.19.51.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 19:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id t84so12552736oih.10
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 19:51:22 -0700 (PDT)
X-Received: by 2002:aca:211a:: with SMTP id 26mr21810859oiz.122.1571021481959;
        Sun, 13 Oct 2019 19:51:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 11sm5612491otg.62.2019.10.13.19.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 19:51:21 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Daniel Axtens <dja@axtens.net>
Subject: [PATCH v4 1/3] powerpc: Don't add -mabi= flags when building with Clang
Date: Sun, 13 Oct 2019 19:50:59 -0700
Message-Id: <20191014025101.18567-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014025101.18567-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Z/ZH4sY6";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building pseries_defconfig, building vdso32 errors out:

  error: unknown target ABI 'elfv1'

This happens because -m32 in clang changes the target to 32-bit,
which does not allow the ABI to be changed, as the setABI virtual
function is not overridden:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/include/clang/Basic/TargetInfo.h#L1073-L1078

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Basic/Targets/PPC.h#L327-L365

Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
powerpc64le toolchain") added these flags to fix building big endian
kernels with a little endian GCC.

Clang doesn't need -mabi because the target triple controls the default
value. -mlittle-endian and -mbig-endian manipulate the triple into
either powerpc64-* or powerpc64le-*, which properly sets the default
ABI:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Driver/Driver.cpp#L450-L463

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/llvm/lib/Support/Triple.cpp#L1432-L1516

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Basic/Targets/PPC.h#L377-L383

Adding a debug print out in the PPC64TargetInfo constructor after line
383 above shows this:

$ echo | ./clang -E --target=powerpc64-linux -mbig-endian -o /dev/null -
Default ABI: elfv1

$ echo | ./clang -E --target=powerpc64-linux -mlittle-endian -o /dev/null -
Default ABI: elfv2

$ echo | ./clang -E --target=powerpc64le-linux -mbig-endian -o /dev/null -
Default ABI: elfv1

$ echo | ./clang -E --target=powerpc64le-linux -mlittle-endian -o /dev/null -
Default ABI: elfv2

Don't specify -mabi when building with clang to avoid the build error
with -m32 and not change any code generation.

-mcall-aixdesc is not an implemented flag in clang so it can be
safely excluded as well, see commit 238abecde8ad ("powerpc: Don't
use gcc specific options on clang").

pseries_defconfig successfully builds after this patch and
powernv_defconfig and ppc44x_defconfig don't regress.

Link: https://github.com/ClangBuiltLinux/linux/issues/240
Reviewed-by: Daniel Axtens <dja@axtens.net>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Improve commit message

v2 -> v3:

* Rebase and merge into a single series.

v3 -> v4:

* Rebase on v5.4-rc3.

* Update links to point to llvmorg-9.0.0 instead of llvmorg-9.0.0-rc2.

 arch/powerpc/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 83522c9fc7b6..37ac731a556b 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -91,11 +91,13 @@ MULTIPLEWORD	:= -mmultiple
 endif
 
 ifdef CONFIG_PPC64
+ifndef CONFIG_CC_IS_CLANG
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mcall-aixdesc)
 aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mabi=elfv2
 endif
+endif
 
 ifndef CONFIG_CC_IS_CLANG
   cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mno-strict-align
@@ -141,6 +143,7 @@ endif
 endif
 
 CFLAGS-$(CONFIG_PPC64)	:= $(call cc-option,-mtraceback=no)
+ifndef CONFIG_CC_IS_CLANG
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2,$(call cc-option,-mcall-aixdesc))
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2)
@@ -149,6 +152,7 @@ CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcall-aixdesc)
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 endif
+endif
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014025101.18567-2-natechancellor%40gmail.com.
