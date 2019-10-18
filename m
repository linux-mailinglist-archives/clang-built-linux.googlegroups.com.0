Return-Path: <clang-built-linux+bncBC2ORX645YPRBM6IU7WQKGQEXN3HC7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09371DCA78
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:33 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id d12sf3232665ote.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415091; cv=pass;
        d=google.com; s=arc-20160816;
        b=YFl5DpVRpPDjMavDA6w7FppLj0iJewXK/m7ZXf2wAbtF4uX7EGok45eDO/6dgNf/PG
         l+mDJ8zi1wk8CR9kPXeluSagqUvw6yBtPUxjI/696YvKPHpU+Mi4SRntDXvsry506+hA
         Gb4JmEYk8/bDL0i7hNE9BHkwg7tZt0WCnvrmHJ+0Xm68tV5XGP9B5GwSAVOLZEsEoXKF
         eqLNvvTCgzNXal5fvaD9HhOvqOtyrx/v7HYKpf0vrDmcZ0TuujhIz24ATZnUw0GFWxwK
         8yb9ShUkNmyvWdz7d1DUZjdiDE/ekwKMlK3OskwDxoR3Skv50bwOMe3sp7ka3Qx0IrpB
         Ahrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=fsD7X5FS8/NwDZ6eFV02oDa06JYjmeTvxsQmoKRuJoc=;
        b=EOi/QqepUjZins3a1bV4AnOSAe2PQP6ul0r8GXgOuOWXavNMiNu55SeLYbXNCOx8j0
         gqRC0sEmrr1SRpPeiL9LWXHFYTjy4izqu/GzO4kuWI8sXM2fdPRptcOcY/iGIAMC1loT
         08srxuFuO24MIfGw4jIEeAEJ897XdORL0N7ioDxJR0dqonDqDsVo4ICsWpoeXaYjw3w1
         ArOJoAzBTcYnQg4WMkSQamTlIcHFhfAHvuZvDnIjpQJZbK+V1EgpBknN5EWqbXTTXTKC
         Iwrr97SD3uWvMTMPCrCEk75Wp+fJX8wdWJY5DMwqhnABf+LiySkXZln8y2QvEVgSZxgx
         bbFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XTGR5ysV;
       spf=pass (google.com: domain of 3muspxqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3MuSpXQwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fsD7X5FS8/NwDZ6eFV02oDa06JYjmeTvxsQmoKRuJoc=;
        b=r27G/29ihHvCHGddVAZYRozd3zrh+j3ZBXpjt+YQQ5AUpevCN/O5SgGbqypbrfgcqL
         56D6xyrvjA6NAbiaGxNSeUhUjZtlczyoRAAG0N9HY0rom1wIRYVRNtBjDVbtZx2fKitn
         2cA99Ru3cHsE+CbUOgG+AaDjSWFFP383GBn1DrMhKzLHeL7MbKC/WAvv8sgVLrabMIQQ
         1b9JyeiWX9x4S9sq1ssO2vSj8RixbUSXQ370aeH6QZ9v5GXNGD9XHyG3texciD/oSDzg
         4pg5oBmDPrr/KfCu0Iv/xx84cYGW9owwMFFMkgo+yHop9i4pnMUFGsKgKigxz2+WF6oo
         Vm9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fsD7X5FS8/NwDZ6eFV02oDa06JYjmeTvxsQmoKRuJoc=;
        b=jwHQsZry5EtVJJKxsFTEk5VUeCoPfevEaZAxHwJm7AZ4V3Dw2h02Xmvt3Bb/9xCNgG
         kcgm5LdQ5q1L4sRHz+4NJnNkbfkgqm0YX/IhJq+3bz4nmX9o0uHbinjvaRjRWxsj/CF/
         4FJOUiY3lEClPIHjw/IybXKHqm2pC/rT76v7294hL1vKq02rQcUzHBaLeR1CNycgxEab
         xZgoQwKtB/JM1DGD/secLeR/DxjXEBSh8kX9EEaaW5FsbTuR3Z44Q/wjLHUFyZTMYOlO
         YP7Del5Yc3oQdHi0XJRq+sr8QpoHy8JekbZSfd873m4J5tEwJg4QxxjsS477gvq5bJHI
         jb7w==
X-Gm-Message-State: APjAAAVFH3oK0ADxKUUcWEolBlQVo4JFiWBdC7YdaRPNWu7sjdnn3cH2
	vvtGo8bsQ/AV2jiVNj9fSlU=
X-Google-Smtp-Source: APXvYqzz2O3wHj4Lz9ifNwm0GCT3HACmpXouIDZCIkU+vuFFtCjBkPpB3r57tFyhEmGCUW7MKcULhQ==
X-Received: by 2002:a9d:58cc:: with SMTP id s12mr7962895oth.291.1571415091695;
        Fri, 18 Oct 2019 09:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1291:: with SMTP id g17ls1147868otg.11.gmail; Fri, 18
 Oct 2019 09:11:31 -0700 (PDT)
X-Received: by 2002:a05:6830:2105:: with SMTP id i5mr388453otc.334.1571415091297;
        Fri, 18 Oct 2019 09:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415091; cv=none;
        d=google.com; s=arc-20160816;
        b=blmH0xec8eFXGcb7YS39s9GDvYtG6dTz5J42/0nXeKUbVuD+pFPrHz68sLmBSYdMWU
         IQYp3bxxUmyYEf1XuzXxFv9g9Uryz/81eWEAP0KF0mLkGtivRrGDiw3bmliX2pe/62xw
         eE7X3rrVqhNo+qIvh1JjqGjVngib98qpEnjtrsOLs0+WHPpnvvGsxD9hr+aNAxVjeTzj
         I+G1Lg3ARfdcEBqAv/nSThc3HuEz401MdFZDhuegW6WDJZJgdFGbnTu8sW0vjNdOL9Ik
         0OGg9Lpo5nMSiOshc45ZCx+pliv9I9+T2jaLRFSNAhRmL8QnnkPWqwlNDSP7dr775iBs
         +Pkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=21PQYFGMSyR0vWwlJoWUR0F8CwzgoNMVM1L0Pe6MFrQ=;
        b=zzu8sKPJJAu9fb9co6ImpqdLOalSsNjl3QMLTqCgfPbz00iMNk7+Ks//lzC31B+Ety
         cLjoE+p6ghG+A182UYmVRJk8gh2z0lmNT3u9WeFzCz6+txElp+bYnXHoWH8SGplA+4o3
         pMmOJCaOlC/FfGN0sCAvM6TV1NyEvFv3Mbhzl0EIpRUrQlR86sUwcMBIRK6jTin0ENsD
         3MLRylLb4sgtRm1nK71JMpvdWb8zPKNa6nwMp/C6nanxvpDzzfq745H7cCKY+OCMI7ta
         JKXXNTYoo5p5ToE+w6msASw5abdARceKpTgmIIUHfTjlQZhrF5HNFAS0lGED/hBdpnrB
         IMUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XTGR5ysV;
       spf=pass (google.com: domain of 3muspxqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3MuSpXQwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id n10si326168otf.2.2019.10.18.09.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3muspxqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id f10so4598035pgj.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:31 -0700 (PDT)
X-Received: by 2002:a63:1250:: with SMTP id 16mr10784356pgs.331.1571415090313;
 Fri, 18 Oct 2019 09:11:30 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:31 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 16/18] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XTGR5ysV;       spf=pass
 (google.com: domain of 3muspxqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3MuSpXQwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-17-samitolvanen%40google.com.
