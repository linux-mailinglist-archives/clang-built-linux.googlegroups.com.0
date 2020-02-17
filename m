Return-Path: <clang-built-linux+bncBCGKXZM6QULRBC7CVPZAKGQEG5M4V3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id B7527161C10
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 21:01:16 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id z201sf12334325iof.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 12:01:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581969675; cv=pass;
        d=google.com; s=arc-20160816;
        b=RScMPRsl0aQuEdebsiDtyUdYHWzR9JKR7skR0egqxhjuPOhjCkVIqHAbNmOvEwvqAS
         5g0dYqUbp0OzZC/xd1pNsFWS2hC1+4uYfu/VAalXehhUZ2dY+cBxzi+u9aJsQYaXcRll
         f8VCnFWJBQsEirMz7cBm8jGWTRzw1UMRMbRltJp+gmxi7MDaIuCB/s8laC4F3lm+LTo+
         O4b+6YD4dh8eEoge7aKzgrPPrr2ZLMROk/F/rtVSCMU1y8HoZHMMgDOEe0edVBKA0aul
         +rYyxvxput3axQV+iIbWKV9GO50Qlnv+tlfKo2pUA3J+vwv0Wuvw2OoLV6gul/H7TKgV
         7/ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ychGwncE5vqx1UHcLKYdAG3/hof7tCM3A3DW12zINgQ=;
        b=o9aOVuK+ZAJ+X7gJTm81l3H/c+vMhvmAL6x2fEPLamU31rzeBH6CJcuvb9ivzLpDH2
         75741P42yYpGK/6bEWa5FI3mjg+kyYtK+qwy8AhGJwGtHAKrt6T/5oNYRTb7jKsQXoWr
         uZCiaPZPpOZClZ81Ps+os/YQ/oBAeAM6hB6M4L/rThUMrzO2oOyB9uGjP4l5Bw57FqT/
         w/a4Dfi9muQ1aGB37lOXhKpCBhdYs7a3/pb7zVmKQeWI8kNO+iS3M9HFrfI0bc4N4llQ
         WPyIPCDRkGDC8p+3erCK7QK0yucCqHuCnl75crALlKxuSHzg/fDOjJN4BfgsDZcyyZ/q
         m48A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alliedtelesis.co.nz header.s=mail181024 header.b=YrmI6q0g;
       spf=pass (google.com: domain of chris.packham@alliedtelesis.co.nz designates 202.36.163.20 as permitted sender) smtp.mailfrom=Chris.Packham@alliedtelesis.co.nz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alliedtelesis.co.nz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ychGwncE5vqx1UHcLKYdAG3/hof7tCM3A3DW12zINgQ=;
        b=bXCJapzZKcPSt7NY6hyvoCJT39TAQ9XoUAC0KJ6Aw/521UgIDj86uyT2A15MgeyKnB
         Zy6c8Qw6N2KxbFCaXIEo5NpvPDcEOkBlVi6qyum6O6QW7E7cftoOTfJWRHRDZYqONnl8
         m+1rdFVJxc3Ue2PeIZAt/K6JVOSy5tKlEkQRCx4mFGbwrjYTHPKzr0+YIK6dNyCJM3Cj
         jDutiv0ql7Tcn/gyC1jOoxPx7SaIS53w3Bd489CKa8xufmzcFYkqFjueay/QKOV9er14
         HyJe+HYuwJMcRp6BnRbuGLfo1zxs71lXbYeVKZghUk3hcWiDHhbpmde0aEiubx4ReXVF
         9hYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ychGwncE5vqx1UHcLKYdAG3/hof7tCM3A3DW12zINgQ=;
        b=RCC/pesk+F93Dix2bG9tfrDUtZGCm3ewgjzLONig4hpj8EOWywO2DZEt199+csrMmh
         Q2dtvPK0OWqQe9zrfmEKnQvzI27dXVaBeckjFX6xnMxTKjxlTbb5L1wPbhStkh/6GGht
         6UD4XzIHDSN8al8dv8jV+ZLJAQDwCHJcE2SJonL7elXB+RVf0iQbL9BfFjFYsTMSYevl
         MSKRMF4VNAHcgP83n5C3MPcegHkZu5S0l/Z9kZPQ/k3K4y6LPCwiwzcYt7+LaE2yEpKC
         lTqeZn3aVsoZV7w5cWKjkpAtlAPTgtKb8q3eLOncgktqShcskN4LZWOG3ToMfjgT8lY+
         B9LQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXMJzEqnpxtDfHMc4DWpGb5y+o06FG0z/zEZTxCgeWYePM/xqO
	EUDq1b4A50I/sBgk0FhMKJc=
