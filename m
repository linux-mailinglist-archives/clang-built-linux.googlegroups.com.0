Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQ5W2D2QKGQE2LYVH2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 283821C8E85
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 16:29:25 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id mq1sf6017099pjb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 07:29:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588861764; cv=pass;
        d=google.com; s=arc-20160816;
        b=DcBK6gaUBt7+qDrEMaMWbpmQ0blXq5GD+qF9pjkx3ulh2EIw/VrrFBh2MXFqu54Ez6
         aOXxKg6JCW17gERcwDztkSKi9b9NjQqz6Y2OoApXQwL9Kb0TQZrAUH4woC94lb3X66Ui
         iNyraiymyNlXzeDOGm20K+I5twK1j60eRaZ9iTOr1Mrm3R8ZB0Hcf8NyG1lAizOVy7Nh
         OrHhBtds3lBDVC6hUwYG8OPalhorH7uRUj2rM/eFQ++vdKdA/JCbwdu2B9xopvyGWwG8
         L/0eUVSbMjExP4abBxJ0Mf8mYrEhBpBm7oUdInZIxClhIJBAy/AguO7Mc+N9LIZ91r4Q
         1MFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dVUdQ6wjkqRn74QP5+J/cB2nNBPPbAFvCqj9Wcl8XSE=;
        b=tRCX2euuPHMkGZezdTaIgTwlcN0YV71SQUg6lArszm5NAyGHilKzWn46y5EIJm8C5u
         UGaTAktlBFQZHhh//WNMWM7RuIw2P/YRQuf+rQiDayx7x5veB+u+o8NBCzl+mORKw/5H
         iut+Dl+Hf7LYA2wsFkV4SSUSze7JuPjVpq/SqrLeLtgEKqIMAZrOgyDqCJu1ZcN84aVF
         +75T8lVgd744U7IwrpDKHk5tUI1QqQiUuS+JtZZkF9/PqKReraD0ZeckuJx+HijdNKss
         JyGEPaQl2U3mqmP6tdxOvQu5syitCwp/PSETloROI1oj3CP+LlGNpDiEWLrWR907o7wd
         rTrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FQqvfO5t;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dVUdQ6wjkqRn74QP5+J/cB2nNBPPbAFvCqj9Wcl8XSE=;
        b=EwCFWaFy4lSAt9nhzlnu5edLLsMhL+5QxxyJYmzIWs5fyEpxYmeUPSa03Pos3t1Nte
         NVaSINp/XDKQZ7eRFTIyyrkwouvMcE01g7TnU47qG3udNZsMW2iH44K1aw6wx/HBD0DE
         GN/6DJ4FfS/lA08DfGawZ2OzlrX9MzjIqbQQICOT5aJ99dEJsirEGZlGeKa7V7oU68Ci
         rFtL0JVXM1ThbwccVFB60Q1FNS4nn13vJBzyssgLN0C3RAbVwjwxL3UfeiA0izvhYklr
         im0zbXxPFv7fjHxAQGZ2qfLRP403XXfS8ecJRtFGr6oo18GICUATyWajQVCtgC9R292H
         IQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dVUdQ6wjkqRn74QP5+J/cB2nNBPPbAFvCqj9Wcl8XSE=;
        b=Nq6r2B2q4d9PTibP+jz+dAoJ9LtpW7Mgk2E9ZhFvmMxca6vx8AxR2FaAiFQ7zVzlV7
         4y0Xrc2atJvPcmP47fNG+7XKQKD0ZL1QSdR/4zLplsX9YL98ijcJbFtnLR9MDT0+E3bz
         ZD2VlXf7cr3mBLCLZICE5TjF63C5+HiXFAaL85EnKzOjGSwc/98DQxLYtNY1uxZ1u6yn
         cdfNsW2JBPICNfIQ/ATosN06z/GzGuUM6RNwgVmpTk6pkuJN//i/0+V+c4yLzEzJOsY3
         nG4QMYm9K8AyaOS/o+N2Uql++JDigzk1BVzERloEICxWtqMdcwuGFUd8rDjce98yRL1O
         bYKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYoex9qhrsnVHy16rjzvGzjv+VNxCR2hXvuMFpSjHhuwHZwdQUr
	P9sNWcxdd1Tg/uAlmfqzino=
