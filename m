Return-Path: <clang-built-linux+bncBAABBBEWUXVQKGQE56RWTOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB1EA3BB5
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:12:53 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id x28sf7789069qki.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567181572; cv=pass;
        d=google.com; s=arc-20160816;
        b=rK57M0Mda3U9xU4Q8qSwTTiXOfTOMJPD7FDmDU/wW31jWcN+NCupkBBIRucUQWNP3a
         62HhyYnJl30KhXQSpozd/vQI1JDCjApF1qhyM6nTRiiQY2WkiYyvKNWpi8E+2t+wqW4A
         MWNB79BKQi3IXhKF73bD/C6ItpyHcZKiLJuX+d/gU7Opip7wmWdFjrRLmZyE4gJDGNbH
         Fd5mmHF0bfTPNJvu68g9g4d2gdU5cmzV9HAFt1pcIjHkOwXUFdlrMLMqq9IZpd0zaKaf
         EgsU5lY3MjOQIzI1vAv3tn9ZOSkkzv3F+v3e66fu/xyS8nnqzAIwagTSJhwK/Nms6HYI
         oMbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TmQEam0os8TklSoVziXPL/lir99IsFHI/bMMUTOL9Fs=;
        b=QIxKBPSlacf2qckxGojO7NIKS2y6bd7OR9E21gn6oFFOas5k8FclkQu3LKW5FsbDA+
         UgEvr9fygcmChFnFMUnzcb0P28BNAMzBJUFyjvOmQkTqQ2u1cOqIJE/PYEnnfjadd/JD
         b84tgva2G9YhiVyI6xRicL0c48gCB8I9vBPzQ09aBzn9ly/IicqqEQ+oopSihtf4HapS
         TNyWBc3Oje8SarjtMXc/tUZoHNsIWOjg2P4622yGoDd8gczQf83bKwP290vm8Nmqhb8E
         UajPwOha4DgoKxTcneS+zOKbMsZmpmd5o9UhyBKs8OtV25uQD1qWkuhEtERCH2gsKp/p
         k87w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted sender) smtp.mailfrom=wsa@the-dreams.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmQEam0os8TklSoVziXPL/lir99IsFHI/bMMUTOL9Fs=;
        b=RU7jRD0d+fhxfuTcNJw+PWMj5h+1ofv5//lyMaWz/yjx91LWFZRGGyZhlJH1Fu4fYn
         i7sHzpORBCfq0/V6jDgbzeFeQvf08LB2Bt6i5fkJ3PJSbYLiz4ahKBA4MOOj88UVVIhl
         WrOcxGCwPDr5cHShN2ykMiUEQ0E7YJcKmu1aJDEbuU6yXDgIRk1nFs4IGTqZzK55jeZJ
         hLsPBgQYMbmlGZFwpjGDZKfsNa/CaDLsEDNeaSqgT4v7KybZBmcmhHsnEgAMIu3vWiKz
         MGOpQ0g2NiAcNYYWJN3gc5TQKv1AjShLhN9nMgvsBdsCMrygonEcZ24wswsmzYXwHrZc
         qFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmQEam0os8TklSoVziXPL/lir99IsFHI/bMMUTOL9Fs=;
        b=Oa1mS4t/i2y4CB48Omngsas4o7QhJNULgBagTMTvDEIrhmOQw9+k0Bq33zGsSmI7Bl
         TprdqgXl3Twlge1msTa6fTQ3QlSX/GtBwkihcUr2DEFop8YGo+/tznbHbEMf8HiT/j2h
         uu6BagdIf5f1SE1zsabMo9c7WvW8qQHCgLHfRnQx46uef3eUu2WW+aieAQTnYmTPPafx
         dD9tz7Adb3O6Y2fY2lFf7zjS4XjbKUM96Gwg+uGbzUYVqpyDrLFaLWQwa31XOOp2MQdT
         939jQZgGb++vkJFWFMg80yU5IvSqKfBXbLS5O8GsD58kQPKOQu/O06Tj++GxIQ6EA6Kh
         A9Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmcvh7U6guG0TRkunsfcBdcVQT7F+cdXci9vtlx98fLEEEZVtb
	sGfBB2qGGRJt6s2tTxDWtL8=
X-Google-Smtp-Source: APXvYqwXZxvv6W30kkXEgoGzzBm3EbxXjKf5hM6KRo5vc1kK0xjLhJNWtIyl5zC2d0LQJskSUayJ6Q==
X-Received: by 2002:a37:b982:: with SMTP id j124mr15896744qkf.251.1567181572548;
        Fri, 30 Aug 2019 09:12:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a853:: with SMTP id r80ls1363104qke.0.gmail; Fri, 30 Aug
 2019 09:12:52 -0700 (PDT)
X-Received: by 2002:a37:4986:: with SMTP id w128mr15604455qka.417.1567181572243;
        Fri, 30 Aug 2019 09:12:52 -0700 (PDT)
Received: by 2002:a05:620a:1333:0:0:0:0 with SMTP id p19msqkj;
        Thu, 29 Aug 2019 06:11:25 -0700 (PDT)