X-Google-Smtp-Source: APXvYqzGOh74I+tLmyojU11VH8qTULoOY39I40YxhbBWPlLoUhqfyfIS3hT08kVVT9XWAGw34t3HRQ==
X-Received: by 2002:a02:cdd9:: with SMTP id m25mr13616010jap.123.1581969675109;
        Mon, 17 Feb 2020 12:01:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1d89:: with SMTP id g9ls2538838ile.3.gmail; Mon, 17 Feb
 2020 12:01:14 -0800 (PST)
X-Received: by 2002:a92:8f4b:: with SMTP id j72mr16787111ild.1.1581969674767;
        Mon, 17 Feb 2020 12:01:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581969674; cv=none;
        d=google.com; s=arc-20160816;
        b=yMZjean0bJE31R/d8VeB1cZNIH34A4Yads6fSLkYbHmKsHwWfptYBokUhaAgh2Umz7
         xal7cHf4z6RFMY+3ClgVKERK42OPzoKDV0cDNUCIenU/pS+JErrCdlJFi8Ej4o73xu26
         RN8t3mSGyWE6CJuj+2khhZ0g+IUiExPZdkcJ0Cvf/zSxUkrpZvl48sNbdKOUAp+XQFUD
         m52gMkDRILlkHM8MV2T8mOtx0MHrlSTTd9WpWE62xOkseHfVJ9Eu3gKTINlOxSxsELPR
         /PxqjAsRcGjW/OF+0MBYV2Mw1+Th2X4GMk4ETIrtgyn8uui5aLWtK58aDYBnjbvII4oi
         s2GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=QBZPpGPjuA/DDMDV0sM2afefWCRCvpxYLsolO5GIkv0=;
        b=w6CDtsvTbUiPra79xCIkSgNLgOpHFzImF7WDfj7akAnP9+QwAQCh/9tR11sTBcEuKA
         YcAfH+bQk1h/RxUf8uVzFqSHNauV7vRr2SycBCKsmmg+HLMF2y5EvpeFxatHP9jF9qvK
         7A/uTsrZa+QBwdo5uyCMCXQ1NT6tyRLqx1GRBE+crNz8rFuw7m06d0xSZvGuhrKiHvuM
         YPV0I16B+4/g360kl38aBo/K2Jz1EpKm/TioelW6zgOtikCk2ZWwg+fpVmOimwZWLaHu
         gIhQPaFGLS+QuPLiamgTl7/CSvIZBxLktIhoYxVbxhen7Wq3PZx4o04Be0oYfPheop+Q
         IpSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alliedtelesis.co.nz header.s=mail181024 header.b=YrmI6q0g;
       spf=pass (google.com: domain of chris.packham@alliedtelesis.co.nz designates 202.36.163.20 as permitted sender) smtp.mailfrom=Chris.Packham@alliedtelesis.co.nz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alliedtelesis.co.nz
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz. [202.36.163.20])
        by gmr-mx.google.com with ESMTPS id z7si79492ilz.1.2020.02.17.12.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 12:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of chris.packham@alliedtelesis.co.nz designates 202.36.163.20 as permitted sender) client-ip=202.36.163.20;
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 4808F8011F;
	Tue, 18 Feb 2020 09:01:07 +1300 (NZDT)
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by mmarshal3.atlnz.lc with Trustwave SEG (v7,5,8,10121)
	id <B5e4af1030000>; Tue, 18 Feb 2020 09:01:07 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 18 Feb 2020 09:01:07 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1473.005; Tue, 18 Feb 2020 09:01:07 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Mark Tomlinson <Mark.Tomlinson@alliedtelesis.co.nz>, "f4bug@amsat.org"
	<f4bug@amsat.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"paulburton@kernel.org" <paulburton@kernel.org>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>
Subject: Re: [PATCH] MIPS: cavium_octeon: Fix syncw generation.
Thread-Topic: [PATCH] MIPS: cavium_octeon: Fix syncw generation.
Thread-Index: AQHV4SHSo52AlyiF50aUibwtU28qqagdtJQAgABM4QCAAPxTAA==
Date: Mon, 17 Feb 2020 20:01:06 +0000
Message-ID: <8cb14684e2f774d9573c062f2d82ad5348c5fee7.camel@alliedtelesis.co.nz>
References: <20200211212455.3307-1-mark.tomlinson@alliedtelesis.co.nz>
	 <CAAdtpL5Tf-8O=xMKO33DWDs=2_Hsdk=FQSNO5Gsrx=9hWvENdg@mail.gmail.com>
	 <8e852d84c8b0c6b35faa3b3f2a1034d93a6e8967.camel@alliedtelesis.co.nz>
