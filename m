Return-Path: <clang-built-linux+bncBAABBYFL4OAQMGQE6HWCMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 767093261BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 12:05:05 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id 127sf9614100ybc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 03:05:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614337504; cv=pass;
        d=google.com; s=arc-20160816;
        b=PUblFI0ByHYjREVGubvRI1AcGqAUKJ+YIuOlihAQa81c61HcF/BK7AxAH4Cpcjc1Ti
         dZsAJ7RuLp1CmWyUH9remFKWIO6eaIXL6Of3d67AIha4iaODCh//r+tePCK5i9AVJalU
         fWDd3QaP/+HMG5PYVG8RVK9ULk0HhorKzUvtU9SMvTzXG7N8IvAbYDUwluWZq6h38c6e
         ZddGIwg7MblBgj5e2/UOFsLkbo7t2EIz3in9XtwGiDCX19F3XYzSaQZ45m6rev9J/9LB
         3mKVfJQlYmh73vzkQYuopMlLEnfkm2TuFDSgZMZIcnHCjEmwZzxx9owxn32Z/QByd+Ea
         +7WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hZcZ24UHgCQi5bLUOF3acWK6ang95Kl5S4NoCPyOfdk=;
        b=ZQFXcJxCr2M8BR5gWA96ZnmEun7sqedlZD4VoJezusMJUs+l1H17x5Ckx7Tpr8IhhY
         CX876OAqDK9TeQ8WNuxjXnwFkVqE9dQYz6BVXJWDBuSYs/TqF1ZTyrYKfOUQma5FBrLy
         N3VJJAG7FK3TH7IxFgxJ4wwwQgsSd8ZaJBHoghIKLitAN8h1Zi9NzkZQbA1Utcxqq6I4
         mE8Yy+6LuCyhi5rObPQwFMAjoAeq99NYKTMH0zkHGhiEPkuhcUDiRsl8hEnr6OFCAQSy
         ib+aTYTs0IlcJ/VuPDfx7laqzzuD7iuWGbIO4FC+BbEoTj9w6AlHHaVmVXAkJLWgH/VM
         Ukpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ntQy2PrR;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hZcZ24UHgCQi5bLUOF3acWK6ang95Kl5S4NoCPyOfdk=;
        b=sOBbztHqxIVcNZDfRwMz8y3vZdq5FGGZVehmgresZWagnp9oxlElFCeuv8tzdgbmAc
         KfWux+c8SVIdXb5r3rq3JkLX+16T86OvnYnKIrSe269Pw++SbwH1vUtsVzOe1ZojFEJ1
         tNHj/nWfyr8707e4hW5hmbo77WGLPpsTjMx7IBQP0MqV8RJx4NsE6LcZWLqVcnsaT/IK
         BsZxXPQzESgO2BEDmptDyDwr9NhNpgEgEu/dIotWpr9xBicSYQPo6VQAZngH8vz40Kz4
         /EeGh1iArFc5T/gy0Bc3ULSsZLhrRCDyLy92p/yarahf6X2fUsmwJ8pqh0KaNsfY8F7h
         ekKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hZcZ24UHgCQi5bLUOF3acWK6ang95Kl5S4NoCPyOfdk=;
        b=bwTmZzgqWaY9qv2JONbrwpE4HQFW7/CV4ett0u6XtM1RP+SKNEQWNlTYfqxds82YgY
         2BD3BXYrzkZbMFFrr2Zmm+LejhGCbSmpHISJJQcfHrQNtJjCjtkkG7eR6uOrKub1Qcj6
         pTbb7EnvY9+TZboRWkZFSr6vFHuzi+GgFgomWhvJ3B8BF4E++iaFMKIXBINAAgupZo7q
         LDlYYVK0FWzFDMALpECOHNmXjslPpQJZCIJJAneTYtHEX9TdSk8wUeUOhuqYuSWWGkEz
         GDmWIiC/a+BATau5w8+l33D9v1UuaNo/N/l1+U17LJoXA/w0mYH71ZFjN3wbLKTeKvBx
         3wGg==
X-Gm-Message-State: AOAM5309kukFh/epXNUwhEDVg189N3MqbdFxF7gzJgkYXPCcT+bRyDVn
	34zBenjT15qYsLF3vU9ZHtg=
X-Google-Smtp-Source: ABdhPJwgAX5hWv7FzeXI1OlVbYUu4ujyK0X9WLoY/Oqqfgtafki1R0SKwuEJyc0BmCOr3S9fpa1gzg==
X-Received: by 2002:a25:e654:: with SMTP id d81mr3509864ybh.207.1614337504509;
        Fri, 26 Feb 2021 03:05:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc49:: with SMTP id y70ls4085323ybe.4.gmail; Fri, 26 Feb
 2021 03:05:04 -0800 (PST)
