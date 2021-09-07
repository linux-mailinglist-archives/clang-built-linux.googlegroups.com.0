Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBJWQ32EQMGQEHCFTBLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id CE910402E0A
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 19:57:59 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id h7-20020a37b707000000b003fa4d25d9d0sf17191813qkf.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 10:57:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631037478; cv=pass;
        d=google.com; s=arc-20160816;
        b=arr18Xd93f53fTApXoDetSSeLhNaeGFXGUDlCCQ7yAkDkitPHUh5qE3uhou81Vaaao
         eTNHdrk/qQXcuyh+kdxZiZ4zxFhrFrDBIIBz9ujB/mVh3sc6ecrHH5ybnT3emJVOIJM7
         xm5Xc33Yq8XUO2hpjlUPeIK50YlbjkN5TMKi/FgoqZv4J63sOu4Nv4ntCCK3lrjqUcbe
         nH2Iqrtv8osqZcALfqx3e0jXk9WqfdC04Q6jjF7AYE3C+Rum1FTvW0zzn1Gomz6m1uhC
         5NdmldNtH0+ItuPlz2KShJgtrp9y0mLhE4X/8PXDTAg2qGioINrPx9+JexleFHLA+ssE
         dXeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Z7ZhruZCBrEojWKfuqHgVjgrC4stEVRQsc2d0ggDp9M=;
        b=RAqsMW77c+RLKtQAVSx/Cl9S2h6qSMnt87gYz6V9rGwJeHKqZprHgvPxagfS3WvZoP
         no+aelap5jfmYNExU4hTunFyEJ69xa6709aUhNU3kpEhAWY1OdeTAwfAY+0AxUudA8fv
         XuB+rqy+GpzMvadnjRiLOurX6LfcSnwbNTXF+4vR4dFjvrZzeHtY2jVx90T3f5lIS09G
         Dpgi+GD2/VS3MvA4o/t7sCz0LlYrer8D5PLSwTCTqLeJSP94rb0hSyFTpt0sdCFjOUIi
         MxGT6ijJVKHDtnL3oU0slJZpU1mwaZEAubwbA87eLuNMeyXiFsfxca05QJEUy69TgUfM
         N2WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VPu7rS4Y;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z7ZhruZCBrEojWKfuqHgVjgrC4stEVRQsc2d0ggDp9M=;
        b=IF9JqkRF+geinRrGj93D87TzdhSBLdL9mS7BpmiKwGPR+BtqC1B7KxvO+xJa/hU8/K
         mFop/o5hvJ4014i5lmY9bJsEy/oP570GSNWvwXVcwlmv0bWVEODV757gcYQJWkjC9sga
         KhdfR3I4+UszB7i30xXhExZHSBr/ge+Ij5BbRE6v+HzcK4ek/tYkaZVfcvLdamRruVeT
         M1QYf7InV+35J9kSqlTI7ctxaOTofuCyXShtgUwxEhOZ/qVR+HtQexs92b7c/QjXN6U4
         CfMncbuNCMQ/KCKuY8scKpxWvG0Ejj//StQr9c2c+vWVBS+5RhRQZtAIp3FuMd7Tkebx
         ayIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z7ZhruZCBrEojWKfuqHgVjgrC4stEVRQsc2d0ggDp9M=;
        b=d4CUHoKiI1xvx6giNOCKAx8a8IlmN2jy1pBHAM2ktOu0BRxfkJGS5SOgKk8+reB+bb
         jL+Ki/rbo3NN9zoF1zigmVRV18Mv0gcTr8XN2CXWhUMOnsoBiQKhi3hlF1Y/45ICctv/
         5HMLQ6GbGEI8fkRIR3GaPwdUQZM/8hqKNHOITzjekIt2/ajIEOmRb52XYTt/+XxHfZIH
         61Rs+tFTBOcY1j8o9SEhivIISXZwDYTncNQWbz90+f/VyIwYVuWbYxob8GcBm/7XRE0z
         L+6lXMePF8VyVeCpY2xBP//SUqfd2sU/QgxhB6WZ0sneRO21YlUcJVYAV8JUApvuts3K
         HHIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xnBbtXSbMtOW26AvTYrJswK+tYrq00IR1lfM44MZMnMi4YoDa
	GDQx22LJMb2ylLTZ6HBgw4U=
X-Google-Smtp-Source: ABdhPJzE4BrF3DM7iA478a+lhMRa7S0nhkR6nnZ0hOUQo/EFbxTWFapwF25a4Ti6dG9my+1ZyDDzEg==
X-Received: by 2002:a0c:8e05:: with SMTP id v5mr18486296qvb.4.1631037478615;
        Tue, 07 Sep 2021 10:57:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:c5:: with SMTP id d5ls5104902qtg.1.gmail; Tue, 07 Sep
 2021 10:57:58 -0700 (PDT)
