Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBYMBVPYQKGQEXGAJKOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A7A147DB0
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 11:03:15 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id l13sf1115775pgt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 02:03:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579860194; cv=pass;
        d=google.com; s=arc-20160816;
        b=JG1t8qq6VDo5Ber161JLFO+PzS1fINIdQ0rwfim2a1N/7TqbB7AaW6UVumf5RXYhUv
         wCxSE8gL6mwFq644rZV/pTEtPh1jt2V7WFd+BmTvyZHFE20maPSRgMl9UmOTAIIViU8a
         lhzWO1Ek3Uf69uFwO0qUiClXoFuEmgIjQIbj+r7CGaLLo/d2v9ynCJVG0p40CstcWTU/
         MqsLS+h6L9kR4mS01bcdpStkV5nVnUKasRffueIXt8i85qkwCGMY3BC8ntStcV/TZY/C
         Dr0+5YdPSt/A+M6WzRCIf7AjRbRq/8YBWqlrXrfOUQHcQRQj+rUmtjisgCii/HykYzjw
         F54g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=uCDDZWEahO3oURfJwb9TOIaYAkbzUtlbjXev6k9oKUI=;
        b=fODaskD2mHFtj6vpUIQOWSw/8c4egKSYV1YUvdj/JBO5guIolV+QCL0Ct3LAOGkE29
         GcoKLP1W2yMhn/rFXHrA+s47phv021CHaiOQJ9i0h3Mgbz2IIIxRJig+1orWkDGFtM1h
         m+fqA3INb2v/h5V6fftQ2omHNvOD6yiJ7BlV059lE7Qd93Bo7gY7aD7ou8GZHT7T/UgA
         /JZqN7Tg6xZaYimqO6bjWOrP8hV4HrNNei1L9v0EW6pbap0DxAQmOUtwKhelErB2RO3Z
         Ic2etRs5Msvb6KSH7e8SRuwnPL8a5bQrRai9LxPtRBlj54i5K9XO6QLYMIu7pGJ0BidB
         +AGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lUIdPR8w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uCDDZWEahO3oURfJwb9TOIaYAkbzUtlbjXev6k9oKUI=;
        b=StuqF6CI+pJ7XfUxi8GYXLKaowfmgrS+AqgqTd3I6tEJVfUFMUIrmcwvyRdd3qrOyV
         VW4Qrf/xxIwQz2krz8awsw7sQQ0ehNv/SxDfCNvjJ8S0yFoAVItGA/0t0Luu4ZeoEiPz
         xBPem09DSw1jFvYu+Gvkxo5q9pfrDIeDN2PD/hUC3imXt/KqxNg1wwJH+I9JTnYVGgUH
         nQ8Qw6SjBqUNUO4uV1Vc1rFFtv5XFOnRKo0KHEWJAtORyh/dVfgniAokwOKjqYDzPu+j
         iW+7j8u4r8vRPfsbYwZZi0hlh0tKufylJfMLmpdS6ErWDlzHRVDUfNDhMTL8oxiQDNxt
         41Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uCDDZWEahO3oURfJwb9TOIaYAkbzUtlbjXev6k9oKUI=;
        b=O44X28dUHcjmLTZDs7hFHK8zLF8uyyy+iKP8kFssphZaB2vNgIvq6hHot/b7Lpa7dq
         xflr5+Rkms4pAq8Uwp5ap7sIYTDaP2l/e+nntg0YyJtkZWyiDQpVdCzVWYGNaVi4lXkv
         1WFyYLqIbDwyzr8RZEU2qLg39danueIaWN2xOKjF6cetkyJbEdEfjKtMHo56GnZqPzu2
         K50vRwTNkfXeG9+7AsoVaUEN6gA3kOG4eSj68L1KbFOnEHXKpCQoaTz0weIiHHQdk78L
         UwnsbVsC3FZqxWfPKnNkps2kI815Jd47D4kpUwcHeLFFlw85o5RIS/h2/mTrzyjVC9Ut
         DGaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW6pb1NxHMLZzLQ4dZ/y30ycAkb9pU2iRIiHIZJa6h0nOzCwo9g
	gIWgveeSLR2TnpyOWW63odE=
X-Google-Smtp-Source: APXvYqy1yEDuCHhYfaLEv9JkbmhO7KC2IhjNaDs0j7+tjU8LpJexzkCzQY2e5DLFEP7KjsbgdoqQPw==
X-Received: by 2002:a63:6f0a:: with SMTP id k10mr3278965pgc.113.1579860193890;
        Fri, 24 Jan 2020 02:03:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d49:: with SMTP id m9ls818001pgn.3.gmail; Fri, 24 Jan
 2020 02:03:13 -0800 (PST)
X-Received: by 2002:a63:fb05:: with SMTP id o5mr3254828pgh.355.1579860193408;
        Fri, 24 Jan 2020 02:03:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579860193; cv=none;
        d=google.com; s=arc-20160816;
        b=q/PWCMcTqvrpKNGIqsGY3B+am+GcMV2kBFXV8nS/m6otQI8HJGJrnqj7PoPygzPUBw
         yl0N7A8ZT8/eYwRBUVDbXJYyOb3DyiibmYxQE+UgEspjSEL29pWrvqFrmfYTVG6Snccv
         BTvs6IKcPtBiwfC7sF6f41bEgxvYKwGxYVxT2TWWNvqOgJAdy4tQ8Sf6hmeAL/PIQWu6
         MbpBcTz631h9RFpzsbnXK1RlCDezDrwWOsKzi/zk4TLxlLbZKfWChn7QcecIJFn2i78o
         Zv+miU0ReSNB9oRn/NtrSvkEZsqWhGA1HteCNmozxb2uFm+/J6+27XGC4eKGdGTZqdQk
         8Gvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=HYsj7zLPIDpwxiIRcg2MKw9s/9b34DKI5r2sNAd8GW8=;
        b=ouCR3NVyxm/x4ARh9aoakZgp8Gjp7HxXyfmNU72tvYa5qyJy+L6U7vY22faPGsLl8Q
         Gl1+0zETTHqMoofqMY9xzyDWHVyolBnVq0sB0rXV2F5dPnSLVyqCMfBrBepOpmoFxKFm
         AUN3jDXqx4AhUUYnrCadGRI3zronMUEjx7f7KHhjKpw5zezPmFSEn7hPtozUY4oR3X74
         WmpjfcsiZODfvY9UfgrhEgmR1pmdYpvzn2rxtxcsU0cKQvypOiKpJybBqL1K53zVbV63
         f3z0/vzu+zdOhZ7zG5a2rUr9bMDLzmhsQcmcDBw+0KnYq9OHAPNccHM+hkcGogvAPeBa
         20mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lUIdPR8w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h2si494441pju.2.2020.01.24.02.03.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 02:03:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [145.15.244.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 768BB206D5;
	Fri, 24 Jan 2020 10:03:12 +0000 (UTC)
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
Subject: [PATCH 4.14 281/343] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Fri, 24 Jan 2020 10:31:39 +0100
Message-Id: <20200124092957.023288882@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124092919.490687572@linuxfoundation.org>
References: <20200124092919.490687572@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lUIdPR8w;       spf=pass
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
index 57b34257be2bf..98eb15b0524c4 100644
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
index 795caa763da32..05ed4ed411c73 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200124092957.023288882%40linuxfoundation.org.
