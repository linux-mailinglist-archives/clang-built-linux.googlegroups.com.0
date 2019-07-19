Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5MGYXUQKGQEAIKZQCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8526DC14
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:13:42 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id j186sf7609196vsc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:13:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509621; cv=pass;
        d=google.com; s=arc-20160816;
        b=rYBIeInwdmG+Or7IGaVZLvea8rKLK3gjJJJMptvBllp49FrJoj/OC37qYNwSBDXy0H
         mkcFF1lyEKF6x+mKNJrw+bOeKGxTXvxWfbVBX6Ul3EgzRuOeBnMA+26hTf/axffz07lC
         9VcMSkDo2rTDhhuXsXujwEYo54A/fmvFVWRM+2Kx3qCkri6ZnJaXO006syq5bb5n2piA
         EhnfPN3EidZlJRrWPPZ6tSUiUsfv2iaD8QzJka2kLDh6t7PHj0vmrztupkvx05SEqT4J
         MOKBMF18ej1uOtJ6nMYRbrWX3wQE/QIKCYMnvvmtRFT7JLGW7Hpf/omsSIc14yTxJ9hq
         FkOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=46QaO31BKtoNyJtrQC9wZKSJPby7swI4K23sqvIPkA0=;
        b=LKqk9tHVe6dd47GqH7BPffE79HzUSHZxi3b1UlmHOGUmlLJ7B0Z2HMsRAM4LNLY1Op
         2xDXxqeOXqIEWv6StqFOQgA4yU7Zl3+F1vknOIrX946v5F0nzXTK16q0XuwWMPiWFN23
         mhBGRmUCbJcTODusyE0gsA6mZO+AaNyjYBbo5GIEE5pa6f6toX6dWzZcPJa4yqQA9uf7
         KScOVElIQupxI/UuDymCpGbX4sb58GBh4TNWoPNe0MVyv3ddbRBHMeWwHsNW2ha1x2Bn
         N2gkbU6RN5HwxC23jSYsM/WNBUBwIsR3RQBKijKOCcL+gr1NgH7wHObgo2q0S4PzEBdJ
         JyNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uIxEjyJS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46QaO31BKtoNyJtrQC9wZKSJPby7swI4K23sqvIPkA0=;
        b=hJaDKeubEdamyAboBLuQGJe1Nb2UfEbXDdeaqLrKoWCJ7jxdR1Zqm17zMn1TYUizQ2
         g3pisa6XtlM47ktXg3ygiYAdCc+vRGziOf50roel3CTTz2k4rWh1GiIjBvyPQF2QakpR
         dx05PdhqT5JxN9BaBchavtOcnd2UK/SC3u0C0+5pu8IMHGiNf2VCqLmhIy/oY+ucMI61
         3yX84zipQjCSxMu/CJV21eeYf4Bs1IZwj28jABMRf9yCLxVOizJ9b3EwE+Udh1FK4Pxm
         J37OKRRDw99DTBg6kIljhdf5bhM+U0Y1nH503U0Jx/MI0IuXnnaP2vGgOHGkNEBlavJj
         xuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46QaO31BKtoNyJtrQC9wZKSJPby7swI4K23sqvIPkA0=;
        b=KelQ16h1cGjHevUTA76WAixtg3NWJqufi7ogixp1Sh0sGVeBle3uF56JDN9tH8gGpV
         DuaxOJjcirTKxG+TeN56NkDXCkBCRFZx5g0abXEp1qmtuHC9Cq+22m/6IgWI4jphtSJa
         0sBsF9HdMC30aYY9/Y993y9zigeKzjkYdl3k2hoz4vUZsoxibw3B7t3V2F2AM3J3ODSO
         oX53PmDrJtAuBHYOscSvndGJsMckH3x4vA/pQT0IBOCvV1lrCw5A2FeKWVAZsqJQ/5YP
         1dwcJntw9Strx4RMOScx8TPDIqpTZgrhlw16TAFwj0byrzR02kQiimq+TeQ6Xba1DuPZ
         IuZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWeX+hVBTETaeT9bZd5/AtqadNostZh3BPVuwnAYG/cTnEHQBjA
	Y7CWAm0s3VaV//M1rIdrhT4=
X-Google-Smtp-Source: APXvYqwn6VlBLTKR4kx9HvKx6yi3jrr/jZfLBCgrd5UZgGWDrkV9aTpKG/NUCrJe+GjUNrxbuoDSag==
X-Received: by 2002:ab0:618f:: with SMTP id h15mr29847232uan.17.1563509621204;
        Thu, 18 Jul 2019 21:13:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe99:: with SMTP id b25ls3849563vsr.16.gmail; Thu, 18
 Jul 2019 21:13:40 -0700 (PDT)
