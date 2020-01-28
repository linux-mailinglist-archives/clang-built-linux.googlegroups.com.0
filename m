Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBNEHYHYQKGQEICYWAHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id AE28B14B82A
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 15:22:45 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id e62sf8630273pfh.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 06:22:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580221364; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVXtlTLl8EILMTaXXgNnXPxlzW0DryWH59qbosiPozw+bLLcLOucq1jhA8wDQ4nYBO
         ngYT6hAKMnQVaPcjdApdiisDXWJK3hslKhCkSVUWPBHSvGeHQwwjgeSBX/aGYjQOYoG/
         2M/FNJHhp0lowPGhG/qM1cCWHzkorXIf4p25eKOaqvFeHlSdmSBfppW1+mcgdNdWFAGW
         HYhpajawS1SNzR8COupuYT7lkA/ljbklYrqjQBttl9w1QSY5jaFN40FEzilL25E539As
         ijLtxZoL35yc1C5dg0izTfXQfk3rkf3zIn+MIa8N1bXAnmr3BlxDSorygc+GyywEEQCj
         OrjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=52L7zfupaMC4jdUYJ7xGEcwsJjNU6cJkHWLaJ7DErtE=;
        b=DvWBH18TH2vYpjY9901T500da4FLMLKXJfwWWl9I5zOsZTcq1vnOOlRSMAmRAnLJIg
         F1X8lY3sE3TxfuZ2/t69GFt/1XpDnouzW69iVUhZkRCIo+31/VpRwiFfoetrvQ6Hl5ic
         ipgb0a9Ee0Ul7kKXIMLpD5MeU051wKYPkjLQ63xA7+Jr+g4bNSKv1hRo6esQw21Z9da8
         jaR/JV1b5Zf7vBpe52jfpafmQ/rW4VBaGtLn1ieZZlZ6U9ayozk4UMikENgmJtqm7Iuv
         NJTmIZhOdA9TSZNkX7zewjcIku/eiuWNi1rkouZl4saHNwj1yxDFyOeio8g+bT7UR5ic
         UIaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lfySTc3X;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=52L7zfupaMC4jdUYJ7xGEcwsJjNU6cJkHWLaJ7DErtE=;
        b=QPlUcJwbl+35GaEUaHYd3Tdk/gJNUe0MvRl1m4D5PFrraFu5LTQvPuezImrsm1Nzpm
         BhMNWz6nWKH/wy18w27Jcy6hfzbTOicmcHXeZdhuK+n9Xy6YR4B4ry5xIM6dpPlB5Jij
         R5j96jCxrSd16+STzJSakOjH6vy4EBCGlfjp59pAILnndzmr5K8hXHihUdh0DfiO/R1p
         9OAFfyxTpfIpu/S46LA+DwbceHJJ8PtHR/doJzObeqtant8j1oBpx8BiSgX23J5a5k0x
         trouJYN/KN++YbuD4vSQDldyFkZK7FcTlVLkoYV5MkchIujuTEjrWd/YUSWIVKNxMI4f
         9Ukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=52L7zfupaMC4jdUYJ7xGEcwsJjNU6cJkHWLaJ7DErtE=;
        b=KE8OGbciRR3N0Z/iVMSy1zS70T5TFw8ZiU4k7/NsfUPm/w8AFcY2N5GCwFZTt8rwkt
         u9y1jIyYnx6x769EmJww/sl42pOJ/VIhRIdjTyZOVASto0xkA0owpGa/UiVfRwRsgxPX
         e2GCDG5b4fqqMdR1HUv7yLs+7gv5KdiG+Fqpm4Zqp0VzLUShoe2eFtiWzZY/9UhBE1JJ
         hcRIgNHQTnS7SWvMKUtPdnhngZ51Kn9hN0GoZNmsWqsxesq7O7XQe3EIEUqIFa4uuXts
         2Bk0A6XfIjELdR7I5ldkXzLYGScAtspPI+7iGU9WlQQaQT5ZbLUTDgLFUisnuy4/0Hz5
         EFeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJgr9+Mw137JdtsKYqgGRWviqzm2CsMcjlaWgQ2/J1rJjO/dhS
	80An+Q+nVm8C35yOA2Rhxsw=
X-Google-Smtp-Source: APXvYqx4Uk453fUGwcb3DlgndN3UGw7h0ExfbtM2yKAZac7THlOtTkwN5Cqz6/FCMD8ebPDtwJj8Xg==
X-Received: by 2002:a63:480f:: with SMTP id v15mr24647725pga.201.1580221364139;
        Tue, 28 Jan 2020 06:22:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:81ca:: with SMTP id c10ls6123300pfn.8.gmail; Tue, 28 Jan
 2020 06:22:43 -0800 (PST)
