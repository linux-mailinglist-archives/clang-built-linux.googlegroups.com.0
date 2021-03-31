Return-Path: <clang-built-linux+bncBC2ORX645YPRBUWSSOBQMGQEPATETPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A34350921
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:48 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id v6sf2121614pff.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226066; cv=pass;
        d=google.com; s=arc-20160816;
        b=TN8Jae/rdyxRKbI9uFvwlvvILA9q/GdjMXytpozApD0x4QwgWt0jcuJ6I1sCNHvnN9
         JMBZtkAfjMPx1Zv8GuJYC9AiqixLrsc00AgH+/PPJqV3kmksuVTD1v+1tjB5W4zWdlSj
         TgdqN9MVagx/RmfiZqpagGzdnbhbGt15unC9UO+RdWb/MQvOT7OiK/8NvmFE2xqWQlP3
         dwbge/9ngsnC0B6ZNE5hYCzkdhwXw8kdlEDXZ5XwvB6yrqDqhEdkye0PD4FtiUkoQvA4
         dtRAgkwYkTLS8b5Lhrwr9DG1IMr4gdjN++OqVNLx0rmpRwyC0vTJkVgzZM1BxEOadG+X
         HRqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=skd8VVITtNLXOecVLY6Jp/W8OXfvVUCetSg0mCtXWxQ=;
        b=kSHHqMdX0e8B4DIB1vMzt+uC65viQsdPMbcA82so2UJHKLYkLsgS+svtaDBle4+0nd
         qZjFcllf2R0Njt/rNnanUX9CBZcW/rY4IS81/iw5jZNybhVp8ZlhIYf91WGDhpKZf9nx
         LFr+5M9yppGqLR1NwdozCgJqYWvXlPGFDuMpmTcRTvEyDTP/Hj9mVrzIVwVN/KUNnK/w
         cfCxSGgVTQnwUDpv0PwEVisemjWvKJMX66xjPKl1Zgnp56q22w1UrBtBXCWgYoAqbJM7
         4LO5Y2EzxuYVkC/nRv82ozntEwyOhsMVIGcIFjviQ354qyYyeP6p4TasHQ2FaXXLfwy/
         9KFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eMFe9hou;
       spf=pass (google.com: domain of 3uelkyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3UelkYAwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skd8VVITtNLXOecVLY6Jp/W8OXfvVUCetSg0mCtXWxQ=;
        b=KICkRznnurfRzFKrHjSrhrxN9UAJQVFC/zKUh9r9e+z/4A+cdDpsNEf162RR2okODW
         yBjE5T3CRr6oMRovP/sSvgBIFqZx36WxbYphcIDLK7tcm8DsoXjK8GYchTdNSWu6jfOE
         uu2gZATFiHEOPLH+pFxeQFMw754UneUvyKxDQNBtiJ+FEhEFT4XL6xOJ7fkItm7vlcr8
         8CxY4fvzvtYVU94hSudRs4/gDdxsTWIukuteVzfuBUE+NAFCpdGleFbuf3ItcPOp1W20
         mnlXrktKJ+iQAPErBbX7fkKAQacZgGJ+67mShZ+KZ3+Bo01hrztABQKusBgtyk+GFuOo
         /nqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skd8VVITtNLXOecVLY6Jp/W8OXfvVUCetSg0mCtXWxQ=;
        b=GKKzWUAypP3ppsBA6cULV6az/aRVVXdcSD/YKL2MqiXjoCJ8HiZylq2xqmVuEpSv2t
         XNEpWo0XfbTuNQJR4eMcqDqqKSHmxazu2qLnQXb0883Yg1jcA7slXywni+ZZz9of4QuI
         eXoqSQ/vyuVg9N9ayt1q9t95VKEFbBaGGVHurLk5NoGct4BA/4f8S+8mjeglmScKS4MB
         A7IUnGJYHZlHxE/pDC1IRrMvSj36yJRzL1GHpF133v37soPgIdagvx1Q+aqXN6SlU3XV
         AB+IW5YilKx0+27F/dMKq87ftNzBn+Gp6rdZx0mrRYQeQuzwsKE8NTd2OkFLwjOh9h8Q
         KOuw==
X-Gm-Message-State: AOAM5324UQMw83w9d6nmupy/A6zcg6E0NzoiPIeT9cUGRsGIvvxZqCa+
	DHPgVi6JOCiDO4habg6NM6M=
X-Google-Smtp-Source: ABdhPJw4Ke8oXyWLF5IQHJ3QxifUlitZz6JgSSFhbvokmbSujTZbjNQseylMJK0tE3xbpBua8ykp+A==
X-Received: by 2002:a63:f91e:: with SMTP id h30mr4921741pgi.117.1617226066650;
        Wed, 31 Mar 2021 14:27:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:76d6:: with SMTP id r205ls1415416pfc.6.gmail; Wed, 31
 Mar 2021 14:27:46 -0700 (PDT)
X-Received: by 2002:aa7:814e:0:b029:20e:f3fa:2900 with SMTP id d14-20020aa7814e0000b029020ef3fa2900mr4751198pfn.62.1617226065962;
        Wed, 31 Mar 2021 14:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226065; cv=none;
        d=google.com; s=arc-20160816;
        b=04BnYvgHbNiJ43CTXaotZ8tdRTfHluXbMHCNtnal7saL6dVRpWgVt1sp4fajLrVRaU
         TwfjVcGwjY4gZxdAMgyHH/JggUx2UFqd5iFgfNXX0vtJ09T00Zo2Q61QUPQanYh7Cr5s
         YWJFqCowQXRxf5imRgwuVfru+dpYTgFv9LPBuAFYsNP3/TcYC3aWtuTD7XQgY60rIqWE
         VUgnrwuftTjO1HdjboIKTFL5lU+Dlx78i9vtdESJ+JBJkoGaIX0pZcZGJ0ASDrNltNfN
         L4p3pIqpbxIzyiYDYkK0etxJUtUW4SHOF8LJbX+Un2DeRCabnnmkT1QLMAT6zfjnL4Ef
         9AZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=u3sb7mCURY4VtmyE6zoVQ18sx7nW16pIZYxJrlMzk+o=;
        b=Ce2SfJUkdOworyDd1cbdhvGgJcjJPea5ob6OzoVhJtf9OGuxqzhjhljuCYXsNtdNwg
         0U1Py6k1CTMJOCb7EbZ0pfocg9wyFerH3Juz0zStkM4g2CS/6clJ50ZouDoTa8JCx+98
         fQNuBNgaAKX7pDdA5SiHT8zm7/tfNskHuS5hmjXbQQWspG7wkgvyLKluW4Df7jDE9zbB
         ETTQOqbqD9gwAxhiVV+hVVBdhr+ccZjdkNiPbjuTVl7/Nhy6Pk8UE0wyKbEaVL49g9f7
         ot/eyOogL8G+56a4ilFxr8ZACQOGXxXX960UNS/FIN3foePkJy7KE74jdsr6lxzNNHWI
         KS/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eMFe9hou;
       spf=pass (google.com: domain of 3uelkyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3UelkYAwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id z16si228220pju.0.2021.03.31.14.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uelkyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id b78so2361319qkg.13
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:45 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:945:: with SMTP id
 dn5mr4904341qvb.3.1617226065111; Wed, 31 Mar 2021 14:27:45 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:15 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 11/17] psci: use function_nocfi for cpu_resume
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
 header.i=@google.com header.s=20161025 header.b=eMFe9hou;       spf=pass
 (google.com: domain of 3uelkyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3UelkYAwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-12-samitolvanen%40google.com.
