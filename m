Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX5LZXYQKGQENWBVITI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3952214E571
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 23:17:05 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id d13sf2920390ioc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 14:17:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580422624; cv=pass;
        d=google.com; s=arc-20160816;
        b=cyCFr2LD+R/NrOr/psL/DWb+VmKQc1HT1ie1LeOqQ7+8TcTbDAo4JM0CXnv7kT5mmU
         YWH4lXbMcrF6rzv1qmwaWDgK+fRj1hW11CyKwfibTP2hCuSNnKvx7pBCEkW25xUAE3nt
         u09QjTb+rZUA2222rR7AbC0FC+KMmO5jjrLz6dDYxx5VhkKZuGKzPuzroWJjzgbVdRZO
         b85fC0b0p/o8Cxl+Sz7PZXgfPQNeSIAARCUbSX4hIp9wC6lNUfpoy1oetsFV55veDNTr
         aounVjYIPD23I86XbLZLhdqFdpy2YpcoAaOBLeHwj6hFZKg8UqI5TOaoZXt3ogiAavQI
         8kKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=oHq39UOobHiZQOqmaBGTbSlRuRr+Z0EdBZSfJu6oHNQ=;
        b=u81LMGiONEBB1nheIaPqETQHYsECyGdU86Gg9OA5LadohY8jIAjHQPPTMFO9R0YrOo
         gEleG9dvD3b/Gw/4+ypYLTtuByWnD91L+DfdT+5rhv6uoGWadkW98hlaAU/nvf21cmwM
         N2eOGS1yXqt1Dcgm8tlMmGZBOsPcBDe7/Z9s6T88NVT6LOuDS/GF0pZ16ntSLAMWyblt
         nb7sYjbBHOo1NSmiSCHIthS/7EUMezs6j3eCtLJiViMOdcazexH+gmJgYZkGCv3aUWlO
         SELMEIragwDjic3a3N1oyDj6jIhVoduuvzyBPy4ppyL3TzuHLMlTcwmVyiF+lfiFWOyv
         mvFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2xzrJoi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oHq39UOobHiZQOqmaBGTbSlRuRr+Z0EdBZSfJu6oHNQ=;
        b=SJCuEz4+1ft/hROUYREaYil+HVIueQvxbsoZzQ2EzS6Y8VMcPIC8lEScdiHuB9RdET
         Bnu7cxMaMiiGGtVzqV18gW5EzLRJHggrwbLlr0pgxDylPJmhdXLekA5OObwc0mBAMtr5
         jWkTLWmvPnhfo5IMRmp9Xq9IoBo7lcUOEVmvNyi2HNBshHLvzfynBR1C4LBqWyvTfzxm
         mhcSTR67fiXiokQ90sBbJegEe5Hqjrci8k3P0tYN4hxqC490J9NiJNln5s/Moqg7ySXs
         /4LNgQlosynO8n4FkYGBP8bFv2HxbuhcYsPvxJiFW33Lu6zWq2V5SqSPrzOymXRCDrrG
         tG1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oHq39UOobHiZQOqmaBGTbSlRuRr+Z0EdBZSfJu6oHNQ=;
        b=BvNl8ToupnrXncyZVbIgDYcU4QMLUgwJ6dJo3+1uxqdGOYbXa8kRRhbncbihD2C0nU
         9erD9qRcVnGQcBYwAUdtQR8CvmxZODr6wUlXMTVVDrC19V7Rb6vGc4HHf7tyvmI6ncQB
         pyDpcSxWJdntNDb7V9VNRtPUPqVRzJOCwLeoANXL9MlFGo0JAHe1WaCbw69ZmVG6cDyI
         r9tZcrUs+vDFIindtcXM2O+HwE1At9i1/v8dCkoMDWoIfoIA6CouLLmX+Lt0bl2tgul2
         tOKqusty+5n7EBXOpgX+Oofefb95QqlOSnDe0L4HXxpaADmK+kj0FlC3UNgWfcKY6jxr
         anJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oHq39UOobHiZQOqmaBGTbSlRuRr+Z0EdBZSfJu6oHNQ=;
        b=na3UVWaDTy/OdFVS1tcHTgCWYGgicjcrbb0GOiFXP4LmNI/FMHQFaByJPTdRbH4FAF
         RZB6gsQ8gxi6Kqqkqij4FdZ+TucHqIdWJxU2km6ijeF2ZbXyOK4mcwU9sSaPxbyUYCxH
         8vUTJA1vPOoa1Mk2slmUfPfU2fHv1ftLWgt8MsbON0rDoDpvYgk/2lknAskQ5+rm15ne
         7J+HJ78DHm/GxCz67UY7u2rgl7ndAci06akd1hrxkeSkNsrQwhx0dDeGnCwFgE7/HjdI
         tQFZUhqRTQA7psI69m5ADfCYBFK1opmM9iIsJ7vhKWZwScZGWDwUDj5ZKydg+rF99BHl
         pXqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfGU4U+kCSHcPgQm1eyI8H1FirvqF0TB5rdGOb1Q5o9xIFNVld
	MRj2ql/j+gEJ8hfe4OwbAYQ=
