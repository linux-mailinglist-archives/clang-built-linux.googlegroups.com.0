Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFXT6TZQKGQE5OV34TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 869B6194C32
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 00:24:07 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id d2sf6196227qve.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 16:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585265046; cv=pass;
        d=google.com; s=arc-20160816;
        b=YywNZYPMZqMdw8gYanQUfAZ89vHZut4xegF5zetc1p250C063L9bzV6mNEep5GxFi/
         YVESlLR4u7ZUPVoQkka5HGmNuYI9IpwMmdiI3ArrMF4OaZJPrdVzcupr7HCdj4w296lP
         cpnEM2T7HJg/c7/H6wjlxnFjx2zv/ac1CD4Gyr46FDxomhDMbgSVQj3EFKMsMM1UN8NJ
         yrj5WqZZ3S17B7yGeoaTjmE9PEuGCUfQLYDMwPsiVDeLIyjyHuPD4meS/uWsC1p6Nmo3
         zJ+b8hjP7+Gt/SiqXScwzjZC8gnJ3nqKusJCcAU7cxfJ4xOnndl9vNRecDZdTncNL7XD
         Cppg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BjK6gCvhmn3O7WvwDzt8RzqrDJb2rlMchrUDdwm2RW0=;
        b=EjYlH5M2jdqoLz9gsAc94y4QxSZHb4y3oVoz4o/yP94OmOlQ/LVCGgz5M/r1xf0djw
         eqV95DtdmexhtW3Pou9mgEMWaWJTdRqUEeTQKKgB8GuSn0z+o/k/pwukO6yM092CV79C
         OexIqgxoqlu+XE2XJkaGrvAwf/ymYSowxu6RfNQcrTxFevH6MdszFABGMWEaL8/YiR7z
         87Hz75IW7+IQQ9rKbv2JGb0ZQ0M5qklcWka06T/ZEKTx22sejS0YwlNgEqRmAce5ecup
         Le+9BeshWYmh+K97pNuEk81Ihoj00HY0npBHFNVA3oDpe9xtMePMf8CSYdZhfm1j2ZiU
         QTMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cXGm5OHw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjK6gCvhmn3O7WvwDzt8RzqrDJb2rlMchrUDdwm2RW0=;
        b=XWBqrbema64DosCedTMPzGxR0aAFIabVWR9HfJSKByX9YNPttioZNhEB/564V5wLN+
         FTbs6ZlxSuzLNuXN/n1fTZmxn+uoZu0X5aHxBgNeaej0855y2G0wO0CvdFfQoDFQwdwb
         GfJN0XbjyHKXKtqMCS/hwQLu/zwNU7HhUZ0OVZsyBw3jihU6TMJQSj+PSwDQcLCFnf1i
         2tPYlv8zJqCVOrps0rOkTGM6Q5uhwuHcHlzpSWRLt93zlaEek8ti2z9yCLIn1ep1bVPo
         u/TM5fHamECM7wK9GRojZ8CqvbQtt5SPSxJukQq3M6y/9F43AP3shklKLSHq4n1fU7Rw
         bBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjK6gCvhmn3O7WvwDzt8RzqrDJb2rlMchrUDdwm2RW0=;
        b=teikIF+F5g/4Q0OVlj4oYgXb8FH2ccsc1ZkzC3lAlACIKjDCH8YT2E31ArX9zbg0T/
         /4c9sT4+m2ds3e/84O2Xh1MeTWDUv6+EN83uywwphr5/cczPEsC3vyFe6PuxNPr6PlYD
         I3nZmo+uNhc0/bxE3WL059xSEntIgfEx2vN9QoniK/QvhfnXQp8vuIpY6ekztbb4pSpb
         P5fz950appbgbSkn5bvA4OObxiy6gRtxwqGAIOwtuKDE3YNOmS6jb6gajE+DYsvow4I3
         WzM0hEMnvRzhX230VLjKsVGh3A8pYtFS03DvmaUMNtcy4EJe/8PxPKWSquXfn7Tix9er
         EICg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1nyJEjHXb49ixMaot7QiLnxN3VSkh4yax80jaPH1SPUqS8cn8s
	Iu3RGFdBLcjp7T9xct7TsFA=
X-Google-Smtp-Source: ADFU+vsDbsA5NtyJ6Nk0RXCqlD2g5xq7X9JkCB/stwBNMHxoh1mRIbaTYw9KhNY5YDeeEJ/kelJJ7g==
X-Received: by 2002:a37:8503:: with SMTP id h3mr11545144qkd.198.1585265046585;
        Thu, 26 Mar 2020 16:24:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2a05:: with SMTP id k5ls2902085qtk.3.gmail; Thu, 26 Mar
 2020 16:24:06 -0700 (PDT)