In-Reply-To: <8e852d84c8b0c6b35faa3b3f2a1034d93a6e8967.camel@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:cd0e:b78d:99a2:dcbf]
Content-Type: text/plain; charset="UTF-8"
Content-ID: <3503B8CCE2A3E142B2D2FF8E27366A7A@atlnz.lc>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: chris.packham@alliedtelesis.co.nz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alliedtelesis.co.nz header.s=mail181024 header.b=YrmI6q0g;
       spf=pass (google.com: domain of chris.packham@alliedtelesis.co.nz
 designates 202.36.163.20 as permitted sender) smtp.mailfrom=Chris.Packham@alliedtelesis.co.nz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alliedtelesis.co.nz
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

On Mon, 2020-02-17 at 17:58 +1300, Mark Tomlinson wrote:
> Hi Phil,
>=20
> On Mon, 2020-02-17 at 01:22 +0100, Philippe Mathieu-Daud=C3=A9 wrote:
> > Hi Mark,
> >=20
> > On Tue, Feb 11, 2020 at 10:42 PM Mark Tomlinson
> > <mark.tomlinson@alliedtelesis.co.nz> wrote:
> > >=20
> > > The Cavium Octeon CPU uses a special sync instruction for implementin=
g
> > > wmb, and due to a CPU bug, the instruction must appear twice. A macro
> > > had been defined to hide this:
> > >=20
> > >  #define __SYNC_rpt(type)     (1 + (type =3D=3D __SYNC_wmb))
> > >=20
> > > which was intended to evaluate to 2 for __SYNC_wmb, and 1 for any oth=
er
> > > type of sync. However, this expression is evaluated by the assembler,
> > > and not the compiler, and the result of '=3D=3D' in the assembler is =
0 or
> > > -1, not 0 or 1 as it is in C. The net result was wmb() producing no c=
ode
> > > at all. The simple fix in this patch is to change the '+' to '-'.
> >=20
> > Isn't this particular to the assembler implementation?
> > Can you explicit the assembler you are using in the commit description?
> > Assuming we have to look at your commit in 3 years from now, we'll
> > wonder what assembler you were using.
> >=20
> > Thanks,
> >=20
> > Phil.
>=20
> Yes, it is tied to the assembler. But the Linux kernel is tied to GCC,
> and GCC (I believe) is tied to GNU as. I can't see the specification of
> GNU as changing, since that could break anything written for it.
>=20

There is an effort underway to build the kernel with clang[1]. I'm not
sure what that ends up using for an assembler or if it'll even be able
to target mips64 anytime soon.

For reference the relevant section from the GNU as manual[2] says "A
true results has a value of -1 whereas a false result has a value of
0".

[1] - https://clangbuiltlinux.github.io/
[2] - https://sourceware.org/binutils/docs/as/Infix-Ops.html#Infix-Ops



>=20
> > > Fixes: bf92927251b3 ("MIPS: barrier: Add __SYNC() infrastructure")
> > > Signed-off-by: Mark Tomlinson <mark.tomlinson@alliedtelesis.co.nz>
> > > ---
> > >  arch/mips/include/asm/sync.h | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/arch/mips/include/asm/sync.h b/arch/mips/include/asm/syn=
c.h
> > > index 7c6a1095f5..aabd097933 100644
> > > --- a/arch/mips/include/asm/sync.h
> > > +++ b/arch/mips/include/asm/sync.h
> > > @@ -155,9 +155,11 @@
> > >   * effective barrier as noted by commit 6b07d38aaa52 ("MIPS: Octeon:=
 Use
> > >   * optimized memory barrier primitives."). Here we specify that the =
affected
> > >   * sync instructions should be emitted twice.
> > > + * Note that this expression is evaluated by the assembler (not the =
compiler),
> > > + * and that the assembler evaluates '=3D=3D' as 0 or -1, not 0 or 1.
> > >   */
> > >  #ifdef CONFIG_CPU_CAVIUM_OCTEON
> > > -# define __SYNC_rpt(type)      (1 + (type =3D=3D __SYNC_wmb))
> > > +# define __SYNC_rpt(type)      (1 - (type =3D=3D __SYNC_wmb))
> > >  #else
> > >  # define __SYNC_rpt(type)      1
> > >  #endif
> > > --
> > > 2.25.0
> > >=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8cb14684e2f774d9573c062f2d82ad5348c5fee7.camel%40alliedte=
lesis.co.nz.
