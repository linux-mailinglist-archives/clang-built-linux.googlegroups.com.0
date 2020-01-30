Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBW6NZHYQKGQEMXDDNOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8078214D5E9
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 06:17:16 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id x8sf1512445qtq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 21:17:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580361435; cv=pass;
        d=google.com; s=arc-20160816;
        b=gHuoKKhwM0NWDeMa6vybu9kgrW67NHL6pC/iFwQFMDgKy0ySI/UVsiKOq8slgbVLk8
         1Y71OviLgNSMVpUaCc1j3iupRwXBrPWQcZBsUA94J/r9IdZfQ/ethRoOVZd2aQmxwbvh
         3aDzVT3tOpPf2VESYjVBa9Wl+v2K8l3WOQvi1nlFedTon2TgRkRY0A3wCCQWQx7C5wIK
         GXkoiENWQYLbpZzyYleCREGLywVkKjfocjRcIBqClYetjhXLNIjDXjy7MiOeD5RTfu+h
         Xqx/nRNN5XvVYofSB7hOXJjnNEIOeICI5+Si8VrfAx9offnEfLDq+pps+D6RpeypGlOh
         1mvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=68vswRpuwtNSCf6aXQVpTj+t0n96nDxALVknCVIGMqw=;
        b=GC7ckEXRluQUyLoAge6VPoyeu0IoehVYcMWo+eRs/mrV7+Mz+tYql2isjztuFDmdTA
         nzmOqfE9VFFfSdkGY+yzyiAuMpb1Jzj8LimuzJ7K4ZAZ0M4jimDrodntHZjNF8XNFzps
         5MarCQrZ99W6AVsSVK48bsNYqXGO5L8xA5Aq0B08SVAMNPBbVFVFNIZaj1sEtct7hwi8
         z3koaOOzON9AVHV/iPuonh3+ydG0702cSe74VEJcfu9CV6ckGYgFk8S6m24Tv0zvo6zm
         rJ0QlvrmkZNpoPehKD/1BUeUMqruK4f4YfXEH0CHpa6Km52EaPaqG+H9z/CRSAh1vhLJ
         kWsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ldzUaWK/";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=68vswRpuwtNSCf6aXQVpTj+t0n96nDxALVknCVIGMqw=;
        b=drH7xD0CqNL6O2g4IpsPJ98LjDDmshbD1FdXQSR5RFHclY3e2ohbQJmAwj2eE7Glwp
         vgcz63Be4DXyh1TeY5Cf5pRYduQ4gyM5FNOGDHJIz+XeEMdAdvhWW89l2uoreBEvYMJi
         YntA0OD+mDJyHgg/yUp9NIGPfLn42I8L0cGlEZpPQtVcFdyr+Qksc0tMd2idllsoT7Q1
         tFwqVzmZ9DMKFfDCpxhyw2DGMye7gVE12DM6X3Jkxdbh8SB+/DfiWJ3zXGefb8GFRQA7
         YZbhvSO6EsLFotZviNF8WIs6bRTw6Z7Kp281qxd72IGd1SqSfi1j73OKHzzyCJCivfri
         864w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=68vswRpuwtNSCf6aXQVpTj+t0n96nDxALVknCVIGMqw=;
        b=urH9CM6IJocf/Hk1MAeEvIfseWb8Fd+8dQ267hUfLhMVbrj4KC9W4Z7vbb3OsdUrJd
         ViB9fpLyYVJ3SKD372UlfeZQgfTd4pwzo0N/VSrob4tDmREuglrLzbmUW0DzS2M6IKtS
         7DpUDnirDSZaS7T+Eaw2DrGUyR0uMv1vBokugg0ggAmiXKD4v+PTGsJsnudmfD4N5ivS
         EUrwRb3UwdAMcoZQrV4XP0e4zB9BWTvvBToS96BFha3nuP2E18wzTjouTqkOQFeWdXn5
         +oL7ElxwoNhOx691Hz5W0omP0lvDEQXpGRrBjmo0OsqkqlqhtEL5r5VnylQTVr0KRzcv
         jZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=68vswRpuwtNSCf6aXQVpTj+t0n96nDxALVknCVIGMqw=;
        b=L/gnl2STHolc8c7pSlj1yLPPEZKrV4RiS0mII872uLJCfGESZYwZyr2h+OeAA5AouH
         iwR5WRdG4aTfUg8oO5blDDyK2Iyyf0j2Z2aqSNvq7yWp/91Kyfhbx0r+h3/X4RjxPx+K
         Rmt0t03U8v/o0jqydDlmOozEdntlmsgj3Kim57zJUDFSoMbuiuKypsGayIMv8zxXQPo0
         4dZNV/fLvT8FNQvgP1jJfL3qjp46pggB9yj3LiNX3JW61X6NeqO7E5s8ynrOtEHef9g5
         hVsh0vSd+D+iyHjP007ejcU6r8FF34Ju9y+IyNK4q7U91GJ3DdiHroZfDvEgQVjY+xJg
         7ISQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0R91gaZ6IMlF5o9eEUas59atLUNnkh43sT+r72hPUqQI7659P
	WqCAUEUV9Qq7qfteOzbmeoM=
