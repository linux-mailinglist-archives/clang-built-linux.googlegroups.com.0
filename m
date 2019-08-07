Return-Path: <clang-built-linux+bncBDHPTCWTXEHRB4OIVTVAKGQEWODZKKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0778685381
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 21:20:18 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id b1sf44033279wru.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 12:20:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565205617; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHrPV3tXh1Or1kWod1IWYfacoMPq31TqtaU5RgqQpPenUEgYoMwX5xZfudHYxQ/0C5
         N3FleFxao/sTM/mkE3JIQMxKtkLGsbUGrmrdGRqRildpk99EA76cQUnhFgRenbXFnET4
         g8TzEDq0ZJ/7UDnrx9JfgBOHyK/cT+p0rtP+ijIMgAyFDQBV0P+rC3zwir9D2B9mzMCB
         Msk7DhQLqk//iWlA2V7loQWGxh/z/ETyU6bBI6LbyfisQ76FXqbnY9iz1Kt1EiCMtUKJ
         W3IbeuKwS77EAp86H4Twaw9VrVIVeK+pnTVnTsdYVfDeZCU8k351cWkZCXpcNyv2m2Ub
         Loag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=mgO267m+Kaq2odAMq9o1rFqvO/gmLnW7IivP4J25Qp4=;
        b=Uk/EzAeL4bPDWjFgIvT9foKwxhnuG6/wfDBw06FPnzS9n190WImWDIPE/5FonhoRoB
         NwhoqaG9ULdBy7XeEOQPXscm5cg3b3bGszAC6zbWbej4jEPsoO+fxq/VGuzPlzy5LJd5
         AP6EejdSey4Z5gws1GxB8ELN2Ys6Kdut4+/zPHPkI/jrjU2cg2McyC6sMXLHk7ZVn36l
         daaoSef/OkE+/aX/WeM8eWHE8gA3+OfgydbReJxiWbR9YK6pyh3oVXXlpIyLeDLHJKTC
         Lmo3jHGn4E/TuEHjHKzBMh3HO7HHkZ7p6zB9kaCmI0Ut05n0GDl5aQXwpI3pojeJ7bog
         9hiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mgO267m+Kaq2odAMq9o1rFqvO/gmLnW7IivP4J25Qp4=;
        b=WcSIjM9g1wvOU/E+nl1LuHMoY455qEogMsKEX4qx32steulvY5nJHztKTCNUSqf+ao
         IWr/w7oBCqaANdk3d70Izbu06t5eTTmejyco2XXzQpXeIpzJu0tpoCw7HHWkpqdtpH5R
         FCu7FxFLFK+IrmK50LPM5N+eRIoqjufbv5yTMh6kPlqeM6QyQcad/vPouNy4kjB0Kz3R
         tLsXweGtSNVMImf6G3VmX9vsfaAcx5H6YGueFegK6C3jZoMqWZkDg+1hBZFtVHGUsuYK
         07HkGytOh3minMOIs218oYAhSrjzR5RI+Txo93+LG6wslHm77E+texv8CXc47FsKHu+U
         u3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mgO267m+Kaq2odAMq9o1rFqvO/gmLnW7IivP4J25Qp4=;
        b=O4dufQge8XSpj1Jg8Cz/veeOAXnsRJ2c62YKc78oqI2ftTbAWP9PSWe8Bn+1QxzS2F
         7oRRIBe03GAhujKpz/H7C7TPAPdQ+zUOGKj5fXdR4TTALxcRSgwdUIvgZC3PQgoYrBc0
         JzSBoue4Ai6Dv1gRQgXvjzkH0PjEdCdJJsQIY0Y4QbxrkTIy5hErXYAN1zO1wJb3fiLJ
         WC/dNavJ0qNY5z8MZH5mRRW1Oq/Y4aRKKCyGz+2R3F5/uZznPdjFgrJ7AJD3DOE0G+T3
         9xPyOVzgoG7ZBNWxNhKdSO5O+F+THFfbtF8CpbW+hlIoFBO9H3AAAZpOkCIf6++UQyor
         i5oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfjTY0PVIZvWo7VNkM9j0JCEI6d6essl7FIxiFRVXjEf1B8k0g
	c6KbRfxEyaJ70CN6TR0KgH0=
X-Google-Smtp-Source: APXvYqzkC1CJzayzj24PCs94VlR2zSL/JCjzio1prQRFxKaP3fs7jUW6NJbZqEe9atGjsEtgcoMMTA==
X-Received: by 2002:adf:e2cb:: with SMTP id d11mr5893517wrj.66.1565205617753;
        Wed, 07 Aug 2019 12:20:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c05a:: with SMTP id u26ls339791wmc.4.canary-gmail; Wed,
 07 Aug 2019 12:20:17 -0700 (PDT)
