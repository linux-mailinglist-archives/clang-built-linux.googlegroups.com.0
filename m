Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM5HT2DQMGQEKICBFEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 096FB3C1C66
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 02:09:25 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id o7-20020a1709026b07b029011a0d4de43dsf2410424plk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 17:09:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625789363; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDda0GmCWZGQDc9H+L87GQMtJB6lxnbK68fjtzmiD7f4iuYNMaGzJtP069XWJuFWAu
         xse0d39oa/KXqXDEdvUWcDFUe2HgTyo916F4yZuYLvXN3b43SNPqci+g9YeN3LpIJxkA
         aaAyoge+Oj4S31t32FpQo9lOEfTkMZ6qqqVmTnM7auufCVHFM7MWUThRiM15+rTONP8X
         jXTEAvbNRkk5JnuTA0V2W6MOoYpyvlKpxxvAftWex8FilxIeBbo/SM6AqvubU3bBkvJy
         Af/+xuTCKe1fOwZjGRyRxUrisE5DiEiF2GqICpfxNY7TS7wqjF6LviTSYK77iT7LrFPt
         WeMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=A/p0kXb5fJgkxKiK/CYbevwyHe+5E96iD3YGjDsqeqo=;
        b=e4HYV+kVOtoufnPYF1btw6jZVSCrsHTtG3sQlSPAKW/b+QshG8kwlfvTHSD73qTfgv
         PEeH+MHXkncUM7ffIxy7P0RlXJIxMxQIY7YYFDdtnHelGMYkx0oRZ+6z02uc7/ueWmev
         KJltc09pZEKjb2jqS77Kr8CAGhjuUHVF2gkbnF8GawgRXjKWYTb/ECFI5hx4D8s+2M+x
         OyxZLDCAaP19COzNGal8synba4ALSuNvijo+dLDadWjo6ekgNqzvQrfUnBDaSGrV0hQf
         kCiAXcGpTdsyVCxIT8brdXcRfHkD9HUhZOG7iwFPdKIEZ+JuDyspzLG23ZeRnbc0lCKg
         4SqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="e1xMz/ZO";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/p0kXb5fJgkxKiK/CYbevwyHe+5E96iD3YGjDsqeqo=;
        b=iCAdSj4gMI4YTajZqxAkxPDcb7hziQ47zdrDZD5QIQEPf/2qcdIA0DjeP5uWZBZi7j
         CWUOQQorxR1ltqWabfbV20voSy/tJntsIIlDaeGuZPkNM1pmtv+P9LOeqc3R+2KlMvZ2
         gtM+eOkS0/RiEmv21T/rgXGw4nHvFeDWLFSdfGLKA3MN6I59z0OjCoj7tJIgsfOUffk2
         P1e3dD/oZboZJ+5ognkENs8Qz4+ZizUSjc1ACMn098Ak7f3J/ICybVvofZOVc4ozbK75
         H4/+SIfDFWfhV1JdL6SjqpjaI/2v2xkkdjTJ0EK3YKmJSVa0owY+dAK+35hVOu55aZ4E
         ilyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A/p0kXb5fJgkxKiK/CYbevwyHe+5E96iD3YGjDsqeqo=;
        b=VkVb1EuKhyG7MyQ+X0LPPZpqFDCEoea61B3Ie5DRYUybRURZT00wk70W9ey3d5CRGK
         ZAVOQes1pQmFR72QR5E4mk3uH3G5IwVd5I67BiTAMkjlpNxM1O9Sm3nywlxAFSlbu9gP
         gUTYwVv5T319qyrnboSNh8JmcRXVh8QW0dVjftm3jyHocxn+Dkn/WMB6NBohX2x53zOm
         Z4Xy+N1QiPGG8c+LfJEwIuzNp3+LJ8o4Y5KSmoonVFZcwtZUCfNRDdrWqR77ONNL4PXO
         JcCadeZjlEa8HLuTYr8s3DVY+XGXH69sQwcf/BIPfbFjwt4e7OSWwv47GFrX/46eKfnL
         /QQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kAiIw/Wxewgodl8iLluidzL/oUQ6ZS2WD1up1WgTH+IBr4iPl
	A3n7Uhy+VNmXrJL/seGeKfY=
