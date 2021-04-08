Return-Path: <clang-built-linux+bncBC2ORX645YPRB44WXWBQMGQEBXJT7PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6D5358C3B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:08 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id s69sf571839vkd.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906547; cv=pass;
        d=google.com; s=arc-20160816;
        b=hxUd3rtvzu6rawB/DUOB4GmdwudmYuw22kj1LsVryEb4XNtVVd+9U9vJDBKL/7wi1Q
         BPj+rSwIlcxBH+ikDkcXF87Z1oJzFtrRk+7WckbHxth3dgaZKShtFjlbiwgQrv10PubH
         ezqcVTgsH9gGyzOGC9XrqixOXNYR6xiyggEPptYM58INeF2GSfpDTRQimJBEEgzDZXDn
         B09Uo6szKov4z9wwe1FUPcYMuURoQzmfAODAoWsFaw4IhVegZA3m3LBkgdRYDaTR02B1
         GZezJ4IP8S26n0Yweswwi57BhZ+3O5i43sr7Oq375kgFPtQZ4kKAIMXPsYED2sB815gG
         EZ0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LkLKKxZSgHVqvYRpumn+X8JtasFaSO2hIEkNNbkjjwI=;
        b=dwgxvCtFNICOJKTgve2cIj8YKBnntvbEYsnrmcs1zhu4O4BTKD1RK2LVhN1AUdgKGg
         mQcHbknkgO7BPJNO8Y7GWiVYOrX1g3fK2FEMvK9oPHSswq78XnFfzcEYgwX0rjNb2GSn
         v9v1nBNRvdjFLUpfzuj81h8zbuit601c+uewNze/b4JW8b7lKPr/JSHQ09/hSu2tL0fX
         M9pU7sZWQ5E0wHykFwrBDnhKWRP5ARzBSotPUaVwWxvasbaDr9FN4TsPuBz1U+SVZCCG
         WBPF/uWznoUC2GpnobU4V7TvkbSD6QW7jx2hdYGiTV3H9MR9aSk4gP37hbdGXucCw3Bw
         DB/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HDvQ9PZA;
       spf=pass (google.com: domain of 3cktvyawkam8dv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3cktvYAwKAM8Dv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LkLKKxZSgHVqvYRpumn+X8JtasFaSO2hIEkNNbkjjwI=;
        b=rEwZmxZcIJnvw0lzwgssYvfSFl4aDkZ6i9B+mvgTn6+o0C6qXOYKC5+iijbaT/s5Qp
         1/Tly5Ki3EpT4xwQNuNWSttbydAavU81sTuMvnvFKRKN2xIit4hgov8jrHbcC5M+zv3f
         MZh6SeqIsp8v/6gdAbjO29v8n+6O73x8ipVgj2XhrzN1SxnBpZ+ZY9Sx7v6XNPKNBpCB
         bkZHZ333oN0pQR50lR/rNlvvq9zCp/7ZwKq4RcioBBFHDY7TTFeSMYJGeh1YRSMiF5cV
         DRGxJuUjPxlKLuT5yRJnqJNHIRE19enbQpmuvO3JS3ofWlEzTNa1Sl7in+At9ITMoDw/
         p1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LkLKKxZSgHVqvYRpumn+X8JtasFaSO2hIEkNNbkjjwI=;
        b=iBaN7fKG6C5qvCfVyvZFRGE+VOGKkWSYVn3jko4qoI2bJo6ddcJFNoy0gnH0Svl2gA
         p5A4gHUCxLTCTzAoiUNikBFxbZzMqnyCcuT+ej1iYqV6d36v/GJ114nO8521W4CYgswF
         nOEU7Pw07Z4PC5LRNqUA147PD2JfCsXKFhvvW+lcuTt2nuGhhZt7n3T6cXDILDfKoST4
         SLnXrey4l7P7ualoS0AlDJf+pO9MV/MvPBBC+0vy1pSPT11CRS6EbomeRsALmiYLzx9h
         wktv33bxbceFWU0uB3d/QjNRjvihjqi8ij8RkhT9MFilVX7F6X9WvqCmQ/1Rld4lQkom
         yUkg==
X-Gm-Message-State: AOAM5334Li5P4MBbuPkYzcNJySoNvxagt7Pf7Ni6Y608vlSKttZHSYdF
	AOzcjnXCiOFoY54XwqQTnY4=
X-Google-Smtp-Source: ABdhPJyNfNq+wEmiS/ZecPeduq+ta6h5dV6G6SsA/vVBSLW+nZgAl1rQwB8fmm6v7JOoiXqCIBSznA==
X-Received: by 2002:a67:71c6:: with SMTP id m189mr7608730vsc.12.1617906547433;
        Thu, 08 Apr 2021 11:29:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9985:: with SMTP id b127ls83441vke.4.gmail; Thu, 08 Apr
 2021 11:29:07 -0700 (PDT)
X-Received: by 2002:a1f:3fc7:: with SMTP id m190mr7838155vka.10.1617906546932;
        Thu, 08 Apr 2021 11:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906546; cv=none;
        d=google.com; s=arc-20160816;
        b=xjc2mZVZg0+mkJNuNiHCoGm+/YJUn/Wx0KjyWSiV3M43oZJL0CBoJDplP02eI4C1NV
         wr13psO1EwcRR8JkGy/dERuQfhWYd5H0ICRBGisGP2yJprJ36kBM7e005u+c8/wKax/u
         5tj5cDEALMsRuapj6hGp+/1zpCfqdgl1W47PvsXliICVp9m9JkPPthRtYYtw4IixsAyN
         eHZkHUfTU61xdMfU3Xd/fPJx4ZIki52CyxxoZBDxuoVLZ84K6MXo9D5QirCghdMspmXO
         dFT1F9kO9e1g9YnVZSl7frQ31xqO0vsV4l6yc9IHpjKpt/H21hQFs/+9ODHvnwo3Q7o1
         5K9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=14TYqH2ENqdx8tNGRNzk0x7BZIkRzbFF1Zb7Ap7y+mI=;
        b=Lk3YNUUTOS/wbIKAel1B+KjHkajKxFzG7nzniHYoydLnsyBePDM1U5KKVDY0pSgq7N
         9/b4cgZmCMWLs6OB/jrfqdSFuflb2q7pRHf+ALFATwm6+CHeISrn/BlwtscIspBjHwQv
         rEgXIEZHuf+rZMddB/zlmIl4eoBIQUCWDDi821WqgFV1FoTZogB9ASPb92EdYKf7N6H3
         FT0tQ0PMZw17Wp/pabKvGQs5P+9ngnRilbd8o2ki6Ts47/RrDdVivXstwrq22Vsl3t0U
         jl9DUYdEoOUXNgGWo+hqaBDcEX1+SQjRF0wJnIffAyXuZHddi5ldsr51ZgJ61EVkxYc5
         6jgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HDvQ9PZA;
       spf=pass (google.com: domain of 3cktvyawkam8dv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3cktvYAwKAM8Dv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id u22si4901vsn.0.2021.04.08.11.29.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cktvyawkam8dv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id im11so1660614qvb.23
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:06 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f605:: with SMTP id
 r5mr10061255qvm.48.1617906546551; Thu, 08 Apr 2021 11:29:06 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:36 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 11/18] psci: use function_nocfi for cpu_resume
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
 header.i=@google.com header.s=20161025 header.b=HDvQ9PZA;       spf=pass
 (google.com: domain of 3cktvyawkam8dv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3cktvYAwKAM8Dv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function pointers with
jump table addresses, which results in __pa_symbol returning the
physical address of the jump table entry. As the jump table contains
an immediate jump to an EL1 virtual address, this typically won't
work as intended. Use function_nocfi to get the actual address of
cpu_resume.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/firmware/psci/psci.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index f5fc429cae3f..64344e84bd63 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -325,8 +325,9 @@ static int __init psci_features(u32 psci_func_id)
 static int psci_suspend_finisher(unsigned long state)
 {
 	u32 power_state = state;
+	phys_addr_t pa_cpu_resume = __pa_symbol(function_nocfi(cpu_resume));
 
-	return psci_ops.cpu_suspend(power_state, __pa_symbol(cpu_resume));
+	return psci_ops.cpu_suspend(power_state, pa_cpu_resume);
 }
 
 int psci_cpu_suspend_enter(u32 state)
@@ -344,8 +345,10 @@ int psci_cpu_suspend_enter(u32 state)
 
 static int psci_system_suspend(unsigned long unused)
 {
+	phys_addr_t pa_cpu_resume = __pa_symbol(function_nocfi(cpu_resume));
+
 	return invoke_psci_fn(PSCI_FN_NATIVE(1_0, SYSTEM_SUSPEND),
-			      __pa_symbol(cpu_resume), 0, 0);
+			      pa_cpu_resume, 0, 0);
 }
 
 static int psci_system_suspend_enter(suspend_state_t state)
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-12-samitolvanen%40google.com.
