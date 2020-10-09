Return-Path: <clang-built-linux+bncBC2ORX645YPRBV4YQL6AKGQEO5BTTKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA82288E02
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:17 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id t5sf508653oie.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260056; cv=pass;
        d=google.com; s=arc-20160816;
        b=CGvWhn2ZWh7YziGcr1k2NIItxdCiria61AAwLGhAF5SdTsrPNDNvO8gHchv7MluLl8
         QCeVVqXcmaJ42IUpBdiucCbXN3Cb1E+1JfnU7rg9t/mPCne4ruUPHHKRKg3oz37D7nMy
         kHndf+Nx8vuhpx93LzP3vj+ZxsaS9EKHkiMAK97Jf1/FtT7RPP8plpZU4+ItdIvTF6Nx
         CUWjJu4cp8TX+Lzta3up0B0bDH1+Knw7dpehwKuIP4ZQ8IPKcKWdKG89CKgbUhfwN4AY
         VldUWM0VX2v/V9QQIpa+dXnZEmXETPHfnIevbQUoSAY55gWeIkfoeWIXFDB5xVvJFyz3
         4Jbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=mqJSkq60lM+Smz319dJgluNUA6dUtVgYI4+XPomlC2Q=;
        b=d3+L0LT9eBOPSWSpq/2s44IZk8gJaXItYM3wjWC54bWsYl5kNpsx6WdrtGluUzgkvQ
         5rYk+eoMopLMLKfDjvbx+K+QT6e3ZKxtDrr22Rw2G008bQukg4asCZBaKOa210ymHaA+
         RVC2JSgiz+JISxqk5dZIWT4lrfpuy3JUEA4RTuH9a3A+s1EQXDNdRNZM1qfSkD+1uf/1
         bCwMApab4Fy5LCHKezsWybnrAL8w1C3d4yqs1w/KFEIayVxG3rqGZjHi6Da+YSFHpmgD
         BtvulwJ1RfuE5cmpwL04Suur5B3jxLW2qaYWKx1zlxiZXm9NG29J+hW3l0r7o7dTjfQf
         741Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E5G/sJ81";
       spf=pass (google.com: domain of 3voyaxwwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3VoyAXwwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mqJSkq60lM+Smz319dJgluNUA6dUtVgYI4+XPomlC2Q=;
        b=JBGu5rJTQ2OUFbCR88ab+lKIPMeFG6DaVGwc1y9vjC3OOfkDXjniJu0U4M8KJQTi62
         B2GT+1WEWuNoRd6bPzhRmaxPbpohfI6XJSobPQHQNbnTfvcmzOnr9AcaM4AYncjyYuUQ
         75pkF1tFOsC/TeHS1fLtKMRfBPtG6Q+EmnFiPzY8MCcjmisE4pwrp05rLslp3P+vOMaD
         XSPtpu5IzurKMheh3g0ny9xMVB1wbrgzXeTgdGVrqxPwCyWoye7aen3zb8BZ6dFVodKP
         4iQsfiD8PfFYZCjKDvhL68qXZn4bywKLJipS0Kd5qPYaqeG+hg/OfTkUGRja5PjJqSgX
         balQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqJSkq60lM+Smz319dJgluNUA6dUtVgYI4+XPomlC2Q=;
        b=t51EI88861eC1WE0epLscT12qxGcNK5nzvct7HFmDZoUZRTriIkPYYbv0TjQKTRizv
         1jpnknY1klsEaC+RMxthv8s69K6FVR29NhQc0qVLpEhp5nBT/dSsapJAZcoP9qe3Gljo
         F3wdZOsXJ6PG8g9XlgvhJV1sT8CFM/XlUUYam1bm7w4QtCG/064B9WUmrQhPUo4oRHjn
         g0M3S76/uyU/jGFJTJgLd6SX7gVANgf2L4KJmfyg91AAd6ZcobIfHcnNJTMTLMrnMCSQ
         gI083QGe2UBfzKaOItrUAPbcVjgQEj8cYfApXPeqf+lbKYDUuYnFgCD7KKlhEb94osK4
         2Ldg==
X-Gm-Message-State: AOAM530xeWy/QHmY6wvUHzdYJkOQh6PzmmWybUgtWDa6aWnzFuMzPxXE
	1on41xvsZQuMBsEpNuYDtkY=
X-Google-Smtp-Source: ABdhPJwCzOB4PfdYHBis7ej6kXWMPbVZOXi7zZdvfFBgW2JrJdZLh6WH8K5kyqCbNWpguQH0QdtGZA==
X-Received: by 2002:a9d:2009:: with SMTP id n9mr8690148ota.41.1602260055842;
        Fri, 09 Oct 2020 09:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53cc:: with SMTP id i12ls2239979oth.7.gmail; Fri, 09 Oct
 2020 09:14:15 -0700 (PDT)
X-Received: by 2002:a9d:6751:: with SMTP id w17mr9754882otm.7.1602260055231;
        Fri, 09 Oct 2020 09:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260055; cv=none;
        d=google.com; s=arc-20160816;
        b=nxR2zQWv3yFBjMqzFhqGlm+qjt7oYUNUC7xlONybDqYpJ3IulOt38UassjPK0b/uKj
         8c6T4dy/JLL/67pIcfWNW7BK7xNUGunnm0WF7ObKi6mPmXOHZvg6vnvyVtp9oSFf2Qcd
         2iONaZ8a9Q1rpPUbnJ50Ed5G1IXbPGmUIkEP2l5uaUcuorzdDd9l0SEosYBmCqlySoRn
         9YJt2IUj0UHcfcpRwlZARyORX3t7Kac6Epu5iQ6w60PFp6R8fGc1Kk/KnZBzxTTT+o61
         e7buPqriUYKAU4MSftOqPRqzteZaZp5jUiOkYZX74mAAuo+fF9RF3flq1Pov+8ixJvm/
         8kug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=b5rCnYz4obhAgpKHq4mgEn5Hvv5UPGIbAlGkTv5aKg4=;
        b=pAzsOwHcwIiB5M4RAn13Ti856vdGHOrhlP7zwa4gNp+B4Psr91d8VdrUJAgS9uxY44
         kumgJh2HggxsbxNePn5ahO/INOJW7uEffVGM2w7LVT15Aafx5rgR6i964Lg01uahH16h
         RGf5uFPxxtkA5wGwD7VdUCfuVU7ogmI4Cjz/mo3yROjOqNwMsVHYoUgaHgM2RvLgnwCT
         kAm0y5uu5COWJuBLMFvwxS3Vi93dDwFq432ZFhRZ24CvzeebBfZoy6Gnp/jUTvSBnszk
         Gyl4jPZldc9h/G5g1qBPJZfLaIn4CU1TWdI65zTciZAYE1io88XinLj65LsdOi/ix3gh
         rBgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E5G/sJ81";
       spf=pass (google.com: domain of 3voyaxwwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3VoyAXwwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id f16si72707otc.0.2020.10.09.09.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3voyaxwwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id dd7so6068926qvb.6
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:15 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:122a:: with SMTP id
 p10mr14125090qvv.0.1602260054668; Fri, 09 Oct 2020 09:14:14 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:26 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 17/29] PCI: Fix PREL32 relocations for LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="E5G/sJ81";       spf=pass
 (google.com: domain of 3voyaxwwkahmjrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3VoyAXwwKAHMjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
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

With Clang's Link Time Optimization (LTO), the compiler can rename
static functions to avoid global naming collisions. As PCI fixup
functions are typically static, renaming can break references
to them in inline assembly. This change adds a global stub to
DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/pci.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 835530605c0d..4e64421981c7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1909,19 +1909,28 @@ enum pci_fixup_pass {
 };
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				    class_shift, hook)			\
-	__ADDRESSABLE(hook)						\
+#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				    class_shift, hook, stub)		\
+	void stub(struct pci_dev *dev);					\
+	void stub(struct pci_dev *dev)					\
+	{ 								\
+		hook(dev); 						\
+	}								\
 	asm(".section "	#sec ", \"a\"				\n"	\
 	    ".balign	16					\n"	\
 	    ".short "	#vendor ", " #device "			\n"	\
 	    ".long "	#class ", " #class_shift "		\n"	\
-	    ".long "	#hook " - .				\n"	\
+	    ".long "	#stub " - .				\n"	\
 	    ".previous						\n");
+
+#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)		\
+	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)
 #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook)			\
 	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				  class_shift, hook)
+				  class_shift, hook, __UNIQUE_ID(hook))
 #else
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-18-samitolvanen%40google.com.
