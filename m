Return-Path: <clang-built-linux+bncBC52JWED6IIBBP5EQCBAMGQEXWTFINI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4779432BE5C
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 23:48:33 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id p15sf14144060plq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 14:48:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614811712; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKfg2PeIhCyZ1G0XEgTrhI0CN/h630KYTjly54G5Wm2McQiEboSuSgPT42Qk36VHch
         KjTfC5nQDjip4DaGFreJfzJsvPKDMdbxXZW2MZ6us3IBE+mcmTphJMxX5vJqZvqLNbcq
         oM607l4Yd1ijNWMlKsmfGZvcWZ2hvrhe90nojyg6SgtiF9sI3aHC9EMoYrEMyx5zJKZZ
         9/wJ/v0sq4y3YqerD02TgDK2T4viYMduUSw8hUXJlraTzhDnwKTbCvzJDmxPtGhMo78Z
         /JfS0VzAgPdbV2pAEtCRfCcmojfl2tyOMGZw9IagNRR0mGw6cxWT9daKto8DOV5yQiUf
         jHeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=j/UcdLNC60md8rxXwrfEshwnkVSJHWJ5q23Yv0rrr1Y=;
        b=R5LKYhT0WUTBKknvU925/Ql1NTj7aGbgLL683ADZQpNoh9iDLmw4vO15zaAZ6SqOV1
         H44Ns28rzVBXWuxitDPp4GZCD42QcHRGxSUjIZRUTb32QVxwiGbHDSkyQLDYjlQn+Lxq
         wLulnuIF3x7vPm+/MCWirhqpYEybewpCyTAsbSItnJo0Fna+YEnE4QcRn7soHBubEVUc
         kO2E6bagc6qxGvuQDuQxRpS2AKNdOES1/a6fVBINFfgUEPnTuf6AjoU1IqL5BU85VW4i
         4DJl0xUQQdanJwpvUCauaedEw28JM7nwHXP90s7/hWNPUz0UvoB1j9JdAlY3dagOImj2
         ajPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y+A60D74;
       spf=pass (google.com: domain of 3phjayackewssxbqmxwpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--joshdon.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PhJAYAcKEWsSXbQMXWPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--joshdon.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=j/UcdLNC60md8rxXwrfEshwnkVSJHWJ5q23Yv0rrr1Y=;
        b=FsuVgxhxArDLXujd5MH6tn1668M3RT8Xjo0YgfCYjTpbtR0PYxYy6vrXoyp3mIBapt
         2T8s9ly67bf6ePFJXqzcwEIG5nQnZlXNJ0rnOyQyTocIZ1HcluV0xY5rQEan0Khj2BcP
         t3ufmuTwgwFG4dRN4zQEi4wwqxtnvfim1MaM/u9ZKKtmy5WvnWsawLxRhkcPlb04leTX
         nIuS3JJWVOdFd4wqI3FCKR7Co2BgbnHy3Ih4ks/wWIUs0CXwA3QXH5Uro03YbwaozK7t
         A9d0VutsoQM2GCSszyPFbn6lX4HsiUtNUy3jcauT/wIFq0E51v3qf+7vro0PZ2T3TNYM
         nnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j/UcdLNC60md8rxXwrfEshwnkVSJHWJ5q23Yv0rrr1Y=;
        b=kKd3I3Iil4eqGHhPnmgs5UAiWUXjcjKnV5aJ1qrYsgoT9jkq7+YwY/Zj66o1IpvzSh
         KRQycJQUwHGgXc4lzn5rag5bg2Vqd9BX8x5V8X1E00Zk36SFCSkSj+04NEOiD4RsHbXe
         D4o108Q4yuJOC1XQrgGeSBjRy/KstpM/dIwKPFGAgqc+Xiv1XqW3insT7+J1Wd02DS79
         PncKvCcPjRINi5JwGMpWUEtPLaphgUrgPowNXkTiKY8HNBCkBY2YEIQzMQ1vL3Rx7UDN
         9bdgsruAtjCl71lCuELywW3mCuRV8K7DAnKvUdEFAxcc3S6aHJ4W+JMbaJdx9uvju9+x
         B1QA==
X-Gm-Message-State: AOAM5326wlOEy2pwHw1q8ApmoTNw/bt+wWle3JClQuUC19l/0Hwu0eut
	k/wyhh3kYYMMSwX3ZIVGVuk=
X-Google-Smtp-Source: ABdhPJzbjOcoXnYdr/kcAbpE1CCcH3bNZgbug78SHA1SMeonLf0QMwozZ6k6sFTvAmVhPaKgSK0Jvg==
X-Received: by 2002:a17:902:6b85:b029:e5:b91c:a265 with SMTP id p5-20020a1709026b85b02900e5b91ca265mr1185520plk.63.1614811711833;
        Wed, 03 Mar 2021 14:48:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0d:: with SMTP id u13ls1480554pfh.3.gmail; Wed, 03 Mar
 2021 14:48:31 -0800 (PST)
X-Received: by 2002:a63:5b5d:: with SMTP id l29mr1041656pgm.272.1614811711214;
        Wed, 03 Mar 2021 14:48:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614811711; cv=none;
        d=google.com; s=arc-20160816;
        b=t6n2hfNvEYZsHcF8Yr8ogHqeRu5+RM5axi5P2oM0xDM7BgfqOrJSB4I6YgL+RWCY5b
         M+6fPfGO+GwMXt11RLd9ETeJ2i2xUNg92M28m8DRL5CyPk8dHniP4zry5bwyQ+lcK6iC
         y13yPnQ25dTlgcSmTfFOJ+eHf9JpPjXwm9S1ddQJwxujvXNJJGQ0uA4YobU2NzOiL/eO
         z8BBsh1+rDke8zBQwoI4k44roxjVPXdsS+8Es82vlEq01pyhvBIfl7IT/k0+mhaGZlcw
         WJnqQLa6+N4ExZstaxLoXX4zhz4aRZq00AjC7PbH4QzjDmhOG8ENL6UTXFip2d3rf/qx
         W2WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=6GsG4BSAoi0zOG8y5aYDqIlqcuuhkTJOTNFA5M+6RFc=;
        b=neJonEaY8H2x7lx67khm7g5PiWMDN1j5fSgPkRiLTa8MCPJYcseiqv01RoEv0wRcG8
         rGXT/EMPwdUWQNRRRonBZYSrn4mZMqauiW7/DuDZ2BvaCcLzqKRwDfTteEgjp5bey1Nk
         FS0FR9bh8FU/vKalkHeFvOPMYZxyU1R/YWQKJNBVRA5kqZc56ulNvL/nYoJCcCxEFbpE
         13mDPwkGL+hlGEdO3IQvtw4utDWp7UQpBbkTYIJBCsEEDuN+D9ZXoX7dQD85UnEQkTZg
         XNFz2ow1jn4PKgl5CYdeNvmytX/QIHvZkEamy+OlHJoSXxAfu7BtqObRkivMzNP9Fgoz
         zZeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y+A60D74;
       spf=pass (google.com: domain of 3phjayackewssxbqmxwpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--joshdon.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PhJAYAcKEWsSXbQMXWPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--joshdon.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id k21si1602616pfa.5.2021.03.03.14.48.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 14:48:31 -0800 (PST)
Received-SPF: pass (google.com: domain of 3phjayackewssxbqmxwpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--joshdon.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id o7so17269127qtw.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 14:48:31 -0800 (PST)
Sender: "joshdon via sendgmr" <joshdon@joshdon.svl.corp.google.com>
X-Received: from joshdon.svl.corp.google.com ([2620:15c:2cd:202:6dda:c053:b83b:4416])
 (user=joshdon job=sendgmr) by 2002:ad4:5d46:: with SMTP id
 jk6mr1274223qvb.22.1614811710568; Wed, 03 Mar 2021 14:48:30 -0800 (PST)
Date: Wed,  3 Mar 2021 14:46:53 -0800
In-Reply-To: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
Message-Id: <20210303224653.2579656-1-joshdon@google.com>
Mime-Version: 1.0
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
Subject: [PATCH v2] sched: Optimize __calc_delta.
From: "'Josh Don' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Clement Courbet <courbet@google.com>, 
	Oleg Rombakh <olegrom@google.com>, Josh Don <joshdon@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joshdon@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y+A60D74;       spf=pass
 (google.com: domain of 3phjayackewssxbqmxwpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--joshdon.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PhJAYAcKEWsSXbQMXWPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--joshdon.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Josh Don <joshdon@google.com>
Reply-To: Josh Don <joshdon@google.com>
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

From: Clement Courbet <courbet@google.com>

A significant portion of __calc_delta time is spent in the loop
shifting a u64 by 32 bits. Use `fls` instead of iterating.

This is ~7x faster on benchmarks.

The generic `fls` implementation (`generic_fls`) is still ~4x faster
than the loop.
Architectures that have a better implementation will make use of it. For
example, on X86 we get an additional factor 2 in speed without dedicated
implementation.

On gcc, the asm versions of `fls` are about the same speed as the
builtin. On clang, the versions that use fls are more than twice as
slow as the builtin. This is because the way the `fls` function is
written, clang puts the value in memory:
https://godbolt.org/z/EfMbYe. This bug is filed at
https://bugs.llvm.org/show_bug.cgi?id=3D49406.

```
name                                   cpu/op
BM_Calc<__calc_delta_loop>             9.57ms =C2=B112%
BM_Calc<__calc_delta_generic_fls>      2.36ms =C2=B113%
BM_Calc<__calc_delta_asm_fls>          2.45ms =C2=B113%
BM_Calc<__calc_delta_asm_fls_nomem>    1.66ms =C2=B112%
BM_Calc<__calc_delta_asm_fls64>        2.46ms =C2=B113%
BM_Calc<__calc_delta_asm_fls64_nomem>  1.34ms =C2=B115%
BM_Calc<__calc_delta_builtin>          1.32ms =C2=B111%
```

Signed-off-by: Clement Courbet <courbet@google.com>
Signed-off-by: Josh Don <joshdon@google.com>
---
 kernel/sched/fair.c  | 19 +++++++++++--------
 kernel/sched/sched.h |  1 +
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 8a8bd7b13634..a691371960ae 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -229,22 +229,25 @@ static void __update_inv_weight(struct load_weight *l=
w)
 static u64 __calc_delta(u64 delta_exec, unsigned long weight, struct load_=
weight *lw)
 {
 	u64 fact =3D scale_load_down(weight);
+	u32 fact_hi =3D (u32)(fact >> 32);
 	int shift =3D WMULT_SHIFT;
+	int fs;
=20
 	__update_inv_weight(lw);
=20
-	if (unlikely(fact >> 32)) {
-		while (fact >> 32) {
-			fact >>=3D 1;
-			shift--;
-		}
+	if (unlikely(fact_hi)) {
+		fs =3D fls(fact_hi);
+		shift -=3D fs;
+		fact >>=3D fs;
 	}
=20
 	fact =3D mul_u32_u32(fact, lw->inv_weight);
=20
-	while (fact >> 32) {
-		fact >>=3D 1;
-		shift--;
+	fact_hi =3D (u32)(fact >> 32);
+	if (fact_hi) {
+		fs =3D fls(fact_hi);
+		shift -=3D fs;
+		fact >>=3D fs;
 	}
=20
 	return mul_u64_u32_shr(delta_exec, fact, shift);
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 10a1522b1e30..714af71cf983 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -36,6 +36,7 @@
 #include <uapi/linux/sched/types.h>
=20
 #include <linux/binfmts.h>
+#include <linux/bitops.h>
 #include <linux/blkdev.h>
 #include <linux/compat.h>
 #include <linux/context_tracking.h>
--=20
2.30.1.766.gb4fecdf3b7-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210303224653.2579656-1-joshdon%40google.com.
