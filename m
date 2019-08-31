Return-Path: <clang-built-linux+bncBCF6L7545UEBBZ6IVDVQKGQESYOIXXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A9DA4323
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 09:40:25 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id x1sf9794993qkn.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 00:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567237224; cv=pass;
        d=google.com; s=arc-20160816;
        b=IELTiXxorMHq/8w7o1AdA8q9jA/9CBYpJDY+UcmfR028u6YXYQU3+XVsdHScofNDO/
         Sw6vh2P0thMnK+KAoaMthyLYNtEfvFqR0i6px7d91OyoSOVdt8HzijEGL8oXHbFDEfPV
         ACNy7WtYhRfW6pn3sAlTbUzVUDYh8EOx3dilG0cZRxDZI5oN7ftLqwI/1bcPAPe/anf/
         aXbYcNhzHVHoWMHJPKZBCut8kdBu5svgXPchPs5PUz0HN7qTb8gZay0b2EXuinjXMpGn
         NFq2YOgmA73n6C9QltofdgYGO/5wvjNr8D+XhOeDmrn4kSw8ZtvYNPKHrir3FnpIwqJt
         vF6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organisation:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/2cHqdOTXIKwHAwIZSImMMKQp8MURVrDIbHDZU5BO9c=;
        b=pvQ784K28XD+tLVSs2YXWFbgxya0FSdvStNJbDa50qDOF85uak3vEqK3In8c1LodGN
         Nm1kCgxQh5YOlG8W2CtScjzb5tzwmiuKC0iPXTAb1osGBX1vbdhPnEqc8skawqVk31On
         qPCQ1wtJ1NPeql3lM0oRYMaCBgGrqqDkZcHuPlNB2kcrUYPgFYHOQKaWFYmIXEqjrUqe
         t5Mu1P3q1AWL2K2azisckEQwwlJX9o3EhCArtVbduWbjfyL7JSz4Wn4wMOWQIqdwXW4q
         6RPHhvjrCQ/g6wS1tEiKs+Jd2zqYo4MzMgTLOvJOaLgBNBClGHRoJI+OX39WZ0VDjquA
         k4fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) smtp.mailfrom=horms@verge.net.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organisation:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2cHqdOTXIKwHAwIZSImMMKQp8MURVrDIbHDZU5BO9c=;
        b=GazQa/Var/nDn/igjZMqEXNBu6PsVxDT7p3DqD5bGDBtl0W14bQ26xANTSIz4mp4Wb
         ATGQWa5MUNKNEDZcF1+pS7uBQ4IlAHx3KAL77D1Uva8Plp4dj8aqfVEwfiluiS8DyWs4
         vScMBEtmHDIu8IHeS09DUVZQ8QS91oWjFOc6G6i/C7s232oHiD8ZNQSwnfgZ3LAFNTxv
         /NVklqVh/yX0LSs4JGStUaoB1/EssYElNtqro4XOj68a16sVLeiSi/wdyGjC6nE8IM4C
         HHimDQOAAtA2vZHuNXKX+o7sd2gx693TAZ/6CCtKauyP7yVA9Ers+4Ar6d3jOOLobc7B
         kEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organisation:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2cHqdOTXIKwHAwIZSImMMKQp8MURVrDIbHDZU5BO9c=;
        b=Q4bn9zMSALey5yD4OB4+T07vAO8s49muxOUx+cK9EQHWbJckVxyv4nwUCaTQDPdIyJ
         FuR+CM4gOobnxsf6/9Ibi3xqSsWrXl2qp1fwMWxoOS+wj1qJLKqvwzbyxRIjMohe+rZ6
         6G+1/AR4/IRiHVB6nBKxjt0ObCXSo6DZE0rCtAe7Ys5y/u6Yb9oRW98lYbM3QW/ZO4i4
         cmjbqr4q4rIzxIqiPHIv0eCbae8FKJcx877PkwVlefbIn0Wjmp+XXk+TBI35vwI+hQBl
         8+q4pZwHA6nGlnzzJjOxeuMVlfhXa1/PP+JGDpafuxWXGnMv43rzm++Y6QKmw5zHOT0n
         MaMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+u1Maz19c+RaKenAVaOovhag0ELppBjssSpA/SJB6qURBpHA6
	AtkUBOLNQeZgnt8972OcYO8=
X-Google-Smtp-Source: APXvYqztnKCVKSvB3HkSNYyPxrFRUasLbSDdLNai9uDm3jqISNCSxhAJNYGEKSKYwTA1BsnOMQSG4Q==
X-Received: by 2002:a05:620a:351:: with SMTP id t17mr18648577qkm.159.1567237223900;
        Sat, 31 Aug 2019 00:40:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:670e:: with SMTP id e14ls1606325qtp.5.gmail; Sat, 31 Aug
 2019 00:40:23 -0700 (PDT)
