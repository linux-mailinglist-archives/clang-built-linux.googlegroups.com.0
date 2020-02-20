Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQFJXDZAKGQEACQCGHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id BE733165687
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 06:10:25 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id x69sf2137579ill.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:10:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582175424; cv=pass;
        d=google.com; s=arc-20160816;
        b=bZ+PRgw58wIGCeEtUzcvT58WIq2+QXrY0aO5l4DZogmCkhJjOTYRDHYpLlgxJmmenv
         AyYmD/Y2NWzVL+MJMklhVjjM0h2CzMRczlWpOHz3kc2XljRiWQqPJgPbzBVcFHTZwmmY
         ZocXBEd2bAu+yPYDqbtOuKXRckmg4lhxGYxdAh/QsWl9JDSEcLt5V6sYp2619YQ3YlPx
         UO0PEWP00X7LAsQCScUdZyyzGh2JEuUpjeF5wWE8DS39JSN9omdZdo5VaJsjW/WDvIZg
         dfLpzWmrc7i3kHxaT5Dv+xqcykDUtkcu+HbpNS1ifDOY+w4wh4yN0X9spqpDvXh6FIEd
         aONA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=RWmfR2zwMvYAg3WiVkQnvJ7dysBdpWBHvtYp6rUxyXo=;
        b=L063RXSbFl7IJJokIyJ9srvZ8q1DGQIO3fDp4lhyuyv7NS5KenYozA36m2WGdcB1WG
         4klHukPy/tM/9j4ax/ZDgqJ/SlDjDiQsSlRiJ8gtGO1SkOhEU9BBRYRLFwffiyELak8C
         B0GcGQgEzN37LPfgsojEmEPPoTXlTrV34YwxEv/PkcM6+TzLbRUowQbSsZAaKMpVHqvK
         wksPQ/pX6lxF+yGRrKZGAycUU+BJ3driASQbYETZWVn4wHuoYEIokgo5BATIGP5pnc2X
         mmgvvisUrrI5SEeJQN24kjDhsiJszyg/bSjqVC/mEgzjsEuu1xMagCM2nJrn40G4DQ74
         mn2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKq416MA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RWmfR2zwMvYAg3WiVkQnvJ7dysBdpWBHvtYp6rUxyXo=;
        b=lTZuYyBFYY+6C0yvovovkABxA6uW9PYEdWLzpa1HhtyV0rGwxhvK5JBMgO5H8QXBdp
         CD57vpdPlnkzxZ/ML26qBLmLxwwqFfIJhwdAmfm7t5fMLabXdaxAFsaguEG6DSVXvdkS
         T7k+wkwBDeVVHw5fPIv8x6NkPloWBsgWI2YTeXlFpnZiQcwka6j5EfQ8I1twcJdV1QLX
         P3K/al5k2/ujT6YLbwHPAzMCQVEegBdvHKjpVoWc23y3zhc/FxXarQzUdo3ensF2XZwF
         +/muIp4w3ilByFvfdavxDSBDNlGuO03iaFxZ++xcMrQ6rAnqXOie2t8E9qU+d2ryuMMD
         +rOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RWmfR2zwMvYAg3WiVkQnvJ7dysBdpWBHvtYp6rUxyXo=;
        b=epZ63ux1pM8NARaoe8M3jGxFML0KsVICOVJiAqx3Fi8MbDdXb5rhHHl12KnApwOoMf
         y7pvwihTIVPZHH9eVSVdwwZ174e1CSBUcZGY9NrDh0rhrfw+d1As2kA0Bxjhzo2a6eOt
         lf2btX3eYGNyhgq1tkHjfJEy9ZnRq8LPGeEddIMHtTHSvCJPz3UbvvKMFl38lkgQlG9z
         asZsbBKFWUQyLWFH0qbrOtqBAyQxRpnOUbO/pChpZFcSMieMcjXKSq8/jtIhgW0Qq3vK
         ErOaUjZM3MOQE6Z6CwQ6M+enHqloJ8Mevo+syDDthWSWyFVpC7NAEEqRje7woOJOq9De
         VGIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RWmfR2zwMvYAg3WiVkQnvJ7dysBdpWBHvtYp6rUxyXo=;
        b=RgUwysrCgh0+VqNFpGQZQ5edJiHYtK7UTwsAzCd/oKKuRdjlQDJQUxYvia9xZrs1gU
         jNK3AaLc6+kJ6t0Jlzc1M7XsPeXnz/AwFueAJMWMLqBWF5W5yk6ru6qQexWsKmFERvzp
         9gWDbHo35p2ruzKDpCg/gWXjAXD68ydYxUKB9MBB11el5b5y7LGxwLAwq7dCeWYcPq8N
         5vJOkMS/5hJT3/DpYnX0gTUT0Ht2Ck7f1ruN5Gk38Z9tscMt8Zzp1+AwntnRr1Pye4FC
         tpp2TcC0QDBpDtfIjHa374KoKFRgIORCUz8ccTYHnTiski/jwfRfEyFL9wtnaATS9v0O
         ZrHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlx1v9L0Q3Rrh7mSs8m8ocAu6dWN3uurFnjbHxjNIp75hkRs6P
	8NIldMvV2p0neTtFhrAZbuw=