X-Received: by 2002:a1c:7503:: with SMTP id o3mr1276206wmc.170.1565205617327;
        Wed, 07 Aug 2019 12:20:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565205617; cv=none;
        d=google.com; s=arc-20160816;
        b=RRHa4KIhYV2qoohSamdZmGRs5M9Dq+ll5oA4AIGdg7IiBDGAbvdS5l+hfRE5p/K1Fq
         14f3NMguVj12RQhZiJaZslDcF2zSpOgLx3ZJBrO1Mwbb1YWAKKMs9asOoaP+pFAExbld
         lTzc057tv8FZ6wvA904bASeYzyjGsD8aFymgmr1/WF55n9GwbU7kz+nAEZ2TTb0Xm9RE
         GMl+E5+vWwOIk/cVV5IFxb5KNLLrpIgWwkZi8FYtiJ6PoDSitzndsjvtm119LL0yHqb0
         Zz77FrrWu+H/1iKGpXx6N9o3jscELqOsOiXkvO+YgAIIJV7avf7Z6zqRFCvcPoCREobW
         7q0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=a58Za8fB4J5Jq0SxJxGCoNnLEEnvJDzG07PjJgkqHVY=;
        b=mJK6+nuckiqwur9I1xSDOhiO9dB9tgFia5Kw7tsiJeY07qmsf6jm5pH+gR2Z4lU8zi
         Ra7+RWz7D56orjwS8WXOmrsvi8bOsDMD0qZ/IbhHvoPNL49Rz6zqkFOvNF9W/HcONmtm
         jiuSuLSwNxcf05fJUHgqhltc5UChB0eipqzFz/jidaG4rHaY57pQg2CmGzTlAy81MoI5
         GQabxMO+OT48qIeq3jqDh8M5O9f94H+qs5zzeR+yhxg06CTG88mwDBCvMPgYK+LZNoUI
         yq34JmKKrKMNJRWKPtFgynBASRU7KXiUWYJbHUgU/DnteiYP4REVJjJToPGk/mb/fHxk
         QkNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id r13si4696241wrn.3.2019.08.07.12.20.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Aug 2019 12:20:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from ip5f5a6044.dynamic.kabel-deutschland.de ([95.90.96.68] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <heiko@sntech.de>)
	id 1hvRTn-0003Fv-F0; Wed, 07 Aug 2019 21:20:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Robin Murphy <robin.murphy@arm.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, "kernelci.org bot" <bot@kernelci.org>, clang-built-linux <clang-built-linux@googlegroups.com>, naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors, 1179 warnings (next-20190807)
Date: Wed, 07 Aug 2019 21:20:10 +0200
Message-ID: <1824189.KFc1O5guOt@diego>
In-Reply-To: <20190807190223.GA30515@roeck-us.net>
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com> <9b54c651-e875-99a0-84d4-50ae5c9d99a5@arm.com> <20190807190223.GA30515@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: heiko@sntech.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heiko@sntech.de designates
 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
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

Am Mittwoch, 7. August 2019, 21:02:23 CEST schrieb Guenter Roeck:
> On Wed, Aug 07, 2019 at 07:10:48PM +0100, Robin Murphy wrote:
> > On 07/08/2019 19:05, Nathan Chancellor wrote:
> > >On Wed, Aug 07, 2019 at 10:52:16AM -0700, Guenter Roeck wrote:
> > >>On 8/7/19 10:43 AM, Nathan Chancellor wrote:
> > >>>On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via Cla=
ng Built Linux wrote:
> > >>>>On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> =
wrote:
> > >>>>>------------------------------------------------------------------=
--------------
> > >>>>>allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings=
, 0 section mismatches
> > >>>>>
> > >>>>>Errors:
> > >>>>>      drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error=
: anonymous bit-field has negative width (-1)
> > >>>>
> > >>>>This looks new, and only an error w/ Clang builds.
> > >>>>
> > >>>>Looks like it's been reported:
> > >>>>https://lkml.org/lkml/2019/8/7/320
> > >>>>
> > >>>
> > >>>Guenter reports that this is also an issue with GCC 8.3.0, I am goin=
g to
> > >>>try to reproduce now:
> > >>>
> > >>>https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/
> > >>>
> > >>>https://kerneltests.org/builders/next-arm64-next/builds/1207/steps/b=
uildcommand/logs/stdio
> > >>>
> > >>>Cheers,
> > >>>Nathan
> > >>>
> > >>
> > >>The problem isn't exactly unknown either:
> > >>
> > >>https://patchwork.kernel.org/cover/11037801/#22756703
> > >>
> > >>Guenter
> > >
> > >I suppose this is the fix?
> >=20
> > To my eye it seems like the "9" may actually be a typo of "0", but I do=
n't
> > know if anyone has actual documentation for this IP to confirm.
> >=20
>=20
> I think you are correct. See:
>=20
> https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/phy/roc=
kchip/phy-rockchip-inno-hdmi-phy.c
>=20
> This is with the 4.4 kernel. See around line 902 for the code accessing
> the register. inno_write() writes 8 bit, so a mask exceeding 8 bit
> doesn't make much sense.

I agree too, as can be seen in mainline code, the offending code

	RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)	  UPDATE(x, 7, 9)

already indicates that it wants to update bits [7:0] of x in its name *_7_0



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1824189.KFc1O5guOt%40diego.