X-Received: by 2002:ac8:48c1:: with SMTP id l1mr16802471qtr.89.1631037478076;
        Tue, 07 Sep 2021 10:57:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631037478; cv=none;
        d=google.com; s=arc-20160816;
        b=qi0YJjc82kozYjSC/6XrnPYRqrqTOE/CS1REVZxEb61wQYaO8U4u4E/l/f7jmMRjkm
         lqo77Wp+N7/VBw0SayTjXBW9DVgPMTSF7AexQMsBfHos34oArY2xKJRKbBPwG8uB6km5
         KbNhBVQK+u06wl9Zd+6FP2vSUJMiKxBTjg2A3KbfT7qsmtE05JjG20gZRUhtb1Vd5zg6
         415hRpVWLw9oHKAN4wMuIBJUrInBNKbyAvlAiFH/SF1YFXm7ymXS9dUaAK0SbD1GOc2i
         RS5K5rM9rQW+ECrSQp3sVD1EX4y1cY+k2AWnkyBrRDwOdfkFCE4ZrDrpHSy3d0pmmnN0
         hb3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z8pLJ1FpaVzh5FC1pX+Q5BEfmgO/vOO3RyE4cZ7z6Q8=;
        b=sSVsz90ztr2OKnRls6mPtAtW4fKjQyMR8puPpx525AHJIyYso4rGzqwA4iOrmrjAcT
         ryN8O24p+8WjxLviCNFbkRi8YLCFW9DPcIcfg4A3R/X4zmLjDiQUTztpFe1dcIeTrCoS
         iG95nDSpAIpYx3IqJ3ApAcD55SPA+vq9kigzkHXjd8CmDftQEBcLZQsjSGPS3q0OZRLm
         H0v1V4/Tje4nhEoggqb8jjFmYEuH3cJZNwqXPW/KmGhepbiBjZdfgB/E0sI5al35FCo8
         yZyk+HMU7fucQCxCRKn+gIhBE6emPUpWepTRIn5hDgzaK/MzaiTuEv0kUwIkOCs/tm6R
         uHRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VPu7rS4Y;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id i4si1045232qkg.7.2021.09.07.10.57.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 10:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id a13so14030164iol.5
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 10:57:58 -0700 (PDT)
X-Received: by 2002:a5e:db06:: with SMTP id q6mr15473972iop.129.1631037477666;
        Tue, 07 Sep 2021 10:57:57 -0700 (PDT)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com. [209.85.166.173])
        by smtp.gmail.com with ESMTPSA id a4sm7088234ioe.19.2021.09.07.10.57.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 10:57:57 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id u7so10998179ilk.7
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 10:57:57 -0700 (PDT)
X-Received: by 2002:a92:cb52:: with SMTP id f18mr12692305ilq.120.1631037124093;
 Tue, 07 Sep 2021 10:52:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210830172820.2840433-1-jiancai@google.com> <20210906150625.GA1228692@p14s>
In-Reply-To: <20210906150625.GA1228692@p14s>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 Sep 2021 10:51:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ukx_PRpfnLXEBajtts78ays=6+nGb+CRVn76xjyNkn5A@mail.gmail.com>
Message-ID: <CAD=FV=Ukx_PRpfnLXEBajtts78ays=6+nGb+CRVn76xjyNkn5A@mail.gmail.com>
Subject: Re: [PATCH v2] coresight: syscfg: fix compiler warnings
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Jian Cai <jiancai@google.com>, Mike Leach <mike.leach@linaro.org>, 
	Guenter Roeck <linux@roeck-us.net>, Matthias Kaehlcke <mka@chromium.org>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VPu7rS4Y;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d31
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Mon, Sep 6, 2021 at 8:06 AM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Mon, Aug 30, 2021 at 10:28:19AM -0700, Jian Cai wrote:
> > This fixes warnings with -Wimplicit-function-declaration, e.g.
> >
> > drivers/hwtracing/coresight/coresight-syscfg.c:455:15: error:
> > implicit declaration of function 'kzalloc' [-Werror,
> > -Wimplicit-function-declaration]
> >         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev),
> >                              GFP_KERNEL);
> >
> > Fixes: 85e2414c518a ("coresight: syscfg: Initial coresight system configuration")
> > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> > Signed-off-by: Jian Cai <jiancai@google.com>
> > ---
> >
> > Changes v1 -> v2:
> >   Format the commit message and add Fixes and Reviewed-by tag.
> >
> >  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> I have applied this patch to my local tree.  I will push it to the coresight-next
> branch when 5.15-rc1 is published next week.

Out of curiosity, does the fact that it'll be in coresight-next mean
that this will target v5.15 or v5.16? I usually think of "-next"
branches as targeting one major version later, so I'd assume v5.16?
...but it would be nice if this warning could get fixed somewhere in
v5.15.

Thanks and sorry if this was obvious and I just didn't know.

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DUkx_PRpfnLXEBajtts78ays%3D6%2BnGb%2BCRVn76xjyNkn5A%40mail.gmail.com.
