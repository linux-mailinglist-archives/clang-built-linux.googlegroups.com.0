Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEGLVTVAKGQEFSADTWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id C15098538A
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 21:25:04 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id v7sf44046606wrt.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 12:25:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565205904; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXy7zGyXFGAwBIleW+2Biai+Bm1d0oGmGP0IkoAC9VMM+L+KKtMsCAAwIiArpmp45W
         907op9Lfz45zWDw7LlLT/CaQC9CjuUzWECEcRFW0D+TJzqyoBIAniPH3j8v0/EUozDXY
         +pKsZZyMFakzJ5b2Nmcy1B03dOq7NugKOVBcMY4EkJSA/AgaKH7Tv4Vhs0A0OMMSH8i6
         YTesywqglZqIpJiyZ4DN8yI5L0Vjat2ZCIg6gXBfd7cdyWtHsR/+zQ0FBd0DGmgDOZYY
         5L28oojLPESZJHOVbNSwBP3D5Vje82YZmEbpS+GWrhAg2QmqqSTlDOqFMiFw4wLTYlqI
         93jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=DqHUePsJjFwxBE4enG3rocogQ51s9IXZcUploU1JOuM=;
        b=1EVOjI7IABWibGbK3Tw1vrti+Mf5nWq9m8Ja7mDAC3eFcCBB61lxMA4IuGU0BHGzPB
         qKOgV3tdwsfxk+OOmcBjdc3evTPEL6uFlwCHsAm9EMyw9F6u4uw8Kw2l7if0KCluM0zp
         KqicbZvVJCd77iz/VJFUi2V0DoNIdtPUfbnicd6jQvtBvjWI27N+0Lkco24icuHydLR+
         goQqnL9DGFx1tINibkQS1Z/b0wESRz9825s5/3/3iCxINQWiJj6+YA4obH+3j2+0xkuc
         RcXuckHFxjM714hZHHH++1yRY3Hrbm6IJDJpmA0QEXw6XndcQvuvRGmj9Y2kWLfit8BF
         PyEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZPa6Q6M;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DqHUePsJjFwxBE4enG3rocogQ51s9IXZcUploU1JOuM=;
        b=Q0qMnmMe/8aSt/eGG9pHuGMUthKFEz/zGUu+vMrNicp+mWHaG/lEeh01B6S2HvUOz6
         xsIo8rQYjelGWLbkWo0xhxkWbmxFT0vrTLus95NLaaktZTbpyi+0Q73vvAkKIEHIw7Bi
         hPCM+kxmxYpsgChUwKoz60yVUeTW60El7DLPm3o+osPA8KEs0BsQqcBwtrGPgMVtDYNi
         mozXsSDPaYFtPmqk02Np7RlJsC3Wa025zvOet8RhwUbjsSstQjllegvpzoPFYApsdeK3
         YIda9TpZM6o8lrtgTIhFewvVdj8A9/i4VXAhl63YblwhUG6AxEzvCqvG15Un4nU+iHUA
         TwiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DqHUePsJjFwxBE4enG3rocogQ51s9IXZcUploU1JOuM=;
        b=UZk+fVWdjcYMiRt5zwf/xLAcTQYtIqrymMh11mZ+FSuYOaEIsgYKXYqIc/+l+pii7k
         hVV/5I1V7mT7I+sGwu/cI0PRuMIquMYT8i3O2HSlOMtrsDcCaCsmygBdTl4odWhLABQs
         sfFyxyUvKOrPaPBecvE0D5EH1Q97UWkPbtKX/Rwxx98mE0kAgfnX+WYPslRa3JDgHso4
         5+Mx9qJsj5Fs3rhb2dMQb+8EbQPf81uYFQftQTkhcGt41MhLIhuTTWKJz5jOhRhqkuxj
         Ztpkdq/xTfbo1u/amYuHsUBa7bWofj67QnH8oXX6AgKEvTlga98TkbDSGDAr3Emg4j66
         5EDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DqHUePsJjFwxBE4enG3rocogQ51s9IXZcUploU1JOuM=;
        b=DxFuObWVfrffNS3pBDYvAtNr4qo8986FPI3q4GhpS7lP1A1j1EX8sYg5HznfRpcqXv
         KjVdZ61ee7CYco9JgKlhJBRTFMCxPyh3qwALNn6HmVK7XYKyQqMGtyFEWn/2H3ycQW0r
         F/Qsd36FVtykaDM38IzXEhJ2hgxjLpN4yEQzWeWyW2S0IQHNdjOKnJL+0IKxoo1Oeo2s
         sZBuX5ArtVorQmBVcbk9AdgSfrWwjlqryRvd0ozIHn9r29XSvLUkAWwcihtEpMPfjbq/
         q6Vrz7zg79GveB2NI7BfsPpMEm7WCjBWma5h9TJ3nIdPVKUsBHw1WvURfr7OyHnDN6/N
         W7lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgIL9vm6JYsj0sHz9/66lQYJjhxe1iLJ+h0PUF5WE2XLWRtEPm
	/jVPYgx3c6k4bp0q+eiwqA8=
X-Google-Smtp-Source: APXvYqyPnh4KMafsfFV2JECZKpTJ/h5UBmfGbX3ZUmBX3ImCfXCiYVM+LbWWkZrPLUkiRBe1Uc1/EA==
X-Received: by 2002:a5d:628d:: with SMTP id k13mr12502733wru.69.1565205904540;
        Wed, 07 Aug 2019 12:25:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4982:: with SMTP id r2ls1791856wrq.15.gmail; Wed, 07 Aug
 2019 12:25:04 -0700 (PDT)
