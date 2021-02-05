Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCOS62AAMGQEHYXAQKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAE6311241
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 21:22:34 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id 32sf5072240plf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 12:22:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612556553; cv=pass;
        d=google.com; s=arc-20160816;
        b=eLqrqxNBgnQBs2gHbR4bDaN5JfaMKAmPpN4kxKeyuP7Ov+icfMAD2Rxn77+kd5z6mK
         q27UnvHt9f57jxSKUIrXwRohPh2hrKIX+EukeffPazDgw4lkodCLQ+T7ShUgMZqibKRd
         54Cs4kOT301TppQ2xthaulS3Cv0eZgTafYGFdDY9jN2TdChPJHE11++NB0pEbHrDb379
         +i0ZVjrwEBMyZGSL9YogVPiumzud5OhyreI3zekZ6zAEPKb9vIFG6gL4Bsk3B4t6RNSJ
         +XsdMtXblyhVYUc1lkVybSBGpsvmTEe1naNHtWUtrT0y8byhxVul0Lcqe/RAT0+H2unb
         FDpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=++ysUcoAhmk9+evsP/efCxWFAe61EAjtFmMRroxOiBY=;
        b=x3PCc9yCUZizDzVPMXCE+m9HZ3WC+p72D5UGGrS9FwlA/crdc8rzziRIypszt0PXx/
         Gm6UXkZeFGZvFARnvkhO9AJItJHjBFIsm4Z5D1Di3dobqP1Bxg+zVjg3IMDtvOq+uMWU
         04mO2GH0T54R27Jxs0Cjt4PXzRp9Nz1F8grz6qtl9ejsO2la4GIeFmXKpQQUEAN2G/Ap
         3ETOiH2ArRWHoAOJJLjiWGlsDzS3LRZA/tKGD7E3vYQ4VvNsT3Yrrgh5m2fTjoMwZO3C
         cdk/uvyQtV8rSrJmvsoVxDIf7W28P1xBAa/LWFMWaKmzRo4EPvoNOcgFACeiYhBBgKWe
         pyBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E64YiaWh;
       spf=pass (google.com: domain of 3b6kdyawkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3B6kdYAwKANYF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=++ysUcoAhmk9+evsP/efCxWFAe61EAjtFmMRroxOiBY=;
        b=Mcbr491EJz0wFnX2JHj/NK1UKlnkmJTQswwMEU5Rlt0C8Vq19JzuhPgX/VZzWjF25w
         miMi64Xx+yJ28917+isi+fMaFRfolL0Ui0+y804yh4YkvbG45H0MAP3uFgxElxeITnTd
         aSEt/ak3yChtBrIFUM6tnNyEMoZ97gJZfGAYUfsMKXEcaLezj9Nbs2+bKDBbg+yEeJ7N
         gaj1ga3pKKCGh2AZ0+lDlw3908zoFOiD0cz6PjrnJcTniU6ssFd9qHr4qZVMBkQjFyzw
         ffibCS9vwqacJBjaWzV4QFP1ciFuZoE39PGLe8CrWmLzmq/EJhwAXtwvnmch4x31r0a2
         vkIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=++ysUcoAhmk9+evsP/efCxWFAe61EAjtFmMRroxOiBY=;
        b=nKYqCElZp6zNlVmzKXGfeQlXPy8F6HfZvnjIUZoGWj9il0GPjvzlm4L14el1KJ9DkD
         3PBY3yAq0o+R5YEoHxV4mV4aj7cqRf28pTySJyvIOPwX6e2wO5h+6OIElQVFYZeZ/cDc
         tBOIbvKxa9hoWRL7nl2sbngEWsHMcsz3SgiJTbi8+tSb6MrhJ+QeNBTnLQ5i5tF6t98q
         kbv4zKJDtK0gk4pAxecjfx9OfUx6qzzQd82idP0nRRuw28u5nCNAFejHxqUrnquMvJCE
         Md8vxdUKEaKmXKhhsBkipczoXmIRLaR4zYu2cwNG54Owm9X3yPEREJheioUDb29V5cLv
         1qiQ==
X-Gm-Message-State: AOAM533xKtxIpNSJ/iNAJEjZEcVB0DFvF6XoJLpuWCLiVwZMGjPiQVv7
	gZ/z+Xc1nG0uVu1WmTpoH3A=
X-Google-Smtp-Source: ABdhPJzU319OuJJI3DKphSb4/hjftGFutZzRavJaEQ3k/Am44m04eLLCA68/9NNB01DP+c84/0bGSQ==
X-Received: by 2002:a17:90a:b702:: with SMTP id l2mr5758734pjr.13.1612556553479;
        Fri, 05 Feb 2021 12:22:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c401:: with SMTP id k1ls4276441plk.1.gmail; Fri, 05
 Feb 2021 12:22:32 -0800 (PST)
X-Received: by 2002:a17:90a:7343:: with SMTP id j3mr649809pjs.169.1612556552780;
        Fri, 05 Feb 2021 12:22:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612556552; cv=none;
        d=google.com; s=arc-20160816;
        b=pknouJgg/S74fDU5JqrqY6ShSTkKEIp60GpEYwI1l5C2WUrFrMq8x2opKm2Roo2lVu
         AuegGd6cMiRlbC7aapJZ+9mJuCFNMC0qgBohhy1ilZluBGzn25kssJUFqrfiraAYMdMM
         LKoOlklXpkf3yh76ew0LZJClSbhlKzqRhurpJijqiv9dtu2vwXLMFnBZHoqg36C6TtL9
         4fOZRPkEk2ELD/VolAXKITtEiCdMBvrVjuGjt20+hLp1wh2eYwgiyuNlIsf/IxSsH80m
         bMtsj2p//MYZBNrnSU7m+4jXxbBYe1Me7coRFUBHnxCtUSF2HacVFjvxSlSdUHgNhnVN
         gU4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=zaz82GgJfGxiQg+lhL31nJxKpSeV5QcLPOrAgs8tROs=;
        b=jrqLSQU4ap3HAT73nD1/crPQSFmc9pTLLPI4S8OvkDQVxY9o8iyWUu/CpQGCH48LQO
         /omTKw8UfN0SfM4kChcSFntlcW8TfJAoi21Ay0aB9vjEMkBIoF4yVRX3LxiJX+TXbGin
         8tUfRGA9fAAQesDLsjvPSuvv3cWLEQWL/BfWLdRBIftUKxE6OWTej28t7s+eB8/liZ8F
         5i5JPmEEyizgoLv3E6z4CvuQHMAMtQ/Yj1NDDV9+FojRwBbddcZxGdwqDlFRqdOUFDIF
         pfck/WD4z6W+ZRrHnUhtRkaMAYQzIQe77PDcCZwi0i0cEgYQ8o7DMvy8D5xH6FdHzRYv
         l6QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E64YiaWh;
       spf=pass (google.com: domain of 3b6kdyawkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3B6kdYAwKANYF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id i10si596599pfa.6.2021.02.05.12.22.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 12:22:32 -0800 (PST)
Received-SPF: pass (google.com: domain of 3b6kdyawkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id t5so6147139qti.5
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 12:22:32 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:fce9:1439:f67f:bf26])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:c8a:: with SMTP id
 r10mr6117500qvr.13.1612556551921; Fri, 05 Feb 2021 12:22:31 -0800 (PST)
Date: Fri,  5 Feb 2021 12:22:18 -0800
In-Reply-To: <20210205202220.2748551-1-ndesaulniers@google.com>
Message-Id: <20210205202220.2748551-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v9 1/3] vmlinux.lds.h: add DWARF v5 sections
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Mark Wielaard <mark@klomp.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Chris Murphy <lists@colorremedies.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E64YiaWh;       spf=pass
 (google.com: domain of 3b6kdyawkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3B6kdYAwKANYF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

We expect toolchains to produce these new debug info sections as part of
DWARF v5. Add explicit placements to prevent the linker warnings from
--orphan-section=warn.

Compilers may produce such sections with explicit -gdwarf-5, or based on
the implicit default version of DWARF when -g is used via DEBUG_INFO.
This implicit default changes over time, and has changed to DWARF v5
with GCC 11.

.debug_sup was mentioned in review, but without compilers producing it
today, let's wait to add it until it becomes necessary.

Cc: stable@vger.kernel.org
Link: https://bugzilla.redhat.com/show_bug.cgi?id=1922707
Reported-by: Chris Murphy <lists@colorremedies.com>
Suggested-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/asm-generic/vmlinux.lds.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 34b7e0d2346c..1e7cde4bd3f9 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -842,8 +842,13 @@
 		/* DWARF 4 */						\
 		.debug_types	0 : { *(.debug_types) }			\
 		/* DWARF 5 */						\
+		.debug_addr	0 : { *(.debug_addr) }			\
+		.debug_line_str	0 : { *(.debug_line_str) }		\
+		.debug_loclists	0 : { *(.debug_loclists) }		\
 		.debug_macro	0 : { *(.debug_macro) }			\
-		.debug_addr	0 : { *(.debug_addr) }
+		.debug_names	0 : { *(.debug_names) }			\
+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
+		.debug_str_offsets	0 : { *(.debug_str_offsets) }
 
 /* Stabs debugging sections. */
 #define STABS_DEBUG							\
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205202220.2748551-2-ndesaulniers%40google.com.