X-Google-Smtp-Source: APXvYqwgqoWw84lYzK7EGpJqeAq/KLTidUR5pD86qsDfUlj8dbGsEi50H1WY+IwRsCR3rriUFZLB/w==
X-Received: by 2002:a92:d5c3:: with SMTP id d3mr6551511ilq.250.1580422623860;
        Thu, 30 Jan 2020 14:17:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:212:: with SMTP id e18ls457717jaq.0.gmail; Thu, 30
 Jan 2020 14:17:03 -0800 (PST)
X-Received: by 2002:a05:6638:a99:: with SMTP id 25mr5855059jas.37.1580422623465;
        Thu, 30 Jan 2020 14:17:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580422623; cv=none;
        d=google.com; s=arc-20160816;
        b=XutahCvTIElTfFP8D+MwaeugexwZQlgiVk++9N8U22isUQkTkhyX1KltCebLlPBebE
         033GOcjpms1rtCtocmJi6SthNM/RDuxd6Tt7yfDoCVK4VzVLZMtFn5UufSMXCUgClCSa
         k79vuEXF/ysyfVF7riSePryh8eEk9GTuE8OYtkoP4ANNuOcZfTXuqujZy/zPC98vs3Ry
         WYcfKcBRUY1ul1d+Dv4EbOlpWY6Pzekl0yKE6TcbkNI+D1Yu1hp1zdOmwyjYs8r1+FMU
         1ThPZwsmrwrnI3dgODViXHQ1vj7+aUK9vX6rBMVOtAadFROt3qnDe2IDWRL5rhCXMA74
         SMMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=o2uSlVLV9EbkO/HgivpguZY4Kg4CkB9MRxWN1lA/tSo=;
        b=jJAWBllPehvl7Z49MfGmXMWFSXuuZQ4tq4wXiSHbssW3V1h51qETwXrAXdTsqOQgdN
         vAyQhZ23l7xK6UdhbHI6RF17oRnMOlB6Cr198e1wIPDNf/ABnRg1QuEGa5clRcdql6Ct
         lpxFeKlKx4Se63jxpyXDvtAQ0rcj/ZhqfYWiUd3HmbIGKgGVa0BvCwFryYWuHBWmnIUc
         aNfJrbrLo7+gTclr9Tnma0OoZP24mrorfMMA2waA0ASl6I0MyzFTzQK3Zx1QyqoyOzdK
         g/rCbo5wLCtDdDRKMYB913pTUEPW2ii7WB4zi9x1/6ptUoidNerlgXBdpDyQO7aD7Osp
         bOaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2xzrJoi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id g12si319789iok.4.2020.01.30.14.17.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 14:17:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id p125so5248884oif.10
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 14:17:03 -0800 (PST)
X-Received: by 2002:aca:cf12:: with SMTP id f18mr4392210oig.81.1580422623045;
        Thu, 30 Jan 2020 14:17:03 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n7sm2063157oij.14.2020.01.30.14.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 14:17:02 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] printk: Convert a use of sprintf to snprintf in console_unlock
Date: Thu, 30 Jan 2020 15:16:44 -0700
Message-Id: <20200130221644.2273-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g2xzrJoi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When CONFIG_PRINTK is disabled (e.g. when building allnoconfig), clang
warns:

../kernel/printk/printk.c:2416:10: warning: 'sprintf' will always
overflow; destination buffer has size 0, but format string expands to at
least 33 [-Wfortify-source]
                        len = sprintf(text,
                              ^
1 warning generated.

It is not wrong; text has a zero size when CONFIG_PRINTK is disabled
because LOG_LINE_MAX and PREFIX_MAX are both zero. Change to snprintf so
that this case is explicitly handled without any risk of overflow.

Link: https://github.com/ClangBuiltLinux/linux/issues/846
Link: https://github.com/llvm/llvm-project/commit/6d485ff455ea2b37fef9e06e426dae6c1241b231
Link: https://lore.kernel.org/lkml/20200130051711.GF115889@google.com/
Suggested-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/printk/printk.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index fada22dc4ab6..a44094727a5c 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -2413,9 +2413,9 @@ void console_unlock(void)
 		printk_safe_enter_irqsave(flags);
 		raw_spin_lock(&logbuf_lock);
 		if (console_seq < log_first_seq) {
-			len = sprintf(text,
-				      "** %llu printk messages dropped **\n",
-				      log_first_seq - console_seq);
+			len = snprintf(text, sizeof(text),
+				       "** %llu printk messages dropped **\n",
+				       log_first_seq - console_seq);
 
 			/* messages are gone, move to first one */
 			console_seq = log_first_seq;
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130221644.2273-1-natechancellor%40gmail.com.
