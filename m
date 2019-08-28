Return-Path: <clang-built-linux+bncBD37J5WD5QIBBQMBTHVQKGQE24ER4LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 3461D9FD7C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:52:18 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id 38sf1763848qtx.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 01:52:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566982337; cv=pass;
        d=google.com; s=arc-20160816;
        b=V34jOxNM16znHXX6NtK1J237xdn5I8OHKj+4EYXTBdKQ6nTyAggiOAVdwjiAA7i7o+
         /Ql9qPpROrJFPqekdRkMu7S/yVNTBN2g+/B6mu+8GWyT9gIUXCPOmgDllfqSs+jbWmkr
         vTqMag7M1Q1WE9JyDRhHrWdSHiwLOmn9p5g6IxGN0MAJgIMGYy/iX0Re1FQ7di9ed5XL
         ABqta4152PLFsjYYtyN9bKPv/Tyn7cW3iNac71KXnfeE68RwrLEU0auhC4qXBT+uYrax
         coywMaaJXwY2w6yKxjn5py14cVvrEckQPrEcdLBGQ0jbPfWTnUZ62Ry4TSKg86mreCK3
         eomg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=bAZMC1yr8T642WXE+wucAV8l8zrKGx3J/1kdesznlWM=;
        b=0inmfud2gGNM52xMSYz3Opyx4DOmiFmsg0p2P8bDu6jjfMFy5UqWyOo6XEBUP+fhO0
         jIHD4Ipk8v6w4l2c6fUVpKTZFjpWe7/t+p9hkjR0Tr0VimmGrgDVj/z6ELUQ32/2u6aK
         VxNCJmFOofnBm62MEKhBTNKuSUqRyHrPn4RaE842QOo8vcgi7EA93e3amzxHWg8DLfKq
         nhqQnBGNG8ljhwupt7LGVLbLVss4VQXsR/8KTXvRYhNmrW+nRP91gFdPWZQ6GmOQAzPL
         pAf7r3DRke43IyHVWtWI9I/g4k3+ZZhjj8rcqZwjt7twL4F5FH1eLZO6+CUWI3jWzuVI
         icRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rui.zhang@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rui.zhang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bAZMC1yr8T642WXE+wucAV8l8zrKGx3J/1kdesznlWM=;
        b=sXBDfB3Z5Tl8OUy5Nhg6RdfMEJfHyhPXoAYMJ7dZFOCx5pxkGmnI/8LOo8X+W1LKI5
         ojolW+hkM/h1+lfrwPOfuOBQmowPPq4NHZXtnT1mH3JGdZmiCDSApV5HdTFuKbqDQ9y0
         bkK93KyiEuI3eY/CC/hZee0NzP9BRWaP2+ul1ZilvGWNMJAmETgKGODXUVvep9NJ50XB
         ONfyvUMsLbwMvzoOpBp7xtSzWy/gqw3V82CDrFrHj3WtRqAnJqE2SJ6L/+D7CF1NlmiS
         RmjJGNKnHWeOG4sZYX0aagQYb2dfz2VjSV1ZfHPvE4m8vekhmsUqUqUqvAeHbhvqaaiO
         tbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bAZMC1yr8T642WXE+wucAV8l8zrKGx3J/1kdesznlWM=;
        b=oqtZgbS7JfA2uUP49sQnE2TgvWyNYRmAszPgggFyXD8FJQ5b+Edus+7++jZ/WJvJNr
         TsvDc+Hi0LNJUEeGALGGdFOMzYuQRNxCZscsvWL3biDjn12e4INiAXm+xI24jx0zIS4I
         zS5qsLdNSryDI+jqEvmd/2wO78xgSD5vv4E7vsPJQgKZVjbuGaihOTn3ouyHzw9akGBm
         SJyhvvPtBcvKOoICQWFbzSCZpSFAxCY/9Nt/Bx/d9zxUzzsw/FpnGv9q8zlTDJUt1APS
         K7twe8QMNELnu0d1Omup+iyjiU5BW8J+8M6kkkVBsfhjx5KKFSMJ7ajVsbzImUNpZN1y
         DWww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVaDKmoz8ZSH6sWa5I2EtHeI51ONNiLSUTJ21ge3IyYs93BfIx
	Fx5gH+MCfbuRc5+LQlGUecs=