X-Received: by 2002:a25:7444:: with SMTP id p65mr3811934ybc.441.1614337503947;
        Fri, 26 Feb 2021 03:05:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614337503; cv=none;
        d=google.com; s=arc-20160816;
        b=NJEGSA9f9+5bYVZDOAOWIj/NU33gwz3BuE8aUH+FDtYR+c7YEkl2SSkv9c1XIQur9T
         V40E62oA+KLpi2XMsKOgV5X9vQaCWLWSvZmgE83ambVEJpUUJAOYMU5iOM7udeR5r8uy
         XWo0sTXx2IFcusYoCe4VykeWiY6f9vf7ckwgiCQ9WgnVbiDk28YLFuKsoxusTjHCHl3U
         FTsMaMu5Ooy7IpFajVmxM36w9qUIf50jsh31X212qhACMgzT2duJvSn8AnK9SGfvymKP
         mK5akinNHLDl2ycyTcAgsZ731r6MPZnqbVcXOv4spefxJYNkhTu4UnJTLu0is5mvTN+h
         uw7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MdgbDRHH4dg8uTJtgWTuDNWRvpN3VoqBOgFyw0Qzq/I=;
        b=uNrtpD74ITE9dRI9dnX9wdRJC8cw6HWUYmjaVph5zwQ87OGG8v7oDST42OhjPMO5je
         inyYi6e+vWCChlVjJ9DC1emmq+HqkQ4WatptHKDSyKtTBvmUOQigmNp41Ag+QtNcNsH4
         hH2w2W3TecdMMnltdpqwkncRH2lE7YTlBhKb60fMQSdQAT0m3Cl6v3/Hll06klLy59Ea
         WIWCXzUo5uUBoTGo7Be4zEm4E97vwrXRvb+LWGQ4XQVAWbEjiywTugi0W12REpsvecg2
         4o6VACh3Y64A7iGPXDe+6Mw6+B4H3CxhXlJCW0TgqHaMijDrOI6DAqkmzNptHSk3F8SY
         aR9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ntQy2PrR;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id i194si560974yba.2.2021.02.26.03.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 03:05:03 -0800 (PST)
Received-SPF: pass (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QB4twq079584;
	Fri, 26 Feb 2021 05:04:55 -0600
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QB4t7L097559
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 26 Feb 2021 05:04:55 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 05:04:54 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 05:04:54 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QB4s96066246;
	Fri, 26 Feb 2021 05:04:54 -0600
Date: Fri, 26 Feb 2021 16:34:53 +0530
From: "'Pratyush Yadav' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@kernel.org>
CC: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Nathan
 Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>,
        Jon
 Lin <jon.lin@rock-chips.com>,
        Chris Ruehl <chris.ruehl@gtsys.com.hk>,
        Alexander Kochetkov <al.kochet@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Vincent Pelletier <plr.vincent@gmail.com>,
        linux-spi
	<linux-spi@vger.kernel.org>,
        Linux ARM
	<linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support"
	<linux-rockchip@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Message-ID: <20210226110451.ijpllyczuquerfsr@ti.com>
References: <20210225125541.1808719-1-arnd@kernel.org>
 <20210226081548.h5ls5fxihunzxjvx@ti.com>
 <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: p.yadav@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ntQy2PrR;       spf=pass
 (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted
 sender) smtp.mailfrom=p.yadav@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Pratyush Yadav <p.yadav@ti.com>
Reply-To: Pratyush Yadav <p.yadav@ti.com>
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

On 26/02/21 10:49AM, Arnd Bergmann wrote:
> On Fri, Feb 26, 2021 at 9:16 AM 'Pratyush Yadav' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Hi,
> >
> > On 25/02/21 01:55PM, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Building this file with clang leads to a an unreachable code path
> > > causing a warning from objtool:
> > >
> > > drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> > >
> > > Use BUG() instead of unreachable() to avoid the undefined behavior
> > > if it does happen.
> > >
> > > Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > >  drivers/spi/spi-rockchip.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> > > index 936ef54e0903..972beac1169a 100644
> > > --- a/drivers/spi/spi-rockchip.c
> > > +++ b/drivers/spi/spi-rockchip.c
> > > @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
> > >                * ctlr->bits_per_word_mask, so this shouldn't
> > >                * happen
> > >                */
> > > -             unreachable();
> > > +             BUG();
> >
> > checkpatch says:
> >
> >   Avoid crashing the kernel - try using WARN_ON & recovery code rather
> >   than BUG() or BUG_ON()
> >
> > Which makes sense to me. This is not something bad enough to justify
> > crashing the kernel.
> 
> I thought about rewriting it more thoroughly when I wrote the patch, but
> couldn't come up with a good alternative, so I did the simplest change
> in this direction, replacing the silent crash with a loud one.
> 
> Should we just dev_warn() and return instead, hoping that it won't do
> more harm?

Hmm... I'm not very familiar with this device or driver so take what I 
say with a grain of salt. On the surface level it looks like it might 
end up doing something wrong or unexpected.

Returning an error code from this function (along with the dev_warn() or 
WARN_ON()) is the most sensible thing to do IMO. If the SPI layer sends 
an invalid value then the driver should be well within its rights to 
refuse the transaction. The function is currently void but making it 
return int seems fairly straightforward.

> 
> The backtrace from WARN_ON() probably doesn't help here.
> 
>        Arnd

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226110451.ijpllyczuquerfsr%40ti.com.
