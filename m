Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEENTTVQKGQEIOJL3XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 388D9A0DDD
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:18 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id j10sf1345861qtl.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032977; cv=pass;
        d=google.com; s=arc-20160816;
        b=de12NAH21MfTRuQ9ABGawIjzO/Ou5egR9tgyWMGnITqzTAQ1Puazor3VU8er4lIN3t
         0dVlf2T3ymNlZ0ITp55OTMjaBKZWGzE+P9wqfj78itFOMhf98fc6Xmx0Nh8rEHa4HwRB
         gVNMMeo2tb5M25nxQoILbtnvk3f0JqGC6ULii5kgloZb/Uz/zncLWbRw1LHJOl7WGiTj
         7OrnE9S72IYsyKa4EZBtG2Y8MkUKPmftnAAoyLJwoFBD7sdr4bVWUCzsBxocZcUHlqEF
         rAyGhn6Vy3Ufr3bu7j5vF5HBjU3yKTp+y0jpfX8JBQkfjH8BmP9oNbXA55O229h7IUXZ
         1X8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oWmNQsezvNnJL2aOUru5e08QFOdyq0LsIveOoFeECbs=;
        b=cYq6b5sTavJi7CdKwsQwrc3wZsuSO+RaCgIhYct6OEMUz7b4E8z6Nxx+Jvif7SlCUH
         2xwh1LDrS0mAJiyfmqL1xB50R09zlJcat5GYg+9TOo+pO4MKEtUzBEedaADvpWAiwJNg
         RqWeVh3wVWnKBiDzlUMYDYEi4IvNIkIZj1XO9XqHVLe7Osfu1ClqRaBLpjccmN9T1pmz
         Qzj675hXQdr04ip3pTcjDZ7UF0lh00g3zPZpAQCDWG3KkmFAQf5YPcmW+YeAlP8dSdD7
         UePJyRpz6OJ8G9uooFIJs5noFo4DcDM11vMe5MavYfd6xYy+nernPUn0swhKauvsTuci
         FRxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="huvkYD/B";
       spf=pass (google.com: domain of 3jwznxqwkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jwZnXQwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oWmNQsezvNnJL2aOUru5e08QFOdyq0LsIveOoFeECbs=;
        b=Xu/Mlnw7wpE/iRUP5tHXlpcX/w9gzaNUhSoTSAAZoV+HFfNvXzZPZbXaUPI+2nZ95L
         iJb1yAH3GCyic7vt1SOB3GHe77oEQ9af90TuQNZqoCLlN6HaJCoT1nimWrA2qFx48eor
         q45KsfGd3BKqMpDL1B/qD+3fixdKdcPs0oQ23jHZakgLSnsbQzW42ZAkp9EaVWsZeQ0P
         Cn190Awi9rJE54CBrCCa2SRJxV/PTAgwYZWj6QmMpe010M0vxs5Sq31/9A0ZTSL7Oznk
         iOHdIWm6G+XRzOtOYqAaE6vOiMf8xkKeRHZVC/6D1XOCQ8S30JsqqsR1bowUIGAByiBR
         0vLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oWmNQsezvNnJL2aOUru5e08QFOdyq0LsIveOoFeECbs=;
        b=ZLK9olXmV9fUH6MnpnR1k1s5j9JGJqeYm9di9zBvs/pj7WK70vAPIMum7UNUIUwfb3
         Jq+1vmjJFCkMFHZjbdeyGsGUKHtjGk5BLJDHCA38NnKbu9zXsmRXZne6H1d3hUGuFgRM
         SxhQ0RBaGmeUOdjVI/dpqvjHmi5uc/IPs1ls0LN+DG04YIb6MR6Gy2oJcYuwrQI+vgza
         6xUClCusJqnvTzJn0q1rs14dm5B+ZeJtlI+EMJIZqqP4SCy6nmK0/CjHnQb1CP+HQCHw
         BuLRTFvwOhL3KQ2p5Jg6GbtimtLG6VM55PeASmllHWNh/z3HPkYmJf+g1D0Dfs3JYxHP
         gdFA==
X-Gm-Message-State: APjAAAVls1FIEQAququ3ZHimvBL6GfSGN0lYlEohR9rprpoFKBRWojRx
	0Xtw9EU5i7bmNVL4untH/gQ=
X-Google-Smtp-Source: APXvYqwNIauqxFwuFhD3j2+dRofH8jhlGlUR2BXCI3ayR33mPW9Q5/WiuBzr+N8vnV+bOZDrI0zA+g==
X-Received: by 2002:a37:e506:: with SMTP id e6mr6862211qkg.326.1567032976428;
        Wed, 28 Aug 2019 15:56:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:498c:: with SMTP id w134ls223813qka.5.gmail; Wed, 28 Aug
 2019 15:56:16 -0700 (PDT)
X-Received: by 2002:a05:620a:15d8:: with SMTP id o24mr2157777qkm.204.1567032976230;
        Wed, 28 Aug 2019 15:56:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032976; cv=none;
        d=google.com; s=arc-20160816;
        b=eT/gnlkl2ITFxkrleOlQpBql1HQSaHrYayIEu/CCqoFTG3wyusBI6Y/UQG8w7ORmRR
         A9bV3zssJOlVWXv94IATGj2E+fZiIOYgyMquvxhdaLFbQyYkcxxq58khraUoT+6EqLWG
         /I91cCIxUFEurtBzZPhm0smHD5MpN5HoRBgHeF4o6pcZsLl+tRKNemIFTawGzxGbj56S
         AHI/9prf1qXyklnq/NpH+Q7G1Q1Af6fjhBiQdt/ssrqOnu4oW5rerMjt14257cGvUYRb
         b70DfdEZYGydZBKdS7kGJwUqov4HbYwoltun48oA7AKVkTSfWMm+1j/WkfaML2kmqx4o
         /olw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=iz1qiAOSCOnkxPsyI19LsO+D8x7BgqmfmJjcxn2Wo2I=;
        b=vAbBfBZrEXKZKVi5cpLHxDzgY7c/EbXbKX16Yzs8WQaAVZY8Py/gucuXZju+tzU/nQ
         bg8GAG7JdCcuoZd4An5AM9MHUBODTKtlHbKP5TTvT9XYrzy3B1OtYsghWE6Z2wxf7pSl
         bPRWMDVBCCu2GloCViGVyV+Yz9nZC0SEkjj/Aj7gg7Kci9PlTEmTd7IMgyuA+j69E+We
         sSLDYDfL2MMW4F6aNS4s1ptC2j4+5Wxq1KnSLWbijavQjjacF+vIoWuB8raOAV1VCJy4
         tTBCiXbkfdTguIZXImbsxzn5G1XHR10TKqVCsffiLO8QL2USEu+kL9EFBbrmOPIgQT0q
         MVug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="huvkYD/B";
       spf=pass (google.com: domain of 3jwznxqwkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jwZnXQwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id a26si31891qtp.3.2019.08.28.15.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jwznxqwkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id e22so1407915qtp.9
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:16 -0700 (PDT)
X-Received: by 2002:a0c:c2ce:: with SMTP id c14mr4701970qvi.243.1567032975799;
 Wed, 28 Aug 2019 15:56:15 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:28 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 07/14] mips: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="huvkYD/B";       spf=pass
 (google.com: domain of 3jwznxqwkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jwZnXQwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Acked-by: Paul Burton <paul.burton@mips.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/mips/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index 8b14c2706aa5..af2d943580ee 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -14,6 +14,6 @@
 #define L1_CACHE_SHIFT		CONFIG_MIPS_L1_CACHE_SHIFT
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* _ASM_CACHE_H */
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-8-ndesaulniers%40google.com.
