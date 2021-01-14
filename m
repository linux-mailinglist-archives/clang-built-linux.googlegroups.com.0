Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB7V4QKAAMGQE6BAYUOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BD62F6B52
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:51 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id 191sf10282255iob.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653310; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZV8uaEVyKGgydMG4/QwiI43Jb13LtMSYKX4e//YUYIbGTKjQlUSqxda/OWT0lX/ut
         kRTUZb7ubPldc+G//biXAJiGRwp+cPaQCg0Ndjs10lySzZUj7H9v+WfND1KOGEK6At4F
         Y9HRGjrVIkz2RcGa8Z7VVnsRjEzo5w7Ou6xOoLzAGNQFvZ1i91vdr/ZIrkxTlg8wIhgh
         1ThU7jp+ggxre5A57Ah6bGiqbb6uMVpT6J04zd25O0C6k36u1Y+s2l7ozN3d+USpsAe5
         07rt4fdeJCYstT/rUpBvwAL++EOdRo1GozA+OnuhTTJXXZvndH44IKcH2UlqkJJm34mq
         MFcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=n74MYDPlL3jHKu9zTZ4QkeQNIq05wonBQYaUWmjKN8s=;
        b=kgAcZGAt5f8nFrX9F+onAhSb11SOTM2lIoGJ5ChwUU07Po0DpK6X8XFc0WIPcFt7gz
         y6EdwEOhB8aB276rVXo5IjUXvcNQHMQ5oGKwM5BqCSYhIJypgu83Rr3psgaOo/NzwaEK
         w1/YQSsSDhag49hFgeHidY4YY50OI8rJioaT3wb8OPyOxp55oziVvo0z9cvpZC7eIYiG
         mSiOOdjzvUscMf+egbSItvrtT0i4rnIJyVxYhLQ8zxR07F4gE0RZoHGf/Se1emX0K3XH
         THdXCSJdFI8WBtOqWjOZWFfLxI8uS37IqfkX/qlyP6Zqhj/09Pqx56lcye2L7z6WiW3r
         uuPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cGHjBTxP;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n74MYDPlL3jHKu9zTZ4QkeQNIq05wonBQYaUWmjKN8s=;
        b=qTQ+PNP9rYu+mOS1t1nBFPF41SZk1LLepaYelQTMeHK5KDhJItJiG78q+U2gXvtmzn
         5i3+OV/DpPmQVfm+nM6AQrweRTxMPVRPznF4pC+D+7GBXUkK9WuSodd318ILWC/73OL2
         LlDwvWDZXQuFwh1QUFdeGGbpjKY+iBcerByIv5//ercgXjxNytsNHbgNwXtakI4AjDvI
         hLEr9/dB7YuXAdMwpm3pmN27N5b3JLjfMNPLC/q51yxjAKV/8v0mUo4mqCZmriAYoWWL
         drCZdrp8EF/q9S8taLrSAY1TtBJehqTcCUJTKZoxS5eddwXPLbztjrqGH0TGZXipu+tW
         N+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n74MYDPlL3jHKu9zTZ4QkeQNIq05wonBQYaUWmjKN8s=;
        b=Oo9IcNbQZsDlte5L9lvZg3+WPyfN2H4fptIRoN0e0uE+99/iU3deqr5FOHnNXzifvj
         KcR+ZkJwHMcOHuF2G8ghtXW9256pCmGAyuC+kGFOtqBmmsMptr+2gGIUhAhjQdwubbFk
         D0kK7gQO0WrI6GPzcxzXXmg7QInEAEw2H0sRoX6RfJK28za0m1BNmfzYNGvwXOtDNV/0
         BSreGieRuhEWDPAfvKcrZKUzKbtQtdS+81TAx+SQPQ8ThlHXcD7wsAyeYlShj7fq7suB
         OSGL5UgKQdD9LgeS5mysb8K1QKj2nLMWXR5C16AdYgdG8TZCPo3fySb2GV9+Hdg319y5
         ZVoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j+O6uZR9VAJ6C/2EMa5xoGPzlki51jyt5YW61wy+VxBkxEsv5
	b70ShAO6N0ylNw74u1W+yS4=
X-Google-Smtp-Source: ABdhPJxT+MDlbIAc5IRozazuk2xJuxoUKpYyn9H2UMt5iYenV7rwNGrWH3e6lki8+3eWGN556G3bHg==
X-Received: by 2002:a05:6602:314b:: with SMTP id m11mr6386947ioy.165.1610653310208;
        Thu, 14 Jan 2021 11:41:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls1041456ion.0.gmail; Thu, 14 Jan
 2021 11:41:49 -0800 (PST)
X-Received: by 2002:a5d:9713:: with SMTP id h19mr6233055iol.14.1610653309734;
        Thu, 14 Jan 2021 11:41:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653309; cv=none;
        d=google.com; s=arc-20160816;
        b=sMbX8IJdPdkiXxuVUe4rif+LB2d6KG8bcIqzL4sO4+C6whbfXw2T6gME73etillb/t
         ZsjjE66McC8ZfofvT3TfqLjseUVSy7pD7KoAkghJllzfXo1q7OcB7/D4d/Cqc+laOHvq
         aFusKEHoMI5cvs38//rf6UdC5VF9bpkC99kjtpFPQ23bS2U3bT7XRGENQ9y4vsDQ6tOS
         tNvnaudlTdlyj2Yxj3R2bLJMsuL95RP7QgureuZJvBlnRhi+3ounSXQYPUKQ0szxG5WE
         diCnBWaFDAYfI7FiWpIUqvVvSEpnWLea8aUGtpwflUSIizlp/ITWKivokNtcbH3vUWgM
         fHBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=s6vqkn0ZUJ9Zbk8UI1tuyg4i1alvjbstrHik+n/M+0g=;
        b=tr4w4IxVnpmKqrp1b0lTETQrPjhnUwGmIL70h79RL7dVB7krEz/X9bKQgBvoa/uUXd
         KttfdhBFfiZdC45HLAa/qzurVW9kF1Xd1qo/KLnIwAfEUBpvQ/ZuQvQjCTqumKAwHUOG
         ZP5E//QhAs1U/mLd2/aq0V6pesa6oh69ALXRzYwjRb+SyS5Zyy8GYzJQmh+9gDXU0d0g
         +y45nwtCfUu9qouhr6XYUntuVf8kJSFerhOjAbaOaV6MSmydxwwO20kqUUSqEAfXzAmw
         LMjzF4Q9dBrdQpFCJrwIPWvwdCXskDrWGNxAXk7eueerL56ioVyAWkH8oXiuyinHO6L8
         LxGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cGHjBTxP;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y16si728309iln.0.2021.01.14.11.41.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-347-AePGvTXrNM-NdhZLQk4Tyw-1; Thu, 14 Jan 2021 14:41:45 -0500
X-MC-Unique: AePGvTXrNM-NdhZLQk4Tyw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04CA6800050;
	Thu, 14 Jan 2021 19:41:43 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7BC37100AE40;
	Thu, 14 Jan 2021 19:41:37 +0000 (UTC)
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
Subject: [PATCH 18/21] x86/acpi: Support objtool validation in wakeup_64.S
Date: Thu, 14 Jan 2021 13:40:14 -0600
Message-Id: <afe0721950599de1214c7d4cc52f0c897f969e9c.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cGHjBTxP;
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
index 0b371580e620..cc6846b35cab 100644
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
@@ -127,6 +128,7 @@ SYM_FUNC_START(do_suspend_lowlevel)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/afe0721950599de1214c7d4cc52f0c897f969e9c.1610652862.git.jpoimboe%40redhat.com.
