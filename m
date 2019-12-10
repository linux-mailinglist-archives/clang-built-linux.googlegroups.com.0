Return-Path: <clang-built-linux+bncBAABBVG6XPXQKGQEHYHBBOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D4117CE1
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 02:05:25 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id 14sf4349362uar.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 17:05:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575939924; cv=pass;
        d=google.com; s=arc-20160816;
        b=hnZvfmkUQqQRVupyeYweNs9NmkcIgYMXjvGMhnmcXt3SaffsJ4ZHRHVhK6Y9J1AapI
         duaP0b1fy74gY44npq9ptVvsMR1ftnYav+0hLjqcmp4E6JftmJ0e3ClkGrOJis89JnTb
         jvWI0MzQ/E/5Ozc3YOe+c+JDo7iKb9yyAYUW7zbNA0/qcMAex3EceRfL0xQYZ916xBQz
         zL6fGJUuI4vkJghbJLggBs00Sv+WlXSiwTmYLHfoGZE72S+wTBF0pYktepSCVf9gvUNm
         gIZ4XbKHn8mb6bKlAQ8RhSMIZ7GkkPba8zLCLlDpVls0mgRAkZ6VYtqBek9UWZhSUDsL
         s0mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:content-language
         :thread-index:mime-version:message-id:date:subject:in-reply-to
         :references:cc:to:from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=b1fbyQn0W24Shu/Zl6jiQKrE1d7XlHGZGGpsecMCa7U=;
        b=0AKlqdYHvTtZFUZmcD0cnn7Nt4PSplOZBnWvPzf0kmEvaUzhDfBzXWz63MxKKiKAWx
         uQOC8b5IkLJu0gsRnnPZnzP/vHw55xV+sFsIkM7ZSW1HERXvd1LJ30dlHgpmuoO281pS
         1eUxkUcYHe4cPoaEUr2yDNVN8/ykKEkpv5U3zxBZ7f6gohxCc4IwOkZSvYCzS9JmnVaQ
         jgLp9HfE5yZLlNjnjI/Z7/vECfJCSIePemaUHOkzKIn9SIe9/NEJIuvBLsiY/zDgDCbh
         OtDHLVWiUtWvprrrVI+uKP1ou1MzLqhfd/jVF5PGL52B6P7OqizLw+fcv+Bt9HfuGLPT
         k+Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=M3mA7yTo;
       dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=RcQmmqCu;
       spf=pass (google.com: domain of 0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com designates 54.240.27.55 as permitted sender) smtp.mailfrom=0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:reply-to:from:to:cc:references:in-reply-to
         :subject:date:message-id:mime-version:thread-index:content-language
         :feedback-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1fbyQn0W24Shu/Zl6jiQKrE1d7XlHGZGGpsecMCa7U=;
        b=UxaIyDN7shOzmdZ/v6ZMoAgJHzyWBp3ydtDOIhlle+W3oCE4J299Gb1L7q1hAyQqaj
         1olGa3d6VFtahJdu73qEAInmzmbb1MfAKGsBJvZGmte3c35PDi1J/8m24/nAMphjezeg
         NvKDYa1n6afoPvwkrYgwmSptXRwsu+HEUMwpElbEThgGfXK7zmwGyobWUmE9lf3UU1Eo
         /MyyQa3u/kWy6M9GzvCaWidx905DrcdyrxKiC1P5iIrlBwG/s/P6Zt8DRQm76U/BpLyS
         yFmDihQis9ZtNM612pqhbxMMZJcmolXbICuRZRg8bd10xS6EynaM8M8zFg29H0n09SDM
         sMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:feedback-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1fbyQn0W24Shu/Zl6jiQKrE1d7XlHGZGGpsecMCa7U=;
        b=Lt9bK8KHkxCIkyue/7ZQNDyYJ4cQPI1YMjV+B4SUsgKB7kbUpGo7Z1/W4D0nmMbOVa
         zyDuRaM6dPDNT2xRDnnVw7oipVjxuSTBfCXc34Ma4Fbwn5v8Abep7aPI97uuFeLxfrwa
         RcwsbjCHp76beEG4jogZofhMUTJezXiMiECzLEX/UmZ7gEPNpUZII8/L4qT8RrNGZf/4
         LhpZl+HDRju0Qx030rzE9E+vk9/PCe7gXLg1fhr2EpnqM7CkMZhWp0qsyOj6Gvs+ng1E
         GtFdDBcSz4ghFHMppzG5RVWsJ+5E24K31EMkc6gBUGKX3PZgy//c9ZeON4mQl70vHWJz
         qLMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/Co9X+4yhqMo1Pk/cpGV5StKjYN4AW9E/ZFSwtJlG5N2yMJRd
	ZbPr/9dvxAawTrAiMqAgQrQ=