X-Received: by 2002:a7b:c3d0:: with SMTP id t16mr12192785wmj.25.1567084285246;
        Thu, 29 Aug 2019 06:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567084285; cv=none;
        d=google.com; s=arc-20160816;
        b=CfUE53hkRGXSioS4ah9s887tW4Y+YfzvkwYBo3Il9nFFxp9GO/vPCWdBvUtoIsKI2R
         sxP4zFEeRbzaTrkYp9iMjmZBkSg68sti59gh9LPM3+8LWHGcXB8Rp4rq3cgxauEpDaSy
         poXLy1Yq0oIKfIbgEpIMotBt+NYzMcj6ssFdoQs/QGDr6UmYggSVQ0vfgYXlCBJfBHO1
         vP+lTX4HwTQo+DdwCKDEz3ORi+Vf/B7T1r8UYsDxfQI7lhklWPmVDtiEEGQjc+d45RCP
         hrLxRqmXHd8ilUaqLla74MD4hY+RgzESwDf6Dkg4myvjb5h0CBsJWvPxzel0c/RkAwTb
         Bj0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=dJBlSmrfDTRv7cxuleB8tV+kWPMcqS42afzr9LQBfLI=;
        b=xuU7B+O0z9zvNC/fxomklRt+nSs4cR0uvpsVgzCtGIKQ1QCXvuBw8CLDvnvu7E615a
         6w2COviz+0g4lMur6GhXEKt3RJ91ZA9WAhnZ/bnWBGcVxLqV1gpfeAbXt1INOO8CwPTw
         tJziZ2OGnbnx/ICgnFG2yNlvF8fvGPB1Ynj92FXOHKzBZeJkIG27eQtqftGzAcKY0Rx8
         tipvAmkC8nexUyg76zDJwnV2lWqX2ElkqtJnStJxA7zrRzYHTju7oRaewCi3q85nYw2k
         T8G8EIfGMTJumzqLKhQLlYmEg0DIraS6Mc7Tbw8v/lTflh+KSpuDTKJ1W6xwfIoaqFWJ
         PmEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted sender) smtp.mailfrom=wsa@the-dreams.de
Received: from pokefinder.org (sauhun.de. [88.99.104.3])
        by gmr-mx.google.com with ESMTP id l14si97935wmc.1.2019.08.29.06.11.25
        for <clang-built-linux@googlegroups.com>;
        Thu, 29 Aug 2019 06:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted sender) client-ip=88.99.104.3;
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
	by pokefinder.org (Postfix) with ESMTPSA id C78242C001C;
	Thu, 29 Aug 2019 15:11:24 +0200 (CEST)
Date: Thu, 29 Aug 2019 15:11:24 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Zhang Rui <rui.zhang@intel.com>, Simon Horman <horms@verge.net.au>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Nathan Huckleberry <nhuck@google.com>, edubezval@gmail.com,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yoshihiro Kaneko <ykaneko0929@gmail.com>,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH] thermal: rcar_gen3_thermal: Fix Wshift-negative-value
Message-ID: <20190829131124.GA2437@kunai>
References: <20190613211228.34092-1-nhuck@google.com>
 <fd8b8a48-dfb7-1478-2d8d-0953acee39d3@linaro.org>
 <82458318837ed1154a183be0b96337fc7809c645.camel@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline
In-Reply-To: <82458318837ed1154a183be0b96337fc7809c645.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: wsa@the-dreams.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted
 sender) smtp.mailfrom=wsa@the-dreams.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Aug 28, 2019 at 04:52:20PM +0800, Zhang Rui wrote:
> On Fri, 2019-06-14 at 12:52 +0200, Daniel Lezcano wrote:
> > Hi Nathan,
> > 
> > On 13/06/2019 23:12, Nathan Huckleberry wrote:
> > > Clang produces the following warning
> > > 
> > > vers/thermal/rcar_gen3_thermal.c:147:33: warning: shifting a
> > > negative
> > > signed value is undefined [-Wshift-negative-value] / (ptat[0] -
> > > ptat[2])) +
> > > FIXPT_INT(TJ_3); ^~~~~~~~~~~~~~~
> > > drivers/thermal/rcar_gen3_thermal.c:126:29
> > > note: expanded from macro 'FIXPT_INT' #define FIXPT_INT(_x) ((_x)
> > > <<
> > > FIXPT_SHIFT) ~~~~ ^ drivers/thermal/rcar_gen3_thermal.c:150:18:
> > > warning:
> > > shifting a negative signed value is undefined [-Wshift-negative-
> > > value]
> > > tsc->tj_t - FIXPT_INT(TJ_3)); ~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> > > 
> > > Upon further investigating it looks like there is no real reason
> > > for
> > > TJ_3 to be -41. Usages subtract -41, code would be cleaner to just
> > > add.
> > 
> > All the code seems broken regarding the negative value shifting as
> > the
> > macros pass an integer:
> > 
> > eg.
> >         tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
> >                                  tsc->tj_t - FIXPT_INT(ths_tj_1));
> > 
> > thcode[1] is always < than thcode[0],
> > 
> > thcode[1] - thcode[0] < 0
> > 
> > FIXPT_INT(thcode[1] - thcode[0]) is undefined
> > 
> > 
> > Is it done on purpose FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]) ?
> > 
> > Try developing the macro with the coef.a2 computation ...
> > 
> > The code quality of this driver could be better, it deserves a rework
> > IMHO ...
> > 
> > I suggest to revert:
> > 
> > 4eb39f79ef443fa566d36bd43f1f578d5c140305
> > bdc4480a669d476814061b4da6bb006f7048c8e5
> > 6a310f8f97bb8bc2e2bb9db6f49a1b8678c8d144
> > 
> > Rework the coefficient computation and re-introduce what was reverted
> > in
> > a nicer way.
> 
> Sounds reasonable to me.
> 
> Yoshihiro,
> can you please clarify on this? Or else I will revert the above commits
> first?
> 
> Also CC Wolfram Sang, the driver author.