X-Received: by 2002:a5d:4e90:: with SMTP id e16mr12298535wru.339.1565205904145;
        Wed, 07 Aug 2019 12:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565205904; cv=none;
        d=google.com; s=arc-20160816;
        b=IBcYn7ceVTcXH5yiXgCte6RqI7s/hZZfJSEecYFLR4gMVfXPjs9HVBnzN0zI4Xbdeb
         ci+cHVPWzHgUGiTa9d4bG7Az/UJkBQBJtDvjugd8HqPBYkMn8TY6CvK+WytlHFLVG4/O
         Chzua51CsJ8rtvI9mz31jAyBftnDXnEgMRKMe7LyeGM7dw9UMN2QiKwhKKVLsyWGyc/3
         wBfTactt6dUqhla36O/fhXAkZg+vckosd6JwrxsseYTcPK8D9KeqvDhWDzkQhLu7lzp2
         d69uQcFK5Vplofp9fZ6aIi8ROJcJ+uwt8jtFqdJ+VEQJQpT9zo+peunOBXsuUp7cG2R8
         bwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NYj0LdZ+7YOJEVfP1MPjHkgpRIfySfBhOnNjP9/7L+E=;
        b=i+2nJ8lqFN7Oj2czzupq599JXL8Kdsl38xoK3daSTt+vadKBBLVqwlnJMhf4mC1l03
         1OqKZ3OHokdzoj1znBpLSmoJe4zIwwAXsg6u4Sp0yUlIKRWxDNAEAiRyjFH2dRg0atla
         kmkU83iJz+Lnj6x+YMh8BKRwhHJUI9G1jqRf9hTBLPwQGHq7alxoqoD3ha/HDR/vtCFD
         bmb5VeB9wE+B+gp1OJmoOQCHdjvO3MOg+iQkueXXvOPFB2wN/V5kknoml/yx6z4vBUKe
         YWMx/XP/HJFWlCLK4j2sqq9WdYp6HnTPYMravj0wM93Pc/IP3p3Gk6g+DyG69rVj70uV
         iecw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZPa6Q6M;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p2si118606wmg.4.2019.08.07.12.25.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 12:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id t16so2366548wra.6
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 12:25:04 -0700 (PDT)
X-Received: by 2002:adf:fd82:: with SMTP id d2mr2080806wrr.194.1565205903564;
        Wed, 07 Aug 2019 12:25:03 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a26sm574537wmg.45.2019.08.07.12.25.02
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 12:25:03 -0700 (PDT)
Date: Wed, 7 Aug 2019 12:25:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Guenter Roeck <linux@roeck-us.net>, Robin Murphy <robin.murphy@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"kernelci.org bot" <bot@kernelci.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
Message-ID: <20190807192501.GA6718@archlinux-threadripper>
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <9b54c651-e875-99a0-84d4-50ae5c9d99a5@arm.com>
 <20190807190223.GA30515@roeck-us.net>
 <1824189.KFc1O5guOt@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1824189.KFc1O5guOt@diego>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DZPa6Q6M;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 07, 2019 at 09:20:10PM +0200, Heiko St=C3=BCbner wrote:
> Am Mittwoch, 7. August 2019, 21:02:23 CEST schrieb Guenter Roeck:
> > On Wed, Aug 07, 2019 at 07:10:48PM +0100, Robin Murphy wrote:
> > > On 07/08/2019 19:05, Nathan Chancellor wrote:
> > > >On Wed, Aug 07, 2019 at 10:52:16AM -0700, Guenter Roeck wrote:
> > > >>On 8/7/19 10:43 AM, Nathan Chancellor wrote:
> > > >>>On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via C=
lang Built Linux wrote:
> > > >>>>On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org=
> wrote:
> > > >>>>>----------------------------------------------------------------=
----------------
> > > >>>>>allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnin=
gs, 0 section mismatches
> > > >>>>>
> > > >>>>>Errors:
> > > >>>>>      drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: err=
or: anonymous bit-field has negative width (-1)
> > > >>>>
> > > >>>>This looks new, and only an error w/ Clang builds.
> > > >>>>
> > > >>>>Looks like it's been reported:
> > > >>>>https://lkml.org/lkml/2019/8/7/320
> > > >>>>
> > > >>>
> > > >>>Guenter reports that this is also an issue with GCC 8.3.0, I am go=
ing to
> > > >>>try to reproduce now:
> > > >>>
> > > >>>https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/
> > > >>>
> > > >>>https://kerneltests.org/builders/next-arm64-next/builds/1207/steps=
/buildcommand/logs/stdio
> > > >>>
> > > >>>Cheers,
> > > >>>Nathan
> > > >>>
> > > >>
> > > >>The problem isn't exactly unknown either:
> > > >>
> > > >>https://patchwork.kernel.org/cover/11037801/#22756703
> > > >>
> > > >>Guenter
> > > >
> > > >I suppose this is the fix?
> > >=20
> > > To my eye it seems like the "9" may actually be a typo of "0", but I =
don't
> > > know if anyone has actual documentation for this IP to confirm.
> > >=20
> >=20
> > I think you are correct. See:
> >=20
> > https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/phy/r=
ockchip/phy-rockchip-inno-hdmi-phy.c
> >=20
> > This is with the 4.4 kernel. See around line 902 for the code accessing
> > the register. inno_write() writes 8 bit, so a mask exceeding 8 bit
> > doesn't make much sense.
>=20
> I agree too, as can be seen in mainline code, the offending code
>=20
> 	RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)	  UPDATE(x, 7, 9)
>=20
> already indicates that it wants to update bits [7:0] of x in its name *_7=
_0
>=20

Yeah should have been paying closer attention. Patch sent out for
review, thanks all!

https://lore.kernel.org/lkml/20190807192305.6604-1-natechancellor@gmail.com=
/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190807192501.GA6718%40archlinux-threadripper.
