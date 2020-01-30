Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE7ZZDYQKGQEZBJOHQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 021A414D51B
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 03:16:52 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id k16sf624590vko.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 18:16:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580350612; cv=pass;
        d=google.com; s=arc-20160816;
        b=I6vjSqd9QcoeaxcFRryAJG3FD+zde4NQAQ/YA4zbbvGs6iFkkHg9pSp3sd5e4Fxmx3
         8kMfPHuTS/zK6X0qqPqabapm9++FGGUqOml2d2b3z1Oa86eD2hG/L1bmGAlNM3pfMkkq
         7y6fJ1XEvplqnPpgGA/RQIDB3cK4CbrF3Xk9WDc5vgq/1BABN4UYFCIsdeU56v/wDSDA
         wl3iwSnd+M59FzXmcLE2ZmEeBR5FPGiHgqKCZF1UnTPG+njJE4jSsFZgRb3evymniQAd
         xKPYl6fvo1aRrcRmTf1GuBYWGSP0IdGpeFerdn/3sL+Z2x9/KuhHxe4bSFQocBb4zNLT
         +A1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FcV/2y7IijEFvLJ5YBKYDz3FAKb6hnC1ZK48Bt82Vgs=;
        b=zNfBgcaadGXbkXJp7zj8J7o1A/SA45J1etPreoNGtzkXFzJD6CNm/BkraBD9SPouwJ
         UTGUk9zTANqO56prlSIbFVnE7AaXWKAxapM5iLopFruRF4D5Dwn51vpFvJiHxHkzWWJ2
         LXWiSz7LJwRoGlKEmKvazBoh8JyyEjxl9Oof6ZKhxgHys2lG7jX8VIUAmDjA0sniNKnG
         +l0NveAQUbGwowe/Nbaofw44EBQ2MHBxYpq6DxIxj5VGBhnt4ra4RdZ7rdPNVncBhc4R
         T/rF0UZWtWdykacxSnKbgzm++wAzRUWLtGaVz5h7GDxA7vm3l1bTYDAPgqavK53SL84i
         aI6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLyXhXuS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FcV/2y7IijEFvLJ5YBKYDz3FAKb6hnC1ZK48Bt82Vgs=;
        b=DBVj6QqHkCPrX8b2jcbWNx43NpnxV+h2ToFv3s0nx8TrWlalc2SOhCHxBFgL6Rd8tg
         IrkeA1fAtMccoLmM7YzbIrLy6Dyflgd/kCzAz3dlxZ/IYhiNiDj0RNlQoyduU6uXuAMZ
         qDR/fBVtcftb8oTSBm0CiOn+M73aMUkeX8GZJeabUmkkjtMPCOWriy9AdzaOevwZUF8I
         9WTNez5Rut5nEUuLBUUUqBpr7Uk684bIK1HtQxze8qXk7GbV+w2P/qcC4eFm3XFshyjj
         Eh3uE2ahabe2sPcPm1Ey1Qd0wpJkBwEwZ449SGKxOInvr33iOxj4VfoWqkE5cMhCDCeL
         OewQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FcV/2y7IijEFvLJ5YBKYDz3FAKb6hnC1ZK48Bt82Vgs=;
        b=L/ihJiIxEMqlQO1f8+tBAohaDjtW1RCa82ww++KTiSdOh8U+EEQeAukueX6qwPXiSN
         YddFVE6XqRH1gvcKqMraWBy8R7ZOHYNP4wruFCs0b94y3EJXFuNbFVUnk1VM2iKsxIeo
         w6flFMR9ribLWwVNCvJwhZ/Irj/ygAThNgrLGlSGsEJ0umj/6jf0gJ5+QEwwrH6j4C8O
         gz+kKW9osQ9DMGmKxn1SHptvZh82WFYDCZUaIC01zAkR59DBnFuYdwxh/prpS1itA5IN
         5PdlbE1tac2FovVaB1ZdjBIPs0LKOkbUAi9f0viVKajU7WPHgpUv0dCsap9zmDx4M9I4
         61rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FcV/2y7IijEFvLJ5YBKYDz3FAKb6hnC1ZK48Bt82Vgs=;
        b=Wo3nLkFSS/kAfIMlpoNuqDbMnGx+qbN1IqHG+Uw4Nh11QDjldmq9PvKWUmDyZs+XVd
         GU15b4bT/BxqxEhqJL6vl7e5efKaGwCeqX3TMR4JuZv9t9O31b8NujCwv9D6Z6iDLpLt
         ZFctu8EbdalqkczkKiQG4mn8jmpsMpy8GHf29BYcWxxf9mDuXvjpSJ6FnCYc9DnvZ3Nv
         NBsZ6d1NAElbnWs/yP9P+nvcqaUeQj98EAtIeZruXfa/8k6iRDAxvGX3Wr+q28KLx2Yy
         lM6NCxsXsV71dM/jGOVKKQ3R/fbQ0kwsSD/fYWBSYGgQLbWUcjil7TADZT+BGWc/Lc2G
         tBBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWklkOphs99VmOla2/D1v3/FrtUz5IaFkD8BJbdcmaS4xGVKc3X
	Uy6EuIy0QiLdubtxjMvSj5k=
