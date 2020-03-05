Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAXHQTZQKGQEJHHUMPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0601D17AB78
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Mar 2020 18:14:44 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id w4sf3134007pjt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Mar 2020 09:14:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583428482; cv=pass;
        d=google.com; s=arc-20160816;
        b=PNcJhhApKc1opcWcf+BzF55qO/3mqloDw9qe/6ZPd+ZBM7kLTj9W4y+tNCt6J7xlPQ
         Kn12TZrYqWOM6lIltqWC8fGHTR1coOghjLWBdVeWqfUMzY548Jj9/zJ+48L9H2nF6Zn8
         MLyP8GBtgkILlWKljmcvvWHBv4s7vZfsy7IgXwttMeVMXcOs4pY+mIoj1tnhH3djcLJ4
         k566vP6T7T18P9mTZLULoimHTnn5Zd4ktMvhusuOJAibQe2pxP9Pt2IelFCDD4a9LUOe
         ajfenz3IrRnLnLZsDUhfDNLXx5YX5E0RDb3FgX9vAeaU777QOKtdzhb7K86hLeyKVm01
         NA9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Phz+pFXPRut6d3uxnjNVAfFNv01xM+hqKzZ4wu/1vr8=;
        b=ONxDd+ELkCtoSH7PSrvLV7+Z6UV8hmm5QeYf1kLpPju1A4mcY/rbFXfGhRHrO8vkvp
         yoNvDzzvThbdGNtAFkkUT2bJH+Zn6SJxyATCd+wSRHDDl3EadzjIdEipmAf8uOhmk/Mw
         zpKgM5eFut+xaemFEMD+C/f6JgeQXMDjuPJzLmFKF9nEkee0bdPgrKHxqJBmzGSY9/XA
         pvblKmaiVSDXpxpQEpUwrlGnDsdU5tbG2XGcWg9OMkMau+l3em8vZaF+ONmAIh1k5M94
         WY2M0rHeFZ7vRlV4BW/lirZ5y0nN+k1CnQvzzH8GMyAJA4tPyoxGRb512H3TBgF1qjco
         WIRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lXi2eyLm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Phz+pFXPRut6d3uxnjNVAfFNv01xM+hqKzZ4wu/1vr8=;
        b=hB+Ae+Iz7ibojR+vL+nkUqXM71MOHk+lyiahk8JVLG12evQLIj4gNVmeNvi+mErOJZ
         /8qVbDpwFV6PeOx0D/GQhL/bR9gwy5HZK5SIux6vHVpRJIyU9t25Kf4xRl9mmqsjSL5Q
         J1CdosrD8O8orC/QFrp10ByfvFEFdgbq/yL3NsWXfqemAwVVqTkABnC2M3ecHCE0DYeA
         d+fAVIinWMS8S+VoHDMpTyu10t5spxWf24gF9aIZts8gWfwO8bVu0/0U0X0COBfs/Vap
         LYYXngehhxHfn4wtS1ZFvBd381fyA9P6dgFlPaIEmF5lLC5CY2Ag3D93pZ1mqQq3pmWk
         zzZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Phz+pFXPRut6d3uxnjNVAfFNv01xM+hqKzZ4wu/1vr8=;
        b=WHnpwuavfCwjFWbsyXJJfRbGY4Zar47o3fajKe1g/RjPJLTOw4CC6aNj4am0KzqMyD
         a5SacChbWeGYIrXXX3ofI1Qcrl2OtgnpO6gGjToDiSOhKoJQpfXU9mM3q5NBLUSY762G
         3+toY7g3H1YBEhmEfAYGM5WoHQ7NyOMH4gpzYOi1jCcDK2ASK1j0r9K61mDUAevcKS9C
         79i9fSRRGheF9sf7UxbIdAM5LS/DPRCIlrzcfRIwNsbJ3Lp1D1e37H2bPLCK+nhz0SrH
         J6Wly+5PlSvNgj8YJmLPdCTIO2HMiV50rZbsjwh3CLngdvej0WnyYwNCh2xgPsn7LfE3
         xbQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3aNU5sEaxiOD5/A8mJ+z/JXV4M9Vk+UFpbzO31TqoNrjlkxykU
	91HGU8d0bj+FIFIvKZrzgz0=
