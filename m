Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBXP4ZHYQKGQEG5URJDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2C14D6DD
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 07:57:34 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id i1sf857262vkn.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 22:57:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580367453; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldy55drcSTPi/aFdYPnlOv9ApVKQIuN4yaUptfeHlhfVq980XG9upgk4Ft0Gfo65Zp
         pQKvGVxrnx9FcOSnWLQYc4SsCG+/yeuOJIObxSdetjImAYYhzhlBA/VYi5yhHo9DyGx0
         irCfI8t/yr1R7yk8uymIdbicZSDpKJbJaMbaBo8SlrJBCIv7IYu1grtsbSTVkSzZp4Sc
         rSTfpPJA+pSkvkkeUNWX40QjLjVri3m0T708qmiOUowOAxfvYx7UTxi8ogzJF+dAF4uS
         KNwf6itL2QTiEUcQeENLNpHNYg5WKLJiS3gk1rUqOapOU4L+eJdwp4a+WFc0QwVxkGJ3
         0fHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=QL2v7N3xXXq9LJrkWzeaAQ8OqwAaewfjw6kLbtAozbA=;
        b=CBTjFSQpUBfWsfEkvGMkdkbCC5mwmxBfkRmRGBab+mXGPdIsbXeJJ4m5ZAQzIGbXFt
         V0tjmqbKIz2bCbeWYa5D7Jk6W6Vvfn08B/YOiO8f1Lu1B38Ln8+gRKY0JOQrbLHvHuzo
         IbaOGh5h7QS2PZGOoH9hrLA2t1AXrLZqI+h6EQT84U0znkZuif+Y5MbD/v8X7LBLOox2
         RDWx6/wpKYTNULMwZnHYj40csbKd7748Bi6HHjQ6oIPxc6isWi7U7S0MEUEuMp4+v24O
         CmMSsHP9iH3VYwmph/NiIkZpG04Ln5rhj/QrbEkh2cGt8PsE871bwX82BhiRitb/XLi6
         J1ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z/UuJZsH";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QL2v7N3xXXq9LJrkWzeaAQ8OqwAaewfjw6kLbtAozbA=;
        b=XolN0fCynaMzHxpmdQVLIkXtwsLRXlkhyfWI4fv9vqOEVpssg5ihYvrWn+dG2lZxWO
         FHTbVLG0ntR5ivOrCsHbQ5lENqjsuewXsh4GuXYvYLV466FMkxtXV+f5lSmpOpweV65N
         Bi2OYRVUAy0w4HmW7BipczOckiSJaQtVhnj/BiHUE3Sbx5jLso+0fdh2g31PLquhWEHK
         wKFNkkUpkFhl8p2GHvViUdwq4D8xyOLPxEUdvUedGBXsRmKOfwTmaT2vlbYrc+s5nJqa
         V3HdQ5WZfAFzYDt3Wuv4iFVcmfbZAZwkG9/QpEybTGoMOR2gp87Vb+JomDuJmwd/1MGq
         CtYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QL2v7N3xXXq9LJrkWzeaAQ8OqwAaewfjw6kLbtAozbA=;
        b=c/bZuVJm3u/S7hesxE+VTyunYtBUOdnplerZ05gTuOXHjXKZNk6XtqnNbeFw2LcdFR
         5hywioWsuSiN01iwz1198F+cu8Kfv52RkyZ+5rlHyKw3nN9X2vcqV+WHiYAiqW5nCLaJ
         xmoVNRwyspizyzczZXB1uoKfYX0ZHQAn0+Ut6IZLGRwq2yipMsXhYuZ8kDfbtJvYCs7x
         jKYf49e+weF4jrLQpXTRoiqfvRzn4AGaRCMbuSWBI9VRPhITUBoGRSry55Z2+Kv9Z+xT
         /hR/blb4UqFM62C/IxRvzVOOtGs/qSmLxKCPu7Dqal8fgAIxWaPJJpzlkOJ4yVSF6Ygq
         INcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QL2v7N3xXXq9LJrkWzeaAQ8OqwAaewfjw6kLbtAozbA=;
        b=DSiApes2xhakJbqFmHxVJzWJLOFaAxaVHTTrCfDws/D7agEagEZ8IuN3M1gsiWSugZ
         EL88g+8G9czt2EEBppQP0Kf36rI09aWx/3G7T4cY6iBYmKUIlAsvSuo7jXUmCDEZrXJX
         WAHnEmNKYexsMb/YL6Sxr6Fq5tXK32UjLajGlsDWMJzT9CQ+XHYNmKL8tQ8q593C6fLC
         u5cH7Bp1duYWKtVbD8BaP+mqhrfB/43G6YrD0JFrcyEV4ELMEOdAv/maazsmAAxgY+D2
         AWZEhoFCW86m95cC2ABopt1cTnBM+GARZgr/DGIExYqLFw4zceVvorW+ZnuLkn19mcz5
         wBAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1ioiHOIgXibD8QiWNmgaGwMNaC7iKThrmy8sGHnDPpVxHYL4Q
	JpHKKrgim5Yi38q0YKTjUuE=
