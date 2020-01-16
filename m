Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXV2QLYQKGQEGRT55WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 431A513E7E5
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:29:03 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id d12sf2195006vsh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:29:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195742; cv=pass;
        d=google.com; s=arc-20160816;
        b=MlqkYrPFuRN1Cc0GS9OdRcpi+hcM+Xue99cJHIeECcjoFxiaXQrdsv/7gzTgAl51/x
         ByhCIX6nreSC025vbENAnexiAgXhefyLIbl1iPE+g6Ub35D9/FpA2A+5M07Y+78NRaBU
         ori4Mrs0Bq/yTiYAwSRUSw9+rc9FPg8h9Ak+qzSbVEk+P+rGRY5wlqinOifikP422L+O
         buApBn7I6OtA7+dISUfvncglsSFmiNGaQ8JtU2aOF39gGV7RvQ538wnC0Sk0uR0A2Gvk
         n/HIrOGfzHvrWu0zF5N4jTHIB3OHnjkYhR7Spl6A51TTchaJO8r+rW7/9qD9S3IuGOlu
         hVug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QSFlSeK+o1QDFWzVNsX8YEATSwS6zPYAE1f9cA8Shkw=;
        b=Mvx4HxfVJQYk2yzNhrzI1qSrVOs7i6yKf4D7HO8z0mFwz3lxKO/i2Crz3/QAJc/DZa
         H4Isqjf77O4SHxbOcDpBC9s/hKaAhwBp8KbZMIxyC6NjRu+keqONxjSlfnupUqYKzG2U
         FFje8W/nNgTHpMFJVZCUn71QMi4jJpNAQxDDhC+vBpsi2EyCpng2sWyMHOmEIyLweXwX
         jVreG2xfDmoUQmM5l2sTkPBzuWqGnTmzCJPcXisqfBZSie1gubhOhBMlkiLTku2GeHle
         5wUgTmpOkrtLlikXmkGW3QhQiTp3aDkIlPDcN2u9PpjBCyDqQK2ociHHWl8WE7hrZ0YI
         sJHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1J+3+xwp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSFlSeK+o1QDFWzVNsX8YEATSwS6zPYAE1f9cA8Shkw=;
        b=P0ctUheCo6qqIjAH3eqhZnxHFRV+nJvAYr9sO6+bFFB/RhC9DV3WJX8mqJW6YiAoRt
         iHuxXJmRc5t/BgLFA8CS4hToi1nAb7fXs1uoHFtcJRU0qsOwBgVw18VB85eUtrK5EUvB
         K5CufG4k5khV0/JFQBg0XyVtpncfe8gWYlB9b4P5xwaaWvLXkWEp54x5MdUeRz408UGg
         U6pDx5qpAwZ/TYgFPoQa4VmFa6XLohTO6mi4K5HHFVWAc9zHzf/smVWE/BYUqdRqF4Ld
         quPnA2I1LNEu59T7FslIvBR3iMzYrlDYRfafOaing8eelVcM3QsidqQQhDTUVcAfC2il
         RuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSFlSeK+o1QDFWzVNsX8YEATSwS6zPYAE1f9cA8Shkw=;
        b=olOZrVoWXbNjF6ogQod8eitqO3WPDFARcC/SboV6tnWtQZyTk3Z9oq9RZLxxfjrLwT
         b0m5PjeSqv8hbEgCP8gNAEoGMhCiJDHHO7I4f8AkXaHjRuPxm9GL81Pzw1NnTDaxIDf2
         JChA/BCE5Kks0YNXPU54cXPbPWIpp81b4AVo64ZXPoCTiFSEoSH/KSNCYfpEaDrrejCC
         oHALb2wjQwiHN7QpM5/aTkIZo5HromJpXejDDZTE+pWdGsrmjYGXQHOovNb/zwFPJk2R
         tq0sOVb2YINHh37ehxxxpLsAlgwpCWoT3e4laZT3NjETe0oVnmTZTU7cTNpwYURIAYNc
         qTQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWYvLdN2Vm19wTyZr+vVVMjrmAVL7pWmVaHIW8kYHvvrsWrSt4U
	ZiiVU1s6Lrtmcz9guxPuSts=
X-Google-Smtp-Source: APXvYqwz+S+45oZFEXyEPlgCsJnSTGZra1qiAtB5OMoXC4ghtHfcXfKNPmNifJ/uh0Wq6V7WBC78Kw==
X-Received: by 2002:a67:15c7:: with SMTP id 190mr2251509vsv.178.1579195742172;
        Thu, 16 Jan 2020 09:29:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd78:: with SMTP id h24ls2001433vsa.0.gmail; Thu, 16 Jan
 2020 09:29:01 -0800 (PST)
X-Received: by 2002:a67:f315:: with SMTP id p21mr2059607vsf.39.1579195741783;
        Thu, 16 Jan 2020 09:29:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195741; cv=none;
        d=google.com; s=arc-20160816;
        b=L1Yyb3iyLM3PNTD0HC3tv159tqW9qVcEZX9rFUpfMzhJzeEnDZ/iJZAF4rshczoeAm
         hsrjMdNB70TcyQ828DBuI7ZgKyIQ+8cFIXKnUgwnq0kMkIL4eOgaBAXkHIrnJVyeXbaL
         2LYLhR7v7NnJwYL9FCeOLFjMpjej455U6NcS/kX0k/destEpMw4sbxNY5SnCCmoL56XT
         339NXNzbEJMG6igYXTCaytKYzHFJHvVNAGE3uFQYFrzMQgh0P6wMGCZdIibHSKvoaP1S
         cHbYvTT6ZggkbWqtJwGSlyYsbCmZhEJmdEDDvu6FtIQyCbjChcz254Q1WNwhtTwrW74d
         25Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=a5NBy10KSwdSft8TJryKpOZFUUBIHSptqVYGn1pLsho=;
        b=SvpcXlbLQlroubCD34b3E7yUf5AbySbzBybTiJJOMAwpuxNTYyOikX3lFppdDzD6m4
         eYRAoxYUs6NX+cNcY0z17R+zv/u3L3Hl2OIYg/VcSZL4ghYOKvmqpiqFQOb43r/CGyzT
         dP8FB1Uzvomqkd0Zl/dTOXICKXNpGb35ku0EM1+jZxQR0TU5KLdYZQ4LSqf0fD9KlDS1
         rf6l0Zi7ntogNukL4ZoPOnJMrjOyhnWpseU3RRGXGJ6yUaMcUVVaDHk5gTVTyWAvfr3K
         Ze8YcHIBl8Bdr6LW9gR0ylJm0MoP1AINbnWcjSn1NPLR14k4hBXh+KC4Vxf5vx5QGIve
         Lllg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1J+3+xwp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o19si1089226vka.4.2020.01.16.09.29.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:29:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E4F9B246F1;
	Thu, 16 Jan 2020 17:28:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	Paul Burton <paul.burton@mips.com>,
	ralf@linux-mips.org,
	jhogan@kernel.org,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Hassan Naveed <hnaveed@wavecomp.com>,
	Stephen Kitt <steve@sk2.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Hocko <mhocko@suse.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 276/371] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Thu, 16 Jan 2020 12:22:28 -0500
Message-Id: <20200116172403.18149-219-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1J+3+xwp;       spf=pass
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
index 57b34257be2b..98eb15b0524c 100644
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
index 795caa763da3..05ed4ed411c7 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -75,7 +75,7 @@ static char __initdata builtin_cmdline[COMMAND_LINE_SIZE] = CONFIG_CMDLINE;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-219-sashal%40kernel.org.
