Return-Path: <clang-built-linux+bncBCS7XUWOUULBB6XEQ6AAMGQEYFOHSMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 591912F85BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:52:28 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id mz17sf6642580pjb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:52:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610740347; cv=pass;
        d=google.com; s=arc-20160816;
        b=PS4hgcUu4QZY/1vVGhjjZBnlgJoD+VO8hePaz3Iv4nOSVu5WDSzinccsk9Lg5q5tY+
         EwNNZBZC4h6JKWCMp0QM5I0zAxhBuAktfWQtaz/OBnmmYBF1MIVLakYfZNHFRcCJ5UuK
         LGOFkCrVphd2DCpppa82ALWxJiR/wDERBGpwgucS1A91pfn/3KSo9QXjQDqTl6FeMjKj
         x9hin1Co5awZ3tJSRfMdpaxCgAJS9yoo3sP6XWYQsqCexpDriryVgHdvYpqdM2L95Dpf
         zeEp46BsBuTyu1iua7ura1uMRpxJmWiTCVrZ8KeBYeUvNBUNB0QarGep7ercmJezCntf
         fzjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=bTFOXR4Fb/fFd1pphwEo0b1MfsiBOxW4kvWKwFJoBEU=;
        b=iun9jErxlHPwToNn40oWfq5bpocHllR8th/pZC50oDfCj8dE40OXUWcHPm+PMQN8ib
         jFi1nsmIrsf1KRgM7kU6pqwRwJMr0L5CSpFqRQvq7fYAXdjxItQN+ZNXpbjeOj8C9dbD
         +ZUSSxHjXN9DPxsdnW1XKSWGpEa8dqLZ0CwiBU2rJx7Gp1VtMJ+iLaKn2BjX1oljj+0I
         j3f48xG8XQ60ADi6JZdfCkoVQ8gBAVGLrwPU9gyPAbfhyFV+fxlLHIkpx5mNsdRuIyxy
         5ayWUd+iehPyhZ1nV744RS57Bsyx/6gEviIHCOgmzytctxcZvmCafkuclGa7AHyFMlqt
         3xXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vPUz2aDC;
       spf=pass (google.com: domain of 3efibyackewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3efIBYAcKEWwWKcUbKiQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bTFOXR4Fb/fFd1pphwEo0b1MfsiBOxW4kvWKwFJoBEU=;
        b=jAwwfiOLGpTS4dNP3SMiITjsHzSvCGESOa3ekPlPPi8X3MXwnCL8saHRir5b7nA0xQ
         grphRnsb70OOvuZRV344lLyuI4MWdjAdP+53C7lTycaII0h98QV9TBEgAFjyYjbLh50a
         JAeGmts4+0nFn6VTGjulyePXuHb5HHO63KEaQ5351tWLeTuJt3Xfhc4fXZfK0X8sSakM
         gx1evEiVAog2wnQYkA4JFelcRZ49TdbZiggUzQoqs3zs3DqZcKQUWOGmjVBnAicnWjHF
         3oS7gm/LctdT1Uqg2u6hPBDjF6sKUQoj48lcXiFgZDm1SXDAg+JckYf2sI8oDjjoSsVL
         fVSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bTFOXR4Fb/fFd1pphwEo0b1MfsiBOxW4kvWKwFJoBEU=;
        b=eukuJ9pZhb42PlXBhCZNd4mLF/Sihn376Kc50Ufi6xpFR9tjkYGQR8ZIgGZRjw5bJf
         MwXErCgapB8/mRiDvnXYabz6t56yVdxfwS3QKw1j1ltJl8ai/fzMBAX8YKOcWN9/jkgC
         NzA8TsRTGhp+FgmpVKv6r8F2NzJipzPb3CHq4AuRwXBicypIKHqwPHBkzK7cIY9BR1dN
         6mDGig7nJSiey1D5GXXopke62jC2QmI7/BW7ZOnHpa7ZO6zx/CqZ41muwyZ9e1zM5f47
         ctAg3FQO+nxImd9IUb1lzFQl7T7EkneKLkpdcKsHCYukkie7hU4UzBQXnMrqEHTqdTaK
         uLeA==
X-Gm-Message-State: AOAM532aLHSVqrifda3tIYpHflVuUbwCNTcChWNjfaPDMjSFcjYdoBbd
	W0x1ShIsGZ2Mrc8izZ0T4UY=
X-Google-Smtp-Source: ABdhPJwE7TN757uisq4i9Ny7crw/JPjIwPiV6SR4jOGtjzCccREyAZPT0TFJckVYN6zZtFPg9MNS/g==
X-Received: by 2002:a17:90a:7a8e:: with SMTP id q14mr12357977pjf.200.1610740347087;
        Fri, 15 Jan 2021 11:52:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7409:: with SMTP id a9ls5135252pjg.2.canary-gmail;
 Fri, 15 Jan 2021 11:52:26 -0800 (PST)
X-Received: by 2002:a17:90b:1087:: with SMTP id gj7mr12015740pjb.41.1610740346491;
        Fri, 15 Jan 2021 11:52:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610740346; cv=none;
        d=google.com; s=arc-20160816;
        b=KDoB+yke6ZpXmUmChUCld7kVsEY84rfe+foEQQXWNklxxvNMhaSp5hREwjOp3seJ6j
         eK+l8K8l7qSCL0wIoaqaMrgM8opUCm1U35k090C60NxlyNX0LzrfYbVTK+zs3wS+Isxr
         VOs8zBCySkA0JSvNLbLIIgISn9XVYy8UeOdMCU+7VqhMVKhTT1vIBkXJm0hrs9Gf5cdI
         bz6taQAD3HCvi4EB/HsGverIXXed8k2ZvhWChEtani/gSOG6Rr9yyh8sNfwuomQvcKHa
         RpUvcwDuoWmtSC/CkH2+mofcSe5WBEnJfE3r3KgMFQMv9HqXxGEymMo9bbtlywhToxqk
         JRCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=hIBuX1lFcyKuQyrZ5+wCeMHBsoAjyJ/AkMUpbHJsyDA=;
        b=SxAj+8buhyaHzqo8GkF6kDDPTZtEzfwiNCoci2c3D7gzoO0vRXf1XeQzWD1ygY4TFS
         QNHzw0pscm7ISo5IStAHMnGfpDbbiRtxikKgD9wXQusoEFs+oVQjbsAeZTSKKOXxm5TO
         7EF1fVRMmviTEDRo7e6CR1wNxD1/9VLnyHeJ9U9Lgs/MKqg8r/ET4W6v0mWdDDFpsKem
         49+KbvNiGqZPYquj8Q7fNXdIBMeAgl6I5uGYd+lnSfrQuSs1WsjxifRjtnfOgo6GS4JS
         1O0B5F1ZP7nRjS4MJnMcWAW3KRV6fhTt6PeuheKnJNC9JR/xcCnM0i1cf2/uAknIvIVS
         X1gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vPUz2aDC;
       spf=pass (google.com: domain of 3efibyackewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3efIBYAcKEWwWKcUbKiQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t22si718946pjg.2.2021.01.15.11.52.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:52:26 -0800 (PST)
Received-SPF: pass (google.com: domain of 3efibyackewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id p185so9069087qkc.9
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:52:26 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:ad4:54a3:: with SMTP id
 r3mr13796004qvy.26.1610740345862; Fri, 15 Jan 2021 11:52:25 -0800 (PST)
Date: Fri, 15 Jan 2021 11:52:22 -0800
In-Reply-To: <20210114211840.GA5617@linux-8ccs>
Message-Id: <20210115195222.3453262-1-maskray@google.com>
Mime-Version: 1.0
References: <20210114211840.GA5617@linux-8ccs>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
Subject: [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>
Cc: clang-built-linux@googlegroups.com, Sam Ravnborg <sam@ravnborg.org>, 
	Fangrui Song <maskray@google.com>, Marco Elver <elver@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vPUz2aDC;       spf=pass
 (google.com: domain of 3efibyackewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3efIBYAcKEWwWKcUbKiQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
on x86.  The two forms should have identical behaviors on x86-64 but the
former causes GNU as<2.37 to produce an unreferenced undefined symbol
_GLOBAL_OFFSET_TABLE_.

(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
linker behavior is identical as far as Linux kernel is concerned.)

Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
external function calls on x86.

Note: ld -z defs and dynamic loaders do not error for unreferenced
undefined symbols so the module loader is reading too much.  If we ever
need to ignore more symbols, the code should be refactored to ignore
unreferenced symbols.

Reported-by: Marco Elver <elver@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1250
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Marco Elver <elver@google.com>
Cc: <stable@vger.kernel.org>

---
Changes in v2:
* Fix Marco's email address
* Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:ignore_undef_symbol
---
Changes in v3:
* Fix the style of a multi-line comment.
* Use static bool ignore_undef_symbol.
---
 kernel/module.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/kernel/module.c b/kernel/module.c
index 4bf30e4b3eaa..805c49d1b86d 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2348,6 +2348,21 @@ static int verify_exported_symbols(struct module *mod)
 	return 0;
 }
 
+static bool ignore_undef_symbol(Elf_Half emachine, const char *name)
+{
+	/*
+	 * On x86, PIC code and Clang non-PIC code may have call foo@PLT. GNU as
+	 * before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_ on x86-64.
+	 * i386 has a similar problem but may not deserve a fix.
+	 *
+	 * If we ever have to ignore many symbols, consider refactoring the code to
+	 * only warn if referenced by a relocation.
+	 */
+	if (emachine == EM_386 || emachine == EM_X86_64)
+		return !strcmp(name, "_GLOBAL_OFFSET_TABLE_");
+	return false;
+}
+
 /* Change all symbols so that st_value encodes the pointer directly. */
 static int simplify_symbols(struct module *mod, const struct load_info *info)
 {
@@ -2395,8 +2410,10 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
 				break;
 			}
 
-			/* Ok if weak.  */
-			if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
+			/* Ok if weak or ignored.  */
+			if (!ksym &&
+			    (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
+			     ignore_undef_symbol(info->hdr->e_machine, name)))
 				break;
 
 			ret = PTR_ERR(ksym) ?: -ENOENT;
-- 
2.30.0.296.g2bfb1c46d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115195222.3453262-1-maskray%40google.com.