X-Google-Smtp-Source: APiQypItOkhfJmJvcwCmiAv7JQ9J+qUWsBiC3ZldNmWS9MpcDo+0H05RhAIdvclvTavPgtRbOBB71Q==
X-Received: by 2002:a17:902:dc84:: with SMTP id n4mr13566198pld.281.1588861763769;
        Thu, 07 May 2020 07:29:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5457:: with SMTP id e23ls4098667pgm.4.gmail; Thu, 07 May
 2020 07:29:23 -0700 (PDT)
X-Received: by 2002:a62:cf06:: with SMTP id b6mr14150025pfg.237.1588861763272;
        Thu, 07 May 2020 07:29:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588861763; cv=none;
        d=google.com; s=arc-20160816;
        b=ajrs6UZsu+whPHIef3hM5mXAGzRpTwbtODEMIG1Nb6KeNqrqcHGYhVnGZjeOGBf1qB
         HyIM3PVNm6LK8SuXtmPhS0/gjb8AZM7jg5Ry0OwCJsLkoj/ZIO6bXYac2QbQS+812ehg
         e02h3XCE0XM1AqSHapwBQmjcY/u3eslqJ/qVTLQsbrDMKUto/FpD+HvqD0WV7b+dx2EU
         7UoTl5Xn4eIO3IU9ahyyY/e8+jSubtoDcx5KslT+U21NsDSnEktw2DZ0QlUft8R8xrSd
         Mr9liNK8mwhFlOLgSX1wNkz0O/Y8wpx+6Z9lXC4t14pa3ocCD5gy+3P8ezvUmve+nvFq
         8lhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KafhaoNuUEGk0vhoXy3J3SfWsmyi4+ZDXQPBLXI3+UA=;
        b=UhmF1nbwvLd8kX0cY+U9oAqLqcr8alwRM/PAPCaldFyNGLp4slmh0gbRfKr43K/EPp
         uGmxOHjyaa12CLkHRDxY8N1dz6Pz6tJz6P2y9HDmD/YIvfoSzr/x7yDmi28Yovu5ZLOJ
         VtXQZ9KQohj/MEGCwDVX7xdhNr9Dzizyo7yV6+ZqTE6AvPuyx6RWepRlmcgerLIjmlfX
         8fvCazJcGoZtRoBgSbrV6c7g0tb+KdSVHz1jopSY+Qhv7G+qkI1rgvqJZVEe8aH/RVr0
         2HGJDI2Np6ap/f3EfaChIVcZqd7wTSNviYyF/nJb7pbTH9LTW64NNZ1+QO9ta1aF2yAQ
         wA7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FQqvfO5t;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mn9si3710pjb.3.2020.05.07.07.29.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 07:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 06FCD20838;
	Thu,  7 May 2020 14:29:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 04/20] riscv: fix vdso build with lld
Date: Thu,  7 May 2020 10:29:00 -0400
Message-Id: <20200507142917.26612-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507142917.26612-1-sashal@kernel.org>
References: <20200507142917.26612-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FQqvfO5t;       spf=pass
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
index 87f71a6cd3ef8..1dd134fc0d84a 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -30,15 +30,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
 
 # We also create a special relocatable object that should mirror the symbol
-# table and layout of the linked DSO.  With ld -R we can then refer to
-# these symbols in the kernel code rather than hand-coded addresses.
+# table and layout of the linked DSO. With ld --just-symbols we can then
+# refer to these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
                             $(call cc-ldoption, -Wl$(comma)--hash-style=both)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507142917.26612-4-sashal%40kernel.org.
