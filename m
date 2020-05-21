Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBJU5TL3AKGQEDTP7SKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id EC89B1DCF7D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:31 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id o89sf5911544pjo.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070950; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZOIbEqVncTZR79V2iMvaRkQy8xfwLLcZemLpsb1dJJY1TR+ghmE2yeOf16PAZRaNjZ
         y4GaCWfTSFRD8Pht1UOYpOmKJ+ZJ/Q8C+OqNyUtc8iupIlnP+G8xR/13jPiaRyWUHt+G
         EvS/uroUNVTZaZqkEcykCgjSvTBWCROm4vt1/ymHljGDFgGo4b6+WRNgfe/ECnIGVDGQ
         OBh5U5uljR1IZk/i7zLVyE2OLrAkDGaa31DaZB3BzE7A34klRPZAZK7D1QczJcpl+DAX
         zKKtnK2e3/kpHKf6888i/7LqDNwREe5Nt+5yqibl24htALLPeyzfScvlC4xUmbZedTcd
         c4cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=j2Yx6D1ktXvoNlU/GJcDenrq0G2GktEQ6zsYl/yFMW8=;
        b=MGemCF/lENf3dfcgGabFnAScG8zdPd3qSZ96kr8uFjCzYv/gTpPSOiywJhTruzZFQA
         FKqIBjKDTFhz0jkWIA+LfqzIssysufRvyD3mmAZvx8muYSzxKoomRyHss/mqTNtlt051
         0akhJKVoBEywlwLw8XdiZrpRAckoWcRGteKVKDIKOBxKHzS9kvWLW+tJoBcSjqvQJISG
         u9GcCnPfo9baO51uD6MHmDrt4Qqlu+1E/xxI0nM3CWsZ6+AqKYNGi40SGP/AS/gBuTvw
         A/TfzAxraleaAb3k5N7bPbj9bcie9Szcbi2O9EDzGAoWeSvmmxqFDiQGE+tQDFrKUed3
         0jXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZKStJW0o;
       spf=pass (google.com: domain of 3py7gxgukedg8fp8laiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3pY7GXgUKEdg8FP8LAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j2Yx6D1ktXvoNlU/GJcDenrq0G2GktEQ6zsYl/yFMW8=;
        b=gP9kLrOq90U45elM7ffW0C6IHdu8ZrDZ0fnTEgecAPql7+2LNclVNB0RVkZ1v4jxOp
         PgrAJz2SyROT/UBALVKNPRgspYiRTF9fmdVTHAuhkGIngXHyT+Weq/l5rffByHYaAL7d
         Tq7fPlUsF8vYFLBOiWkjZUcawxK2BdJKBj953FwzkzmjlX+NdD8Pq07kK+NRA8ImxeO4
         uU2BJ/H/D70d/rGwVWbdGdm9sh3bbV1imfesd5GP3CWCdjfCiMZo6gsjkYqhNeRFVS3a
         5qTqeKBZDQZzwj5U4g2TwNwI0YsHZ43gqv/NcdySzmNnJ0gdi5nHsQV3r1a+y6l1ISco
         MXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j2Yx6D1ktXvoNlU/GJcDenrq0G2GktEQ6zsYl/yFMW8=;
        b=bS3mUSFymzL52CLHacUEbGJxgawBHEk/oVHesay1jISoJdNqBZTCXBk2zk6/bX/1YV
         Hh9rRPHWp+KWDdS7xw//nS96M1NoxFzvoUH6ikejJDyHTjPrrHxfv5lQzJ6fgwrSIE1E
         3fKYF28j2U5GFNI181HooP+fBL4/me9ObV36jvvVrWFuUncTum0eG4urK2KK4FtyMRRP
         X/PvISj/e89efQ7b9PLAntdDb/RpNaSLavkkE2hGjPzKJfydzNbYptV0sLbEHUHL8BZT
         +8A8FfBrhrZ0Rp0jgOOo6FtK/6MWSmHCNzlEdhXrqnwLCQBK6Hm0S22nrOALY91q/4kV
         aZFg==
X-Gm-Message-State: AOAM5331ZxJg/NHby1Lkl0NAk0b+VHAK06H4sdnhxbbUwWaK1tyysIUU
	q79bb72KS0qZ7YxJdv2+XlY=
X-Google-Smtp-Source: ABdhPJwu3CMpvDk4+1or3r/k6+ANvwPKEMMbgkboBtdgN4cSB7yrfa8/gdaMOWRd99gFhw2JeAea3Q==
X-Received: by 2002:aa7:82d7:: with SMTP id f23mr10265685pfn.198.1590070950670;
        Thu, 21 May 2020 07:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls884347pll.1.gmail; Thu, 21
 May 2020 07:22:30 -0700 (PDT)
X-Received: by 2002:a17:90b:113:: with SMTP id p19mr12064649pjz.129.1590070950243;
        Thu, 21 May 2020 07:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070950; cv=none;
        d=google.com; s=arc-20160816;
        b=QMW5hMLJq4lQb9+3fmGSS2Vc4KdIITaJeu9w4bVtHtuvdPcX3QujaKUH2jVeK6yw1T
         0X5dQCuRpd/Rz2zsBszbXT5YSOfLCKvl3Nt7SfDa/Z1E5DDzraD0aIq47KveAcBoYqNM
         +FOEZmEPy/BkQvmzgy4E+hTCW4iM+QGjgLoAkB/Sv7r3giy1sd8P1FZON5/YnMRrZqAp
         6IZcgLZRGiTEXSz4JhMl5MoQlcv3hqL5WuD938G/PvsdoAs50nONAJjRfgcbBZdT2YFt
         xFA6qeJQLk1PnmEQ2BHF7Gc0KSCrhaQ8BceooFwZciTECv4gGeYd8JgmUq6k13GdtfkF
         IrzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Brlwg7pmXrMxrU6QOfUVrfzRnJMhki/06xHbbYhdDQQ=;
        b=PaptxCpy7mAHCEUIm11KC2litMQx3L+AnsYki/PnRzfL02cmjM1VAqz36fjRUTP6Ac
         1QOCNbqS1xm2vX9nFjPYWkFRI4Ir+3VHkOuuuTUd87dwhAClXKzMINbp2SbGU0U0aYSK
         EDhdAD2szZmN/QpFi0M4yvMcComlrel9P7vQDJHKbnlvVMy+k3d1CTCh6mvqfPS0KxGD
         Xe4dqzxpzsgjAhea5EC0MDx2HbFDfQIBG2iemjpYHFVeILQs4YlfCK/aepG1aZSYzaWt
         ZDaF5vHebFsk+EnJr59kJQnfllPiTlZYjVD6H27iAuwpQSq6ZTNruWaVOxoZlO+mgaZr
         V5QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZKStJW0o;
       spf=pass (google.com: domain of 3py7gxgukedg8fp8laiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3pY7GXgUKEdg8FP8LAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id lt18si501835pjb.0.2020.05.21.07.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3py7gxgukedg8fp8laiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id x10so5437350ybx.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:30 -0700 (PDT)
X-Received: by 2002:a25:3214:: with SMTP id y20mr5166798yby.362.1590070949416;
 Thu, 21 May 2020 07:22:29 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:40 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-5-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 04/11] kcsan: Pass option tsan-instrument-read-before-write
 to Clang
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZKStJW0o;       spf=pass
 (google.com: domain of 3py7gxgukedg8fp8laiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3pY7GXgUKEdg8FP8LAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Clang (unlike GCC) removes reads before writes with matching addresses
in the same basic block. This is an optimization for TSAN, since writes
will always cause conflict if the preceding read would have.

However, for KCSAN we cannot rely on this option, because we apply
several special rules to writes, in particular when the
KCSAN_ASSUME_PLAIN_WRITES_ATOMIC option is selected. To avoid missing
potential data races, pass the -tsan-instrument-read-before-write option
to Clang if it is available [1].

[1] https://github.com/llvm/llvm-project/commit/151ed6aa38a3ec6c01973b35f684586b6e1c0f7e

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
 scripts/Makefile.kcsan | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
index 75d2942b9437..bd4da1af5953 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -13,6 +13,7 @@ endif
 # of some options does not break KCSAN nor causes false positive reports.
 CFLAGS_KCSAN := -fsanitize=thread \
 	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls) \
+	$(call cc-option,$(call cc-param,tsan-instrument-read-before-write=1)) \
 	$(call cc-param,tsan-distinguish-volatile=1)
 
 endif # CONFIG_KCSAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-5-elver%40google.com.
