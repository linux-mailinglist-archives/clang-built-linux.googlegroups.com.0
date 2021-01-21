Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB6HEU6AAMGQE2EXOI7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3036F2FF74C
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:33 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id t7sf1633479oog.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264632; cv=pass;
        d=google.com; s=arc-20160816;
        b=X1ecGuV5OAZBxI0/Ha7Emw3MhaNwwqrDXd5AHTfxJC/sWMbwSoy7lw3dWd8D2rra+A
         Ai8zvse1O39OHO6pMUtYCl9lhysfBtukbxs0d0Jl3idAHPUIyTkh62LyzUNjp0Dh1yPj
         339MdEk/2QBT7nrxR7ME1xHDvE91NQJhThFJOW4XWXyiTScdHPhfz6utO4GK1h4bgQA4
         v6T6Fl8QOmce4FB5CZDNi9JiKkKZ+hDipHDqr54HJ92aRFrgQVe/MJ9S+p7OR06yLAqE
         lUp+AbBkNa6N58IfymOgZZrKrSJoSoHxTy3P4FUPV3BBzoLBSibN1x8hNTHvNqP2K2vr
         YlJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ya7HqwCw69xwFJXqfyDZiom0bo+GYMjSx1BDgZ7rL2w=;
        b=sUHXsKyRshKzbQYR4gPwJ+qahxeP5qwJdQZUzUQqayJhN/NFoybWDAY+y+yQ9xnF5D
         1LJhJRdpWYoZV1hDZGZKkNmbTa4ErdnxxLHztKY2rPRgHZKn7/OemHU1K08pBumd4jVp
         laYqQPmBiBGZmA79H46O33iT1xX2/OgxJln0OcZPRcQQfpgWpViqGZ9DTccTfErkgxzF
         2pPrg0aeq8Y1AFk1IBc69zfknyDdBFLnhlvFhIA6Ylg3p6XDpMUBZkEaJseo1fnIL5Cr
         GxKW/b5R9O84leFx2V6mJKAWFaUnnXsczM++CDkf+VBYX3A0LHDARjFH6gsOwPkadTbB
         ODGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KhzeSdCa;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ya7HqwCw69xwFJXqfyDZiom0bo+GYMjSx1BDgZ7rL2w=;
        b=OfeLdku0RP9RESBIcy93i/qDblNveQz70dv5piTLgr+QW1VfcPMfl66lYwP/D2Ingo
         NuJ709exoVobHrS+3uRADX/NYd/7Hh91ZqRjjTY2Hu+KcHuYx8IdnN5xRfNpmav2ef2/
         1KxpsaX1HsSK4gzHiilI80tpYqeRd3h1HFfGSZn8GNYH0ESwsmQJ4CtcKin0VKFmxBYj
         zf7So+Ke5iCMZFsREeLWyHgMYHTC7ez8wOPARHOyAZFFQIFExX90jbfhWjqXlDBolQrI
         SOT0Gb5uBoWqXHbUy8nm66pb6CH36hfQCFOvoc8tb8Ser6gCIU4xPNHibti+dYapwiIu
         9/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ya7HqwCw69xwFJXqfyDZiom0bo+GYMjSx1BDgZ7rL2w=;
        b=PQPy/O0faukOr2L8xo0kxgRkJfSkwTRMg8Wx4Oq/VcEmmIiqK/DLeVlOlZ8GiZWb+2
         /L/OqvLJG5s2zDRLnHMTMcGZt8JJ2q/2Mm9dh38XgDFuRn0npC8km6hfuSFKVV5MxEzx
         2Ol74qrHlziVnIv5mfagZjS9DJ5K8b/SB65jxtE7Cj7C1E9DwnCR0+llbhIa7/69Ognb
         XPuvH6HgEOdMl0GobqiNTnrIjYoPhtM+5jYo3NdFiyQqj3FnTcywmWaHJDfD34jO59xb
         O0uiF9Dyh2SaVF8nUKJFKakzGGqxHuttJLPty18cT9q6H/8ApMjwkHerF4UZGDGJJZfo
         +Xsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZrgnW8/RwJ1S9e3mjiyrmm7gqiR6eAAiW5mUrIXdZeHpfUQiJ
	43YJYuP3Pw8/bijweFaqDgE=
X-Google-Smtp-Source: ABdhPJznthULqfYX4HtyVdXUWfmfrotIkCrly60tr3Rz5AhsePgNXDxIbi1VWeWrdlT11iwhe6eazg==
X-Received: by 2002:a4a:8c73:: with SMTP id v48mr1317081ooj.53.1611264632166;
        Thu, 21 Jan 2021 13:30:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1309:: with SMTP id e9ls974652oii.4.gmail; Thu, 21 Jan
 2021 13:30:31 -0800 (PST)
