Return-Path: <clang-built-linux+bncBC2ORX645YPRB6EWXWBQMGQEGRZRJFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id F2812358C4B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:13 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id v3sf1634614qtw.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906553; cv=pass;
        d=google.com; s=arc-20160816;
        b=P7nXFGMtOCAMENXG3uqM850kHAXSGGz+W2gd+QBKU1Bg7RGYXIARvTuzgo9Xtc/HVs
         HV3eHiMyWHXYHZKIMjGyevc0FL0H2KE24gUHZ8DarSA3n6AZOI4vmYF6rtRN5AhoTT/o
         oCRkEZ+RL+GJVqP0JGUpd/qkGk46MFYXT67SGw7QlzZdILY0fbqMGDOFGZwphDh/uKAS
         H6yPQwU8D6ympv0yMA5P0JhpONschq2fFvcrtBCaA0UMq5f/rZeJHM+KdDEpv29r/uzo
         /M8D+RADW1GyBRdi9xW7PEAO7zY0zrah9lXs5Sf/1lEuqhPiHSp1RRvn+ViKyKORUoGc
         6XTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6Q+tTkMMq40h2caPoqpY27My7OI7QTElxPDAQU1YPT0=;
        b=xehJQkBzInT0lIEQII6unQUJ1+kgoEEG1tsWMCxR22Pt6hcaj5pm4Xi/2So9UNcxNZ
         kNFrETqbZuGVfJFbIX2wHr9k+7adce9hYoCe+zBu4B/xC0baa+eJB8ex3D0yivDR2jay
         w7kttfnIwdwum117NDVHFL+3SfxaUuf8eFFJxbJWbAWXZLHWmyLfsVCPtcrWnl5wadDZ
         gRwHe/H3QtwFI8ErChHgsBtQL/YmANXrDqwdipNrz163DePi4yssCkFM9RWXO5rsZYfT
         jnlR8KWdF+LQaNe9ydeRJ3i9CNzowAFzA1XvsSAWborOq5Kjne3C5J7slVJ5hy8cLVhQ
         ynyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MHjorWaA;
       spf=pass (google.com: domain of 3eetvyawkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3eEtvYAwKANUJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Q+tTkMMq40h2caPoqpY27My7OI7QTElxPDAQU1YPT0=;
        b=r9KRJqRBSdeVWsJ05U0rZT4xfSVEwAmeIF6CDICP3BNpVfut5M02QGGtrZ8et6oYuE
         3Y/UNFvwei9m00kqfwk7oGY0WNOkGFeMsBL9Bd4cu0gcxKIaj6swIi/Qy3rM15phTOZQ
         fIYxL1KKwPavOvK6uIji28FWaQ9uPkM+Vz2RkxCnRkLivTcmOOaErvk2CZGXrH7yfqSg
         HfxSHGNEGqXPvJclUgjvKEd9DyxUlaXmpyenNK2OK/PHKUgHDhvDNyRjLzxy4axXzPBO
         PZ35pVEQElerZ5z2Azlmqv0ZVJ8F44gcPa3r0hEGdIApCf0pW5DhnPbIpeV7LIaSsn/6
         0J9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Q+tTkMMq40h2caPoqpY27My7OI7QTElxPDAQU1YPT0=;
        b=SBJXgBVY3jCArRIPN6tpFH6H2Qc9T5b5Xvw0dt0ALZ4QfgsFFjUuuNMiDl23S0RUje
         tZXr/tMldu6WxNiosGj1lyf60iVeGh1vZjgV1Jfz0RcDtdWO2/1bUTocCiwiAikEtWVE
         2v89S4XaDJnhroxWlHs+gdpTg+rMy6AiyA3zXKdhZvULAC9fqK8d+d0pK4CDYQFKRMOJ
         JBuZ6jDoVmo/CKChP0LZjCMSjYyod9zVNWfeXgQXACjj9w5nNYogYB5JOAw647U7ukKR
         gHShaYQfn89dt7KdfL8ibqw8V2IVm5LvH9Ka3hDwWO3KMz7VHIcY/SQNvT7Z8GIP6OQx
         F7pA==
X-Gm-Message-State: AOAM533EV/gam6dxAVfuGON6WP4MO6Od5zUSH/BHa1NQhGbKnaoBHP3x
	xoyQ6ZQhgqt9iaQH3zCcldU=
X-Google-Smtp-Source: ABdhPJwSM4We0XI/8yBECcXvkmGsknNtXs/GmprZxQqLKL9rKiO00u/F8y+H+OtskhBn3eShJ8ebpA==
X-Received: by 2002:ad4:4352:: with SMTP id q18mr10374724qvs.38.1617906553091;
        Thu, 08 Apr 2021 11:29:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a050:: with SMTP id j77ls3644668qke.10.gmail; Thu, 08
 Apr 2021 11:29:12 -0700 (PDT)
X-Received: by 2002:a37:a2c8:: with SMTP id l191mr10034416qke.413.1617906552641;
        Thu, 08 Apr 2021 11:29:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906552; cv=none;
        d=google.com; s=arc-20160816;
        b=ixOul9+0lErZBgRWWHQPqBv2qnGudoWIFpM9gHcKCtpOWlhWC2795/7sATmwzpDZCA
         s8fWjGUL+xrB5VeqO16ijah3+qFktmZ0ExBKwzNsWgnOGVxgno9CTA1YmBO2WBPu3Wz9
         2i9HJOtGpCJC5qGAoUo9gpEuxeKyolIgRVb0HPP9UQhApeCS/18sDn7cy+OOq342vNeY
         5wtAuEBmH4fGpkLavy7mfYYHlD/XMxxfNwa+KYpBY7OwVR/IhI4H13xCVitl0Q2103pJ
         DghbPQhJBCjW8DpIl52+Na70XWqB/LXgtf5NtV+Ej7epDC22b9JQFNauKJKBufSpUggc
         1tIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=aJ78CQ4sSObE7h7fKH9+1A4v2ZQnllJDRyYlzc3oTAI=;
        b=DUblvonDC0Vaw5EGr8HgtFGMFpfT2niv2K1vYYIf0m6muR/+/3X4CakvGrR2xzndkV
         TEkuCxtUeiKR3eM25gXnOIb2HajSUs4bcaU+1sOJKy3BtfQLF6SEVAju/bIfFJ2vtwce
         CmKm04BTSpQjOuXu51LEsNB1JohIKNun9+o+pGZ+inUMF6Yf8pSoQyl7ABsQwoR6DKow
         Lj7zJ2MJuEER8XKXdugQTPDMDZJc3t0IXmQRLa/PefcgwJ8uvy5YJcd2NHpxz7PTZHDZ
         zXUABSnvDMOspLI72xYwFefYp+JonMbDe4e0KyH496eSRNMeqbURpLDgcUoLW7GdJCSr
         +7Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MHjorWaA;
       spf=pass (google.com: domain of 3eetvyawkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3eEtvYAwKANUJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id r26si25080qtf.3.2021.04.08.11.29.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eetvyawkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id dz17so1664445qvb.14
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:12 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e3d0:: with SMTP id
 e16mr9980885qvl.1.1617906552307; Thu, 08 Apr 2021 11:29:12 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:39 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 14/18] arm64: add __nocfi to functions that jump to a
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
 header.i=@google.com header.s=20161025 header.b=MHjorWaA;       spf=pass
 (google.com: domain of 3eetvyawkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3eEtvYAwKANUJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
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
Tested-by: Nathan Chancellor <nathan@kernel.org>
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
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-15-samitolvanen%40google.com.