X-Received: by 2002:aed:3f47:: with SMTP id q7mr19347571qtf.209.1567237223698;
        Sat, 31 Aug 2019 00:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567237223; cv=none;
        d=google.com; s=arc-20160816;
        b=r3tYwQL2nMua2ht6ZyfxHbty+XomjAAgvnOiMR82HhksbfH1KLOxDHmr7grvQS8qjk
         fMRob3Lu7x8kBgoUbnGWkL25SXAOaKIzon4yHr6LF/n7V5/xJHex2WOmQkrAircWR5nB
         YeEMc+sooMLktdyDJHo/hnKPaQ5op4oEmku9pAYGtg74suVf10Kg9vZIN6ypKNnqktIu
         m2IIcv5S3oIizw7R7UcrTaExCTVva4uNAYbmUDREq5rGayj5Kwaj2PsqJtqOREueYecE
         AVr1EnHxzPSGRb7of4INfPObJdSuQM0f7/I2ysdAESk7s3KXZ9+2yM11rPzy9gOK5IdP
         4djw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organisation:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=hAk5ol4WXtTN920PXhXsqdoVb7GeAVVRFgUDXAJ/PaI=;
        b=j5xPVDA3YcNu0ikXMBS6mxQbC99dBO+WHHOV5DobV5dFYuDFNdYy6gWFqsXd42D1is
         EAEkV2mQ71yZo05Y6izEVKprLXC5zell8XbHhh5jgohrFwIFvR0Af3PQA1zcC2/2Scz0
         anP8wq3CgLXDX13OpOdWAsNh5XbRFu1VdZblswEBDLo2BnBOQe/07SQr4wrIsAn86XXt
         yUYzX6ehR6HVmvoT9ZxvbDhVe4752rOe1hj+s+PoYjGZFPJIpNDVnGv4mtVVPBWF/tOf
         u2P4EWDNEkHReGhzN7bCjyMuq0HiJeyyaYW7KfZXJyOIo2N7cD7wInbNmbZm1IW2dbJ1
         TiIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) smtp.mailfrom=horms@verge.net.au
Received: from kirsty.vergenet.net (kirsty.vergenet.net. [202.4.237.240])
        by gmr-mx.google.com with ESMTP id r68si285245qkb.1.2019.08.31.00.40.22
        for <clang-built-linux@googlegroups.com>;
        Sat, 31 Aug 2019 00:40:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) client-ip=202.4.237.240;
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
	by kirsty.vergenet.net (Postfix) with ESMTPA id B3F8F25AE77;
	Sat, 31 Aug 2019 17:40:18 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
	id 92FBBE218F0; Sat, 31 Aug 2019 09:40:16 +0200 (CEST)
Date: Sat, 31 Aug 2019 09:40:16 +0200
From: Simon Horman <horms@verge.net.au>
To: Wolfram Sang <wsa@the-dreams.de>
Cc: Zhang Rui <rui.zhang@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Nathan Huckleberry <nhuck@google.com>, edubezval@gmail.com,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yoshihiro Kaneko <ykaneko0929@gmail.com>,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH] thermal: rcar_gen3_thermal: Fix Wshift-negative-value
Message-ID: <20190831074016.nqjtvqf3lesyz77z@verge.net.au>
References: <20190613211228.34092-1-nhuck@google.com>
 <fd8b8a48-dfb7-1478-2d8d-0953acee39d3@linaro.org>
 <82458318837ed1154a183be0b96337fc7809c645.camel@intel.com>
 <20190829131124.GA2437@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190829131124.GA2437@kunai>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: horms@verge.net.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of horms@verge.net.au designates 202.4.237.240 as
 permitted sender) smtp.mailfrom=horms@verge.net.au
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