X-Google-Smtp-Source: APXvYqyQQ+TvSZKU62SpoGCgx9OcpJLfPEZZ8gTk1ZI1u8C0rV5qFIWgeY7fJuYAUhuBlkrqLntGlQ==
X-Received: by 2002:ab0:1d12:: with SMTP id j18mr1225716uak.117.1580350611760;
        Wed, 29 Jan 2020 18:16:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:804:: with SMTP id g4ls187708vsb.11.gmail; Wed, 29
 Jan 2020 18:16:51 -0800 (PST)
X-Received: by 2002:a67:e954:: with SMTP id p20mr1872624vso.3.1580350611296;
        Wed, 29 Jan 2020 18:16:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580350611; cv=none;
        d=google.com; s=arc-20160816;
        b=fDhvenX0HaQAeZqsPTpdYt3d7mIjfGc9mijGCZWU4WXrfOB60fyvr5oeAfDTkwOoXF
         dQGzAlIy/WSiqBdDsSmG2n/saRGK3y3d5ywxhYIJqxpCsCLkbm/npWFzGiWgKbMLeqBP
         LC3c7iUgPWFEZ2usYZ9FaWE02JTK0w8MkkL66i6w1bPEn6JCk2A83Wuj6FO4Zxqpo6AE
         DTtaJEyUD9QHaXaB+Bi/1ILtPl9Jgusc6fEqYc+RbW9CwsMt3ZqeE0a/wmtL6QP2aEr8
         bsHyKj4Vc03rBCD+vQHZKs0zTWAZwISPG/zOGhf7lELXq2IZOlYFQrkt4j3SgbTq/i4Q
         8w5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ESEG2SF4akO3jo6AanTsK74LjMSE+YgL8aNUFKiXd6Q=;
        b=Fdpf7pnvh5VvrHCOt/xhMKTvFIBC5HMj3WKEvDlZbTQCDUNCa+2XSuSx6b1dDufFA2
         khg4rO9xbDVdn2cIilFxYMjztG5E2DVEiTfhiGCAXJQ+SgQZKyjXVEa1ItM+lsI67z6x
         oNX5vGsT9MKfuPxe8ToyWwIao5p+2Q0TExgGCBWeTK/ylI3lsoWD+2jHZMjPDc4799vG
         fgF9HMluS2RpzyqYO8pNxc1MVGbc48a0Z8tBRjPfdbEMX1yKAAYq87uLYUKm+6qY+0gg
         Cqx2yCKm+/Ua9R9K2RqfQD02O4IrgWU5ee4InmXikJPnKKFTK9IDCmjjmXZwZAJqidSw
         J2Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLyXhXuS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x127si223741vkc.0.2020.01.29.18.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 18:16:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id p125so1948068oif.10
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 18:16:51 -0800 (PST)
X-Received: by 2002:aca:4809:: with SMTP id v9mr1377408oia.92.1580350610665;
        Wed, 29 Jan 2020 18:16:50 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g25sm1355617otr.8.2020.01.29.18.16.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 29 Jan 2020 18:16:50 -0800 (PST)
Date: Wed, 29 Jan 2020 19:16:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: -Wfortify-source in kernel/printk/printk.c
Message-ID: <20200130021648.GA32309@ubuntu-x2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hLyXhXuS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

After commit 6d485ff455e ("Improve static checks for sprintf and
__builtin___sprintf_chk") in clang [1], the following warning appears
when CONFIG_PRINTK is disabled (e.g. allnoconfig):

../kernel/printk/printk.c:2416:10: warning: 'sprintf' will always
overflow; destination buffer has size 0, but format string expands
to at least 33 [-Wfortify-source]
                        len = sprintf(text,
                              ^
1 warning generated.

Specifically referring to
https://elixir.bootlin.com/linux/v5.5/source/kernel/printk/printk.c#L2416.

It isn't wrong, given that when CONFIG_PRINTK is disabled, text's length
is 0 (LOG_LINE_MAX and PREFIX_MAX are both zero). How should this
warning be dealt this? I am not familiar enough with the printk code to
say myself.

[1]: https://github.com/llvm/llvm-project/commit/6d485ff455ea2b37fef9e06e426dae6c1241b231

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130021648.GA32309%40ubuntu-x2-xlarge-x86.