X-Google-Smtp-Source: APXvYqwzxOBzze4QBEf5x/3BioPvD4YlUcGKiqjX4GSIF4p/wwPNNwSwmDN2SvbBfdAtNJRae7ccAQ==
X-Received: by 2002:ab0:555e:: with SMTP id u30mr1814303uaa.39.1580367453595;
        Wed, 29 Jan 2020 22:57:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d38b:: with SMTP id b11ls267700vsj.9.gmail; Wed, 29 Jan
 2020 22:57:33 -0800 (PST)
X-Received: by 2002:a67:7f15:: with SMTP id a21mr2283463vsd.225.1580367453170;
        Wed, 29 Jan 2020 22:57:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580367453; cv=none;
        d=google.com; s=arc-20160816;
        b=gwFNGw7DKycEISqHkNL8SWmWkYMFPN0xqan8VAh8g5uCUUKBdep/cYtuiXhoi3efe8
         GsIubzVYdOOVSe7vBblTOWTrbD7QQARjg53xZnc/nloWh3tVdWhKp1zvYzwAE7xamWGc
         0jNZz3Vb0xBUJk4GIhmVPL2RDI/rzu1O7xg5zTX1XsppyzhMvyyrDSBWKoO2nMAW9PQ4
         jPBXaE61XtOLWUpfaRFlQFwLBZVJhrFR8cIkh93yaHAgg+JMX8Vx/n2twVGz3NRqiFly
         Ju2SEI3cDFGqcIPXojAxsQcXXxXX/iKeEifcChZNQxfWpflrwculQtnjfOdfJIdHDOf2
         arQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=huaVosl53nJpP94v/buh4oiNNpbIxxq4KUuvCVKsRvg=;
        b=l/r7THbkM+iWzIKZztN6uHoiOrh8ZSPFbRBtLspGiXe/sobGoVP9shNBvjdB5dU2PU
         y7ZrOHIph4bX/+LYg2hCP7ph+Tvwv6v8KsEEIS5K7dgUm0xLE2zW0aGp4GhHVnLjwuP+
         A08E2HgaTX4D6Vx7TNwQohiguT4Q0cK/R/xBzhHP+unLPbuxdwQWEglX5i2QWRZT4RQR
         mFp7d1Q+pljvxrtBwaiplAtYfwPWVhxr8rXVqHGi5KugbosUp1VBGUMPZMiVsn2aheDe
         USukRhEBtOhw+QmGJpQnHYSVaZVbuskPvxfHILBjbjQEIepJI3E6uAPQDasRVhm8RZv0
         nTHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z/UuJZsH";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id o19si258349vka.4.2020.01.29.22.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 22:57:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id 6so1166642pgk.0
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 22:57:33 -0800 (PST)
X-Received: by 2002:a63:8349:: with SMTP id h70mr3155850pge.396.1580367452803;
        Wed, 29 Jan 2020 22:57:32 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
        by smtp.gmail.com with ESMTPSA id g8sm4970595pfh.43.2020.01.29.22.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 22:57:32 -0800 (PST)
Date: Thu, 30 Jan 2020 15:57:30 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: -Wfortify-source in kernel/printk/printk.c
Message-ID: <20200130065730.GG115889@google.com>
References: <20200130021648.GA32309@ubuntu-x2-xlarge-x86>
 <20200130051711.GF115889@google.com>
 <f099965dc5de82fc5fb60ba10371cd9f1aed2d94.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f099965dc5de82fc5fb60ba10371cd9f1aed2d94.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Z/UuJZsH";       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (20/01/29 22:39), Joe Perches wrote:
> > > It isn't wrong, given that when CONFIG_PRINTK is disabled, text's length
> > > is 0 (LOG_LINE_MAX and PREFIX_MAX are both zero). How should this
> > > warning be dealt this? I am not familiar enough with the printk code to
> > > say myself.
> > 
> > It's not wrong.
> > 
> > Unless I'm missing something completely obvious: with disabled printk()
> > we don't have any functions that can append messages to the logbuf, hence
> > we can't overflow it. So the error in question should never trigger.
> > 
> > - Normal printk() is void, so kernel cannot append messages;
> > - dev_printk() is void, so drivers cannot append messages and dicts;
> > - devkmsg_write() is void, so user space cannot write to logbuf.
> > 
> > So I think we should never trigger that overflow (assuming that I
> > didn't miss something) message.
> > 
> > In any case feel free to submit a patch - switch it to snprintf().
> 
> and/or make the code depend on CONFIG_PRINTK

console_unlock() still needs to at least up() the console semaphore.
We don't have printk(), but the tty subsystem is still there and serial
consoles and definitely still up and running. So... maybe we can have
two versions of console_unlock().

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130065730.GG115889%40google.com.