X-Google-Smtp-Source: ADFU+vtXN0I5nX49NSX5A/B+w9V+OIHQ/ofFdAo2jSGqHOeLq9Ck/qy32i87K6jrLVdQHgcF/eHtdQ==
X-Received: by 2002:a63:e80d:: with SMTP id s13mr8836573pgh.236.1583428482710;
        Thu, 05 Mar 2020 09:14:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:898e:: with SMTP id v14ls1176452pjn.3.gmail; Thu, 05
 Mar 2020 09:14:42 -0800 (PST)
X-Received: by 2002:a17:90a:71c1:: with SMTP id m1mr10008864pjs.34.1583428482205;
        Thu, 05 Mar 2020 09:14:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583428482; cv=none;
        d=google.com; s=arc-20160816;
        b=0h9ot+iVmlEWYyzElDmoIDU/zFtV9CxYMVtA18l9k10f9ws5uKyuRhuDh+/wK7cxwW
         A5rl80K80t49bLwpmGhpJ1vkUY66+Y32OYaNlkH6F4nXmFLU2egVIQ5vctzYnXte+c7+
         9xJWTMCVHMk9sTplo3wE1mJQFXfWyzewG1Y9A30i6WiNRMqR4tYvRxFwPQftNqx0eI3t
         eJpKZMwNF9KVd/2OEQwXYFPd55wgqgKmEoPokdSB9tWjZBl5xy8JAQXJH+zg4401/CFI
         0Rw9EC0lBxT9e3MT+/Sqs/X0fhXxTHcR1H2nJCUTlXpKRzs8j+T1/EMCBxKyRH0xmT1l
         WoAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BWcupW7xgCbv/dbP7KL2Mg/5Ir6XcpddHRhwEX9trIw=;
        b=g9lksqI/Tp+CfWZbMx+lsapSQ8okjMQUaDIlyb8x25jy44B1ZIm3x1tQXC2FBPKW6D
         HuPn3SXBnLhmTeKtJYJVY2hKSU9MzNMHBNt5B7zKVte8vX+YkqEg8fB0L693G2cyhv9t
         vpPGHu0AutUxEmi+CIyGkq5hBiHnUZ/3CWc7uQYHml7jQ0Xj2TNK6tm1wjEMCChMB3iP
         v84MWtWhBZpH6FT/7uJFYUrgoFh3SGR9VsUylM5wHW8Cp4vkm+1As+TkW9BDBhwEipBs
         EE3nCnBP8G+NHsFgsdAIF4hrSnsiRIfOzHF7UDzlyXWV+8f5qVa67wAYxfGrUatTjNvm
         /iHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lXi2eyLm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c13si321824pfi.3.2020.03.05.09.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2020 09:14:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC84C24654;
	Thu,  5 Mar 2020 17:14:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Paul Burton <paulburton@kernel.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.4 17/58] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
Date: Thu,  5 Mar 2020 12:13:38 -0500
Message-Id: <20200305171420.29595-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305171420.29595-1-sashal@kernel.org>
References: <20200305171420.29595-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lXi2eyLm;       spf=pass
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

[ Upstream commit 72cf3b3df423c1bbd8fa1056fed009d3a260f8a9 ]

Clang does not support this option and errors out:

clang-11: error: unknown argument: '-mexplicit-relocs'

Clang does not appear to need this flag like GCC does because the jalr
check that was added in commit 976c23af3ee5 ("mips: vdso: add build
time check that no 'jalr t9' calls left") passes just fine with

$ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/

even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
vdso code").

-mrelax-pic-calls has been supported since clang 9, which is the
earliest version that could build a working MIPS kernel, and it is the
default for clang so just leave it be.

Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
Link: https://github.com/ClangBuiltLinux/linux/issues/890
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 08c835d48520b..3dcfdee678fb9 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -29,7 +29,7 @@ endif
 cflags-vdso := $(ccflags-vdso) \
 	$(filter -W%,$(filter-out -Wa$(comma)%,$(KBUILD_CFLAGS))) \
 	-O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
-	-mrelax-pic-calls -mexplicit-relocs \
+	-mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
 	-fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
 	$(call cc-option, -fno-asynchronous-unwind-tables) \
 	$(call cc-option, -fno-stack-protector)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200305171420.29595-17-sashal%40kernel.org.