X-Google-Smtp-Source: ABdhPJwrWK7b0GYqgLWsVnZa7rEY0y+HmyTAWA/sZZS3USlQUBFXFzLA45oeotTjrHXJlNluYIvbEQ==
X-Received: by 2002:a17:90a:f00b:: with SMTP id bt11mr7585277pjb.10.1625789363162;
        Thu, 08 Jul 2021 17:09:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4186:: with SMTP id a6ls1957220pgq.6.gmail; Thu, 08 Jul
 2021 17:09:22 -0700 (PDT)
X-Received: by 2002:a05:6a00:1741:b029:303:3cc2:b44a with SMTP id j1-20020a056a001741b02903033cc2b44amr34006514pfc.19.1625789362634;
        Thu, 08 Jul 2021 17:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625789362; cv=none;
        d=google.com; s=arc-20160816;
        b=ovURVkuyvP1ZXDXZSGYOKwl6mWifI1rJh6+0VTRiEYy1Y9yXIZkaP47NnIIckkRo2f
         nUKjAyK17xLmpAz4HgxHRMu16/9StfWUUP3k3fsRhBD4kAPcVpuCeBJm+VV4Nt9UOygA
         tfTkYWP67xcVYdYffVsRQs20zw+HUVfdDB52HIQ8Et/QlAiI7AN4p11ZbFh96qBICX82
         GjUflkNVcvYBYVIbNw7AaFi1U4CrWrTtineQ8UaCd/LX471t5lhEziLoc3ntjex51y+d
         N9ueEfdFuwxKPq1LmWzXrv19eTv5g2o6W4AEtEAseJSQLBnQmqH9Bzw88tCsIEwqP6Gd
         e1sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NBrKwVo+96SqJGrve/eeTb19PVRdbKmWSmyW4djSLsY=;
        b=oy0xAmEoTg7v0ec7DMPA29Eg9bXfRSEUuR9H88kdO/cR/dq3E8jdWkhZFoqzuPLchG
         cYc1R8vU9vo5tQqnQn2fio1GEN0scCF3LJZ3uNJ85NL6dx7N2EBQSPkRqbFcKsvJfl9j
         pF+tAGUu0VlgfS26WD0BWNPEB72eCQaO9BSDUiQwzccu3Os0aG0NztcGKZZG15BVQs0N
         BVF6fze7N2/Z0n+5+J8n7bKEFh+z808V5IwSs7EWn3MoiM3R7tQfuqFkt98r9/ABpwkE
         l4gsD0afW+MlOLlzuMY/gJEaj/IfpHgMiFv5S5sSrUDT1wTaWkDAWeoyFKPvkiWnnG3s
         ky0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="e1xMz/ZO";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h17si408726pfk.3.2021.07.08.17.09.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 17:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D6EC461464;
	Fri,  9 Jul 2021 00:09:20 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and newer
Date: Thu,  8 Jul 2021 17:06:27 -0700
Message-Id: <20210709000627.3183718-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="e1xMz/ZO";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Commit 97fed779f2a6 ("arm64: bti: Provide Kconfig for kernel mode BTI")
disabled CONFIG_ARM64_BTI_KERNEL when CONFIG_GCOV_KERNEL was enabled and
compilign with clang because of warnings that occur because LLVM was not
emitting PAC/BTI instructions for compiler generated functions.

This was an adequate fix to avoid the warnings with allmodconfig until
commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
CC_HAS_NO_PROFILE_FN_ATTR"), which prevented CONFIG_GCOV_KERNEL from
being selected with clang 12.0.0 and older because it does not support
the no_profile_instrument_function attribute. As a result,
CONFIG_ARM64_BTI_KERNEL gets enabled and there are more warnings of this
nature.

Rather than play whack-a-mole with the config options, just update this
condition to require clang 12.0.0, which should have all of the issues
ironed out.

Link: https://github.com/ClangBuiltLinux/linux/issues/1428
Link: https://github.com/ClangBuiltLinux/continuous-integration2/runs/3010034706?check_suite_focus=true
Link: https://github.com/ClangBuiltLinux/continuous-integration2/runs/3010035725?check_suite_focus=true
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e07e7de9ac49..c2127595980f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1605,7 +1605,8 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
-	depends on !(CC_IS_CLANG && GCOV_KERNEL)
+	# https://reviews.llvm.org/D85649
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 120000
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Build the kernel with Branch Target Identification annotations

base-commit: f55966571d5eb2876a11e48e798b4592fa1ffbb7
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210709000627.3183718-1-nathan%40kernel.org.
