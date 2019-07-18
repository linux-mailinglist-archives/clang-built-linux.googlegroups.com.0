Return-Path: <clang-built-linux+bncBDP47C6LHEIKDQWC5ECRUBGEBH5RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4856D228
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 18:41:06 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id n26sf2711591lfl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 09:41:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563468066; cv=pass;
        d=google.com; s=arc-20160816;
        b=T6zRK8eCuUzaLKFvWKj/IQZsOcuotDiw2Ep9G/p+qkvH/wmQdIcsKWiDStGxJ14Joi
         uvY2hPr1z0cKpT6LvubsH+XnViS+Q0SWDFc7YZTrh8HwX1x9WjIDGEfKvn6DH33yEEj4
         WkVYnfTEKkSKfNjwy6TOT5FgRHspWdtKv5D+cnYB1rKx6RDkwcpeT2mnC14DDNKPQ7nJ
         PFrvtQvj+DrNCIWyHAvJ+PmU10ZCWK4XAp+v4s5Iuvl++6GQrP9R1opTEs+NAvzTSsRj
         vPdSfKqXspT1OMTxYkm6Ceg5/OOeD3PGrL0de7876/FfaKnkpC0sq783Y5XVyZlh1SVm
         S59Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4UZU2R3e0prKYHEaaj8NoyGCvCVwYM/Yvt23mFYM8eg=;
        b=t2mob+SfaPtEa6LZLXIIjW98zWTIF9a7M7EKa6IpddEE5ztsRrHJXMBwU//QLfhTNK
         a7Zc8Fku2L0HYBJT2Fs+YbFfm/AnD6dvUdNIEpz5zrg6sKYbLaeDc5ekIfSTHyBwLryY
         5uEQMVbgxc9rlnGBryCj1iPx/iDKH+ENi4cy6Vs//pvLSnOd4Eh4/jzUzfuwU4es+PPx
         +6G+PM8yET7fQ1R+yz4g5J5ed6syObXLA5YTDDt9CeTjO55lQc3npjgyjKsKWw9HXqrR
         ky8H/0ADa9yfaftijacG1cRCbs3eyALgeuiIGXIo4eV6PYpwPDdQT6M2D5J/ycpT5Shm
         riOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted sender) smtp.mailfrom=wsa@the-dreams.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4UZU2R3e0prKYHEaaj8NoyGCvCVwYM/Yvt23mFYM8eg=;
        b=jlx0pIEkRXToocI8/K996eu3/gB76Dd8OAwb7KtbZZlHt0dwDuLeczDbhjd2VgmefH
         8P0pXkDTWMt3ifUVHo2IYLqEn6LgfQn2DE6dDT4v0V8hNqinsNEVjJS99YibdclcD+6U
         UEgG+9eFE7vw7sEuFBDYSfSwFMJqP77wpzMsUhQmgEmHrG1qKcr4P2YNqzyFWA7L+Fhx
         l3DE2B9+xnuKN5csF3wNuUIqWs9vSE6hTYA3GZf6sL5IZElG3dHCrYN88hP7zjvrRNyS
         MxBhIhxhAe91VMlpe5OoME2FO9uBXXBToO6/WqlgDMK3LbjNU7X+ISHvfm4sQbd5s+9j
         LFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4UZU2R3e0prKYHEaaj8NoyGCvCVwYM/Yvt23mFYM8eg=;
        b=kG5a7Z+WUhlNaxS5c45pTwnC0XtTIKqCpdsZTtOlFLNs7Ity9U+DKrITFscMd33UKT
         S0v/0F7A1cnFjdyNNs5jS/cY4Pcts415A5kg0LsRVOtz9gO+dV+J4Kgw3v7POn5A/LBf
         rI8E5+vUaoj2LE9n0botlDwcynVirtDzFj++Yu0eHXrY4u5r2DPw1L68ptN50BU2LpcQ
         uAU9JSE76jCe1u1SVwBhC9XxZ7kq4vc515TcJxMaQPwh6KS9P+iqOh9LeXei4yDMz0fc
         GBLuCpd7dhs0s//3Kb8d2n6AqyNqeQFY8Il16/3Hr4AgVD46XlF74m15p7CciXbR5wf9
         LMww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVVdBHYE9C8dqm1jdCY0ZAC3a3jZEJwDpvzX1c1m4iJJcVLunD
	F9aQCnNpczKMv/wQnR7wDX0=
X-Google-Smtp-Source: APXvYqw3xQKitXQ+PjYNHIIJvR68x9uoPpa4g/dscHRivvSSJQ7yog9QvOiVXRqXAc7fYs6KC6m35w==
X-Received: by 2002:a19:ec15:: with SMTP id b21mr23329586lfa.32.1563468065911;
        Thu, 18 Jul 2019 09:41:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c317:: with SMTP id t23ls1431176lff.16.gmail; Thu, 18
 Jul 2019 09:41:05 -0700 (PDT)