X-Google-Smtp-Source: APXvYqwacYGUqhZ+Q0toUt6Iwm8miAfFy5W64ZISCu8Gc9BcCH4FUnWj+ZRuPJxuXGqmlAQOZNX4TQ==
X-Received: by 2002:a37:b245:: with SMTP id b66mr2728528qkf.337.1566982337253;
        Wed, 28 Aug 2019 01:52:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d4f:: with SMTP id g76ls813409qke.0.gmail; Wed, 28 Aug
 2019 01:52:17 -0700 (PDT)
X-Received: by 2002:a37:6007:: with SMTP id u7mr2713414qkb.92.1566982337041;
        Wed, 28 Aug 2019 01:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566982337; cv=none;
        d=google.com; s=arc-20160816;
        b=Mqy6RBC+TfQOueq0P1bL6oJVp385+f53GUeHtQWqTW1RbRh7y5u0XofpxTCu7om12R
         8Dd/WAEKChxxBwL9atnmTvt9FxX38mb0R5K3H3sDiuALEGgR93PLwlh5fep0iA0xKbXt
         FJxeKP8adReiBsP+BDCRHVbRl2pFPxebg5gEoFBlx+UyI2FGX5+NF9iWQgmHPpaPL5FG
         K91nAbmvHGTGF7dD0/0KoimOmAb1FBrFYsV7ltE3rNhB/OR91T+riW5i4ZJOELQ7ixcO
         gp+JE2QQ2QUa1tJPmqp8THdDrvg+CgwUI2sAcy4b3dtVc5y44tezyPr5b5PPDwsf2kcG
         ryVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=s5cgXyjG1tJkW8ICzmceM+Fhyx5SXvHbqUwyvd8+ipA=;
        b=AjA4NKeefhkZAbVcPSrazdLYaQtikFYzVrESus9HoYbmbmTqIJxcMo81YQ+Gn8zFFs
         x/zVWpsgvqVwN62Fqs5kg3LYAhr69sYuQHwmHSIXGuSRsTeN/9LiiMLoBc8vYKwN6swV
         TjW5Wrj2ZZO1VgQttf2lZtqNZoz1qh1yqnXyjAzXy8Z4zzoNaoPFMjHej2AFG9Kqf6fE
         pzbe+JhzIG44ODKplmaxZJfBIuAWqdX8cCtXndiq57QirWd9x7gHpfu9KiZVbTzG4d+s
         uiPh8iub+W+TrKJyzGql4dYBVvlmDGNCLc0MfsAPS14kD46bjkWUbIP4PeMARYZ311NI
         nMvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rui.zhang@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rui.zhang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id f30si90605qta.1.2019.08.28.01.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 01:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of rui.zhang@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Aug 2019 01:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,440,1559545200"; 
   d="scan'208";a="183060632"
Received: from deyangko-mobl.ccr.corp.intel.com ([10.249.168.35])
  by orsmga003.jf.intel.com with ESMTP; 28 Aug 2019 01:52:12 -0700
Message-ID: <82458318837ed1154a183be0b96337fc7809c645.camel@intel.com>
Subject: Re: [PATCH] thermal: rcar_gen3_thermal: Fix Wshift-negative-value
From: Zhang Rui <rui.zhang@intel.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Nathan Huckleberry
	 <nhuck@google.com>, edubezval@gmail.com
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com, Yoshihiro Kaneko
 <ykaneko0929@gmail.com>,  wsa+renesas@sang-engineering.com
Date: Wed, 28 Aug 2019 16:52:20 +0800
In-Reply-To: <fd8b8a48-dfb7-1478-2d8d-0953acee39d3@linaro.org>
References: <20190613211228.34092-1-nhuck@google.com>
	 <fd8b8a48-dfb7-1478-2d8d-0953acee39d3@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1
