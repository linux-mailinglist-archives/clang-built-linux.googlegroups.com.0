Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBP4CYHYQKGQEW5CY2EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FD914B729
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 15:12:16 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id k27sf8519187qtu.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 06:12:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580220735; cv=pass;
        d=google.com; s=arc-20160816;
        b=ttDPFw3P/zlBrHPf3e8thlYlxWMtKy2p6JKmKxZa45heE1obQVOnulj6jc7Yu8ghSZ
         aq5s/8b6Bg/9dDMintZZ8xVOrzsSRNC83oGtPI8XLDMmoDVjTQiLCv/baAHAx8rvmcQN
         dv7tydt118d3q3waOf9PuIXg2eWFWUxt9WduK22j9GU2S/lFeqKwATwHhaBFb9Y5W3Qt
         AOw5kottm167zCrzy9HfrxAivFG4wjb682iNoJ1c8yfSUA3ZTuKTkiQpHuPwNzukoqtB
         1MfqJ2acv85iYYFJ+9Zz0eGumFYm+E48OV6URAvTfY+CWaN117o5guj524R1ky7/Nt3r
         DKNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=pW43J1RVy+Pw8lg27EeKu1XrkUZgm5EF7yM/1fnWoS0=;
        b=ZDpZlsUQGbYnOChqEXq43fkjP0HCG0WtqXCVaI6E1pm+vH1eqx01EhTA9wEWkKTbuN
         18a8OtZzfq/XFpdlvf5Xneu2jZytGpb3xr+p7mlQcDzqSDcd4r8/oT9y7UUBD9lKyNnG
         xwZfcStVWuAwi0S/dr82eUDx9S9bFmDPNyhTBIBLwYK6mRcXxW7QTWzAYEuhNRx20JJJ
         i58E+pmvvHMUdWSTswj998frrPlVef+DU1lTh0X/FEzUZcvBfXJ9bc1o0s9+1WWDCTFd
         RH5TGTyd/479U23Y3OAVqcFXcq0BOs/pEM39gWxB/ZeTS7XgAC1dUKxJEURKfTB+cqsA
         vEcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cB7ACNL6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pW43J1RVy+Pw8lg27EeKu1XrkUZgm5EF7yM/1fnWoS0=;
        b=GS9y0eQZfVZOZ1urbsjEdsJDIewtJXydUmxUAuPN9xhBy9xPHm6sAuBcwVQNwvZxZp
         Th4tl2bGc7LXequU0T32DGnU63lWSlioTEigRB7V3KYxPC7corQK3npD9FQ8bu6UigJL
         aIOIQZRirW5rs+6cmDEVpFjfqNfTu0aQ4cOVKKQb6AhKyFiYJ9t+RHpIMBCrhBJ5qHsN
         C5iMTToHle3CLrSokASew/15eNdeILAQBENuX9K7BiuXUH+p4VZyS9KNPTwhjcr5dh88
         WyE6K6oasUVf6hA43wf8APuWvsSlRbp5eqv4DMckiekyPnFEt36BHsvTB3YAo4CHq24g
         pCRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pW43J1RVy+Pw8lg27EeKu1XrkUZgm5EF7yM/1fnWoS0=;
        b=aCL7KIgHtJ2IbwJ0d23fJBJiRAOF7wJ7veipmMoBC9+O040ZMdGtw46Jr55a+ahrVh
         1oNz9PBCufs5h101W2nsrkrIvJI2jjvoorPd/80i7ZzVQ5fPmc9AN7AdmYDj7U2Pskea
         o9nMcSUdQOFbK9xnEaNU/tNhd5E7ox7E6kluO4bkWzBKP8T9I7MGgFuDG8I3QnXwPmZP
         YZPw0Hy1WnHuSgTY9vxxrHdg4bncFdNsFNhCgbCbQq8pcB+CuFvuMrlSHOiBXbQYy9da
         fvQppu5cHQktYNblEJV22sxVARw0m1+Q4fnHUNowaBiYy9jLnyl+djU9gYZv8R3dlQ8p
         iyIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWNsvrMSi3+7QnUn8yA/k/o64bcnaeRLvTSQJIkA4JBDSk/qfiz
	xcjbMAh1eZRrfR7EnHtUZ5g=
X-Google-Smtp-Source: APXvYqyWZGqOhLmPk6v9jT3LwJX0ZuRw27lnWrPikVyDxkMzJuaCetRMtWQSMQds8DW6KMkISOZLZA==
X-Received: by 2002:ac8:1206:: with SMTP id x6mr21827521qti.55.1580220735407;
        Tue, 28 Jan 2020 06:12:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1818:: with SMTP id q24ls867348qtj.0.gmail; Tue, 28 Jan
 2020 06:12:15 -0800 (PST)
X-Received: by 2002:ac8:71c2:: with SMTP id i2mr7305347qtp.249.1580220734648;
        Tue, 28 Jan 2020 06:12:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580220734; cv=none;
        d=google.com; s=arc-20160816;
        b=Wc4MOJ5UJz1zvIlv44R4QMTPo+NUVFouPCSQTlt3hKUlXyWB47eSCnvoeEylnufxUb
         PQEjiRMIyC0ep29ejCI9LKxg2pkjJj/TPmkABFbI/7/0MmYouYeX9rmXNDXa0Y610F2x
         9965r614/8W4qfsTL6wWzG6L+T01J9EkwQvS4IY1ty2JMYgeDo1xc43tqqq5hZit2AyO
         oxuSpKrZRUUWPnGy1Lmb5HpFJb5+m8BEX/qqd+dvZR6WMrh1kBYDqAqMGgcpmcL1CuuP
         uQ42x7TjJrzZ6G8agd67BbkTzwLZwq5NlAqny8xOksFQHTp/psl0PYTaEXEfYQYa0sIS
         ltJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=12COV/XxHPeRM/n5ZZeOOxGpoKgLr23uDeBTh4YR4KE=;
        b=IDZGqg9tMVpS4m3lBoVvlPshsNqjaX8oE8ORghTnABFC3bOVlo2oMoEyvFwjTPTg3M
         r77pE0AV1FbD7o8QzRWY+PPQQeoBjzSDaGcZA5AHJeOxFeXRl4VkaWUIR7wTipRzwDKB
         Mmvr0SofnHY9TfLUi+Ka6fDcXJEO7WjkhGFDfzcPKaNUdVa4DvHoEiMkiBxAEkPAItRg
         L84EeSVvCl9bGShie6CHLxHN70WlWYM6rz04y5JVK+8Se2gjfsNhUl48ZInveSNuykvh
         XvQOMUebDLyeAAdLPKOZDm3cH/eomlzwWBwaIFRNhTMwMnlAsDU+GOQntIDtvbsOh+/s
         x1Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cB7ACNL6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w9si882738qkb.3.2020.01.28.06.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jan 2020 06:12:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3305224685;
	Tue, 28 Jan 2020 14:12:13 +0000 (UTC)
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
Subject: [PATCH 4.4 126/183] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Tue, 28 Jan 2020 15:05:45 +0100
Message-Id: <20200128135842.463604020@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128135829.486060649@linuxfoundation.org>
References: <20200128135829.486060649@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cB7ACNL6;       spf=pass
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
index ab1df19b09571..60604b26fa72c 100644
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
index 4f9f1ae492138..fadc946b306d2 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -80,7 +80,7 @@ static char __initdata builtin_cmdline[COMMAND_LINE_SIZE] = CONFIG_CMDLINE;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128135842.463604020%40linuxfoundation.org.