X-Google-Smtp-Source: APXvYqz+VEyUqIjPf5igagDpJmC66ot9nBETcETyWlWp7CK0megExC3/4/+ULoJl/Q+2Rthr+0xMgg==
X-Received: by 2002:a67:2ecf:: with SMTP id u198mr23071935vsu.37.1575939924401;
        Mon, 09 Dec 2019 17:05:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:aed1:: with SMTP id x200ls967780vke.3.gmail; Mon, 09 Dec
 2019 17:05:24 -0800 (PST)
X-Received: by 2002:a1f:3a8a:: with SMTP id h132mr26737707vka.95.1575939924018;
        Mon, 09 Dec 2019 17:05:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575939924; cv=none;
        d=google.com; s=arc-20160816;
        b=fMTb+KRA90oCu7faF6Z4RK6tevs4ReUJ7b0ZKlQmu3e/60TMNkdyMCrjYFxlKt3weD
         1MGYb41We803CRNHmoNXM0/xhDvjCuRe2pZhC29f2Tx92ZMz3PbyXRD6RCZJqdAylgMp
         tb1/zc1y7/jtCS7zutTfpJcQPpq3BJfuOkDJfdBNyRXZEXxGIQ7UH7pg5RIinsXsZM2H
         cvXUzlk0YdqF6lBK80FrqnR1SFaQ1lhheH/oO1/J01ian096CD1PmXvIV2jXSDQH0l4m
         UV+Lxxp+QUCJ7hza67gDoLmm9aWkvKqWMY76lMSrkBejQRI3gvRKd7MBhTupVlcpuKtb
         pPUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:dkim-signature:dkim-signature;
        bh=OCaU8F9RlKrZM0fvKSKcYf13PMI9fUqzxDSR+Plmv+M=;
        b=kGkw2lgSgmtf6lpusp+YEErt85oUPPuqsIQnulttTSS5B4TQyLTa9KSCar/XWSgUsp
         YRcUC0euzflGVJJryW0oOhW2R7Ol2MD7p3QHJ+SukG7gjuAlfQkll+FIQ0idmDIAD3Nc
         YMkq7axyeCx0gOmpvM8v8N6wbVOuIDMix8GnxERAjxc5FYoW9X0JulNESVIdZGRoH3a+
         mcP7wLboHEhupy66iaF1CbvKIjiAaC1awPRapcLIxn+x6mSsORbjVPobQE++qFr8okCH
         wrfB4pXZDGK9Yt6D/KjA6xDfr0bZnDiJ4ABDV3136/ff7YjG+ZJEjSntr5MQd/IkJgWa
         L4JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=M3mA7yTo;
       dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=RcQmmqCu;
       spf=pass (google.com: domain of 0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com designates 54.240.27.55 as permitted sender) smtp.mailfrom=0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com
Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com. [54.240.27.55])
        by gmr-mx.google.com with ESMTPS id f186si100382vkc.5.2019.12.09.17.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Dec 2019 17:05:23 -0800 (PST)
