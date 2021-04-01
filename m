Return-Path: <clang-built-linux+bncBC2ORX645YPRBIFQTGBQMGQEUT2MJJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A383523AD
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:49 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id j14sf4780788qka.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319968; cv=pass;
        d=google.com; s=arc-20160816;
        b=D+N1FWB4DMxixZSKdug3izog66F5NxFnrJ2OrDtVYhheTfriSQAQLEN/rftxulSLQH
         hVErtSIYDPV/1RV00RVX3/1PnKIfH1UhuEf+A7oQrG8xGryyEMKbcQFvl5e/EPZBBtg7
         iQZt/XifN5Erc7sZAxTIqgIwg4gXhAsrMKhzSkKbVQLBXyl5PzLC1QkAfMeMpBPV1rfx
         PKe/m2jeQE9AeR8Hd+FC9WcyN5rW3pVu+xkBPWWWRQ6xNEucJQq4hBPQrO4DqLUBjWCn
         TVVOIlXjyY1EoAA9L7LpGngFPPxy83+nsFdMIVp63CNmmgkTZi5Rya0f5yZKqCscllZL
         F/XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CP072iL7FLnI/zr7arDDtR/j0N20tjPrIOjRUsDsVNE=;
        b=xxLq6ShCxq8kVQOY/qFrBZhJmHrjs+HSy4PBJU0PrMNyYC0IHPe26g1EPNqVSmZOZh
         uHtjyvaF5o4TEad+AygyssIhgyV8dxlIMkg+3z4gu808dd/LPk1dS8KLkdbgR5bcNgWY
         qjkMT35SSQ3N6/hIfatqHAst/Fn+qZzyanhzPqGHMO/GnKDuhdfzaYWYmJg/VkS0SWaH
         hnuxlyH8fQau8iUNn7MbB/EgWMdzso1Lp6XTciCMv9/fHsNnGYGdq+EEyCuNBJngWOAk
         UC0qej0Ip6MupPqZcCgQpHru4fk274Pg3uCp4VcRo3m54E+H0+MV+QpP8NRi9tZEMXJx
         IJVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MUQr6v2A;
       spf=pass (google.com: domain of 3ifhmyawkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IFhmYAwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CP072iL7FLnI/zr7arDDtR/j0N20tjPrIOjRUsDsVNE=;
        b=sQi+hZ7HCsbiLzvhGkcgeGbo3cfsFxuQh/zSzr1t+gAaW/wK1w7477o0kFFcsWM+EG
         OAgZYuB+gF9TtRGMFjGp0hHlR+WE5nWZ+i0dWHMhdGQzm0+L8PA9hzHr3yw+6OrRggvj
         MyxLgCbU7m9RSzI40BVedYvc5POHdyIEETsozLzEGBjN3kYJS60owDy0u7ajFmE5dIES
         KaSRGCiViNWQsT6lh3TMjsgUyxDG2WTGwrPzedD22qiq2FMKJrmbYUqXVEaYJa44cUlS
         mM9JIyBLUnDOgLogczxzYLMm4SFOZAtyXn65vhZHLbxzPP8yAXbxMVZrZsr5NI37tT5u
         q3sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CP072iL7FLnI/zr7arDDtR/j0N20tjPrIOjRUsDsVNE=;
        b=n1p0TxaExqywLQgzl6qx0PFbP0K7pRNxhmGCS0Sqq399d/RSeYnBjsqeXx+xKbzWnE
         fvEVcOqM2Yy+ivhALoZ20mEIqQRKAVHGMcfxlB94cIw2a0ANjQ7N3i/Q/1inJLMmBqyx
         E+uJ/S3qTmD4Z3cc134J/MBDwJ8wqst5tZXJALg1LilaC/ZUB/KWfNqAcgB4sZffByzy
         3diW1FXdcqlUPN9j9fCnMUU8ltffMl66FDIyz+rhrgi6wrov79jhYIaOqMYhsyMURuPC
         zFBz1n0vJViy7rewdnAg5GLV7GweD/w9js4fQOM/jFNmH00S8AikhmClQwdEA1jViQ39
         C+qQ==
X-Gm-Message-State: AOAM530UcUgr2zt+Pfuht+89BWWn6pqIl5vn0jGb6/6mAK6xmY5hZqyF
	kcyngUIqr0OlJgLcn0wg5+E=
X-Google-Smtp-Source: ABdhPJwMNGGn95t9mr3UNv8KumEE35CEyFj2cmggwPZD73Mb00/pxQ617lTA9zM5docKIT/kLw0SmA==
X-Received: by 2002:ac8:5ad5:: with SMTP id d21mr9367830qtd.198.1617319968849;
        Thu, 01 Apr 2021 16:32:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c83:: with SMTP id r3ls1976072qvr.5.gmail; Thu, 01
 Apr 2021 16:32:48 -0700 (PDT)
X-Received: by 2002:a05:6214:1484:: with SMTP id bn4mr10643406qvb.8.1617319968410;
        Thu, 01 Apr 2021 16:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319968; cv=none;
        d=google.com; s=arc-20160816;
        b=so/Sq78coO3K61QgSW2uWAuIAja/CqH7LCcjnHh/hsR49e2GgvLoSwpG+DIyUOJl9g
         KfDt8dqQnu3lM0O+v1aBA5rIAgJOAUSX37e5ErzBGjeEdsgeN9u73MrK7hE3x6iRmi/c
         cYoJ90HDfOhz8oReAgzvvjWek240gdgIPO/xQBl3MmAEO13T6NadXR6JzRV3HZZ+De65
         3JsU3+ZzP/PYGHQbPjwFohOg2I9lsZ5LNgQsFX76tijy7pVQkcPDYU0Z+QsZ8JB2kJbj
         iV9U167mEjW7e83gntIpEH0fsDvZmW7EZmI2z+ihQ3cM2/+CrT2gu7N/sXH0jkDpNCDb
         mPTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=37WXlWpJE/MH2/fTLXwSTxqjd9/AH96OFcukUiyJmR0=;
        b=WpIBSzeokH7eTLnvqPJAl+uXU3x2z3ozMQ26KpUYlSs/WW2tbjjnNuokEIlse9WPYt
         mnmENEDUxeTCRYyMikkwRpudv+wgieTyphJGi5p3YJI5KsIaIu814+AUM2YmtSwMpqKt
         nLFgz1FljONJizXwR47lrfPMNzckq4dnnJpXLj08k1S1FpiJRdG23OIkfT15RZiVI7u3
         dwHnvbFBHfT0wSD3nN8zjp8mZh0qow4HfwjC7EZ9Trgvt42STS+vIjVVNjJ/6bR1X9u1
         smviXpopgI3kalkyJZKxVl6lPTWDug3+gUT8QdeCFBOdYbTjyj85mhkGH0NBDJbL6hKK
         cL7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MUQr6v2A;
       spf=pass (google.com: domain of 3ifhmyawkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IFhmYAwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id n9si570307qkg.0.2021.04.01.16.32.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ifhmyawkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 71so4373673ybl.0
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:48 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a5b:98d:: with SMTP id
 c13mr14426086ybq.463.1617319968075; Thu, 01 Apr 2021 16:32:48 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:12 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 14/18] arm64: add __nocfi to functions that jump to a
 physical address
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MUQr6v2A;       spf=pass
 (google.com: domain of 3ifhmyawkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IFhmYAwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
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

Disable CFI checking for functions that switch to linear mapping and
make an indirect call to a physical address, since the compiler only
understands virtual addresses and the CFI check for such indirect calls
would always fail.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/include/asm/mmu_context.h | 2 +-
 arch/arm64/kernel/cpu-reset.h        | 8 ++++----
 arch/arm64/kernel/cpufeature.c       | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 386b96400a57..d3cef9133539 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -119,7 +119,7 @@ static inline void cpu_install_idmap(void)
  * Atomically replaces the active TTBR1_EL1 PGD with a new VA-compatible PGD,
  * avoiding the possibility of conflicting TLB entries being allocated.
  */
-static inline void cpu_replace_ttbr1(pgd_t *pgdp)
+static inline void __nocfi cpu_replace_ttbr1(pgd_t *pgdp)
 {
 	typedef void (ttbr_replace_func)(phys_addr_t);
 	extern ttbr_replace_func idmap_cpu_replace_ttbr1;
diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index f3adc574f969..9a7b1262ef17 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -13,10 +13,10 @@
 void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
 	unsigned long arg0, unsigned long arg1, unsigned long arg2);
 
-static inline void __noreturn cpu_soft_restart(unsigned long entry,
-					       unsigned long arg0,
-					       unsigned long arg1,
-					       unsigned long arg2)
+static inline void __noreturn __nocfi cpu_soft_restart(unsigned long entry,
+						       unsigned long arg0,
+						       unsigned long arg1,
+						       unsigned long arg2)
 {
 	typeof(__cpu_soft_restart) *restart;
 
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 0b2e0d7b13ec..c2f94a5206e0 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1445,7 +1445,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 }
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-static void
+static void __nocfi
 kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 {
 	typedef void (kpti_remap_fn)(int, int, phys_addr_t);
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-15-samitolvanen%40google.com.