On Thu, Aug 29, 2019 at 03:11:24PM +0200, Wolfram Sang wrote:
> On Wed, Aug 28, 2019 at 04:52:20PM +0800, Zhang Rui wrote:
> > On Fri, 2019-06-14 at 12:52 +0200, Daniel Lezcano wrote:
> > > Hi Nathan,
> > > 
> > > On 13/06/2019 23:12, Nathan Huckleberry wrote:
> > > > Clang produces the following warning
> > > > 
> > > > vers/thermal/rcar_gen3_thermal.c:147:33: warning: shifting a
> > > > negative
> > > > signed value is undefined [-Wshift-negative-value] / (ptat[0] -
> > > > ptat[2])) +
> > > > FIXPT_INT(TJ_3); ^~~~~~~~~~~~~~~
> > > > drivers/thermal/rcar_gen3_thermal.c:126:29
> > > > note: expanded from macro 'FIXPT_INT' #define FIXPT_INT(_x) ((_x)
> > > > <<
> > > > FIXPT_SHIFT) ~~~~ ^ drivers/thermal/rcar_gen3_thermal.c:150:18:
> > > > warning:
> > > > shifting a negative signed value is undefined [-Wshift-negative-
> > > > value]
> > > > tsc->tj_t - FIXPT_INT(TJ_3)); ~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> > > > 
> > > > Upon further investigating it looks like there is no real reason
> > > > for
> > > > TJ_3 to be -41. Usages subtract -41, code would be cleaner to just
> > > > add.
> > > 
> > > All the code seems broken regarding the negative value shifting as
> > > the
> > > macros pass an integer:
> > > 
> > > eg.
> > >         tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
> > >                                  tsc->tj_t - FIXPT_INT(ths_tj_1));
> > > 
> > > thcode[1] is always < than thcode[0],
> > > 
> > > thcode[1] - thcode[0] < 0
> > > 
> > > FIXPT_INT(thcode[1] - thcode[0]) is undefined
> > > 
> > > 
> > > Is it done on purpose FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]) ?
> > > 
> > > Try developing the macro with the coef.a2 computation ...
> > > 
> > > The code quality of this driver could be better, it deserves a rework
> > > IMHO ...
> > > 
> > > I suggest to revert:
> > > 
> > > 4eb39f79ef443fa566d36bd43f1f578d5c140305
> > > bdc4480a669d476814061b4da6bb006f7048c8e5
> > > 6a310f8f97bb8bc2e2bb9db6f49a1b8678c8d144
> > > 
> > > Rework the coefficient computation and re-introduce what was reverted
> > > in
> > > a nicer way.
> > 
> > Sounds reasonable to me.
> > 
> > Yoshihiro,
> > can you please clarify on this? Or else I will revert the above commits
> > first?
> > 
> > Also CC Wolfram Sang, the driver author.
> 
> CCing Simon Horman who worked with Kaneko-san on these changes.

Hi,

I think that what has happened here is that these patches and moreover the
driver has been through quite a few hands and I agree that zooming out and
cleaning things up would make a lot of sense.  Personally I would take the
approach of incrementally cleaning things up.  But I don't feel strongly
about this.

As for the specific question about a negative constant, I don't know of a
specific reason that approach was taken and I don't recall investigating it
at the time.

Kind regards,
Simon

> 
> > thanks,
> > rui
> > > 
> > > 
> > > > Fixes: 4eb39f79ef44 ("thermal: rcar_gen3_thermal: Update value of
> > > > Tj_1")
> > > > Cc: clang-built-linux@googlegroups.com
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/531
> > > > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > > > ---
> > > >  drivers/thermal/rcar_gen3_thermal.c | 8 ++++----
> > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > > 
> > > > diff --git a/drivers/thermal/rcar_gen3_thermal.c
> > > > b/drivers/thermal/rcar_gen3_thermal.c
> > > > index a56463308694..f4b4558c08e9 100644
> > > > --- a/drivers/thermal/rcar_gen3_thermal.c
> > > > +++ b/drivers/thermal/rcar_gen3_thermal.c
> > > > @@ -131,7 +131,7 @@ static inline void
> > > > rcar_gen3_thermal_write(struct rcar_gen3_thermal_tsc *tsc,
> > > >  #define RCAR3_THERMAL_GRAN 500 /* mili Celsius */
> > > >  
> > > >  /* no idea where these constants come from */

Regarding the line above, I believe the constant comes
from the documentation.

> > > > -#define TJ_3 -41
> > > > +#define TJ_3 41
> > > >  
> > > >  static void rcar_gen3_thermal_calc_coefs(struct
> > > > rcar_gen3_thermal_tsc *tsc,
> > > >  					 int *ptat, const int *thcode,
> > > > @@ -144,11 +144,11 @@ static void
> > > > rcar_gen3_thermal_calc_coefs(struct rcar_gen3_thermal_tsc *tsc,
> > > >  	 * the dividend (4095 * 4095 << 14 > INT_MAX) so keep it
> > > > unscaled
> > > >  	 */
> > > >  	tsc->tj_t = (FIXPT_INT((ptat[1] - ptat[2]) * 157)
> > > > -		     / (ptat[0] - ptat[2])) + FIXPT_INT(TJ_3);
> > > > +		     / (ptat[0] - ptat[2])) - FIXPT_INT(TJ_3);
> > > >  
> > > >  	tsc->coef.a1 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[2]),
> > > > -				 tsc->tj_t - FIXPT_INT(TJ_3));
> > > > -	tsc->coef.b1 = FIXPT_INT(thcode[2]) - tsc->coef.a1 * TJ_3;
> > > > +				 tsc->tj_t + FIXPT_INT(TJ_3));
> > > > +	tsc->coef.b1 = FIXPT_INT(thcode[2]) + tsc->coef.a1 * TJ_3;
> > > >  
> > > >  	tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
> > > >  				 tsc->tj_t - FIXPT_INT(ths_tj_1));
> > > > 
> > > 
> > > 
> > 


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190831074016.nqjtvqf3lesyz77z%40verge.net.au.
