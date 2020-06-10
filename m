Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBHNSQT3QKGQECRT3M2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9049D1F5A89
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 19:32:14 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id x27sf823910lfq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 10:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591810334; cv=pass;
        d=google.com; s=arc-20160816;
        b=0URDv6orLJKv5YirkesgpxVfyTFeYwjjvpYtV8JrMEl5TYNW4fIsHaXeGBPXYGJE82
         P/i/D0qKO2S9rMNvg7LkExIwJE4F6ASkrNBaJxfGnRMiIM73sprMQKcur+TgkcIPrQAm
         LG+NX9dvxycDE5M/ebPfzxtNY4Y1rXWXmHiYZWxawfpMABIL6ev5198NFZkdyhSvUSWB
         G+cw6LBe/RXOv3QZCutVxlMjJyKoqi/iKJ6DzqkMnwVnfOp3p8fhBxtX65IDPtx9za+a
         5NCxR6UV2s2309saT5V91Jqvy+rrlwXa3wKdF/oh945kd5G9S06mKTGMAN5TntJNU3FV
         0+RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6RO6UbZkKCbF0GyAWVkid9YmacbMRMtsa7/nKVyyYaQ=;
        b=EybGUHqeULAmL4fH6GGshL3CJSnGIJtRVHdRkzIKfnaB6KurRF6mmncLecz+KTh61i
         pI4cQPv7ASbJmOb/pQdh1i+KzyCAwYHh92SHf8P9iml6gc+VAC2/HQTYN6xamADqiA1o
         I3B0PNq3dVgQJium2ofb28Pu0n/Q+wpAQuZG17xCL0reic+FKnomW4Kl6fAEiovFsowv
         NZ7n0Q5kGJJWibv7Wvs3Rd798lu3CNwXnjBLae/dE3z66HfbbbMcwjeXqzHzbBZr2Cz+
         NlcHdv7SQPWi/L4f4KKb0MP1Cvv9+XQWVxXBPAkqdSb7eS0TGj7Zi4IWrFX4FKDdTzd3
         6jSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6RO6UbZkKCbF0GyAWVkid9YmacbMRMtsa7/nKVyyYaQ=;
        b=T+kZMOr+eiNhW5a3O163l8bfYhXPmp8HFWHOsE/mMNXaz4pIdIHrLuhzUNtl44NFPb
         vjaZX2ixdlVGErkHY5gzfeT0ncdWi6CyiopIoXSPOs/2tE+L3+AMEN6VNPb0GBrPOwuV
         w1xPmb1pExhLy6Metnb3D5FeanNOVizSmrcaCPlcrFEp4cVflzxE3cSunujqsdP/wSlh
         pXiINLsSPwGj1LKmQFGSwsFFimjZZg91UdAZqcfVaIKjZa1/HlAT1bHjpSl6dxAYhmGC
         QMfgwp4YAl1RdriAnoYj22on3IQWnWczgcr9Krwu3pCB0NaTumx4qBBuODbAU45Qhp4H
         QKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6RO6UbZkKCbF0GyAWVkid9YmacbMRMtsa7/nKVyyYaQ=;
        b=c+XBqQUi/8WuEjvawO1OefWaC5nofE/xC+kd3AwtZ+FOcofp+sghGGQS8GOD3s8ntv
         1A6xr0CYbBCdFKzcOLPpdDnw4RYY7MTrteXMkvuZ9sSz7r0Vmz8ajH4rK5n8JjuDou4Q
         2YFV0dsTafw+PQIRlMmv5wda2wAGBjzcKOa0/NkDzuNtrIiPAiIn3V5U45YvJ+X2WCap
         IG0VV1YTNUv0DOfmFdS5/PTtM2Ec43GFj/oXUNgIhQ3UXa+DahREdtanX3rmVVXIFn++
         jLyGV7t1Sn9MqKpAn+TJY2soG40XW1wwwaEfkJTIWWlOOAIv7wEI1+Vz8EeYLxlakYwR
         rQrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kcuUUEsTrCeJJjzGqEar1fSZ90Asgs7DQojPjImyKoTzqj7uJ
	DenQCaFB//VWba/oYe4YeMI=
