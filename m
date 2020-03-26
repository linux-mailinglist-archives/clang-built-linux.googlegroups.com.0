Return-Path: <clang-built-linux+bncBAABBDOD6HZQKGQECLKTIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7C193A27
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id k8sf5456498ybo.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBHVRHtt0pdUntmlcsn+JTR3wQZujN99mXMQwOaSJDW+hVvv3+/T3wH9MKZFcv34sB
         /eIDBhsn0lRIDuh5NfOO6MogEi2y7DlDiPLQiuBznGKYUTSn1LcbB3yCwu2u1jCN+l/2
         n9ED9jwpGsrCVJmgip8GT6Q7FJQEkXN27syzoWqB/ZQXmXN/695Ks/b7Un3wfOh26f4u
         vF6DtO09nQK9CBMXajldvm0WEob4rjuRK8JNotAokUzKvGUjx36iOgbs9W9TkGPJyztb
         LXIuU7FhR2O4N3vs1sPuKPqK8ZxZ5nhDQCn1S5YFW27/JNnTVmePWf0JW8EHT7govb5m
         jLdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=llwYBCfi7u7o/CGjxg6SpfkqcMdSFwEu4DpBbr6vJbk=;
        b=NBrUhosgwS7Garz+2xsdGTeKwRDIwq/pq+9y1nZs0MyQC1Qe0pzn26o3qw3u9dfXYk
         waFsBzcZbxDh6FXMdcVc9Od2QCvJGY2cNE+Rx0x9Bu556uy0wNG50fJ9drOBJl3YG7AC
         uE919eZHwDNNat3GaaqXlVY0igltIzFbxZKlz4yNxU0CCjQoxURyw3y4pebUJHJ7Ecb9
         IqD71qC+GRv07HkfJIYItEx6bUlWJUdcK8lh73RrQl1z6NHrtJaEJeeQy0QKPH6qV2nf
         nkp7llccfYgg9KMtOtwkGuH6SL4pH0bJSfUHy2ZMXCwWK9eMM+QWOTCxlkWh5EFwlZOO
         1Tiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=i1RAe6MW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=llwYBCfi7u7o/CGjxg6SpfkqcMdSFwEu4DpBbr6vJbk=;
        b=X0w2W+6dfiytq/9lf9JRJjIK+2UTquMgaZ+lSgLmmSiSXMNvJI5EnCb7G+QnqIPIJw
         Y1HXT2EoNGNPAQXl/bvGl0IBTBNqtC1B4wkictsu95vYLoZ6ovLflgbiuWaq0yeDnlSc
         wCntUeDuxsSNPdpka38TExtSjN+b762jupnVWowHAWNeAHfR714Ule3cj4AEZ03LnvBK
         WhsbR+4/4f0hi+IlRQ8BcfvmOKUCKjvUg9qXknym0n4oZ7U0qXO6JXdyIxs0HLVPM6g7
         WOhbDz5VdrMhZLlXtpcNgar7v+8P/oHPbb/W8NMo83MOt5Kmhw9AQKMHLTSJw6AaXX3h
         Sl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=llwYBCfi7u7o/CGjxg6SpfkqcMdSFwEu4DpBbr6vJbk=;
        b=A3/3hrrc81PMcpKgxCYHLz7FC9oXFOYjt5Vnpc9dwx2R9p8KmGulEDEkSIkY8eJfif
         t9DA1sy8Igs/e2W/67reYv7J4rmNT0mipJrZjNYDyXzDbEXPMz6dbfRK0Js6F9kC9yIO
         OPTwOPwuVZjEeKHNhArA0yIhH8377ZQWVEm0qtOZ3MEScOZcS5CXhV4RcrsCh/K74G9a
         8vr4od038J7TEdMJTR/ccK6Vtk/kd461M4NLNXpiYTRKpPiQLhRKscvXIZfb5KZh0kxP
         s4toE1ZSgkLg23PE+g3ejlUa14BZighyqwITrToJ6joZAxX2AUBDIjjPemUHjFSiYbP7
         9lMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3pG1ZsNDUdq8cE/2yYoPn/v8tqoZOECzdC/zrb5LQXYyuvsEEF
	po9CaAoFcGJ0onVjANX11xg=