X-Received: by 2002:a54:4489:: with SMTP id v9mr1178982oiv.154.1611264631787;
        Thu, 21 Jan 2021 13:30:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264631; cv=none;
        d=google.com; s=arc-20160816;
        b=rFUgOT/ZV5uty6FPQSCZJS8FiotWnSwIjtgeI4Gj3m3WbKXf0SgkvcsxUlSY9Xct4X
         ic85MgZOhuyVpG+YUz5V9VqybZxYr3HVbFANcLt7qdgJrsCam/dDbT06SypTFgxBNYCn
         ysIIqQOMCbo2U0Ckvxve388dhnlX9Yh8Q6LUKjEgCCx6QxLF5pkw1tTHI4jeshrNIODR
         JcFdENk1qXiYauLSsiQaOYzw2X6ur6LBAat3O+BlXvok2GR8k0AB3OAZZCzuRcSwuX8R
         DG6QBoX1G9NlEZg/Uuo7yQ2IvgCXYmzHwgkLi9uM8xsnNsDoK+bhO62ITJnHFimQuUur
         +5UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PD4RqvfCsC8+iWYehujEIqD8nLBwTnL6KKSCiDK9Stk=;
        b=liKeimtjrXWyPxDPkO4ELSEZaHeEjKDzylumlviNkmeuL1zkiiwChnSa22M70pm0Jj
         GjnB/6kKzJE2utethq8+bhhtJpbUx9Qaw7tlgSf+50uNxVcl7gDwQx8yBxDkNT6sBEne
         T2znX+kbOmJXNbJFHqR1A8YTOydBW+vK5zNIioBbFW1+NU5+x6x14ei3Clfw/UKmuYKx
         ibpvIvFSt5o0FGB+nSoqzZccSAZx+W8Mcgr1y5LQLCwqKNrWrOTWeVYUZZcLnzGPY1WR
         RpzU0OQBYUJ8+A4TS8vy0QngzHyn90qnU5po89xhY+eLoHwwlz4YFq/AepI1HdWyTWHr
         qAmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KhzeSdCa;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s126si338510ooa.0.2021.01.21.13.30.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-DjVsEwslNXeElyJxK51zsw-1; Thu, 21 Jan 2021 16:30:29 -0500
X-MC-Unique: DjVsEwslNXeElyJxK51zsw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A25515720;
	Thu, 21 Jan 2021 21:30:27 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D527519C59;
	Thu, 21 Jan 2021 21:30:25 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <len.brown@intel.com>,
	Pavel Machek <pavel@ucw.cz>
Subject: [PATCH v2 17/20] x86/acpi: Support objtool validation in wakeup_64.S
Date: Thu, 21 Jan 2021 15:29:33 -0600
Message-Id: <269eda576c53bc9ecc8167c211989111013a67aa.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KhzeSdCa;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

The OBJECT_FILES_NON_STANDARD annotation is used to tell objtool to
ignore a file.  File-level ignores won't work when validating vmlinux.o.

Instead, tell objtool to ignore do_suspend_lowlevel() directly with the
STACK_FRAME_NON_STANDARD annotation.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Len Brown <len.brown@intel.com>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/acpi/Makefile    | 1 -
 arch/x86/kernel/acpi/wakeup_64.S | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/acpi/Makefile b/arch/x86/kernel/acpi/Makefile
index f1bb57b0e41e..cf340d85946a 100644
--- a/arch/x86/kernel/acpi/Makefile
+++ b/arch/x86/kernel/acpi/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-OBJECT_FILES_NON_STANDARD_wakeup_$(BITS).o := y
 
 obj-$(CONFIG_ACPI)		+= boot.o
 obj-$(CONFIG_ACPI_SLEEP)	+= sleep.o wakeup_$(BITS).o
diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
index 9c9c66662ada..56b6865afb2a 100644
--- a/arch/x86/kernel/acpi/wakeup_64.S
+++ b/arch/x86/kernel/acpi/wakeup_64.S
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 .text
 #include <linux/linkage.h>
+#include <linux/objtool.h>
 #include <asm/segment.h>
 #include <asm/pgtable_types.h>
 #include <asm/page_types.h>
@@ -128,6 +129,7 @@ SYM_FUNC_START(do_suspend_lowlevel)
 	FRAME_END
 	jmp	restore_processor_state
 SYM_FUNC_END(do_suspend_lowlevel)
+STACK_FRAME_NON_STANDARD do_suspend_lowlevel
 
 .data
 saved_rbp:		.quad	0
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/269eda576c53bc9ecc8167c211989111013a67aa.1611263462.git.jpoimboe%40redhat.com.