X-Received: by 2002:aed:38ea:: with SMTP id k97mr11277681qte.327.1585265046019;
        Thu, 26 Mar 2020 16:24:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585265046; cv=none;
        d=google.com; s=arc-20160816;
        b=fq/qA1PyEaspsZ42KtA+yNw1WhOzSpmEE8uHKJ1L5zaWg+y84GPTiblzONhCajVMLe
         +VMJimHYbKl55BR7vYFZBdIi2l7dI4intvP04rFi6ymGNyS17U7/f9F25vSvMWqIRI6i
         BnxxykTy6yUYe0ow7ef8QYPEfs7cwsra8+lx+ZcV+ozCfdI4nfI7nJjcM42FnlgHQE0+
         x+WQAndDWBhxPXFkGZfSz+HYRMoliwEm3TbhRWmhId7eMr3+MQ9wXhAS2xLIWsuRXIuk
         WSOKrIlr/Sj6eaENEoxoBFq9lk3wcKS2Uu6pIBrn/8tFNnu0FfKLUE/Gmb21vsAtRyT6
         P5Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l59Zf+P8oJMpwNJeufUgJnFvShqBddOuFPfzlRPD+XM=;
        b=VjcYZsXhpJSCUUubtamLhOWxBXSOXsaS5tCuruebLRnjVR40WWZ+MGWqvbt48ghQyp
         qq4iaj2polEVzpHfUPbxrVsUx0u2JPBT8YBeqdv4+VkyDHeeWbpmM5GdOR3BZEQJDmUe
         zdO95sgFFVhpqIKFqep2bp4sPhI+2a6+yTxXRDHSLHsJl5p2+zn16g8FGMRPTk0Um2o4
         ZCmtw2B/xBwFk4sRqT3+HzYJFV8wmb1Sbci/PGGs/hfFhEALHSYBrlGtCJTIGzGLfgym
         EZTipymaSI/TpQqnffuVu97k9W0Z9arVLlyeQyLyTwYIH/UO2Id6ZN6ZW7E6+oLbnOMc
         zUeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cXGm5OHw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p11si239153qkh.3.2020.03.26.16.24.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 16:24:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 26E2F212CC;
	Thu, 26 Mar 2020 23:24:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	George Spelvin <lkml@sdf.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 06/28] kconfig: introduce m32-flag and m64-flag
Date: Thu, 26 Mar 2020 19:23:35 -0400
Message-Id: <20200326232357.7516-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232357.7516-1-sashal@kernel.org>
References: <20200326232357.7516-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cXGm5OHw;       spf=pass
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

From: Masahiro Yamada <masahiroy@kernel.org>

[ Upstream commit 8cc4fd73501d9f1370c3eebb70cfe8cc9e24062b ]

When a compiler supports multiple architectures, some compiler features
can be dependent on the target architecture.

This is typical for Clang, which supports multiple LLVM backends.
Even for GCC, we need to take care of biarch compiler cases.

It is not a problem when we evaluate cc-option in Makefiles because
cc-option is tested against the flag in question + $(KBUILD_CFLAGS).

The cc-option in Kconfig, on the other hand, does not accumulate
tested flags. Due to this simplification, it could potentially test
cc-option against a different target.

At first, Kconfig always evaluated cc-option against the host
architecture.

Since commit e8de12fb7cde ("kbuild: Check for unknown options with
cc-option usage in Kconfig and clang"), in case of cross-compiling
with Clang, the target triple is correctly passed to Kconfig.

The case with biarch GCC (and native build with Clang) is still not
handled properly. We need to pass some flags to specify the target
machine bit.

Due to the design, all the macros in Kconfig are expanded in the
parse stage, where we do not know the target bit size yet.

For example, arch/x86/Kconfig allows a user to toggle CONFIG_64BIT.
If a compiler flag -foo depends on the machine bit, it must be tested
twice, one with -m32 and the other with -m64.

However, -m32/-m64 are not always recognized. So, this commits adds
m64-flag and m32-flag macros. They expand to -m32, -m64, respectively
if supported. Or, they expand to an empty string if unsupported.

The typical usage is like this:

  config FOO
          bool
          default $(cc-option,$(m64-flag) -foo) if 64BIT
          default $(cc-option,$(m32-flag) -foo)

This is clumsy, but there is no elegant way to handle this in the
current static macro expansion.

There was discussion for static functions vs dynamic functions.
The consensus was to go as far as possible with the static functions.
(https://lkml.org/lkml/2018/3/2/22)

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Tested-by: George Spelvin <lkml@sdf.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Kconfig.include | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index bfb44b265a948..77a69ba9cd198 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -40,3 +40,10 @@ $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supporte
 
 # gcc version including patch level
 gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
+
+# machine bit flags
+#  $(m32-flag): -m32 if the compiler supports it, or an empty string otherwise.
+#  $(m64-flag): -m64 if the compiler supports it, or an empty string otherwise.
+cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
+m32-flag := $(cc-option-bit,-m32)
+m64-flag := $(cc-option-bit,-m64)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326232357.7516-6-sashal%40kernel.org.
