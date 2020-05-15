Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBXW67L2QKGQEDD6RD3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0131D52F5
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:03:59 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id o16sf2728027qto.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:03:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555038; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCrkDnB2w8gzfR3Bwi9WRCArZH+5S4naWWW5c4HHsGOp2tdbEs+UpL6jSfprBOFkM4
         73m3F4CeRUIUxGShsbedWj4JYeOP3tapecbHxLo2dO1Z6loaxHxDEQzieb0NbA2Eg0OC
         53adVmKKKv45w+vvEDpF6zpgBUnmbpUFFzNFK8BO6FKr5xy87OaJL/mC/v8a5IMw2+ib
         lNHVaIfczFV7/2uZaJ+Tpc73I6WIMkX79+Xh//i68GPfK6OWHKL1YZ8OlylaGnMqK9xO
         mELvzmsDD7XTbgxCIvfvuemnnl4fLpAsNjXPqlZSvgKnfJduHo0ngqC4fzLDX01b8GWB
         s10Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AaAQBCcHi143NdqRqZX6zU+666X+EvkALQeY0aUosJ0=;
        b=kWLMPq9UJExCFX8E7tsEU693jSBhy1BIxetoLJE/nThwDba4iBVqWN1RvfSQD5OQMQ
         tASTU4xEk/UA04A8iNFngYmNQXDdQcx4cyudJ3VVhMC5Y7WMUHk8qmwiOfnSzWqx62eJ
         eD28ZU2QgeSwXprdTwWUfJUo5dTroaZlvqFZQsFyGw5fD4inroY6kbGejlLlQ9Xwd7vB
         04eINmjI7pMAJPXuWwkox59mz0v4kWwxFWsPrbiYqUdEfjcoIQTkL4LzdzjPoUn/zo41
         /4Nt/ToBrE8Y91tA7e6Z841SyAdsti0S1VkIVboIrPPsWpLf/xau+xLhwj5RQu/0Fb2v
         Gxfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SZSlqP2Z;
       spf=pass (google.com: domain of 3xa--xgukebiwdnwjyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Xa--XgUKEbIWdnWjYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AaAQBCcHi143NdqRqZX6zU+666X+EvkALQeY0aUosJ0=;
        b=CUfDS1nT8fEgGWvozuAcM8XuXlEtNDPpKGQ0/LtJW0W5ct9hHtRR/aq53YCNjtEpei
         0soGtRMHNuwsdcPyPeFVkvYuvMFklStEg6mjO77Y26NwYkAfZsEb0+iClH0yVqjDhoVq
         d+KIcCvq5mhLHxMcjMuzFuazfk0YwCCsQBEM88qKcrSTCrhNLDDTeqi9Tz59WTezAGqg
         V2uf4CmhCvuBe+tGyaNYn7HHSidHUZ9Ka8lN6NVwbfjVx6vZ6+bAPK99+zc1beTQD0GM
         rGMvToerpAPeM31dKeJ3H7j9YN1UsUVl3haPismoGV8H8osSQLgwufS/H+jt3Rp3nn3X
         llNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AaAQBCcHi143NdqRqZX6zU+666X+EvkALQeY0aUosJ0=;
        b=nSib1sWBHa94r/HAPAO1Tw9zaQeBmgkYQ0BNItjskdXf+VoxgNE1n821dEXkPxzT8t
         Wi+hw0qHDHBP96ykbozhvgJiLskPKzq7gPSvXccK9TOR4PL6dfNL3wGEdvCMSo2uV3Bn
         AkT3CeRuqd8CxMKj/gTJ1d7nGOu9JN7Zo5Jm7XLXOBqVeXrFfJmvkgMjMcXMWt97VLJw
         xclbdcTG5lTrExFPd+W92BRm4YSR5Xii/bpQqwxB3S8aaVKySitWGOYQipYGggLqcWIj
         Uanulepm7Z12cyyGb2Y8QiIjdxlvyhiGMBa5RFZBJr1NNrju3TKWGWOnHfLcbPp58vTf
         qjGQ==
X-Gm-Message-State: AOAM533sb91C165ttqi5RaDEeQoLFVd1qp/cq1KTCrRsUMfwxWjjl4Eu
	UQBjJkGeK7gNlPIjhcw2B74=
X-Google-Smtp-Source: ABdhPJydM3G/zwr/InuXqcpZ1g7ww2JbDhGuMUPQ84XPLMIuZjfGcLqItoIpB8gEjuWek38GAdDazQ==
X-Received: by 2002:ae9:e713:: with SMTP id m19mr3827419qka.39.1589555038439;
        Fri, 15 May 2020 08:03:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:13ab:: with SMTP id h11ls544714qvz.0.gmail; Fri, 15
 May 2020 08:03:58 -0700 (PDT)
X-Received: by 2002:a0c:e947:: with SMTP id n7mr4035896qvo.165.1589555038061;
        Fri, 15 May 2020 08:03:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555038; cv=none;
        d=google.com; s=arc-20160816;
        b=UN8XnIt1b5vaQrauqqoVLGFMiuV/I5SEtudKs11Uousa10REszxAXPI5QRqkq76Ylq
         AfO6CDM+YEV8T5TTizVvoiZBPXNvzJ7VkyRGjfQe1ZEA5af4AJ7D3dyOpjC8d30DMbaH
         UjahSTo+aglBQk24vX2msPGv0MvBNnAgYVLJinzBK2x9qDC6daTek6I1oldLw1RgoH7e
         Ed4XjzcuFhJ5uB7CXNU6odPvl7/oV6S3RLy5TIKAfF4PSaQ9PZ+DQLLhdBrlmugy2eRT
         fOIZgnonGIGjYhaYeB32vEpK9OXrRRNTn8lpJ3Y+bhqHViwwhFeqALZmbuwf3ggjkTfb
         1kGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=O66Rrrp+JcFi/5yju5R8rYLztnbdicYxc/HcFiSiC0Y=;
        b=aeEyMmGQPKcwdpMAizT1ri7kyrWqqbN79GBBtklZLttgONaimRG/QruMJigX0I1EvE
         JU0WQ+qJRTbw/ZX02b7NrqZfUI+lETsNMj8BhIsEtDQzMd/56ctkoVaht8KOlht4mNZy
         wN74si4iD6yimSHxzPKcthJoKAqrxJ0RZP6hVG7s36rMaljw+EJz3fQV3cYMnOT5KkNw
         Wiu6k8RYWNwW+9aG07GDtRuI/9dMPuQQCvRI5UwzdaAUMJyTfBkhkbavWa1pXpixzZQS
         N4DVxlGJOPzGkCT3nyKp0FIMllWcWbQvBkBZ6m+S4wv+GRgle3gqv8PD22b8BKP5a0NU
         QKIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SZSlqP2Z;
       spf=pass (google.com: domain of 3xa--xgukebiwdnwjyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Xa--XgUKEbIWdnWjYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id u20si218430qka.2.2020.05.15.08.03.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xa--xgukebiwdnwjyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id i62so2831273ybc.11
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:03:58 -0700 (PDT)
X-Received: by 2002:a25:874b:: with SMTP id e11mr6243676ybn.23.1589555037606;
 Fri, 15 May 2020 08:03:57 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:33 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-6-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 05/10] kcsan: Remove 'noinline' from __no_kcsan_or_inline
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SZSlqP2Z;       spf=pass
 (google.com: domain of 3xa--xgukebiwdnwjyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Xa--XgUKEbIWdnWjYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--elver.bounces.google.com;
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

Some compilers incorrectly inline small __no_kcsan functions, which then
results in instrumenting the accesses. For this reason, the 'noinline'
attribute was added to __no_kcsan_or_inline. All known versions of GCC
are affected by this. Supported version of Clang are unaffected, and
never inlines a no_sanitize function.

However, the attribute 'noinline' in __no_kcsan_or_inline causes
unexpected code generation in functions that are __no_kcsan and call a
__no_kcsan_or_inline function.

In certain situations it is expected that the __no_kcsan_or_inline
function is actually inlined by the __no_kcsan function, and *no* calls
are emitted. By removing the 'noinline' attribute we give the compiler
the ability to inline and generate the expected code in __no_kcsan
functions.

Link: https://lkml.kernel.org/r/CANpmjNNOpJk0tprXKB_deiNAv_UmmORf1-2uajLhnLWQQ1hvoA@mail.gmail.com
Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index e24cc3a2bc3e..17c98b215572 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -276,11 +276,9 @@ do {									\
 #ifdef __SANITIZE_THREAD__
 /*
  * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled. The attribute 'noinline'
- * is required for older compilers, where implicit inlining of very small
- * functions renders __no_sanitize_thread ineffective.
+ * compilation units where instrumentation is disabled.
  */
-# define __no_kcsan_or_inline __no_kcsan noinline notrace __maybe_unused
+# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
 # define __no_sanitize_or_inline __no_kcsan_or_inline
 #else
 # define __no_kcsan_or_inline __always_inline
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-6-elver%40google.com.
