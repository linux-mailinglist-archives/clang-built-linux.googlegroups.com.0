Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAOAQLYQKGQEIOFV2FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A1513E9CB
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:40:18 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id l5sf14160244qte.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:40:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196417; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z6NLU/ae/uWRkp+GIsOwmOWpWhlJXmvH/gKa02bPcN0awzFueVfbx9O5IQgsXHaoxD
         VJdRBUSViIO+WKlee6+uApbpYZBAF6PyCYIh2w4L3k3MTPc2oj+wB8oAB4BmBsrKWqZ+
         LhDVziC8gUPQE5qdQZN/yDj7YqvyQgfy1eKCVGsf4pUhO8pq3dn3zm4Ll2hPk4n/hwUO
         HSOdoZ3fXNxB4eXJlih3Hak3tIwqI9tLSulxAgwO0gf3FNuyWRQy9UXwTK2QmAagr1LG
         v+TnLUzY4PQa8ctx3knuHRo06AZ2onPWcoUp4mSTb04LDPRVH8gSy4pShfZui9/Ls7ZH
         WLug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PJTSEfzur6HIdqXBdy8EIx+r4ARxw1nAXv273WmG0Ic=;
        b=UbuvcJrmNKqD5XQwYth2CrpKt7oY6d0JBsWoTtOETJmjVs+fcA9RsKq8ohv/TyIf5/
         TqtcBm988x7x+2yKs3o6YXGw6mBAwWsVnE8BF49CBXJs9ns88TyzH6IOJ4AWJSm8egLd
         2xyzgzrfAjn5TVStu2gTdSXXIEdiAwNcwEUHspEc35iDuJ3E4+m5JEUzSadgm89Hl3VY
         Vdg4wn+W1iKioDjmw5SVLHBbKTmXoD4t7imlNIDoLB390tCJxYAlAu7xTxcjBHRzWWhe
         vhucoZE2XiBsC9RBYUEKJuz4s+5gbxKjrrlCUEV0ponCXZaLUY/ag2kIZWBE3X+xnWAk
         ymSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=anSQtWC7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PJTSEfzur6HIdqXBdy8EIx+r4ARxw1nAXv273WmG0Ic=;
        b=m65akkEhfpc3kS04HvVCW0YuNi/g6RRXeyCT10E3siXUxXRJJ9zGcjRyx7/suNpcjL
         OvJf7eL6p3Acs3zUXFRhQMurSPr6wCHcu9XzyvRLb+MLCTS9bMgfPogAm1D52QZI89CY
         bwSzFnaoFh4XPFPe1kg+zelIMFbOm8FQ1DEXsZfBRfFmDg7AmjUPUTGwnRqRFMhd87/j
         j9qWu/7Stc1uy/Icu1LPBW7WrwvjMf7YTU7npxXgFwfqsHQTWE8MujW5y+CJkCpRKm07
         q+h0Io0UtDHQZ0C4M8V/00AmFAZHyKEMWV1SHgigugCLg0nTalH6WwUZL+PR6i0uYPT0
         GP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PJTSEfzur6HIdqXBdy8EIx+r4ARxw1nAXv273WmG0Ic=;
        b=PyYUFoxsBJ4CN57PzYRckjb3bYAta/8Z1v50I7Gl+D6+IVg/eJJV7gXdAqDD1DnhTE
         QxyejyUJwYq7PlbigfN0YzMv5spNbvQypVjzOxRuLOsxWpwagDOQ7wH0Q1Gm5xFqvBAD
         Ub4i+QEvDNXU5gTDpIrBGHezDYoa2fpmZpWLt5z1AQSX+Iop6qIKtzyLHMfItD66rDtt
         OOau6M7RYiDq7oGsAFSLVsnBI4tUbRpCFW6hfFqgedQSOiqNH8qGjdFQPTGqIqzL/XFg
         S6WTaip/Fh9BMQuSM4PfYlXFrDlWHEhbd53HEBVGBcHpRGVSEtmw4VPZ7BIh4/l79iw1
         5SSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9y0pZRKBMXbbkG0Fhm8x+OAAiAQL8i2QnuNI8vQaN1E7DMKBj
	zXw30b8P3LCBqBBeohUjuYk=
X-Google-Smtp-Source: APXvYqzguCcrfUq1vrRrB7fwDmdYCViaeMCmQjyDo5GMD+ZhlmEvP1t8FcuMCm0lRMMA/X1LkmOLBA==
X-Received: by 2002:ac8:43d0:: with SMTP id w16mr3618629qtn.43.1579196417735;
        Thu, 16 Jan 2020 09:40:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7b94:: with SMTP id p20ls4374549qtu.13.gmail; Thu, 16
 Jan 2020 09:40:17 -0800 (PST)
X-Received: by 2002:ac8:86b:: with SMTP id x40mr3583476qth.366.1579196417377;
        Thu, 16 Jan 2020 09:40:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196417; cv=none;
        d=google.com; s=arc-20160816;
        b=qjY5caJ1babSg9qeg77hxXuxeUw2bqY4ozBYKwYXRsm/Wu1MSjcJR96C00XkKqNcV6
         Yktqo5qc8NyIXerSTUOAHmVSa3u8LD9y5dH/2Rzbh48oc1vZoIx3bELhFFWfcAs3GSb9
         a1y+07zO7lxFMd1ytL1bs8g3y0Bi2XM+JD2VZ+SOKCL48QfBQjD3qftGnLU7Hm9NUWIq
         BmRaO7a/43kFlbkZJ+YgJ6LK449IO8ymOc2zNWqoxg9DAVK/9tVyMaX1Mxs0zLGW0d28
         Hu2YzNOe8U3KwMTTId15eVEJFIFyQm44fP9ipcAbsUmgogNSb9FuQbBayR3YYNRTUL1N
         X81g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Avu0K+Vj61BZU4dVP6DPLK9fVPHbyouBIbDvwEsWCCo=;
        b=x+yERCh8a/4n/P/ZiyoREjnQZsoN7tTXwa49AvWYRp8X+iQkuaE94Wz/EfKQfEzp2T
         V8muhJ6r1RicsVvYvB0x2udYnzto3N+dTzXNpDVq7Wb6hvFO+h7Pg5jcXyam8SH7coAm
         Jjfr4S8EhhWhLI4XUkoBfzdnBAslhiAqc99OYUwxLGfNpg8KISqzbb9wj0CluOYmkrvo
         lixRWcnytp0qQTbvN27yJVAMLcEtK/ImM48WZ1FEr0TCKXrAMeR+E1kp5e7rSQ+bPDOU
         n4VSp1IM21PfmsBoa5x3/xX3JCRttN9nIB2PD8ZHezYl56EOhWkLt/FdQx0Phky4gkJG
         Nimg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=anSQtWC7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 134si855797qkd.2.2020.01.16.09.40.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:40:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12B08246FC;
	Thu, 16 Jan 2020 17:40:13 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 187/251] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Thu, 16 Jan 2020 12:35:36 -0500
Message-Id: <20200116173641.22137-147-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=anSQtWC7;       spf=pass
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
index 06049b6b3ddd..5dfae80264b9 100644
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
index 695950361d2a..7cc1d29334ee 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-147-sashal%40kernel.org.