X-Received: by 2002:a67:d410:: with SMTP id c16mr33324685vsj.61.1563509620969;
        Thu, 18 Jul 2019 21:13:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509620; cv=none;
        d=google.com; s=arc-20160816;
        b=wtnaT8QIlJ15D+KGF4/zx9g6GCeDLMtwH6nphY3p6ernGzqCBkTS/pqUAFV8czW6K3
         pHcqKKb1wCTHJ6XPVCSyIMT9sg22axHLowpbumxAjft3jSNHJ7aToodjimpMX5hN09HY
         jlBFndPaNGXu2iD365EbwPlK/UxER1N3fi8mLDvJq8+P7X6W6xX/kgb0P8EDSLWK1Uc2
         w903o51lbwRBYBooiosBfNu1PtMHBDHTpXIc0B1iGUE6GF+lyexVRsRnHX4Q7ChjCVso
         vFQk+f70NnqrwAlylxW3phBHY1HZPyU0N4qW/8H96SljjDKyROVHL6NNlfl8RrOhJ2g9
         aqxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qbG0RdhtvdE+D+w4f426/H5wkBVjLs9mGlmvXAYBVUA=;
        b=WRxxfS7vML3VBZYT9gQoiMTO+jBkG6dhEB9v0Xc9dPe+ppaZKUMZyCJxEEOlei2nrN
         OIvIKStCWCP16tjXpf2s3kLgVCgsC3KA+WveahvbeGoCfI9PCe6ATMAVwuK7H2lCVOUS
         CM8rpRWa5vT6fbtW3/YCDNlQ/CFI7HAtdpwaF25ikC8XInaouBeBCl59fZsM7A4MLoj8
         ZRTsKBHgXyURNsq6jnf84ky3gIgusBH/12uUw5OAk3HsDXgv1F+00fE3zX9DNMUMhkEz
         lfFueZ8UHWZH708G2PYQz+RjGeKI9x1K7vuv22O00sYLLbXcCSNEufq8u/Hwtr33T+fG
         8Rcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uIxEjyJS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u189si2107435vkb.2.2019.07.18.21.13.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 015C421872;
	Fri, 19 Jul 2019 04:13:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 21/45] kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS
Date: Fri, 19 Jul 2019 00:12:40 -0400
Message-Id: <20190719041304.18849-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041304.18849-1-sashal@kernel.org>
References: <20190719041304.18849-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uIxEjyJS;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 589834b3a0097a4908f4112eac0ca2feb486fa32 ]

In commit ebcc5928c5d9 ("arm64: Silence gcc warnings about arch ABI
drift"), the arm64 Makefile added -Wno-psabi to KBUILD_CFLAGS, which is
a GCC only option so clang rightfully complains:

warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]

https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option

However, by default, this is merely a warning so the build happily goes
on with a slew of these warnings in the process.

Commit c3f0d0bc5b01 ("kbuild, LLVMLinux: Add -Werror to cc-option to
support clang") worked around this behavior in cc-option by adding
-Werror so that unknown flags cause an error. However, this all happens
silently and when an unknown flag is added to the build unconditionally
like -Wno-psabi, cc-option will always fail because there is always an
unknown flag in the list of flags. This manifested as link time failures
in the arm64 libstub because -fno-stack-protector didn't get added to
KBUILD_CFLAGS.

To avoid these weird cryptic failures in the future, make clang behave
like gcc and immediately error when it encounters an unknown flag by
adding -Werror=unknown-warning-option to CLANG_FLAGS. This can be added
unconditionally for clang because it is supported by at least 3.0.0,
according to godbolt [1] and 4.0.0, according to its documentation [2],
which is far earlier than we typically support.

[1]: https://godbolt.org/z/7F7rm3
[2]: https://releases.llvm.org/4.0.0/tools/clang/docs/DiagnosticsReference.html#wunknown-warning-option

Link: https://github.com/ClangBuiltLinux/linux/issues/511
Link: https://github.com/ClangBuiltLinux/linux/issues/517
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index c80dad45334e..60b562dbd97f 100644
--- a/Makefile
+++ b/Makefile
@@ -515,6 +515,7 @@ ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
 CLANG_FLAGS	+= -no-integrated-as
+CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719041304.18849-21-sashal%40kernel.org.
