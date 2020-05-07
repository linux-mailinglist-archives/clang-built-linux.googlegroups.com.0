Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFVW2D2QKGQEXFEFBPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FAB1C8E67
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 16:28:39 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id z1sf3403869ybm.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 07:28:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588861718; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKoA7r9mdv6aPhiZvX8EEJf53qvTkwZFh8Rgs7OUzk3mhfCz5kKo9F21de4/Q+JFbG
         wdSfLVxOWQTpkU1uV2u/T/Qvp4UjMZZUQnDA4wN4yoh1JZgPlyiqi/+jWT5CTMZMy8U3
         kO+0xe38rjXmW4hKx9M5yKnwrNwyQiHRCeD1xQB0zxMBIyaTCEbX8ASJCH+Kx/7QiujO
         Qj9vaJEQLym7aROU+V4i+qTJY9yQtPCgyIsXXClTccLodyiPy8UF/T2Yd/S/jzrNF3bc
         WWvx8k8OZ8hNypQHUWrgyfmuuT6ZAPpgg7j/3IiJDfSwNNC5FiAZ0L8V4DDJYb5dsPZs
         hI8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EhhkY2OEd4evyCcrhQmY0NtD6rz+BUGA/9K3Y448V9Q=;
        b=eccxFcc3l/B13i7IDFp1XRNwljSEjcVspxJLrjFjRu/fVi2rws7uuo/hvlJ2btj0ok
         38rmHrr/lRF3eKguIyP8qWTCf9XtOcSp17yvEpMSJR3d98ysCkVzKb8VNgxyyB7Oh2Pm
         FOoJF7yGrmHROR7aau2xiR1z8YK3CX6B6mDH5uxeb2o4TcoVpXsCxHSnkzk0lUhf66Rh
         zWP6ra752sGWJZN+8yibpu6NkmW1/pnGyR4IBMIlSBH6urvKiJXyrksPpuSrLly6fH29
         YqVwZTlhmkEYUWt+MMEvf1Kn6K1xb6O0uSQDhD99Xe91eXdW1FGLiLkNbgeBHLPzbRao
         0plg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tXNFJl8K;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EhhkY2OEd4evyCcrhQmY0NtD6rz+BUGA/9K3Y448V9Q=;
        b=UmI5Yfuz0+5ZL0uhbR4qxdF5XLhAoOnltfD6fprhUUQ2SvUVMaHmxrYoLzsZ8kGRcR
         EDraHmQWLtxOXEwqg9aML8yG1CzbdKxJJXcrSa4AX3qY3Q/4abG7ilJmxM88hmAVpVE8
         4J9aGPL99B1sUBYHRo/I/r0VQr8TYEjXLLcfwHw6DDYoVBQAW819FO3vl6oZRU3/A8iy
         qbqNFYJ0NGP4sBRdsYXd7pYrP/HWaplKXOyht65me0a+8aTZSavMBQGQi4I1eQFBVpK6
         r/IE0Sp12rLVaTAOpZTWW0zF3PppS/TLZKhbOAofH58lqgQxQ4tpgTAzt9uD/eX4OuZk
         0kZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EhhkY2OEd4evyCcrhQmY0NtD6rz+BUGA/9K3Y448V9Q=;
        b=ndHwe9Q/K+p6YgQQjvedLD9U2GoRCrPaF3mBHH6ORjZOZDj6mjYfWnWhiOTfgEepKV
         POXnxVEqZ1axKiLkPeJR4nqZQYFUVCelpuunpNiEJJp63eIB3VKmeYKZBl1OzIu5DH7c
         YJfiVJA8KhA4L3TyVdqBbJryuIkqWpg+gytMKfK0mXb8LrMuRxIPjNpBdgOC5+n02MmJ
         Y2yYGCLpdwH4e0rRYJQ9xz32eaOHRaSjfPOXnGn93tcsi4L5qjDeDHI8MeE2FfravZok
         wI+VV6oqme6gx7Y8eGNKsuCYs/U+odiLh2zd8ECkbhmkENyuAT3EhOg3mZcJ9Pz2FTyX
         utdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubhia7QM+lB7jMnJs2Rm2aEtu55nUfarEboxfKin6K7b5VEAfWO
	tqieYOUtEfilqWc/PQ5RkXc=
