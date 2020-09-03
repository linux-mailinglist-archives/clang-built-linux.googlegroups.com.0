Return-Path: <clang-built-linux+bncBC2ORX645YPRBL5FYX5AKGQEMTNYHFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ABD25CA66
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:44 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id i42sf2958422qtc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165103; cv=pass;
        d=google.com; s=arc-20160816;
        b=RWQOp6PzFoffvPXsu3V+evyjw01i5lwdFm2VOAseN5TfoapR6X4KkXt2Jr3fHJWpkr
         +wvi8dDtyku+j8eyNmxA8tyzAPdUFloOSw60gM/2BqxrLEpLxqXT/Da0d8GsrhBoLLHY
         gXHvzvEjNBF0xL/YMt59+FqEcRDvTcedc8r8WBuBzNZDE5T/9lXmg6wSfqya8YHTVSZI
         iulx8xG4revXrQyM/Fd6Fco+p6O+wL6F26/Bk+QYEzUEGvNXlWIcmVGu7WOVCKHsfp3n
         ZtqpFaWEQTrqojLrROWs+tVKUUa9cHDfxrytcoBa0ebc6KAospIrkyGAWaCl1rslb34l
         mfHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=DMpx6NQwEUzUSboDF9ep3ZyabCMB/XtXzalFokRMxEU=;
        b=u83ZQYcDogjq/AJJqXC79zs5kPoqj9J/+NEPj/PuCCVRM/B7YlOxbjpCAhOy7kIVRZ
         6osUrVpmPzNigdOkYepgeI+0H1SO/ixMzmbUQ3mA7En7W7m8f4+qTDJR/QZr6odlIvuJ
         Bd37CHpdcFtpWSdRTqdEHiCxHlZCIen4VoocYDSZtEgMvWYUjSW40WB2QxdwHEvmYi6R
         /vHAR4ZHyWKVAiNmCv8NW/PFlt5EWfVbLvJ0QSO5EDSOBfa+zoWYiXJ1pepI2ZbQZQoB
         J/+WAUd48KfeJqzir5AtLlBg8OHbK0Azr1MiwhW13CJzveZYCxX2qrqWLQ0JhUcPlMDH
         0xoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W5E0fdTW;
       spf=pass (google.com: domain of 3r1jrxwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3r1JRXwwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DMpx6NQwEUzUSboDF9ep3ZyabCMB/XtXzalFokRMxEU=;
        b=I7x3FdwVTsbiyMZVveg/ytjiBn3GTo/+M3o8zRtgAZEwOAkh7xZGiwKMjUo87hfXDD
         PXEnzUT0enybWzbzt26qVR89xG4BOJzqColOzTHdpYua73Ht3i/9gCxL1XokHv42n8ho
         UTp/LSH6SXPykdZmi4/sDnAraIjvkNZVLtpdPXiEloClAhUuEDJu31JItC98p8WGet5c
         O+R22cfeutU7YjS6TennAVDnWbGpYsx+pQZSKCE8aAi9YkXoBHiWZjud9v8OdBbezSaE
         74KhhcVzg2l8dLpqprXEUaWIupMaHi0Q4TtEn5puSll6hvFC3aUcVc7E5z7rUh+tPTDk
         LNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMpx6NQwEUzUSboDF9ep3ZyabCMB/XtXzalFokRMxEU=;
        b=N6r9G7chwOpKuMqj9FkKIdNY6l0j1d9XadidB+Z6ubXL9JLVxrgcCK5WJzZw5ICDvi
         M9514pn6oXSTi7lozOmBY+C27IX+UJGMHHTV8n5yY2ssKO6PvLfsQJ+5DUWqnFX5rnym
         rfqrC/NcwNvt2MmZ9yNnQEix1q+qchUG9EYnpntWZfP+N0uDnfSv+uifCGX7UJX/eukK
         TYfj7M736t1S7Vf6FY7of0Xb8qccPvArRzibqkflESWP9GwEh0P9YIGF3lTi4NTi2LTf
         m+SGTg3Lh3JKnEDG/+Ok3zW2vyvQqUaBz0JT/ygTPGgR0tAwKwdfF2Jqc6WqapeczTqH
         wthw==
X-Gm-Message-State: AOAM533jh7bEyyF11jT3v6t6TYz2QGwKwMu54CKxa6gIyUR77o9Xnmaz
	7WIRA7KcMS/yMx1rHEuu6DU=
X-Google-Smtp-Source: ABdhPJz/ur3Jh+NWD9q5/kiLcmKtv8xFVwYtN1p8IiOo2psH41rAYBgG0Mj7/Kfgks74rwQBwK1hPA==
X-Received: by 2002:a05:620a:20d4:: with SMTP id f20mr5092758qka.222.1599165103832;
        Thu, 03 Sep 2020 13:31:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d6c7:: with SMTP id l7ls1633688qvi.8.gmail; Thu, 03 Sep
 2020 13:31:43 -0700 (PDT)
X-Received: by 2002:a0c:d64b:: with SMTP id e11mr4698187qvj.169.1599165103416;
        Thu, 03 Sep 2020 13:31:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165103; cv=none;
        d=google.com; s=arc-20160816;
        b=crjlkj34KHMxbCQ9Eyxh0L0XoewI05eqeesj/QMDEbCinZyWft/VZk7f8PhL1PcWLA
         9x/oX5DOyPniW7jg78pdIdtZA2oNPB0RGyK5yzpMMtB8ZwBMAX55IDiNY3rSc3qawOpv
         +9F7QLg15DGc/dbMsH8U0tmekwWemTwvIgX7oHyrk7PxrMUEty+x0XnaJ7Ig3U2dWptD
         W4K4qmeHw6EQw94gyGN9EzyZ53mxnqTCV6Q0HWPgKi85QPxsCUqiRqfF6AhDSBi0qTq8
         ZWsWqoE5YilAyZB04yeAdjfCsMS0snWR5ndbfqkgWz85sTUaNpK6SBJ9H0Pp+ALSzWk/
         77dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=DRdAryjq8aJ9FhWbdHsWSPKN6ISJIFMAFBJf/ilStC4=;
        b=CNvl77DwnO1zGZ13PUxVwMN2soaIVs8HMbmh0a0nROzSYey4/Gla+swQe9hFLdOtFr
         PLp7e4cZWkUQKenp+KMJytDilulr0mcSx6Q7+5SSFwcDOCPuhyqGHDA5FOvV9OzhzFU7
         5KV1CppooQcSMp02DshD5hvIQvlB75sv34rn0zELGM8KNuf6bh8Q1LPbTFxjTReLlgPg
         hd+/KJWc8tnm2laPlj0UeXohP6FymQUaTVY7M9GyIMJuwTA7F1c75pGL/PfeK2/LUYId
         dqDHHM1UC6xy1A+RdY7RqbHitSkgOJ7sH7pmP/8BIgnIp8m9r9wifLamfuPDGL7WwPMA
         zupw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W5E0fdTW;
       spf=pass (google.com: domain of 3r1jrxwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3r1JRXwwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id n26si280237qkg.5.2020.09.03.13.31.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r1jrxwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 207so3969048ybd.13
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:43 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:ef07:: with SMTP id
 g7mr4300288ybd.448.1599165103083; Thu, 03 Sep 2020 13:31:43 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:48 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-24-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 23/28] arm64: vdso: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W5E0fdTW;       spf=pass
 (google.com: domain of 3r1jrxwwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3r1JRXwwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
point in using link-time optimization for the small about of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 45d5cfe46429..aa47070a3ccf 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -30,8 +30,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
-KBUILD_CFLAGS			+= $(DISABLE_LTO)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-24-samitolvanen%40google.com.
