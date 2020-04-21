Return-Path: <clang-built-linux+bncBC2ORX645YPRBMFO7H2AKGQEWYM2FTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 270331B1B99
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:14 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id v198sf10875829oia.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435313; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOQMdkXI6Ll9zYWOOa7zPzFy0nWSvLEOobRpyo8U++HEV6ec8cyzl4qbnE7uNHDLSY
         BWHTrX1CUY/fUdCilGk4c3kRTXSO92zrDQ/AC1tq94nxBTnmtMEVIGYo0iLlQuy1vV4L
         HvaPFlXMHOg3U25gzambn/rx4tYrwIkEpH0FtFyFwPl94fPxZ+YvCf18y+TZ+RxjaM+e
         reNU2iyoSmH6H9pmLSTvNCKRmjHAbaR96b96VOk1x0hMscbNSCkk3KI/xg/s6paZu7os
         sOJ4RPG0mjEFIF7NwdUdsCgaTbspFATwIY9//cJwguC8JuI6UTT22wl347/+vUq+fvB3
         RYRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/BtdsMORvFqCNMzUGAS/7LYDWl1ar+/MPPs47EEkvtQ=;
        b=TvRdtjEWwjGN1CuhbkkotQawb3KSN4c0ukUSHugEsS8q8tkxH6Cv/0hrQYlvvX87dD
         OEdvO3QtzROvSTsXhVFbHNnrO15r9JZu2JYz34rVHMXrJ7yU5ceNkkCkwoe0K1g0GHbA
         4dqEfvFmwWepKYvQtdR4NOTsHTY/D/41GNhn2M28cTw8xBAlVy9jWkKT7e3YUi/oizOe
         FjoenxJHGKUWU1S1jcZPt81wsXmtPSAGysVA5YvDG4XymAJhVH5HiRL6Bh8prutiJCtG
         iVNOEL1+nz+99jPe4OK2qTNJGF7wbsYGqObmp+ZNYaVq+pm8EvnbYUHFaOAaCAHgrg8j
         0P4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A3eUGHpW;
       spf=pass (google.com: domain of 3l1eexgwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=3L1eeXgwKAFICu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/BtdsMORvFqCNMzUGAS/7LYDWl1ar+/MPPs47EEkvtQ=;
        b=QbfSDv5vYGS68761XNlwRd8Cb+1TNzzFmxpb+u/s8Kd+0ZDsirnKfIMKoK8ij6XuoX
         KpE7LzAntS/KOmbOypT9lZWvNVFNeSHApFV/KlPMfBBYYd+SrP4DXTqSFMQcSFAfeb08
         RsppFaVzTe/n6Mm7BZBPqjF/CGdq1NOLihllVdT1QwnMhg15mudaLHPwQVTpZ9f3gH3w
         pJ3KsBcbq3nj5Q+E1ogBAym6cpjXrRFDeW40sOCTXdA32wdKbkOyWkuHZh5xCXhk80lb
         MdKXIWWSqveG0kJjQDmhkB7CygXvMiLL09gGJ/o3QSJci//zm6jqL8v4Mt2Ja+itLCF0
         FA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/BtdsMORvFqCNMzUGAS/7LYDWl1ar+/MPPs47EEkvtQ=;
        b=XW/e+aoFloNioVyJjEw5grEnrFAuwnoU5tljuDp6c0/FlYD8tc6p7cFpGM34dwZLhE
         1omE3NvDo4fS0mWPyz6JVCdmmHVj2UoxPz1X/EQJc19m+jFw3FmhAE65NcyXl9MPsOq1
         3lGXGL/RK0PFWV2G0Csw0etWM6VYbAnXZNhDD5zg6ByI5xQp0XhMl/70lZ772+JB/sqA
         JDWy2CbeQC4Aurcyfd9EWrkVI8v5zRbxAPJnB+G4J6XoqpaFRHZWh2taK+AatFnt7WKB
         BJQo2UKSQjyD1yGYXFnw0GrPWQ17dMLTZBA3c9aH74mBBQuQeybFFhUrCtzjiDAQRrU2
         v72A==
X-Gm-Message-State: AGi0PuZSPu6maVg+aAcfkD9jNal2CludqJ6vVpYg9fZ9PWqby/bt/Q/1
	ZEv3Gejw1j2doEns/wkO3mk=
X-Google-Smtp-Source: APiQypLFfIWIxcYoAhIETtZRPbSd9fizcnS8ki5AU4RcoG0/g2nYYzFEgSMqd1CP/fayFRK2bKvChw==
X-Received: by 2002:a9d:3405:: with SMTP id v5mr12489339otb.131.1587435312996;
        Mon, 20 Apr 2020 19:15:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:8d94:: with SMTP id i20ls813447ook.0.gmail; Mon, 20 Apr
 2020 19:15:12 -0700 (PDT)
X-Received: by 2002:a4a:1ec3:: with SMTP id 186mr14960488ooq.66.1587435312592;
        Mon, 20 Apr 2020 19:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435312; cv=none;
        d=google.com; s=arc-20160816;
        b=gvAE+c1kfhpq89w5AUT2aSrA3BI7rSXyoBwDDnpc0mizvZiFvZ+7fjA9Feaqq6G0BV
         89kvq8Nmd/AxGdxa1D3dwO1MfvqcvIC+Ke8N8V3b59Ta5tEmr0HiWoi+Okd4JorTd1wq
         VErQkQblPrttVUp9WBZpk8mccCr7s+lKzyCkhD45uwTr8QaFJDgTDPi4iE4JlZ+7O7MM
         /w/ZBJhpsumFsUNLWkk4UlKu0/PS58xoBBd6zOh0YTEiy1V8d7nWE47AmBuqWputggm3
         jGs6jfNIkAQvRiUZtpKYTR7bF3gYRoAhLrPUeGsjJWrS7N+FQD7UiTfAw8uc/7ae7D5M
         R7UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Kugk+73vmOylC3TFtzHwjlOoaJ/Fe5NzWOKKOj4AXU4=;
        b=XPO+dHMS/8cEMMIQmQ6Ju3ks4YF1UbrkxVwJ1eR4EGlbh/TXoY9kDhSNbhyqTBGLob
         zOenzdp/QPQYa3UTZRHdBzKDdGWQlYeZ7IdBaF5ydfSjluq7MdVEobZt2CEcwGYRvJA0
         50BfdGFwb/dpY71ttQGAJEHfTLO85KkGOZob16y0ZaUXTqMabYPF0tfHPXIZ+/GmfD7r
         /8Myo4thxIYwgwjP4wL9RdrM0L/S0fqIKMQWe3MSyLw9aW5c3Xwp5GlKziOtH8EZveKT
         7kHlYFYL8l2eCQSsBGx8oACfSJwTiGgn3V4PNBAhq9a+egYAPpzkRLkmQLIfRKovNjGL
         8LDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A3eUGHpW;
       spf=pass (google.com: domain of 3l1eexgwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=3L1eeXgwKAFICu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x949.google.com (mail-ua1-x949.google.com. [2607:f8b0:4864:20::949])
        by gmr-mx.google.com with ESMTPS id f7si147435oti.0.2020.04.20.19.15.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l1eexgwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) client-ip=2607:f8b0:4864:20::949;
Received: by mail-ua1-x949.google.com with SMTP id z20so1793988uag.19
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:12 -0700 (PDT)
X-Received: by 2002:ab0:15f0:: with SMTP id j45mr10353225uae.16.1587435311960;
 Mon, 20 Apr 2020 19:15:11 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:47 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 06/12] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A3eUGHpW;       spf=pass
 (google.com: domain of 3l1eexgwkaficu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=3L1eeXgwKAFICu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 197a9ba2d5ea..ed15be0f8103 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -58,6 +58,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -82,6 +84,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -98,6 +105,13 @@ SYM_FUNC_START(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+	/*
+	 * Restore x18, as it may be used as a platform register, and clear
+	 * the buffer to minimize the risk of exposure when used for shadow
+	 * call stack.
+	 */
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-7-samitolvanen%40google.com.