CCing Simon Horman who worked with Kaneko-san on these changes.

> thanks,
> rui
> > 
> > 
> > > Fixes: 4eb39f79ef44 ("thermal: rcar_gen3_thermal: Update value of
> > > Tj_1")
> > > Cc: clang-built-linux@googlegroups.com
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/531
> > > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > > ---
> > >  drivers/thermal/rcar_gen3_thermal.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/thermal/rcar_gen3_thermal.c
> > > b/drivers/thermal/rcar_gen3_thermal.c
> > > index a56463308694..f4b4558c08e9 100644
> > > --- a/drivers/thermal/rcar_gen3_thermal.c
> > > +++ b/drivers/thermal/rcar_gen3_thermal.c
> > > @@ -131,7 +131,7 @@ static inline void
> > > rcar_gen3_thermal_write(struct rcar_gen3_thermal_tsc *tsc,
> > >  #define RCAR3_THERMAL_GRAN 500 /* mili Celsius */
> > >  
> > >  /* no idea where these constants come from */
> > > -#define TJ_3 -41
> > > +#define TJ_3 41
> > >  
> > >  static void rcar_gen3_thermal_calc_coefs(struct
> > > rcar_gen3_thermal_tsc *tsc,
> > >  					 int *ptat, const int *thcode,
> > > @@ -144,11 +144,11 @@ static void
> > > rcar_gen3_thermal_calc_coefs(struct rcar_gen3_thermal_tsc *tsc,
> > >  	 * the dividend (4095 * 4095 << 14 > INT_MAX) so keep it
> > > unscaled
> > >  	 */
> > >  	tsc->tj_t = (FIXPT_INT((ptat[1] - ptat[2]) * 157)
> > > -		     / (ptat[0] - ptat[2])) + FIXPT_INT(TJ_3);
> > > +		     / (ptat[0] - ptat[2])) - FIXPT_INT(TJ_3);
> > >  
> > >  	tsc->coef.a1 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[2]),
> > > -				 tsc->tj_t - FIXPT_INT(TJ_3));
> > > -	tsc->coef.b1 = FIXPT_INT(thcode[2]) - tsc->coef.a1 * TJ_3;
> > > +				 tsc->tj_t + FIXPT_INT(TJ_3));
> > > +	tsc->coef.b1 = FIXPT_INT(thcode[2]) + tsc->coef.a1 * TJ_3;
> > >  
> > >  	tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
> > >  				 tsc->tj_t - FIXPT_INT(ths_tj_1));
> > > 
> > 
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829131124.GA2437%40kunai.

--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1nzvgACgkQFA3kzBSg
KbYx+g//f5G/Zdl+qgCmmyNNWXxl8l6bbTgwmYs9qlm05wSREnJW80SFptJOOmVX
105JuRkTrXtoUnAmCxF/Z55HYly0hG4s0HByxuALCLpb3j+rcU+G0hdXrSdNICRk
tN9HkHzYmKGszT5yaZY2EF730nUnpv71Pc4Z3wTY/H+5wz8uDv/6mW4IpcYM3Tnr
9ueuEBNYWwGiR/29dGwgaVnh0f/nIZllMEQbuYKeCxRuY58gqQFA9Ng5bEDfNFHV
qR5n9jKoQetVx3zacipFHYjwv9d1rnAfHonBmvp5FjkZ/5/U0EBhkeouPxFTIRuW
u1e2DzblJ1hGPHyVlwrl5294e9bujd6iVEMetJZnEU21n6aGb3lenQnYy6ER6cUB
J6Pg9fnwoGFYH9WUkQwQ8V1tLO1zRf2SvJexYZmQK40n/D1M5oUUqfbTBd7wwofv
WvXAkuVfACXvWiLVhOtlGGIX+C+IRlvdbl1L/12eAT2PW28k+aUzV7HHxHykfGjW
CgLj4Kli7gsQO2NF4hQcG79FZDTnx/FPYGGT0U1SUaLfBBnYMOZ6HJbko4TJmnII
FrcgDCPNHS/yGT/PcOM1XfqXwMlODu1aeneScG8bxbZT46iWRFDS7PL0zH8qrDr0
aCtkS4xv3uPyh6A9+o8Qpg/XEmoPpmZO1Z2bNR6B8wcYIuv3YDc=
=a7UP
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--
