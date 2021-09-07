Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBQOQ32EQMGQEGX5B4FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DB2402E0F
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 19:58:26 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id n26-20020a05680803ba00b002695053b627sf4102179oie.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 10:58:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631037505; cv=pass;
        d=google.com; s=arc-20160816;
        b=QXPcTW485zY8c6FueUsopyR0ItRlhBV8dzQ41i3O1dFoQplhQ7XgWGArxwGNDwe9nU
         1t5A3EAU95t7L1ac+9dcaCEXQaCyblPvm+adMdmlmbS4hW2bYuPN4rvZu21ht5HcBfjp
         o19aUK+uLnlLPJ1U9IwR4PPD4mGyuf1I7aLDzxtW6ilClFzMTA6XDnqbUOdLw4QLt+Zp
         sOXslWngz3tnSU/1clF0dSXCXfzOfqdrazzWlsSOZj3Axh1d8wMG/op4UXp8RNeBJ3LD
         GxaCJw/zK4nYScBdZiyAomITurJHluzKOt8LE+cLFpth3XD0YnL+uxjnMQDs9Oe4aRRt
         PXCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7fLHNOARS5VMFh18BM3lMTiYV57WJpxa5z2TiaKv/zc=;
        b=MdACtN6wuYBLujjjHiW082G3IjkgLbHYUlQLFKfYnBK72EceBdC4yBD4sJBXg00gqC
         ofI3SgvF42g1CWNXSCDri9eAufr3u6bzM7CY2Qi+edNBbPbB8kcKFpnM8Ok14QSd28WW
         N5vcr2WV5xE54aqCl+FRVkgxvjlcAzicnON/nrGZwL+3Rk35LfZDGB9LyefZGNi3kBNl
         3XQTzMrbr9B+AABHBLvIYWIu8UJd53hJ/u0oiBM96TTvRFUeGCMwfW2FSyqHFgVsjU4n
         RFZU059YdCXgOKQYhtWskaykeOsv2cNgzPOVldvYsYJOGn6NupD5jjyOHBupjtSk8mHs
         i7zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=OM9NZKY2;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7fLHNOARS5VMFh18BM3lMTiYV57WJpxa5z2TiaKv/zc=;
        b=oDeAArzcMX6HtBKuHXL91ixxjs6CxT0uXYujzLLVV+5JDrHFyAcZZhZEIetFkrR/SK
         nOkduZ8AkxsOFHkr0ZUtAttM8BwOqg5poKbgCAd6vRneHQuyZfedYcee8wM71hPYPSUQ
         586vLyTJTst0wTnfWlN2b2t6zEKuoAfGjanSsdzVYB6ddTlARUv0zaXiNSgKcCWGtaWy
         pBjeGgbYmyzZJ6mwZDyPbRBNaNgTyiUUP4WhX8j5NNEN3H2AsVIO5wOBZSYFIo67MZiK
         HZVZAl2xIU/FHN/SBXU9IF5GO440fwf+umqK8LftaAPtr+zg+ybDAG28q7ey378tgTxS
         Krqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7fLHNOARS5VMFh18BM3lMTiYV57WJpxa5z2TiaKv/zc=;
        b=jmEbKTXsHmHJIORhrpf/SUVmRdUF1fe4KedXLEFBFFliu1axUozHCHuEbueWVxxDDe
         oJz9hmmHB0lQP+khDOpgP0HrjQ7+icG9lb0rOrvqN2gQ+KqKmQlZoIJv0OjVGnU4I0mr
         +XtqFzhKSMSu85WIwSqJIcKarbbZ1o+XnHvuOouhftUEIgkBoavMqiKCu677Tzebf0FJ
         c2DaTLsUoUwEnBpKFepEpBlCgsUpZbMvgvpHQ3hIarc4GAp1zNOUSlBC7Nma+jskPDCW
         mRZZDffQPGf7KrgpyKkWPA7vwKDEAioO5mtqF+uRb2HXLzbRQNOdNDxqZPAcP1IZ4wE0
         Da+A==
X-Gm-Message-State: AOAM533ImvX1USDKnPE4kY4mIFjscSP1ES4OqpJOhDWFUuEWEc+bpkCF
	Ib0IEZzkE0t7MYm/J4ITdqg=
X-Google-Smtp-Source: ABdhPJxOgsDAhAJ+mzXxwIQXbb0Knfc35AML/bY7T4VvVbJW+LysNJ2Mk8RSjSagOwHlXX8d5IiXfg==
X-Received: by 2002:a05:6830:2b24:: with SMTP id l36mr16795342otv.25.1631037505661;
        Tue, 07 Sep 2021 10:58:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f89:: with SMTP id t131ls2314969oib.2.gmail; Tue, 07
 Sep 2021 10:58:25 -0700 (PDT)
