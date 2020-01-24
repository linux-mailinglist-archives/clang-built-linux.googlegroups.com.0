Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXFKVPYQKGQEVLODYIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD1C1482B5
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 12:30:37 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id z13sf726771otp.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 03:30:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579865436; cv=pass;
        d=google.com; s=arc-20160816;
        b=cjcZNlv6+Na95/IQI8DuyTeHA4abgEgJ4S0nkjotq5/4BGRwGG/WU1SuliTnytTWl5
         0WpYY2dARC/3Jsezn51/fuK7GXp42omM8YHbE2p/B8iHd2v7RXipg1Mjcv7m8NPvxdHK
         mo/oR4GSAUi4FuWLkcjIjsgHsg2zct1imE5IWKECVPdazUcebONtuZHIK2GL6fUxAoJx
         IXXJXFA1QRvHFaQHFKpYAh/2IzF7a1Kz2ZM/NsBO7r2XkbpF6NBWBaQre0TRPS5kRHG/
         miao1Gwj80DevD9DbXNGcM3DZfkwha2yNvqpXRdZVJc1DV9Z+SWaBTO3o1z9xPEus3ar
         J1EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=sfJ6KlnjrMrhDqSRZ/fLhuBBfKMBevXUDYL3zZ0f5/Q=;
        b=siLckrSoIQdRCu5OL4ApQGUp91w7DkBCR+FHB1XGmgrODNnhn6ciMK4ZARaZ3wJK85
         cYQfe4xPkoEnlEcOVoz6PNjE2rp7n9VQDMTFpt21FCmYKc8GalxZC3n/CDJwuqNLJq3B
         emKue4BCh8M9LBWSAMOQ0040V0omK9uNpd//Skp4b9wul1zcUz/3JXYttUXJwh91jIQ6
         hBxQTWvGIhCFhZP3FarsWarwobWxvzuQGXhMH8rcpU9GSKCyYG19/XdR2tSli4aq0rvT
         Cv+RlLNLlG4fdzlQGZwh52WE/WsaOLkzsHbek6UcPXYzk4CHLqjvQLK1sRNfNi1l30mW
         8BXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="u3Q/+hsI";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sfJ6KlnjrMrhDqSRZ/fLhuBBfKMBevXUDYL3zZ0f5/Q=;
        b=Juk2iYWN9h3b9Kk5i2tisd1QFhoFoKcSoF7eWGxPhq9MmKbA1FLorQUcKpJTsXUcNI
         +i1XSgfrI+zEvzjIqaKgI8Xznhd1em1lyzY142ZogcywJVO9fAVR8wrkJPPz+TMq6jWb
         Lw6KBkjOHqdul385F0h5KNNLIB/64hk9PIXcUiQeazxsuduRPi1IPWVnagXUqsK3SYrf
         NxMdY7qE8MHSW4Qo6X09p2WUZzNfPPdfncKCGayRevqgWGMOrXL3n/AJpDIPpI3OBxXe
         zmAjdK32l4FudYW75dWbpnnOv7T5XLWCN7HhZJy1afF/4fD98IEmUWENI9bXi5XTBZDe
         TnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sfJ6KlnjrMrhDqSRZ/fLhuBBfKMBevXUDYL3zZ0f5/Q=;
        b=Qg1Lmjh8Fu7ZYHQ4gVnbO/ekUI/cPiqrKZXwXJIdS0z3XyP7kYfRFnB5ap+/Ql5xrO
         oJcW3lLQciPSi9dbz4wjDlJoMu7fwMOcgiulMEY6kDrNdIw/GJ7AdMIh4RsNqq/Bwfsj
         hjG5A289KDC8mFhhCw+qptt1n7tjvPe8CUh2dhf+dxJUhv4ykpmTEe6CqAS/Z42UHYty
         sxE1klP+m8EDqXFc3nrPoGb3YJhv1gdSOxXNU4LrgRny6mb5RxTcaQfzPo5T4+tZ9uhL
         gMd3KYjkdEbQ8zwNPKfmivimndqweU794v0woDVtrDDUjO7YlIs8Ll0puAHk+1I2UaVR
         caqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUXpeXOP4nP9phADl6/gq7DYdexMChrzQEmhyBmYWEV4Kp7a1ag
	TrKl30+T3SNPbi88s4i3Agk=
