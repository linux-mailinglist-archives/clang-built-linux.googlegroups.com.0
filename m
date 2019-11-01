Return-Path: <clang-built-linux+bncBC2ORX645YPRBLW36LWQKGQEFZ7SSQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C026ECAEE
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:00 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id u26sf11617832qtq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646319; cv=pass;
        d=google.com; s=arc-20160816;
        b=IuaHUz4otuKsASjmnvpvdiz7GHZoxNURv1CQB5bYbRm6H42LRtMEAyowRgWhELgttQ
         ET2sgaGVmWsY7jwfN3AGbDwBjzhoWOo6bd+pOVyDvf24hc6F7od/qobYJ8lPE294uRC6
         cyOxvs1MKJ0NUD692VRdLIXMntnsK0pjmSRkdYwP1HgrC47qOi/2cYbWdg6Rh+ZJnXG0
         A5JFbmEodjGlVi4+tyt2RXeOsSO9ML8jmNiG5bQi5uw81/qc+UGJ4wBRpiJ0BpMHDjeG
         FVvd/t4JTlqHqBey/+d1hxP+MwGhQSSlEuc5Dbk+cRzVZ8HaL02/AO2+uw/BKq/5SbC/
         TMEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TlI6Nhgh9RfwB4w3bzSdBWTSeGseErPdKKP2BhwABRw=;
        b=lW9Ewjx0lUSj7yrfWvs72WClMeZVG9l0VPpRN5J18siBgnmsxhahRuiu861VCLfcJD
         nWXwJCnp0XSalU2W2qViBRBaDhmSoFjWv7DqRVstc4PsnefGL+w/b0TWh0Vi8TOJOuaY
         SnOUHOgyt5RJJCZlx3Z4Ak7O0N+uox8Pyl1tZZd81PtBSiTWnK49UWuWQKynsUZuCHyk
         jwV60cWLd0dve6liAEj30UaP87qktKRtvmySAqYaCWCOfQJRiFBA2w6YYc8027e4ZvQT
         msTUkNOnVLuSSEVu8+OEMoQDpuF74aJmy2DuBhOgFvubA/RdusQiURMvICcC7xMgchvo
         JfzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H/ovEUCU";
       spf=pass (google.com: domain of 3ra28xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3ra28XQwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlI6Nhgh9RfwB4w3bzSdBWTSeGseErPdKKP2BhwABRw=;
        b=Zgqu1Amtf3ZclwAucaKgJF38wMU1Uk3EV7Ac2/BR2s2Xyhls4F0gdvQqvo6Ca/PzzI
         gVJqKY4G2PVTzWzcebmxc3hUGhWh4AFdfCohy4pgeOczfdsswByfa9D5hEiKP+sxnjGi
         PScGPNsnuTWZ2loszjmzeOwaM5oVj6nDCrKf5Z//eQsZ2KmuH09bDBxmWE5Jt+E/4v2M
         Iwkubf+B1Qiiey7CdQf27jKRMcMpDUSU5wOB6EBKjI+qwAMXyTEuBTrAMuD5DjoHigTb
         R7uB+tyiCSEonnsE6gSlbm7uM0oSk5AIafuJAoYvjMO1q3jjy+0U3OiLoz5xhleTZlOA
         bjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlI6Nhgh9RfwB4w3bzSdBWTSeGseErPdKKP2BhwABRw=;
        b=SZC6FvgjLhl54fD3moGEF2rf73nw9BZ8PsAu7krzx8nqM2gbNaPznIJMFiBOE1yjmG
         u8wz9i/ZmbQCiuW9yjS2p0p431IJh6PjAuCjvqP+WI5kGRky2cOnj/yxjKkDNTn2xsZ+
         Yaa9HyugDgvLVd5MyKaWfwmbo6BJOUuo8YoaDwWGX4d/EqifPNIy+YGmsJqUGIxxIqD+
         8cxutcIn3JUDDvrAydsvi1Zq/YZ0Z5f+RZxvJht9BySuQ4Sp7gc0fOC96NvamdQCWae/
         HsD2BkuRYYXwBaTU4hXC+PsIj64XOFhMv9T1Y6trqAfC6tnyg/8URQfVjR87H5CvGCFO
         0vfg==
X-Gm-Message-State: APjAAAWES64Tmh9ErYO96QWF2DP9FZMLwsSErdG6+8R2OdbQs1w8gOQN
	Mv/l77sqNHc3zmqplxX+qdQ=
X-Google-Smtp-Source: APXvYqy6G6XVzLQZ8xtMMzBNPOje6oItbYH5vgOly1JyVLTlf+HFsCv9f3OfYcXqni7N5A+a4+B2Cg==
X-Received: by 2002:ac8:38cf:: with SMTP id g15mr1764197qtc.254.1572646318842;
        Fri, 01 Nov 2019 15:11:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:25f6:: with SMTP id y51ls2237668qtc.7.gmail; Fri, 01 Nov
 2019 15:11:58 -0700 (PDT)
X-Received: by 2002:ac8:394f:: with SMTP id t15mr1780651qtb.179.1572646318476;
        Fri, 01 Nov 2019 15:11:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646318; cv=none;
        d=google.com; s=arc-20160816;
        b=cugngg4AuqkkrNtMivRw3MdC331xa9aGCbNdVN9X673NHJ0JTk6ijQNsL2pdW2MyxC
         0RQE411s34r+DmGARhhIxLnrhVqkIdLgEWO6RHAH7N41VbquHf7PNRh512BdBCw/8P+n
         oyIkLFUA6s2Yu0td35R9gZwlr6LfGgPOJGQkBVDGD/TMhdgx9S/XwVY+z0TTNSF6xMhA
         JlZw0DZAjF3e60F/KAaUnpqrJZeFKPaROtjxpQ8oIi9b0tf69Xk4XRsCgG4g574p71wu
         yqZ1QKX86Onq4Xkioxnrq9a2Wln9hbr/U1t5CaMQ3TGahgWVaB3zrRxlWIQqHItrx9rR
         ktlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=g+FZBFl4/jtEHUrecvJjSJDyfo/JMaY/R05FvQww7Ew=;
        b=hCt5TOZBntSQsCnKjAfpacRyA4VA16k1pHvcKN1Xag+vdHfqdUF6wJRVTBUrvogo3i
         qsSqgrHOlOLkvN3+0OLgFyGku8xFit/HErFLhrqhrUy/NpvTlv0i9TxtLU93k6fU7Sc7
         kvgmp+UDwvoM7OmuS8PG7pwoJhhAbGXYWAXZZS07SGpz1udxYdkU33BTQzyE4P8KQpcy
         r/sPfAK6fJUmouc3TxJn6GS3yoaoC8f6b8Qr0BLfDsqq4v9qBKZgDruCgrtSS342ze5M
         JfUsTWzH/BDtMQxbdSvr522kiFxrv8+7inAgyOHDzCmtqO0/3xJ3frQ13ZbrhI27SHul
         0jyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H/ovEUCU";
       spf=pass (google.com: domain of 3ra28xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3ra28XQwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id a189si592819qkb.4.2019.11.01.15.11.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:11:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ra28xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id v14so2241363ply.4
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:11:58 -0700 (PDT)
X-Received: by 2002:a63:6744:: with SMTP id b65mr15837971pgc.13.1572646317280;
 Fri, 01 Nov 2019 15:11:57 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:34 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 01/17] arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="H/ovEUCU";       spf=pass
 (google.com: domain of 3ra28xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3ra28XQwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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

idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
will result in a conflict when x18 is reserved. Use x16 and x17 instead
where needed.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592d1fbc..fdabf40a83c8 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
 	/* We're the boot CPU. Wait for the others to catch up */
 	sevl
 1:	wfe
-	ldaxr	w18, [flag_ptr]
-	eor	w18, w18, num_cpus
-	cbnz	w18, 1b
+	ldaxr	w17, [flag_ptr]
+	eor	w17, w17, num_cpus
+	cbnz	w17, 1b
 
 	/* We need to walk swapper, so turn off the MMU. */
 	pre_disable_mmu_workaround
-	mrs	x18, sctlr_el1
-	bic	x18, x18, #SCTLR_ELx_M
-	msr	sctlr_el1, x18
+	mrs	x17, sctlr_el1
+	bic	x17, x17, #SCTLR_ELx_M
+	msr	sctlr_el1, x17
 	isb
 
 	/* Everybody is enjoying the idmap, so we can rewrite swapper. */
@@ -281,9 +281,9 @@ skip_pgd:
 	isb
 
 	/* We're done: fire up the MMU again */
-	mrs	x18, sctlr_el1
-	orr	x18, x18, #SCTLR_ELx_M
-	msr	sctlr_el1, x18
+	mrs	x17, sctlr_el1
+	orr	x17, x17, #SCTLR_ELx_M
+	msr	sctlr_el1, x17
 	isb
 
 	/*
@@ -353,46 +353,47 @@ skip_pte:
 	b.ne	do_pte
 	b	next_pmd
 
+	.unreq	cpu
+	.unreq	num_cpus
+	.unreq	swapper_pa
+	.unreq	cur_pgdp
+	.unreq	end_pgdp
+	.unreq	pgd
+	.unreq	cur_pudp
+	.unreq	end_pudp
+	.unreq	pud
+	.unreq	cur_pmdp
+	.unreq	end_pmdp
+	.unreq	pmd
+	.unreq	cur_ptep
+	.unreq	end_ptep
+	.unreq	pte
+
 	/* Secondary CPUs end up here */
 __idmap_kpti_secondary:
 	/* Uninstall swapper before surgery begins */
-	__idmap_cpu_set_reserved_ttbr1 x18, x17
+	__idmap_cpu_set_reserved_ttbr1 x16, x17
 
 	/* Increment the flag to let the boot CPU we're ready */
-1:	ldxr	w18, [flag_ptr]
-	add	w18, w18, #1
-	stxr	w17, w18, [flag_ptr]
+1:	ldxr	w16, [flag_ptr]
+	add	w16, w16, #1
+	stxr	w17, w16, [flag_ptr]
 	cbnz	w17, 1b
 
 	/* Wait for the boot CPU to finish messing around with swapper */
 	sevl
 1:	wfe
-	ldxr	w18, [flag_ptr]
-	cbnz	w18, 1b
+	ldxr	w16, [flag_ptr]
+	cbnz	w16, 1b
 
 	/* All done, act like nothing happened */
-	offset_ttbr1 swapper_ttb, x18
+	offset_ttbr1 swapper_ttb, x16
 	msr	ttbr1_el1, swapper_ttb
 	isb
 	ret
 
-	.unreq	cpu
-	.unreq	num_cpus
-	.unreq	swapper_pa
 	.unreq	swapper_ttb
 	.unreq	flag_ptr
-	.unreq	cur_pgdp
-	.unreq	end_pgdp
-	.unreq	pgd
-	.unreq	cur_pudp
-	.unreq	end_pudp
-	.unreq	pud
-	.unreq	cur_pmdp
-	.unreq	end_pmdp
-	.unreq	pmd
-	.unreq	cur_ptep
-	.unreq	end_ptep
-	.unreq	pte
 ENDPROC(idmap_kpti_install_ng_mappings)
 	.popsection
 #endif
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-2-samitolvanen%40google.com.