X-Received: by 2002:aca:1914:: with SMTP id l20mr3865155oii.19.1631037505186;
        Tue, 07 Sep 2021 10:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631037505; cv=none;
        d=google.com; s=arc-20160816;
        b=JmEaJ8PeJ7oSRYLTX5Kzz0IcCb2S1BlhEwE2ztzI7a2tnS8MJZ3qcOHmmHSTTxcxZK
         PGRRyvXKkr9i53nkMRqW3wAddhWIz7kZBcw4xsNQCPsWhGtHQJFCEwyBiuQQmg+AtdbH
         ZYnJnqJMUR+rDMIdHdfp5KLSJ/exHsFXUBnpJBT1q2z2ekqbwU19HmquirFIrebUM1OD
         dEM1QjZkikg0g1ToScGk4fNgMSJFjp1hVNIfbfCRHgtY4EFR3BuVNRp8um7rS3sLJoED
         oofV5GUB/biSWPf3sKZMxwU2WFMWIlHe926YPdJhnBehbJSWubRrTLVU0H66addeBQm/
         VfjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=Hl2Csvq846iKyuS39mKTxO6Jzoq1ExZ8Eura3xQjYvM=;
        b=iVUWdiNhB7ykKDx6mpk0aSj8bv6XDi0hDVIA+T6KoWSf37mOT7ZCUKDR1+SCU0v0qf
         jMvqq8ZgKPdDI0gGc77bqw35gh00BSbx2FP66rV+wTvdgrf91kg2VthjPBM+kgd1+hbU
         Zs7JPFSR463j/pp5tFf2L1d/k2SoP8O6W8DP8Z1YHJlAlqTyxNboYuf8pcZ2xoecco3W
         uDuaVV4j7IY1/d0hXHOhY+XBRaK1eq75mSI+h3YXqJxs4QksG5V0jnnpsLotqnTP1TBz
         JRafiCfl5TetAckKojq6GTHrLLE7cAat/2FuxyHMN3uadnF2mrbStpOUtNGOkjFPnvV+
         ZWTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=OM9NZKY2;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id v21si4808oto.0.2021.09.07.10.58.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 10:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Received: by mail-ot1-x32d.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so123457otf.6
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 10:58:25 -0700 (PDT)
X-Received: by 2002:a9d:5a81:: with SMTP id w1mr12973775oth.307.1631037504911;
        Tue, 07 Sep 2021 10:58:24 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id k24sm2521611otp.31.2021.09.07.10.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 10:58:24 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 7 Sep 2021 10:58:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Doug Anderson <dianders@chromium.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
	Jian Cai <jiancai@google.com>, Mike Leach <mike.leach@linaro.org>,
	Matthias Kaehlcke <mka@chromium.org>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>, coresight@lists.linaro.org,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Leo Yan <leo.yan@linaro.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] coresight: syscfg: fix compiler warnings
Message-ID: <20210907175823.GB235361@roeck-us.net>
References: <20210830172820.2840433-1-jiancai@google.com>
 <20210906150625.GA1228692@p14s>
 <CAD=FV=Ukx_PRpfnLXEBajtts78ays=6+nGb+CRVn76xjyNkn5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAD=FV=Ukx_PRpfnLXEBajtts78ays=6+nGb+CRVn76xjyNkn5A@mail.gmail.com>
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=OM9NZKY2;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32d as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Tue, Sep 07, 2021 at 10:51:53AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, Sep 6, 2021 at 8:06 AM Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > On Mon, Aug 30, 2021 at 10:28:19AM -0700, Jian Cai wrote:
> > > This fixes warnings with -Wimplicit-function-declaration, e.g.
> > >
> > > drivers/hwtracing/coresight/coresight-syscfg.c:455:15: error:
> > > implicit declaration of function 'kzalloc' [-Werror,
> > > -Wimplicit-function-declaration]
> > >         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev),
> > >                              GFP_KERNEL);
> > >
> > > Fixes: 85e2414c518a ("coresight: syscfg: Initial coresight system configuration")
> > > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> > > Signed-off-by: Jian Cai <jiancai@google.com>
> > > ---
> > >
> > > Changes v1 -> v2:
> > >   Format the commit message and add Fixes and Reviewed-by tag.
> > >
> > >  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> >
> > I have applied this patch to my local tree.  I will push it to the coresight-next
> > branch when 5.15-rc1 is published next week.
> 
> Out of curiosity, does the fact that it'll be in coresight-next mean
> that this will target v5.15 or v5.16? I usually think of "-next"
> branches as targeting one major version later, so I'd assume v5.16?
> ...but it would be nice if this warning could get fixed somewhere in
> v5.15.
> 
Normally "when 5.15-rc1 is published" would imply v5.16.

Note that warnings are now reported as errors in mainline,
since -Werror is now enabled by default.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210907175823.GB235361%40roeck-us.net.