X-Google-Smtp-Source: ADFU+vv7d6g7CqE3twOEPACb+KnLGOHIewu7qS8PcZQGCrUxdV0MR32wToaYmZKBvU3tNcN6+GEbNQ==
X-Received: by 2002:a25:6987:: with SMTP id e129mr12008336ybc.426.1585209741367;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls1803291ybb.9.gmail; Thu, 26
 Mar 2020 01:02:21 -0700 (PDT)
X-Received: by 2002:a25:cd46:: with SMTP id d67mr12592806ybf.352.1585209741034;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209741; cv=none;
        d=google.com; s=arc-20160816;
        b=uRAOW2QBpNRnRbg5Iph1gE2r20MuRmYU4YTMugL5Ysf9P8bItkpMgpTYvnUrZpJ2I1
         Mv1AfvU00xLrUbHIc+UgsXlZZoxQNYanHwrrEwO+hnqvqPS99MzFtHS8PI4IM6CJk9QT
         9KR2hzanSH/MGDSM6CncIUflVVygW5eMuOKAOrbVZmmDwH2UwaXknxylZD1563YSoJYo
         K9Qv8n2h1z+6JlLYJX2HJYrm1bR+BslzF6eZfAevp/0gcSiGGsuDk0LNZDRnQ/qZUSIG
         a4BzsqQSpRZdgRJBysmq6hqXcS8+qi8Y2CnlaASbONcMeu8J58i3QWpF/vj5xsse4+kx
         hf9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=wgorDE+vuGrrNUy/MBlmElwy0rVwDu2lUfcQoJ7WdJo=;
        b=Ilb72KM01f4BHaKOGPzrQaWrzsx5x/UQSWw6vH/wDD6q8Vl8kDjoBRIIcXpGITYZWD
         I0qtPr+4JbSziLv/jQAjBxWuj45vk0InvgU5Rr0uYPW29gS3Rw7OUuggcV6jTHK2qaIy
         cMmQFh2KFHNcjJ+/52dIXORCGgeX/ckC+e3D1Ze8NI6ls48Tdbx0zcCHPR4czzODngcu
         mvl2lOiQKTvKY1szYbDzwAvtlS1pTMdELdY6WN1ieRTnGEEpUu4zyV+Dq5IHq8c1redy
         zi+k/lnoS15WsMXovswb5pSO0CnTcVm2kQit9cy9ZVNIURy6q7wUD+3FvK4U/A7n4XZa
         fyhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=i1RAe6MW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id x13si109258ybs.4.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpb002183;
	Thu, 26 Mar 2020 17:01:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpb002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/16] x86: replace arch macros from compiler with CONFIG_X86_{32,64}
Date: Thu, 26 Mar 2020 17:00:56 +0900
Message-Id: <20200326080104.27286-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=i1RAe6MW;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

If the intention is to check i386/x86_64 excluding UML, testing
CONFIG_X86_{32,64} is simpler.

The reason for checking __i386__ / __x86_64__ was perhaps because
lib/raid6/algos.c is built not only for the kernel but also for
testing the library code from userspace.

However, lib/raid6/test/Makefile passes -DCONFIG_X86_{32,64} for
this case. So, I do not see a reason to not use CONFIG option here.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
---

Changes in v2: None

 kernel/signal.c   | 2 +-
 lib/raid6/algos.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/signal.c b/kernel/signal.c
index 5b2396350dd1..db557e1629e5 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -1246,7 +1246,7 @@ static void print_fatal_signal(int signr)
 	struct pt_regs *regs = signal_pt_regs();
 	pr_info("potentially unexpected fatal signal %d.\n", signr);
 
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_32
 	pr_info("code at %08lx: ", regs->ip);
 	{
 		int i;
diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
index df08664d3432..b5a02326cfb7 100644
--- a/lib/raid6/algos.c
+++ b/lib/raid6/algos.c
@@ -29,7 +29,7 @@ struct raid6_calls raid6_call;
 EXPORT_SYMBOL_GPL(raid6_call);
 
 const struct raid6_calls * const raid6_algos[] = {
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_32
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x2,
 	&raid6_avx512x1,
@@ -45,7 +45,7 @@ const struct raid6_calls * const raid6_algos[] = {
 	&raid6_mmxx2,
 	&raid6_mmxx1,
 #endif
-#if defined(__x86_64__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_64
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x4,
 	&raid6_avx512x2,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-9-masahiroy%40kernel.org.