X-Google-Smtp-Source: APiQypLtaXRkqNLhZShWvLOZB/4jFA+rmGOHiLNg3SkJOJcy4CWqFBQaQ2fQmcMaMxJibcNmbylkZA==
X-Received: by 2002:a25:d408:: with SMTP id m8mr22932333ybf.336.1588861718400;
        Thu, 07 May 2020 07:28:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:76c9:: with SMTP id r192ls1370315ybc.11.gmail; Thu, 07
 May 2020 07:28:38 -0700 (PDT)
X-Received: by 2002:a25:40f:: with SMTP id 15mr2514015ybe.60.1588861718052;
        Thu, 07 May 2020 07:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588861718; cv=none;
        d=google.com; s=arc-20160816;
        b=VtOJkdpWl+qDH6HRCND4Cb2KBcFUuGulWJ8C/zOpI478yPdChoiFyy8nm5rJnzBbFU
         UjRuirxBqADcbEDoG4iJdd2wWU9e1mOiq8OBOOY/jgMxDWUu8zGGnq+6O3dodPg+ENE/
         RqWXBEpfwghL25UwSr1yEW0LtQsECNKXgq5FoALoYkCYHZ0cSAA43VRr1pjAoEdJ//9p
         5KGLI9xuNZxObfQp+ng3w4pX0TpiHFCA439VLSUDO1V9z1nZQ4UpiI1mFef2AQdsFP+a
         jmmIp7JN1PTsRe50YXFpjjmcalmcH5awBOUGK+uLet+p73+XiFTOElOHf7Yjx1PiTH1Y
         86/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2mFCGtFvpnBsxJTa06BfZNPWdvXCAwgI5OUr+zz8y10=;
        b=0ND2513JyiKWyK4fgcWYl6l3dK2cT6xQZiGVgXdpBbiC+UeR2Hbj/rsBjp3vDjICvd
         Oq4GqC3fAApIDy4iM/4fd7S+taQgbMYAVOOwPoIlZKefNpz/orVSQmbLbNoQdHi3tXNN
         3hVT0DDeqj9xbZJs/HlO1q1UtPHMyEn+xPhVNFgWCxAEGV1QOqklWtb5VkgA+f5mNPZP
         PrUbMvRkWf5xmFJwVUiBIKWC4RPh+xHopbB44CeIzZiqo//NFg44LffoQLqWi/5F9q27
         BH1A48uT1rlCmp4DENjE/JY70GTk5y7TVkEGjNvd9V/VNOLRYQ/YYjYJ6A0zzVWBHPU+
         lDiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tXNFJl8K;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r206si402916ybc.4.2020.05.07.07.28.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 07:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E170020B1F;
	Thu,  7 May 2020 14:28:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 05/35] riscv: fix vdso build with lld
Date: Thu,  7 May 2020 10:27:59 -0400
Message-Id: <20200507142830.26239-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507142830.26239-1-sashal@kernel.org>
References: <20200507142830.26239-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tXNFJl8K;       spf=pass
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

From: Ilie Halip <ilie.halip@gmail.com>

[ Upstream commit 3c1918c8f54166598195d938564072664a8275b1 ]

When building with the LLVM linker this error occurrs:
    LD      arch/riscv/kernel/vdso/vdso-syms.o
  ld.lld: error: no input files

This happens because the lld treats -R as an alias to -rpath, as opposed
to ld where -R means --just-symbols.

Use the long option name for compatibility between the two.

Link: https://github.com/ClangBuiltLinux/linux/issues/805
Reported-by: Dmitry Golovin <dima@golovin.in>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/kernel/vdso/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7a..a4ee3a0e7d20d 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
 
 # We also create a special relocatable object that should mirror the symbol
-# table and layout of the linked DSO.  With ld -R we can then refer to
-# these symbols in the kernel code rather than hand-coded addresses.
+# table and layout of the linked DSO. With ld --just-symbols we can then
+# refer to these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 	-Wl,--build-id -Wl,--hash-style=both
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-LDFLAGS_vdso-syms.o := -r -R
+LDFLAGS_vdso-syms.o := -r --just-symbols
 $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
 	$(call if_changed,ld)
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507142830.26239-5-sashal%40kernel.org.
