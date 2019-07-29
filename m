Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU6B7XUQKGQENJF3K6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A36679AAC
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 23:10:45 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id f22sf68889020ioh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 14:10:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564434644; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEFUq8J6ITlAHJu7yCuHIYrqebeVESu69f+NdPHV3GQ8YTUffwOeV271QXMDWQmFJc
         Jcvrx1D/r6iAn4jl5SQSTfJO7mSRqL62F7j3WPfdTaowbSqX90MBGYnWZfDLG1n2qbRI
         L0BgxKls40sYRyHnmzfjvE1OCdWFeTlXCWmY4rNRIQyYG+X6I/pD0OPcw8GlkV1/mwME
         CKnUovtvT9q/ImTi0pZxgxZcEes7ZH8Nu4rfB5tB4NIqKi+dTHRqfSHAgo67W8WQX7+m
         nqnqAUeeHC6XFl3JflaZi4lSDZu6LNvPwRQ1e9duM+r/8lKDdkHzyBqXNaDYxDJ5G1dR
         3aYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=G6m9QqodsPVOCZoYqzrpjx2bSRPZxs/xVfD7VZuP+wY=;
        b=UHUPNa+z7DLeOgkoZ0hZSxz6qpbUzVh0ZszJfeRXIAD9i5Y1u1wRiDGBY6Y2h82UWc
         DLBCsiaBHwDDxJNQpECTSN16pNgm/GNd0sqqHKqigdebW9yE7FWHTGQnOfCKC9dXm2Xc
         8fNzG+7vCsS/a5arhWEmVQ9kIp0WrS75P1bhBwOwGArKhxjcw583/MMKXXudqBBWbsBM
         DORh5PwrH8gQwWwJFkSknCOlfgkVgDgSDSVJ+w58xQAzXlpxX7eB+H4+6SiVcK5CWM2y
         XciTDDqYPKxutpe+YaMme0tx8oqDLcA27groIQNN6HOglRptSViCCOl/FqZSJtJ7+ipK
         HhTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nR6rThRr;
       spf=pass (google.com: domain of 30ma_xqwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=30mA_XQwKAIEsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=G6m9QqodsPVOCZoYqzrpjx2bSRPZxs/xVfD7VZuP+wY=;
        b=GclyWLX8zUo5v7ASWptjzzi08UnhbXtZVE+rMAP2+QwwS67yx9qeLogoHxnTUPrYKr
         Tvo5YuFLuQ1bNpmZMKHCVN2RDKPK53gDQYMwftYMBgNzTabqoA53gOy31Jxyj8jtx0nb
         W/vj1HoirpDAwK1rdigCVOKKH7ZzOrTTbYWvJ6proce05C0hjOytg/Qsp18ED29okw7d
         tb6N8gzVwzZSaP9XboMXAc8WaMLkiY3kCbNIZCWFsccHaVK7eh3a95VipPptvyzEHiTV
         e0VIOrO4I6OlDQSBrNzinJbeD4jfsXwbPW/NwDrOVdG2t4zxMEVfQsd+PbaDDUL5iFwV
         p+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G6m9QqodsPVOCZoYqzrpjx2bSRPZxs/xVfD7VZuP+wY=;
        b=BdQa+rssQamT9HderRjjEE12nXi4v/KEmn2r5C30dtRPhiRXYWFhLTWCtYnUfHBOvh
         epkfGVcgJkxRF7kZqWy+Z2Hz3tl694GbLOrVkkMUeAIwQB/u+8NzFCHImW46iKU6/MHc
         hMoujOQpFaeBk6tfqQjZj/ZV/X7aPm8QKmbk7B20MqD1c/R+1LeDUMd07oaqcpyVUuwr
         8BEXubKdBFH+oY+Pqu4cSls3/00bggdW/PLiDodNqv4IrKsbbgsWGKh8HZxm6//zM+GU
         0h5L4+cs5PTEVQB4d3MEmuSCPaTvxZqnk3nbV4gZ4Eku5b23GcWcibM24Jg7lqWj8OCV
         cuzQ==
X-Gm-Message-State: APjAAAUyhJ0gqJf6OkFk1FqIZAxa1JZmBJi9HqUS9DC3Yi0gPJqyM8Jo
	lhy8uvgmzBKYLb+ztFu/T9w=
X-Google-Smtp-Source: APXvYqzD6zisho3HD4Ie6XMMBnDFB/gUMa+jGHcwy02TF0skJ+Y7baLxWePMRYlvZbzlxkK5FkyIZA==
X-Received: by 2002:a6b:f816:: with SMTP id o22mr11134292ioh.166.1564434644001;
        Mon, 29 Jul 2019 14:10:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:da12:: with SMTP id x18ls16037462iob.5.gmail; Mon, 29
 Jul 2019 14:10:43 -0700 (PDT)
X-Received: by 2002:a5d:8759:: with SMTP id k25mr34595509iol.307.1564434643757;
        Mon, 29 Jul 2019 14:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564434643; cv=none;
        d=google.com; s=arc-20160816;
        b=cy+V2BTpmyzOqBnfKw1p9Hw0tN0yZtNL82m8LBO4Tlt9e4iqD0tlslC7hGy4J9JJDa
         HJSYLOy3MsmhjU4jlQu01l0R2XQH2ckYrQ+Y7DDogLei+VdUp44ukT1vtwXybK4NCNhG
         RevORPMofvF2iA5vuLYda/nHdNrw3i/+iObln6eA4oWDSG6b4XQDfXPdCmTgxRP4LNA2
         5/TqatMcnd+7nZF+hvbUWwbgVsxmqnfQYR76UB9FQh803qnDqL0Z/yNavMVjqjpXYCut
         oJHMCwX5vuKpggMVVr7z7GPhKK8p8fKZT3/05SBzeWSEcsnfUMIw8djpNvrCNYGjm9oF
         CeQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=xwrp+21u5eMaNhEA/rdpeLPdIpATKFWq+XtNgIYdLsk=;
        b=m+QMpabuVDSymSDMBS/7N3pJ5gn9uh3KhJ4FMC1nI33cauWrT9cmLzMORJRUxbhzq5
         WIIZaP1/SOVGAy9ZBbf+CeewS/yA13z/+cliYkYOUWMwD0QMxC/uwRUwRFPsuBzOCipa
         3ARr+djcV40UUrtm+5vTSzYbeiOzA+vFD86ASLqwm+vF6Uxp2ipoCdi+/BH9UMMii7oT
         gHXoSWfWJBSbJUSiu6EJEb2l9OA7t6+y4KuBpXe+AbYs0Aa6z3Jyp+OiLRasUQKEr9Ds
         lKFWWbA5SYU3Xti9pgQ8rvVYa9ss7pImiSSJ6+xwlFe9fEsKUKzhDxg32SkF/Qv2tTWk
         /1BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nR6rThRr;
       spf=pass (google.com: domain of 30ma_xqwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=30mA_XQwKAIEsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id y15si2280898iof.5.2019.07.29.14.10.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 14:10:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30ma_xqwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id n3so29195291pgh.12
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 14:10:43 -0700 (PDT)
X-Received: by 2002:a65:584f:: with SMTP id s15mr89215850pgr.175.1564434642782;
 Mon, 29 Jul 2019 14:10:42 -0700 (PDT)
Date: Mon, 29 Jul 2019 14:10:12 -0700
Message-Id: <20190729211014.39333-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH] mips: avoid explicit UB in assignment of mips_io_port_base
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: ralf@linux-mips.org, paul.burton@mips.com, jhogan@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "Maciej W. Rozycki" <macro@linux-mips.org>, 
	Hassan Naveed <hnaveed@wavecomp.com>, Stephen Kitt <steve@sk2.org>, 
	Serge Semin <fancer.lancer@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Michal Hocko <mhocko@suse.com>, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nR6rThRr;       spf=pass
 (google.com: domain of 30ma_xqwkaiesijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=30mA_XQwKAIEsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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
---
 arch/mips/include/asm/io.h | 14 ++------------
 arch/mips/kernel/setup.c   |  2 +-
 2 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 97a280640daf..d58ff2229738 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -63,21 +63,11 @@
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
index ab349d2381c3..675223a66d0c 100644
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
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729211014.39333-1-ndesaulniers%40google.com.
