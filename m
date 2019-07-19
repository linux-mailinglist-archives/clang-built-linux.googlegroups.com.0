Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYEEYXUQKGQE5ZUOU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7796DB4E
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:09:05 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id t18sf23655413ybp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509344; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y7JDuauQ52PFq4sdL/LzBGrGfjEbeBHz3Dr0YvB2gwxYJgKgNDePEjNwFQuPDoEHIa
         arWxganrr2IAtn5WL7kAKg+8RLoy0aeLE2QAYZr+4Gtrh3vpynZT9nW0D2lJpdiBWbF8
         qW0X+xbfDFtg5ZOjyjHqT8zFpHQ30/8/NwM6eBxNfcJDaGg1uGnl5qLNV+ANuAEYXefs
         HGN2HhfKUpnt689Ep2rvHsfNjllpeW0wpgOtD5KqdMv36gkTlpuDoDbBH+daLN5ojmTH
         v9Wg+dhWuCIwmjCIX5s3XUFQzMYK64TbaRLRMPsKLb95WczfPGVOC1cAbvnD/EK7PjVq
         Uk3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=o5QKM4qOvNz/hQXlNqqyCrU6H2WvEVYqvjOtCBoYAk4=;
        b=X2qAzXKuWE9vlH95kCKnC4jnvUKnsgoh6IudAI7snZ8Uzt8WEZSz5NTwkZ67i90auY
         2nTkEGSkcnxTiLkOtqIL6CddMkuHEj+0jhCluedOxBfiJ/ATw3eoL6eiJcAKHQtfEMY+
         dartIi31LvfNfD2vs2jQqUaA9ko7+1yF820HKbFu+lqPC6qQg2E1maxg5eNrdAkoqjuZ
         sAyFmff/EjZGvXxSHhPj3LPyuxazpzahEAsXvHWpOPKOEBXlp1cc4akjNAcZGT5msMFG
         KtOieJQ/crc2oJWxzcZXHa+DCwH8uIi2gzi9eD4YlgcQXDXfdkeVEN6SJVs7Rw5UuRL3
         h0kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GZHi5dMT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o5QKM4qOvNz/hQXlNqqyCrU6H2WvEVYqvjOtCBoYAk4=;
        b=qmNfvn0nMx2Pey81H0OSj0aK3E1LELXGJLNtHU8yvj96+lLRbgtLaePqn8xNVfjtKw
         8AwIb0xqg4tqoKwkaUguG7mPr7DvqiOlsOio5x80bKK99F0wlGwLXuSetvxfQ0CgM3F4
         va5DcNfManxlQNMpCgeTG68OtvUzmAYv3hZqh5v/1nBVh+9/eVQWa8R5JVvxv+EjZlCU
         mlJJuqNHYR9HBROR6bKbXBsW9IruhD8yS1nllOblzUv8r1vUdx1CG24Ovb/cY+oWmk2R
         Iv6LgRSrYeFi1EFVYtRREXSmp3fArUXcyUwCpHNuMgGTwkr2tHV/Qw2rmkeQNZZXKLG9
         KGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o5QKM4qOvNz/hQXlNqqyCrU6H2WvEVYqvjOtCBoYAk4=;
        b=HRw+U3gR3r+TnsG0r9O49P/mmL6iLaPhPKYfGO4uZuqsK0Xwigc6vOOpjxJBVxi+hm
         X0L515D8WqCs/CMFo4MPTttA703zl/gNGc/hOeEMihhkncxLpP+p34qSs4iwcIUGE/wb
         ocu4TF5IJ24qH1ndFAdVC+4HwIjkp4VXl/BrxeR5VqV7EP8qhiRDFHa/ExBEq83awAiP
         +WYLc6y5kgK1wI1sJc4Gv8f3vc23R6W+d6SXtpn2Pz+Gm7vHZFect2ECvnfK+/B7Cbxq
         MJCmIww8jHKT3+JCdTM1cWr32U2bHCtpwQf5mcxr0ftAd9ZqwiFivJ9XyiPdl/glyZLr
         faVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhN2LUfZLNF6IbUmMR0YffMC2a63ZM4elJSNJMrDc/MwKxBhpq
	EPYMdD3jLGvsyutKYiGXIGA=
X-Google-Smtp-Source: APXvYqzkq6Pep/BrSZ5aBCdjWyZpW6V0xmDDEA/csk64dutLU1RiaFTs0o3lZfREgg9lGDD09dVRvA==
X-Received: by 2002:a25:a265:: with SMTP id b92mr19566835ybi.273.1563509344574;
        Thu, 18 Jul 2019 21:09:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:48d3:: with SMTP id v202ls3522638ywa.9.gmail; Thu, 18
 Jul 2019 21:09:04 -0700 (PDT)
X-Received: by 2002:a0d:c086:: with SMTP id b128mr29648294ywd.464.1563509344290;
        Thu, 18 Jul 2019 21:09:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509344; cv=none;
        d=google.com; s=arc-20160816;
        b=pkEu+hdGkSq+CNKRU2janqnXN/bxD7dRXz/a2l7tS+g/dRB0CJ75LJwgtZQnP19gWD
         vq85W1N43DC8yY3bpzRP6vdUunp8vVQq+8qLxm48RZMzQ1myoslogweeHoFd+M2daP+C
         EF/lRibN6eccnX2LVaIF4XvcyWfs4ruawPHJd+Pt/TUU7e5qKheyJp9F9gIFQ/iCQQ73
         PfvJDdm6epTVYpdu0e/0DI3ji+TeZVoDAlxN5E4lSwHHmx6AWGmBxxbunaaMKb5ThLom
         nG4VIos99DozuZM313JNdqWWrhV3e7dfSfsTgUBjvw8Igb6z0/EfzjnuQOG0ohoICfT7
         ZwWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DTpk1u5bSr7glcm1v8sEGtAYEIppyLgUZU2K4XkCJUA=;
        b=Ok5fO6MT51NcFoBNH24fqnCOb7O0QQkK5IHAs4XrEMC6wkO6TK+tQTPIp71EtT1HqL
         UhLyhllXJHUxoXPDJfgZU13FAG6v4wVr5/qL4p2eU8WvRZkmKB6NgWntZKkCaoqbvLKW
         sdZFfAI0SsUnCyIzfw3xGxwAVhDKK8u27mrRBVERdtrJw39e1CqDNStt5XphP1Gv4gST
         UAphCr2l/KPpxwB1YoGAo1hUqglbqUnUsytdkxjQc9XBvf7Sa/+4F1i2qNtr4nA9QmI5
         KwOaLLjnSFSHfxw6flWYhSKmmVVlBoS2F3udGUgmpmplPFlwmxk3ArQ+shtdzdC5MfUR
         2SwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GZHi5dMT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t132si1424936ywc.0.2019.07.18.21.09.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:09:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7162C218BB;
	Fri, 19 Jul 2019 04:09:02 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 044/101] kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS
Date: Fri, 19 Jul 2019 00:06:35 -0400
Message-Id: <20190719040732.17285-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040732.17285-1-sashal@kernel.org>
References: <20190719040732.17285-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GZHi5dMT;       spf=pass
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
index 38f2150457fd..d439ccd564ca 100644
--- a/Makefile
+++ b/Makefile
@@ -491,6 +491,7 @@ ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
 CLANG_FLAGS	+= -no-integrated-as
+CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719040732.17285-44-sashal%40kernel.org.