X-Google-Smtp-Source: ABdhPJxL+7nyXfGSQKI6NGC699ucTK/1U6YoNYPiXVstgPqWxV+wegxo13grQAvCtmN/mnXSgmHPEQ==
X-Received: by 2002:a2e:b5b9:: with SMTP id f25mr2421006ljn.50.1591810334029;
        Wed, 10 Jun 2020 10:32:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89d8:: with SMTP id c24ls3254848ljk.2.gmail; Wed, 10 Jun
 2020 10:32:13 -0700 (PDT)
X-Received: by 2002:a2e:3807:: with SMTP id f7mr2346049lja.234.1591810333431;
        Wed, 10 Jun 2020 10:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591810333; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDJaar4CDdmmyhc14ShHPRUdvTvMxH8G/X8HMQSesfUitsGFL8gs6Vf3i3TtY5Vm9G
         EcNH4gUobOKB4WbcI1dm8ebBO6GGHmSEiiH3c7shMjcLRYfZVyTLC3+Kqfh3uCPSLbao
         2YnF1OEulUd9A+fe7jkdMiQeyDjHFieEWUmXMnniLzSUiAOqgFjPCm0QE81Rb03cHCuE
         omjKHScqK4902m2yqvc6o3A7sLE8V6GbjIiwf9zsE3WwPHyZP7mrVcfKtzKVxXI1A83C
         BnCs3HtlUE0I3qGgrgx7k6y33mRMns2DsH4+n41grFG59aHX0q5AjYGZVkTC3OFutsqA
         7nuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=yi/43U3C8nLZO8ANXeiZd32sZHmYYYDquZgxJJvO/m4=;
        b=WmTfnTwCymPXseSROvBv+Ko3aqQaMPifn12eJAUx/qX3dX5pCfkOOwtCTzRMe2iFVY
         Zv3bEgQ4Q77e2mriptxC/m0fj7q9ZTOggmhR19K2MaHOddKX0v+tmaZ6fThxmOPiQFs0
         cIPMZe2xR53yJThsCGAyI+e7KP7JW3eWq+lHgF7HXx+JZtJj4NBcqUXpYlTwdyHsYDXa
         41igij5etR3cYHMJXw+LT1cIecCzZJkQr2lI2zIB+F2FDxTSYYXMC4qMqGbaE1fcD1rf
         RukYOkz+oGT9HlimjrzAZzmw6y0PJz05ZvR+Q5P4KTnxk47CMeRrsOP5fRjtmsCf9A4I
         oRYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id x20si22652ljh.1.2020.06.10.10.32.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 10:32:13 -0700 (PDT)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131] helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1jj4a9-00074z-Vi; Wed, 10 Jun 2020 17:32:10 +0000
Date: Wed, 10 Jun 2020 19:32:09 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] .clang-format: update column limit
Message-ID: <20200610173209.otq4nxx3ya6j4pat@wittgenstein>
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
 <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

On Wed, Jun 10, 2020 at 10:13:24AM -0700, Joe Perches wrote:
> On Wed, 2020-06-10 at 14:51 +0200, Christian Brauner wrote:
> > The provided clang-format file wraps at 80 chars. If noone minds I'd like
> > to adjust this limit to 100 similar to what checkpatch (cf. [1]) uses now.
> > 
> > [1]: commit bdc48fa11e46 ("checkpatch/coding-style: deprecate 80-column warning")
> > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> []
> > diff --git a/.clang-format b/.clang-format
> []
> > @@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
> >  #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
> >  BreakAfterJavaFieldAnnotations: false
> >  BreakStringLiterals: false
> > -ColumnLimit: 80
> > +ColumnLimit: 100
> 
> Ii think this is a not a good change.
> 
> If you read the commit log you provided, it ways
> "staying withing 80 columns is certainly still _preferred_"

I read it; that's why the "if noone minds" is there.

> 
> With this change, clang would _always_ wrap to 100 columns.
> 
> clang would not make any reasonable attempt to use 80 when
> it should.

You make it sounds like it caps all lines to 100 columns when really it
just does it for corner cases where we run over the 80 anwyways. I at
least don't regularly write lines of code that cross the 80 limit.
So when clang-format is called it's usually when something needs to be
reformatted at which point using the more lenient 100 char limit seems
sensible. But I don't particulary care about this patch. I can just
override the .clang-format file if this shakes the world too much.

Christian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610173209.otq4nxx3ya6j4pat%40wittgenstein.
