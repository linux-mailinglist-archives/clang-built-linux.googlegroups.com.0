Return-Path: <clang-built-linux+bncBC2ORX645YPRBWGSSOBQMGQEFPRLCEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DFA350924
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:53 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id a7sf2099755qvx.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226072; cv=pass;
        d=google.com; s=arc-20160816;
        b=KV0lFvlfWIwPSr7B2bfYJ333Yss6hKcASXqIu2lLB3dKfrpcSbxF/uJ9i0ehwGL3N4
         oXJby3yCkFKpgE4flrmNOvYqDBW3lXTJ77DCM8vX3SWRMYLgrCoTFrnvvywWuauhyOL4
         QZZdjbHtDhY9MZTN4C+bLdDw76gnrGQIxaGdoQAbvrdYIOWM+QGfw4pUL2h7k/xRqOcG
         cJM/L0cTqHruHRL/LHzpUlyzXGtYzn0O0AsbNZu36URSLvC4wsGRkPYmM9mtMRLKwbmk
         9oz7ZdVUPdqF//fKgw9+BRBq7K0GKKyRGU1toH2o/OHaxK6H7U/EdPVo4/Z3fJ/r5bKh
         DxoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nCU2GiMYYd8Pdt8zuNecMUixWEz0NICkEf/rH15icbc=;
        b=q2CENr/upYAC7Y58QOrCFLHIBJAjFUHOukX35tLGTYDXb1fDkBvDwbzZ+NeBGoxq34
         rNmq7yg2qtmu/lpcfpFVJ7r5ujAEBnjQJQKn4hreZsgcv4mt7JTIrhaGaw92/FiEnFBG
         wB8NiO1XKF7JQeIa1nK9rTGEVXwAqd1gKEpagIpo9RgHiKMfv/ffwpfpdzX3to4lSd95
         qrH7sgv2nW8y04QlRjHTc2zmGUTJ+oElxYSv22n3jIdTvdOPvw+/va+RF1pJND0M/gke
         74q8xexPbzJYm2F/mzS9qQ810Y8lD+3HBd641z/vWJO8u6p3tVH446tzbfOnkKLLP/0H
         wuWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KeQedqCH;
       spf=pass (google.com: domain of 3v-lkyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3V-lkYAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nCU2GiMYYd8Pdt8zuNecMUixWEz0NICkEf/rH15icbc=;
        b=F+WhtL2NUPrf+8rJWlKAeNJdo0oG7UYAOHyTUZTwhc32Y4V/dUjLwg6Yw/poAvFmB1
         eoxycdjObJyJGgA4TxqcLv5eTsv6X/OpqXXxQWNIJ/t9udKgztezi0xoGDNxcAE6MVTi
         +gIFAI7KwHC5JKRfLXyQ492ofpwGCy+1zOd0b6WDe9NwHaYuuzscG7+OKu5NkTulEHW4
         Q9lw+jqMJXYPR39NrgUCgDZwcsRQgaZFLLKsMCA8LM2cZtH5vcYtFQgKqtcrbefb0ZWw
         eS/FincY9k8y4TMjdpxu/FaHcErcLWb2Fz5M3hil4Ln9b8inK9QH6cP5RdkVf52s7xSl
         63xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nCU2GiMYYd8Pdt8zuNecMUixWEz0NICkEf/rH15icbc=;
        b=ljX6Eqr+sSUboAM/SOuiQoZSt1pojNGWKDFpPLP3UQbCg88VjroAG0bdWVpNRhpYme
         TqsYeLw/4qH9yHGFwYiIgTpLeY5DPGfvp9uxmvSXpeIWdXqfRpgM5VqiXCES1kz+QlAE
         1lao5NKHbg3wqvKLCVS9Vjftu6gVpqc52yMefdmfgShj6u2qM5xO/8KXmA2yZR2i0tC5
         Yr/Q0htQmSiKFXhVERjFs4Fry7SjsypTfyQXZJFl4Db6uPKNg07mD5XXdw0NpEcVwD+j
         GgLxZImmx6pbmqz4T0Qdnz9UUojTGHFrVxPddD3JqXoqE8dEazuxuG3tZ5BrBL+wKrIL
         oLnA==
X-Gm-Message-State: AOAM533YOK8pi67ZsQdBTgmTmXoH1u1VilOzYHWAL5cw/2DjCP+AJUA/
	D/6WxeoNybS6toZPuCKppIs=
X-Google-Smtp-Source: ABdhPJycoeCHI3KBJBc1qpXgKndpmGNQoJy9Gg4GSDf1jOwH0s1ajKcMCG9R6aXV61YKOL/KiMvf2A==
X-Received: by 2002:a05:620a:1017:: with SMTP id z23mr5436415qkj.23.1617226072544;
        Wed, 31 Mar 2021 14:27:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5189:: with SMTP id b9ls983687qvp.7.gmail; Wed, 31 Mar
 2021 14:27:52 -0700 (PDT)
X-Received: by 2002:a0c:bd82:: with SMTP id n2mr5221211qvg.62.1617226072144;
        Wed, 31 Mar 2021 14:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226072; cv=none;
        d=google.com; s=arc-20160816;
        b=LjDMRrmrFd9WHglFPfELhEr3yEpxZkX7roDz7oYvOjo088q8ctOGcSTmzZ4lwVXson
         C2Ppx+CRhZEHkHn5X6tsgxPSygW+ZdNhB21+ORmc05pIoUd6W9p0WtysGoj2Uj9hoT1Y
         66+Cd7dE0vel+Wh39gC2UeaVIFV80Quw3iTc3oIeEToJP71OlVhGdE5cndkrAItRSdxW
         dJCusEUkOQ2GiBF3S5mkKZ42H8TRTT9JexF2UKUEfMmxUx+IsF3QK9uHgZe4J+Jcd798
         Wm7RLumv2VMr/05KuzsEdi69W0PAq3wbBRQAbjFHBMr1Y+GwBNKKxGR+FQhMOYXqclrm
         QrjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qCxq1N1gA7TwxAMFKmL7hLg9EO4lnSukatZLoaD+FFE=;
        b=HjOHjzj8VuSm0GoLR/vbRCBQkjJjly56Uo9jrmYLKfCy96VEwNTXsU6Z7eupz38k7Q
         VIy7GhvN9q/GE0AiflI5yb7+d5tWQTjEMrcx5YF1FCt+VsZWDux6jmyawNEw7g04MfLc
         D4BLR99ihElpsKWlG8crOldQ/QQpJMD5csX9nOKy+uU1/5SGriDjWeiamXwoAO6fRVtg
         XDIpYpNX/FvZeY69sqEpLQfIbhcmdOw6JHCqluOpoR6AQ8ymYDRk9SZZg8SZxThfLjf9
         Qm3ob3fKTHRmthNw+fkysbgxMMZNhbyqgdPmRt/r2HWxg7t6IgBRy/M4gmlfmuNIjKKs
         VVLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KeQedqCH;
       spf=pass (google.com: domain of 3v-lkyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3V-lkYAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id r26si339688qtf.3.2021.03.31.14.27.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v-lkyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id h19so2374614qkk.4
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:52 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:b04:: with SMTP id
 u4mr5243055qvj.0.1617226071830; Wed, 31 Mar 2021 14:27:51 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:18 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 14/17] arm64: add __nocfi to functions that jump to a
 physical address
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KeQedqCH;       spf=pass
 (google.com: domain of 3v-lkyawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3V-lkYAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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
index ac616c59ae92..1cd7877deada 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1446,7 +1446,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 }
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-static void
+static void __nocfi
 kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 {
 	typedef void (kpti_remap_fn)(int, int, phys_addr_t);
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-15-samitolvanen%40google.com.