X-Received: by 2002:a19:6557:: with SMTP id c23mr7970991lfj.12.1563468065253;
        Thu, 18 Jul 2019 09:41:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563468065; cv=none;
        d=google.com; s=arc-20160816;
        b=S17KyRKLXPFN+aNNVl0LiL0CmhIlBn6C/RV7QbmZabqxp58c9/0jnZerhM6fgWx6LB
         O6dk1YEOKRtnUDQ8h6labX56O13julJW9wGDINls7vJn1ljALtU5BUOVY/O7z0xfUSn9
         K0YzMdTg8At+SlxsR5e7aJTqGvJziXzdVLQfZ7fDH4zHWTbqKqZvY5EMoxW9D6KqxFom
         8VbDyG/Rhuwo93rremAnk5gfAC/GNCfmMno0OJ65z4NKjYK7Y/M86n0ZWmNAytPFfOMs
         gaztnSLHxQQ1n/D7cWSOR94liECdbR9z6MTXqY/unntfFb6H7a2wSu3591iuoJ/R0EZQ
         8oOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=gEXAb3aMr2WAARkPxF5wjzNMut+KHm7ZWT9SLDEqRBI=;
        b=ywDDmap1ZM7cTML4xzitGZObngS15NKISRaynG9nhTuXQ2NxNtxb7pB1n0KPaBMvjB
         oX/hErbkIb4R0ZPwHjczckenlZWGPn+XCjRDIZtGhrO4ujne82D4TodDg/fiW+hcVQWj
         rm6tgpwY97kf0xHhaPef4+x/HKi26urkWA/68OVVzd4sNqwLt2sVeN4wqeUh0JsjwUdm
         Zl3f+Ndfi1X1/OijWtwJ8+5oc8n4tOO9mRpkwPdAz9u20/RMN7CfTcTH4G1yIKeYgnKO
         A80hf4vYUVywn0n+S/5MDTRNFTiwpbvPzE+JKghKTj/1MkiFT6y5FnmI30+osE97pDdn
         ps5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted sender) smtp.mailfrom=wsa@the-dreams.de
Received: from pokefinder.org (sauhun.de. [88.99.104.3])
        by gmr-mx.google.com with ESMTP id h13si966939lfm.4.2019.07.18.09.41.04
        for <clang-built-linux@googlegroups.com>;
        Thu, 18 Jul 2019 09:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted sender) client-ip=88.99.104.3;
Received: from localhost (p54B330C7.dip0.t-ipconnect.de [84.179.48.199])
	by pokefinder.org (Postfix) with ESMTPSA id 41ADC2C2868;
	Thu, 18 Jul 2019 18:41:04 +0200 (CEST)
Date: Thu, 18 Jul 2019 18:41:03 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	"kernelci . org bot" <bot@kernelci.org>
Subject: Re: [PATCH] watchdog: digicolor_wdt: Remove unused variable in
 dc_wdt_probe
Message-ID: <20190718164103.GA849@kunai>
References: <20190709203409.117123-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <20190709203409.117123-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: wsa@the-dreams.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wsa@the-dreams.de designates 88.99.104.3 as permitted
 sender) smtp.mailfrom=wsa@the-dreams.de
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Jul 09, 2019 at 01:34:09PM -0700, Nathan Chancellor wrote:
> clang warns:
> 
> drivers/watchdog/digicolor_wdt.c:121:6: warning: unused variable 'ret'
> [-Wunused-variable]
>         int ret;
>             ^
> 1 warning generated.
> 
> It's unused now, remove it.
> 
> Fixes: cdad26977e3f ("watchdog: digicolor_wdt: drop warning after registering device")
> Link: https://github.com/ClangBuiltLinux/linux/issues/591
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Oops, sorry for missing this. I wonder why buildbot neither did find
it... Anyway:

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718164103.GA849%40kunai.

--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0woRsACgkQFA3kzBSg
Kbb09g//SoObFICctqrhEHVhQ753Wv3K79jfQPucvzg7oaXPMuJHWaBw4W3E/Z74
62+a4s0JcP8jlrvWuueOOv9ie/+gqHdfsPG8p6D36Zoq75EWztTbEOfEYosCoJEL
NbzaAq9oDIii6abqYH+dX/BbtX+ntHUfNhs8GJEILf7WPRCaUyG0Unz+rQCImqSJ
7UCy2xwvbvzX+2QNzkV1t2TSuyVsC8HclCR8qBeBtBJWSnRJlP5Vh7s1CJ9mEtxg
yikAfhJ4//1TWUsoBiAsX1eDiIVsE/nt00kAQseJGImpkKovTdqGHDz2gZVPuEcY
mA1xNmNnJDfuTSsgswj9N/yW8TWsEwF7Bp+ojdUv+UwL+g+sB/hixH+YU+GjoXt8
zahT66grEXNdyDmMj5Cu1SGEZCf4DbyiApRp8FJqziU3bqCpNckjZiDWbL+jwR+I
LTCyFeXuRHloBJqwsIfWn2cl4a27Y0k5kyy2UCjmm7ii0owDOok1+6846W83QL+Z
swU9vzfSJkRPYCZ2mXctDnjmij/JTIe5hkf6FrxVHd61f3Fu9Wd8yEC7cNWmLKct
WWZMG+4W/KyeN+JxfWgpAtGOHfePWaY9vuFfYM0S57o3ZHfLbpKKbbZ0S/mnZ/4X
EZ0q3uvD5SLzhZ5Jsbu/TwklkEpXKP5oSn52wlOD44eHmsynV+I=
=ZaSY
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--