Received-SPF: pass (google.com: domain of 0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com designates 54.240.27.55 as permitted sender) client-ip=54.240.27.55;
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0FD11C43383
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: <lee.jones@linaro.org>,
	<andriy.shevchenko@linux.intel.com>,
	<ztuowen@gmail.com>,
	<mika.westerberg@linux.intel.com>,
	<mcgrof@kernel.org>,
	<gregkh@linuxfoundation.org>,
	<alexios.zavras@intel.com>,
	<allison@lohutok.net>,
	<will@kernel.org>,
	<rfontana@redhat.com>,
	<tglx@linutronix.de>,
	<peterz@infradead.org>,
	<boqun.feng@gmail.com>,
	<mingo@redhat.com>,
	<akpm@linux-foundation.org>,
	<geert@linux-m68k.org>,
	<linux-hexagon@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>,
	"'Nathan Chancellor'" <natechancellor@gmail.com>
References: <20191209222956.239798-1-ndesaulniers@google.com> <20191209222956.239798-2-ndesaulniers@google.com>
In-Reply-To: <20191209222956.239798-2-ndesaulniers@google.com>
Subject: RE: [PATCH 1/2] hexagon: define ioremap_uc
Date: Tue, 10 Dec 2019 01:05:22 +0000
Message-ID: <0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIttLPFE8ad6Ohy6/JIQvGwI+sJfQFJU664pvg3sOA=
Content-Language: en-us
X-SES-Outgoing: 2019.12.10-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt
 header.b=M3mA7yTo;       dkim=pass header.i=@amazonses.com
 header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=RcQmmqCu;       spf=pass
 (google.com: domain of 0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com
 designates 54.240.27.55 as permitted sender) smtp.mailfrom=0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000@us-west-2.amazonses.com
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

> -----Original Message-----
> From: linux-hexagon-owner@vger.kernel.org <linux-hexagon-
> owner@vger.kernel.org> On Behalf Of Nick Desaulniers
> Sent: Monday, December 9, 2019 4:30 PM
> To: bcain@codeaurora.org
> Cc: Nick Desaulniers <ndesaulniers@google.com>; lee.jones@linaro.org;
> andriy.shevchenko@linux.intel.com; ztuowen@gmail.com;
> mika.westerberg@linux.intel.com; mcgrof@kernel.org;
> gregkh@linuxfoundation.org; alexios.zavras@intel.com;
> allison@lohutok.net; will@kernel.org; rfontana@redhat.com;
> tglx@linutronix.de; peterz@infradead.org; boqun.feng@gmail.com;
> mingo@redhat.com; akpm@linux-foundation.org; geert@linux-m68k.org;
> linux-hexagon@vger.kernel.org; clang-built-linux@googlegroups.com; linux-
> kernel@vger.kernel.org; Nathan Chancellor <natechancellor@gmail.com>
> Subject: [PATCH 1/2] hexagon: define ioremap_uc
> 
> Similar to
> commit 38e45d81d14e ("sparc64: implement ioremap_uc") define
> ioremap_uc for hexagon to avoid errors from -Wimplicit-function-definition.
> 
> Fixes: e537654b7039 ("lib: devres: add a helper function for ioremap_uc")
> Link: https://github.com/ClangBuiltLinux/linux/issues/797
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/hexagon/include/asm/io.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/hexagon/include/asm/io.h
> b/arch/hexagon/include/asm/io.h index 539e3efcf39c..b0dbc3473172
> 100644
> --- a/arch/hexagon/include/asm/io.h
> +++ b/arch/hexagon/include/asm/io.h
> @@ -173,6 +173,7 @@ static inline void writel(u32 data, volatile void
> __iomem *addr)
> 
>  void __iomem *ioremap(unsigned long phys_addr, unsigned long size);
> #define ioremap_nocache ioremap
> +#define ioremap_uc(X, Y) ioremap((X), (Y))
> 
> 
>  #define __raw_writel writel
> --
> 2.24.0.393.g34dc348eaf-goog

Acked-by: Brian Cain <bcain@codeaurora.org>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0101016eed56da0b-1311d375-4176-4a00-84db-8f76a810ddbc-000000%40us-west-2.amazonses.com.