Mime-Version: 1.0
X-Original-Sender: rui.zhang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rui.zhang@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=rui.zhang@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Fri, 2019-06-14 at 12:52 +0200, Daniel Lezcano wrote:
> Hi Nathan,
> 
> On 13/06/2019 23:12, Nathan Huckleberry wrote:
> > Clang produces the following warning
> > 
> > vers/thermal/rcar_gen3_thermal.c:147:33: warning: shifting a
> > negative
> > signed value is undefined [-Wshift-negative-value] / (ptat[0] -
> > ptat[2])) +
> > FIXPT_INT(TJ_3); ^~~~~~~~~~~~~~~
> > drivers/thermal/rcar_gen3_thermal.c:126:29
> > note: expanded from macro 'FIXPT_INT' #define FIXPT_INT(_x) ((_x)
> > <<
> > FIXPT_SHIFT) ~~~~ ^ drivers/thermal/rcar_gen3_thermal.c:150:18:
> > warning:
> > shifting a negative signed value is undefined [-Wshift-negative-
> > value]
> > tsc->tj_t - FIXPT_INT(TJ_3)); ~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> > 
> > Upon further investigating it looks like there is no real reason
> > for
> > TJ_3 to be -41. Usages subtract -41, code would be cleaner to just
> > add.
> 
> All the code seems broken regarding the negative value shifting as
> the
> macros pass an integer:
> 
> eg.
>         tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
>                                  tsc->tj_t - FIXPT_INT(ths_tj_1));
> 
> thcode[1] is always < than thcode[0],
> 
> thcode[1] - thcode[0] < 0
> 
> FIXPT_INT(thcode[1] - thcode[0]) is undefined
> 
> 
> Is it done on purpose FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]) ?
> 
> Try developing the macro with the coef.a2 computation ...
> 
> The code quality of this driver could be better, it deserves a rework
> IMHO ...
> 
> I suggest to revert:
> 
> 4eb39f79ef443fa566d36bd43f1f578d5c140305
> bdc4480a669d476814061b4da6bb006f7048c8e5
> 6a310f8f97bb8bc2e2bb9db6f49a1b8678c8d144
> 
> Rework the coefficient computation and re-introduce what was reverted
> in
> a nicer way.

Sounds reasonable to me.

Yoshihiro,
can you please clarify on this? Or else I will revert the above commits
first?

Also CC Wolfram Sang, the driver author.

thanks,
rui
> 
> 
> > Fixes: 4eb39f79ef44 ("thermal: rcar_gen3_thermal: Update value of
> > Tj_1")
> > Cc: clang-built-linux@googlegroups.com
> > Link: https://github.com/ClangBuiltLinux/linux/issues/531
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  drivers/thermal/rcar_gen3_thermal.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/thermal/rcar_gen3_thermal.c
> > b/drivers/thermal/rcar_gen3_thermal.c
> > index a56463308694..f4b4558c08e9 100644
> > --- a/drivers/thermal/rcar_gen3_thermal.c
> > +++ b/drivers/thermal/rcar_gen3_thermal.c
> > @@ -131,7 +131,7 @@ static inline void
> > rcar_gen3_thermal_write(struct rcar_gen3_thermal_tsc *tsc,
> >  #define RCAR3_THERMAL_GRAN 500 /* mili Celsius */
> >  
> >  /* no idea where these constants come from */
> > -#define TJ_3 -41
> > +#define TJ_3 41
> >  
> >  static void rcar_gen3_thermal_calc_coefs(struct
> > rcar_gen3_thermal_tsc *tsc,
> >  					 int *ptat, const int *thcode,
> > @@ -144,11 +144,11 @@ static void
> > rcar_gen3_thermal_calc_coefs(struct rcar_gen3_thermal_tsc *tsc,
> >  	 * the dividend (4095 * 4095 << 14 > INT_MAX) so keep it
> > unscaled
> >  	 */
> >  	tsc->tj_t = (FIXPT_INT((ptat[1] - ptat[2]) * 157)
> > -		     / (ptat[0] - ptat[2])) + FIXPT_INT(TJ_3);
> > +		     / (ptat[0] - ptat[2])) - FIXPT_INT(TJ_3);
> >  
> >  	tsc->coef.a1 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[2]),
> > -				 tsc->tj_t - FIXPT_INT(TJ_3));
> > -	tsc->coef.b1 = FIXPT_INT(thcode[2]) - tsc->coef.a1 * TJ_3;
> > +				 tsc->tj_t + FIXPT_INT(TJ_3));
> > +	tsc->coef.b1 = FIXPT_INT(thcode[2]) + tsc->coef.a1 * TJ_3;
> >  
> >  	tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
> >  				 tsc->tj_t - FIXPT_INT(ths_tj_1));
> > 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/82458318837ed1154a183be0b96337fc7809c645.camel%40intel.com.
