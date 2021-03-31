Return-Path: <clang-built-linux+bncBC2ORX645YPRBVWSSOBQMGQEOKPBWTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C27C350923
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:51 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h17sf525604uax.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226070; cv=pass;
        d=google.com; s=arc-20160816;
        b=XNTxtZe1ywCkbSv6VP93cx374bsSb/PXthPy9KPTWcTI4jq1Bzwm82FE12NeMiKLPQ
         l5eC9bylCNqIBLt2jcS61i+b17ClXFL0zSgnG62aGXxQTKFPG/UiYWFzv4Tvl3fnrh0Z
         JmZLGPtjhmOl3DZga6Ci/VDfC81KoAlg6/L4L4p/H5F9fs6W/7shFpxSwAYD4BdyoaUS
         0N4JsyVDhS+dgpezZEilB5B71IUQiwhs0m4lbRfFgikFQo0phiO9xaZrE+hQ5bnq1eBv
         eHDF6Ws/4d59Nhm6GsZsnuYEKsx3N4hCGr44sunkYWwVpkcbWqzV+MOj6BGj6Z7jo5nS
         ++Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=l5B4LTOETnitMZm8axIm/gmkxJuiab2Ili49EIqGfQI=;
        b=eUDoyYDCsAppbtHIrN6nbv5E2jPEKMS2FLUiz4g1OjukK7o7lVF3/TXdLH4/WCacez
         MQv4wzZu/aN7NVm53Qa1d3FnoT7osy1KHY0X3UJT0q93/X0/731C2vKv45OHnlMIgaPX
         grOyJTF+RN5b1Dy+93xZzVjcZxxtJkQ4gpsRcywhmB74DhecprDaxWqTY+2SEEgvIQLD
         yf35u5eNKRnMGqU0LyvKiGfrrZR6EeR33yT9kf9qouSVreku6jl/ZZcxaMOmAKMcAgSp
         CpLXh6hNeWI8gbJ9QmihueDWxh1GG4CRsqLduJyUIVLRqz1K1xdnF5smWSuHEAwBN57l
         UFHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ab418U9t;
       spf=pass (google.com: domain of 3velkyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3VelkYAwKAMQ2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l5B4LTOETnitMZm8axIm/gmkxJuiab2Ili49EIqGfQI=;
        b=gFRnmiGz+x9AS8o+QfSxSNhWHcW/OVf7jI1y6V0/wjpZN84C2g5MePpUFA7sMu9j0/
         WjFZEERx7hLnRdK3bpTc0TaII9TjwWROePgpp/WfFZK4sm8A353SZ0taW5PF8b1tAoEF
         V4J46+FEZvU70jM3uDN1euAHCMQLNj3HDOqDYyjDNrcenDtWcN5G+4IJcxOtNyvpUcrV
         6YX+RUVj5S0IFVKkYgsOMh/O1mPGSMDbAnktDSjikFm5SPzkusOqF6bY5cNGYhySYHrV
         45A46knB8LZjmHhv9edNJEzLSIBGRbE+eYhFE6lh3gHQ9CVJ7Xh+zBXzgRaFmRRxqZ4A
         YilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l5B4LTOETnitMZm8axIm/gmkxJuiab2Ili49EIqGfQI=;
        b=duxaOeK+BVB0pzPHBmXjcFke+JfZZo71RbXCpZvi1mMr63IXn+RVstKm/+3d54XtxR
         zzTDKVQYgfimULHEgdue2OMhokqgbvp2jJynbcLnc0Km3J4pgMieN2/eSI8PQtFHBNwt
         gf/0T+JTro40SomADSEi5N7PqirO+QWtEHt4wvOx0f4+Tel5rIFZK2xafyJtafU0YaYL
         ToV1RPiA88lAnVWoItZ2Vu80b6aNC8BKRl3Fb0p4PkKZOQ6LDIF2sKXjnns/sKny33ip
         v8QICmAyvAR7LA2FtRe+eRfGc4dbh4GJgjQoLELJ3GX7MuA5su9qvFPrha430MSWOmXy
         qmQg==
X-Gm-Message-State: AOAM532A1YvOzogs/plbrjjzunUtkGnBrEu79ch3XI1QJhYDDVA547b2
	g/hoU33OZ8uwgBVlFKOpzCo=
X-Google-Smtp-Source: ABdhPJwfmtqy27LjXE/8BbZm+q3rFeYK1Qa+YgVx2ICRglstBThKYhD4O6QPeZo3cSukX/y7FCRagg==
X-Received: by 2002:a67:ef8b:: with SMTP id r11mr3213345vsp.50.1617226070506;
        Wed, 31 Mar 2021 14:27:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cbf5:: with SMTP id i21ls201345vkn.6.gmail; Wed, 31 Mar
 2021 14:27:50 -0700 (PDT)
X-Received: by 2002:a1f:3ad3:: with SMTP id h202mr3397229vka.6.1617226069977;
        Wed, 31 Mar 2021 14:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226069; cv=none;
        d=google.com; s=arc-20160816;
        b=fuWU95M50ptXW3N/oZSJrHCXEflVVxOMFrVaiv1PGITVmX0fw3r+xVjwv3d5CdxUY8
         4XP7zJq96NrXvxHbBwIL7ZXvr9v6fczyscX8uwSUxHGLkEPYLt2jdJv59hu9sc+LYE0O
         eqAvniI9sBDeCIJ831/pOpIB9d4fm9zNCynDmJ6+kie05Nsp3sbRBXbRugaQcxGu+iqL
         ijOu6pWQ51CaCkarh3hCL3CrAKp+490cmNGFHOcz5kbaiAExnR9IPoveOkX0L71nBxq6
         6jxznDlEZVq/AndYgl7s0IiCWnNeCp/hvhjMpBwqCLCDQYM+dhT0KklrJ9DDu1o34Z70
         iUig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=o64BOrDovMhhQ8PDB1l0LcOi9/iKBCLRb9E2FXFROjI=;
        b=pFDb7EutVnyWhKwOXL68WR4Cjfu4kG0h83vFc14yjsFSoFtZNhLArpd8Ov1VX2xX4P
         7JAloRVAxMpcQVlBx/ldOfgMB2mSsBSGupT9jBpsP36ftPfZdIGWE1EEDwGbd0TUFuDD
         AxehbaFRYNyKieYB6eWP7xecZiETCK9Fey7fCLYBv/usZuRshE7NjDkmd/Wz/NDMxNou
         KwOZyLfxhjxgHzG9R4axF2lrtBNVg5idxq/gvWFcsnAfHA0LtAxg6Y8KjyD6zrGe6pae
         /Gf8Vp8kODn5U+CgOQ5N75KvRqDDGeY9bQs+OqwdkkpoyMr1whHijROd95ydEBhcXiKE
         jleA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ab418U9t;
       spf=pass (google.com: domain of 3velkyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3VelkYAwKAMQ2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id i2si119066vkc.0.2021.03.31.14.27.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3velkyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id b15so2096198qvz.15
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:49 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a0c:a5a5:: with SMTP id
 z34mr5299257qvz.4.1617226069635; Wed, 31 Mar 2021 14:27:49 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:17 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 13/17] arm64: use function_nocfi with __pa_symbol
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
 header.i=@google.com header.s=20161025 header.b=ab418U9t;       spf=pass
 (google.com: domain of 3velkyawkamq2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3VelkYAwKAMQ2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function address
references with the address of the function's CFI jump table
entry. This means that __pa_symbol(function) returns the physical
address of the jump table entry, which can lead to address space
confusion as the jump table points to the function's virtual
address. Therefore, use the function_nocfi() macro to ensure we are
always taking the address of the actual function instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/include/asm/mmu_context.h      | 2 +-
 arch/arm64/kernel/acpi_parking_protocol.c | 3 ++-
 arch/arm64/kernel/cpu-reset.h             | 2 +-
 arch/arm64/kernel/cpufeature.c            | 2 +-
 arch/arm64/kernel/psci.c                  | 3 ++-
 arch/arm64/kernel/smp_spin_table.c        | 3 ++-
 6 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index bd02e99b1a4c..386b96400a57 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -140,7 +140,7 @@ static inline void cpu_replace_ttbr1(pgd_t *pgdp)
 		ttbr1 |= TTBR_CNP_BIT;
 	}
 
-	replace_phys = (void *)__pa_symbol(idmap_cpu_replace_ttbr1);
+	replace_phys = (void *)__pa_symbol(function_nocfi(idmap_cpu_replace_ttbr1));
 
 	cpu_install_idmap();
 	replace_phys(ttbr1);
diff --git a/arch/arm64/kernel/acpi_parking_protocol.c b/arch/arm64/kernel/acpi_parking_protocol.c
index e7c941d8340d..bfeeb5319abf 100644
--- a/arch/arm64/kernel/acpi_parking_protocol.c
+++ b/arch/arm64/kernel/acpi_parking_protocol.c
@@ -99,7 +99,8 @@ static int acpi_parking_protocol_cpu_boot(unsigned int cpu)
 	 * that read this address need to convert this address to the
 	 * Boot-Loader's endianness before jumping.
 	 */
-	writeq_relaxed(__pa_symbol(secondary_entry), &mailbox->entry_point);
+	writeq_relaxed(__pa_symbol(function_nocfi(secondary_entry)),
+		       &mailbox->entry_point);
 	writel_relaxed(cpu_entry->gic_cpu_id, &mailbox->cpu_id);
 
 	arch_send_wakeup_ipi_mask(cpumask_of(cpu));
diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..f3adc574f969 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -22,7 +22,7 @@ static inline void __noreturn cpu_soft_restart(unsigned long entry,
 
 	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
 		is_hyp_mode_available();
-	restart = (void *)__pa_symbol(__cpu_soft_restart);
+	restart = (void *)__pa_symbol(function_nocfi(__cpu_soft_restart));
 
 	cpu_install_idmap();
 	restart(el2_switch, entry, arg0, arg1, arg2);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 2a5d9854d664..ac616c59ae92 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1463,7 +1463,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	if (arm64_use_ng_mappings)
 		return;
 
-	remap_fn = (void *)__pa_symbol(idmap_kpti_install_ng_mappings);
+	remap_fn = (void *)__pa_symbol(function_nocfi(idmap_kpti_install_ng_mappings));
 
 	cpu_install_idmap();
 	remap_fn(cpu, num_online_cpus(), __pa_symbol(swapper_pg_dir));
diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index 62d2bda7adb8..e74bcb57559b 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -38,7 +38,8 @@ static int __init cpu_psci_cpu_prepare(unsigned int cpu)
 
 static int cpu_psci_cpu_boot(unsigned int cpu)
 {
-	int err = psci_ops.cpu_on(cpu_logical_map(cpu), __pa_symbol(secondary_entry));
+	int err = psci_ops.cpu_on(cpu_logical_map(cpu),
+			__pa_symbol(function_nocfi(secondary_entry)));
 	if (err)
 		pr_err("failed to boot CPU%d (%d)\n", cpu, err);
 
diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
index 056772c26098..4c4e36ded4aa 100644
--- a/arch/arm64/kernel/smp_spin_table.c
+++ b/arch/arm64/kernel/smp_spin_table.c
@@ -88,7 +88,8 @@ static int smp_spin_table_cpu_prepare(unsigned int cpu)
 	 * boot-loader's endianness before jumping. This is mandated by
 	 * the boot protocol.
 	 */
-	writeq_relaxed(__pa_symbol(secondary_holding_pen), release_addr);
+	writeq_relaxed(__pa_symbol(function_nocfi(secondary_holding_pen)),
+		       release_addr);
 	__flush_dcache_area((__force void *)release_addr,
 			    sizeof(*release_addr));
 
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-14-samitolvanen%40google.com.