X-Google-Smtp-Source: APXvYqzZicnhWjfgHTU4EY/JplBskd8jYsieqiflrveCeTy7UmaazDbQUh3F9d6x1MxdTE5M1LH4Lg==
X-Received: by 2002:a05:6808:91:: with SMTP id s17mr584369oic.178.1579865436136;
        Fri, 24 Jan 2020 03:30:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7109:: with SMTP id n9ls398091otj.10.gmail; Fri, 24 Jan
 2020 03:30:35 -0800 (PST)
X-Received: by 2002:a05:6830:1116:: with SMTP id w22mr2348404otq.63.1579865435699;
        Fri, 24 Jan 2020 03:30:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579865435; cv=none;
        d=google.com; s=arc-20160816;
        b=iHtONKmru1SYEUfnS1sbUN/E8cIqcunFNvxdua5xiiXdmcivqIj+OMkeASrqzbKIMM
         diRUDKTZcVvHTMwypRFZeSw9neJq2SNKWgDf7QWzTTDspI3MAtKjvXwvm4tFvLdfWScB
         /tSSG+aCM7efmf3Ac8iBz+0JdQDz6ZtqmMCgJm6+IPdeBF+62jrMWRtgaJ43zydIe3sO
         wldS+3B0KUHjq6k2dir8XjJ4ZU62uq0lzXPwzwh3j/TfUtWoHst39QFNxx2FA0adbfjX
         CdXDXggt+HtmlBRA3IqiaoXEbjOC4mNreVe2dBo1XEYRoYy03D8cDpUC97IOKA1d5SDr
         2lNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=jVXY7mBB96z34b4lMqdbyh+JIrqqMbZeJ72M6wl5Pk0=;
        b=hfhapCaCWRiIWIpvPDXKHTzE4WxoApkOmOtbJHtqPBUnS47kVikeGNNd7UfLesw4GN
         NNT/jOm06HWidnGAVYZJ02PDvOa3Y3bcyy2NxQfqeCuluqQWyhrzg/H3TXzPZeTw9tGK
         x+fPAJXy2a1LO3ynnlXqJKvHb3tbPk2IQlwQG63ZuGk/Is0BTyJpSdbi+xVguLRvu66f
         jW+b20B2i2/RBWmNF9U9xQe/o8oDrqF9GnGT+TGdABnXaFtvDH900mxUUeOYCuuNFq+F
         vG4w/DAqGS80xOfEz2UHZEfHW17EIqQcduAx285kmxNB8+InOBAQFyL3A+ruw6ZLBi0l
         dhrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="u3Q/+hsI";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a21si219221oto.2.2020.01.24.03.30.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 03:30:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (ip-213-127-102-57.ip.prioritytelecom.net [213.127.102.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2577C24658;
	Fri, 24 Jan 2020 11:30:34 +0000 (UTC)
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
Subject: [PATCH 4.19 522/639] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Fri, 24 Jan 2020 10:31:32 +0100
Message-Id: <20200124093154.161499157@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124093047.008739095@linuxfoundation.org>
References: <20200124093047.008739095@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="u3Q/+hsI";       spf=pass
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
index 54c730aed3271..df1eaa3652794 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -62,21 +62,11 @@
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
index 8aaaa42f91ed6..e87c98b8a72c0 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -76,7 +76,7 @@ static char __initdata builtin_cmdline[COMMAND_LINE_SIZE] = CONFIG_CMDLINE;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200124093154.161499157%40linuxfoundation.org.