X-Google-Smtp-Source: APXvYqwkDW+9sZ6tXqcH4jpS2sMJCLccYLaL/fnsSSfCMjwPFpp6ZmS8RGAMxj1amvKWjMEbv/JMuw==
X-Received: by 2002:ac8:3098:: with SMTP id v24mr3148085qta.122.1580361435284;
        Wed, 29 Jan 2020 21:17:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:108:: with SMTP id e8ls706661qtg.4.gmail; Wed, 29 Jan
 2020 21:17:14 -0800 (PST)
X-Received: by 2002:ac8:6f09:: with SMTP id g9mr3116906qtv.275.1580361434931;
        Wed, 29 Jan 2020 21:17:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580361434; cv=none;
        d=google.com; s=arc-20160816;
        b=DaKRdI8iboLYc9s1iUuDTEGxf6G0XaJxqPbbc83u7t7TIjdYiBVVVpPtLDdE5XWHeT
         6MTT/9U+TgzsYuVZIOjpRi4XG+lqz++gvY3yALkf4AUdss/Or/8y0FpacCFIW4kUV1XO
         6XyaWUSh23HcjFmeN9xrtdK8/SQqqP08lP+EyirGdSfMzrH+1oTZoxU3/SqvhJdpTlsP
         NkiT2FszJg5x5WYgm8RxjyG/BFkKa1HbEh3/6JrhVod2drnjRRemFENaRI8tKlDSVwUv
         tS5blb/BD7+exAMzFMkM/xeYQiz5RRGSbqI2Ss6ru4v6zA7JP/0DoYZMAxbjle0PkXAz
         ZNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HgVZcNLI9NFyQNxv0grkqLVxwVjlyBQNZusKb8xDpmo=;
        b=msEossr+dPqSGhI3mR8jrOBuXEJ6siv8+saSDAw7O7QnIX0K4jYP90M8qqaF4GFlmo
         wKRnF/J0oBuEq1zhr610Fb7ch03OiAHdoM4Tp0mPch8YXMq5YwWfa14CVNVYRVst8Sfp
         /ZbkwwNInkau7Po8jvq3j7jM/m2N62k/WN6qJm+eIASn+147lazxQz7W7uIj2CrbVw79
         7NYqjRNTtdiMR8/eF6xVdAp8/7Cft6hb4Jc23hzOJslFYlyn7zfRjn4BhEa6r/ivSN9f
         KTQ3z96jmtMb9g2UXPICuHVggshq3gY1Tal4Fc4uNxFzjX9nuonM45HiBCqzjghB7hay
         DbOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ldzUaWK/";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w9si167835qkb.3.2020.01.29.21.17.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 21:17:14 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x8so1017418pgk.8
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 21:17:14 -0800 (PST)
X-Received: by 2002:a62:830c:: with SMTP id h12mr3442357pfe.162.1580361434515;
        Wed, 29 Jan 2020 21:17:14 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
        by smtp.gmail.com with ESMTPSA id x22sm4782205pgc.2.2020.01.29.21.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 21:17:13 -0800 (PST)
Date: Thu, 30 Jan 2020 14:17:11 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: -Wfortify-source in kernel/printk/printk.c
Message-ID: <20200130051711.GF115889@google.com>
References: <20200130021648.GA32309@ubuntu-x2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200130021648.GA32309@ubuntu-x2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ldzUaWK/";       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On (20/01/29 19:16), Nathan Chancellor wrote:
> Hi all,
>
> After commit 6d485ff455e ("Improve static checks for sprintf and
> __builtin___sprintf_chk") in clang [1], the following warning appears
> when CONFIG_PRINTK is disabled (e.g. allnoconfig):
>
> ../kernel/printk/printk.c:2416:10: warning: 'sprintf' will always
> overflow; destination buffer has size 0, but format string expands
> to at least 33 [-Wfortify-source]
>                         len = sprintf(text,
>                               ^
> 1 warning generated.
>
> Specifically referring to
> https://elixir.bootlin.com/linux/v5.5/source/kernel/printk/printk.c#L2416.

Good catch.

> It isn't wrong, given that when CONFIG_PRINTK is disabled, text's length
> is 0 (LOG_LINE_MAX and PREFIX_MAX are both zero). How should this
> warning be dealt this? I am not familiar enough with the printk code to
> say myself.

It's not wrong.

Unless I'm missing something completely obvious: with disabled printk()
we don't have any functions that can append messages to the logbuf, hence
we can't overflow it. So the error in question should never trigger.

- Normal printk() is void, so kernel cannot append messages;
- dev_printk() is void, so drivers cannot append messages and dicts;
- devkmsg_write() is void, so user space cannot write to logbuf.

So I think we should never trigger that overflow (assuming that I
didn't miss something) message.

In any case feel free to submit a patch - switch it to snprintf().

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130051711.GF115889%40google.com.