X-Received: by 2002:a62:7c58:: with SMTP id x85mr4210394pfc.76.1580221363643;
        Tue, 28 Jan 2020 06:22:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580221363; cv=none;
        d=google.com; s=arc-20160816;
        b=OTki+HVXNnVqnM/yxVeTx/WL90j+wFIQmrWpqC+ZGEBgnuju661qo+MTu6gmgsNyrI
         GAo94V6H8l5phe62Q1t27LGEKAMv0Wj0xwxjoJM6aSbXSfU0HnMaxeNFXNvD11I0xc0m
         MiGBXGaf0VL4JqrFUG+hrtHYDdFJiXbkcqObFRTH4orn3jPtAK8oEYeFu/ePRofyTVDC
         A+f2ueQ5lXDzv2DOL6unhIN9ZEHYUyhxtKpnOyezYlbL3MGQ2pceuXvTHB43u6P1Zzen
         yr/JHWLTbOm2hf/kahiCXudTYEOwXRj9/v9fyHGWwvU/G9WMH7H7luZ+USRbwRr5PCi4
         JLQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=FmPyGCw24mfbAt0RCwDqFY9hL1iM74rAyanynR9MV3E=;
        b=bOfj1rcYZiwncBvX7HdxsBTjAj4fDSL8byg0PSKg5C8NfYCRbi8UdOqaxJ1pqYrGig
         nIewF5hzhEDbrmTpWTdu6jx4cHpni4ID/THfX035TNvxVoKsyaC7o9nA7KGf3x4RS5OO
         recVxj7mijUm87fc63HNvmh8yo3MeIjJgLBsiXL+8MO9v8RF1G8VGUV1Jrj0mZLsAI0K
         +Tnqyyjfd6/K2fLjsxdqzdfx5axZz/5NCs6+9V6uSG3Bzni8Xm1RELv3Yd2UyndqZNUb
         O6HO2/li8L48hmekjjWehiZFHZz6pWyHMxQ6TQopQv1Mx9floMLcP/83ABFtBIuKWe1c
         QCYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lfySTc3X;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j123si676090pfd.5.2020.01.28.06.22.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jan 2020 06:22:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D16B524681;
	Tue, 28 Jan 2020 14:22:42 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Paul Burton <paul.burton@mips.com>,
	ralf@linux-mips.org,
	jhogan@kernel.org,
	"Maciej W. Rozycki" <macro@linux-mips.org>,
	Hassan Naveed <hnaveed@wavecomp.com>,
	Stephen Kitt <steve@sk2.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Hocko <mhocko@suse.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.9 187/271] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Tue, 28 Jan 2020 15:05:36 +0100
Message-Id: <20200128135906.492399637@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128135852.449088278@linuxfoundation.org>
References: <20200128135852.449088278@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lfySTc3X;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 12051b318bc3ce5b42d6d786191008284b067d83 ]

The code in question is modifying a variable declared const through
pointer manipulation.  Such code is explicitly undefined behavior, and
is the lone issue preventing malta_defconfig from booting when built
with Clang:

If an attempt is made to modify an object defined with a const-qualified
type through use of an lvalue with non-const-qualified type, the
behavior is undefined.

LLVM is removing such assignments. A simple fix is to not declare
variables const that you plan on modifying.  Limiting the scope would be
a better method of preventing unwanted writes to such a variable.

Further, the code in question mentions "compiler bugs" without any links
to bug reports, so it is difficult to know if the issue is resolved in
GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
4.1.1. The minimal supported version of GCC in the Linux kernel is
currently 4.6.

For what its worth, there was UB before the commit in question, it just
added a barrier and got lucky IRT codegen. I don't think there's any
actual compiler bugs related, just runtime bugs due to UB.

Link: https://github.com/ClangBuiltLinux/linux/issues/610
Fixes: 966f4406d903 ("[MIPS] Work around bad code generation for <asm/io.h>.")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Eli Friedman <efriedma@quicinc.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: ralf@linux-mips.org
Cc: jhogan@kernel.org
Cc: Maciej W. Rozycki <macro@linux-mips.org>
Cc: Hassan Naveed <hnaveed@wavecomp.com>
Cc: Stephen Kitt <steve@sk2.org>
Cc: Serge Semin <fancer.lancer@gmail.com>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/include/asm/io.h | 14 ++------------
 arch/mips/kernel/setup.c   |  2 +-
 2 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 06049b6b3dddb..5dfae80264b9b 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -60,21 +60,11 @@
  * instruction, so the lower 16 bits must be zero.  Should be true on
  * on any sane architecture; generic code does not use this assumption.
  */
-extern const unsigned long mips_io_port_base;
+extern unsigned long mips_io_port_base;
 
-/*
- * Gcc will generate code to load the value of mips_io_port_base after each
- * function call which may be fairly wasteful in some cases.  So we don't
- * play quite by the book.  We tell gcc mips_io_port_base is a long variable
- * which solves the code generation issue.  Now we need to violate the
- * aliasing rules a little to make initialization possible and finally we
- * will need the barrier() to fight side effects of the aliasing chat.
- * This trickery will eventually collapse under gcc's optimizer.  Oh well.
- */
 static inline void set_io_port_base(unsigned long base)
 {
-	* (unsigned long *) &mips_io_port_base = base;
-	barrier();
+	mips_io_port_base = base;
 }
 
 /*
diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index 695950361d2a7..7cc1d29334ee1 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -74,7 +74,7 @@ static char __initdata builtin_cmdline[COMMAND_LINE_SIZE] = CONFIG_CMDLINE;
  * mips_io_port_base is the begin of the address space to which x86 style
  * I/O ports are mapped.
  */
-const unsigned long mips_io_port_base = -1;
+unsigned long mips_io_port_base = -1;
 EXPORT_SYMBOL(mips_io_port_base);
 
 static struct resource code_resource = { .name = "Kernel code", };
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128135906.492399637%40linuxfoundation.org.