X-Google-Smtp-Source: APXvYqxYpAmbgZHvH6v5svvGFxMURFT+LSY66VhRwauACfcGfYMfYeilpVF8NzUe+tRAiu1hxsfULg==
X-Received: by 2002:a5e:8505:: with SMTP id i5mr21589128ioj.158.1582175424480;
        Wed, 19 Feb 2020 21:10:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5d90:: with SMTP id e16ls472655ilg.4.gmail; Wed, 19 Feb
 2020 21:10:24 -0800 (PST)
X-Received: by 2002:a92:d185:: with SMTP id z5mr28250255ilz.132.1582175424129;
        Wed, 19 Feb 2020 21:10:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582175424; cv=none;
        d=google.com; s=arc-20160816;
        b=0rTY/mJ7k0ZtqWfXIn4StiXlzx/WuGvNC4W2pY25OYM9W2+Nuiy68Sa2fuVVC4Pl8g
         AlvLbFd1BBnl/t/3GbmlY8gMyuH/ED1ilUYPPr1iO1pNShPHavHco1/blqz2WXdz825g
         0vsGAGlagb5kONYBVjYXWLp45LT4iMl8okAFrJVe7G8voSTGYrS+F7qr1W3CBNQOoQod
         wt2PKytEgp4AWxw9Oe2pK1BPyKVsCzoqlpK3gwT8KF9gZ0w55yPf+oNIafJt6diCP5e9
         8DoZIdM0wf/wQ4Dse6UqtDfNgVcRsr0I/9uYiLpUi+N6F2xiNVo67hQeBTNJk61keApg
         DgCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=h5u7Xp7U99NSUOO/E2a/GBuGs/jUCGPtflsLAzfdTyw=;
        b=VnH7Cfv5x+3wDfmOFgIVfTf3W8JL4WgLVsQ5G8yqUEVMAvLLmfHFPBwut3hRsplkUy
         XZTx3QBqVcU9HEHLltkuxNYq43agdkpiTi2SUfuFFidcLKbiJC6Es/xQh7UD0OKdVx4b
         xsP6X7ydpAqZnCiS2qDeQJAVE0IjXrt9lFZis4xKjlIeV9b8zpIsEIlmoXNFa4BnrOfd
         GfN4HFSaxV9iONB6XVAaaKqPrSYF0D0TK0gRAOr6lMiA6LopOwj5t4CUYKFaoNq5/pFE
         VnmobbW7i2kVlmit/Wy5/q+eDwT+kZ+j9eNyFbz6RZHI3dFjOdc/04eOheLNlY+Cdiqu
         +McQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKq416MA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id u22si124056ioc.3.2020.02.19.21.10.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 21:10:24 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 66so2500623otd.9
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 21:10:24 -0800 (PST)
X-Received: by 2002:a9d:6290:: with SMTP id x16mr21296090otk.343.1582175423669;
        Wed, 19 Feb 2020 21:10:23 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g8sm745303otq.19.2020.02.19.21.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 21:10:23 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] tracing: Use address-of operator on section symbols
Date: Wed, 19 Feb 2020 22:10:12 -0700
Message-Id: <20200220051011.26113-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AKq416MA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../kernel/trace/trace.c:9335:33: warning: array comparison always
evaluates to true [-Wtautological-compare]
        if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
                                       ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses. Using the address of operator silences the warning and
does not change the runtime result of the check (tested with some print
statements compiled in with clang + ld.lld and gcc + ld.bfd in QEMU).

Link: https://github.com/ClangBuiltLinux/linux/issues/893
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-4-natechancellor@gmail.com/

* No longer a series because there is no prerequisite patch.
* Use address-of operator instead of casting to unsigned long.

NOTE: The code generation does seem to change, unlike every other call
site that I did this change to but the result of the check remains the
same as noted in the commit message and I cannot really understand what
has changed in the assembly. Please let me know if there is something
catastrophically wrong.

 kernel/trace/trace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index c797a15a1fc7..78727dd9a6f5 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
 		goto out_free_buffer_mask;
 
 	/* Only allocate trace_printk buffers if a trace_printk exists */
-	if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
+	if (&__stop___trace_bprintk_fmt != &__start___trace_bprintk_fmt)
 		/* Must be called before global_trace.buffer is allocated */
 		trace_printk_init_buffers();
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220051011.26113-1-natechancellor%40gmail.com.
