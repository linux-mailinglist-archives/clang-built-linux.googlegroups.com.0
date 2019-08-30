Return-Path: <clang-built-linux+bncBC27HSOJ44LBBNUGUXVQKGQE5JEJOFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 26677A3A7E
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:39:35 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id s17sf909955ljj.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567179574; cv=pass;
        d=google.com; s=arc-20160816;
        b=mDRayX3Su5kwk/7tElhVCWd9oBSefv+nTrSNCa4Gd5T+tIaKlqGPBC5piqMPpF/kYQ
         5412nvJaQbk/Grg+9c/TTrcc3Y0c7Dy4Yrz0TqNmKKGZlKUn0jS+f6EijmMpkmx7+vG8
         BgU/jFEjY/6tdZkrx2J5DS8a2dz2dHhEq9f6Rt2yWGw+iJKRndIRJMVz40HwQx/ejwie
         M1WidTEwqb3RNeJvU3HgE56yymYjSRUo0wukdKnKAcrmd/x2+FRWYqSW7FnnXFjtF7uS
         bqdQ8x9mMVO1he8HSj7vgBp9XbvgqxmuSlKYBE1IHMSCk1PN7acmfTZriAEkur9RZ6zz
         o3/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=NWt1oHGN2St+nwH6LuGTSWerGhRMTVraD3JYPwj3+dE=;
        b=RvW+1zBNBngPiTqIWgU46UOtaHVDHaUL3Cc81TYqO1okLI5TPD/JJmzEc9SmqjxKm3
         qq01FOKXxTkVmEcgXmN1KsdlHB76zRa2zGWN0m4VkJ2itN6/nxkff5Xd4qa9mPAV/6D3
         /EVXA3xEH6kL2uB78nenfyfaWzuZJnCDU6KMmgABta0ldu1UKrtjhpL613u8fnQVX+O2
         AJBacWAs8m8vM72WjBHL95x7UWPxk3SsQUl+L3pDCWdEAgKz3T9HqxpFT5lSySq/VVl8
         0/mnfUoiSA0hOeIxyFyG4v7D0Sbdj3rYAZu+k4YRhJN/Ng2G98+rvfjC1pn2WFhVZV+K
         5W9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NWt1oHGN2St+nwH6LuGTSWerGhRMTVraD3JYPwj3+dE=;
        b=DMwZCkuQTvQAMgpD1hb1cIzOauldKbyBIzgzPfkTdVKDIzkTd3zpeL2NJul7eKnyPj
         +6bHHGR93nnnSIpp3IZJ682GIyiX852ITb7nSBOXAui8vDA+NqydEzs/Hgh23T22lp4f
         3pehiDaDk6eWfpHDPVt6v6Ov9RFxrq7NUZXOCXKBPplgfls9pHOZNv/th6CGodr6uNQR
         zklkWoTSeM+lhfAbnAS5xZdiGJoRD1w6PKVsxSXP4i1p4Kh3bHL3remDoE+YytuCwThS
         aUaUafp5XR0xzknqDz1/7JL60ExEwBdcwO3Sy5XCStE/05TroXTMy7BVRFBsbO+nDKQ7
         GVMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NWt1oHGN2St+nwH6LuGTSWerGhRMTVraD3JYPwj3+dE=;
        b=E4INU20UXHDpOE06MUYd8MPSyfHVPDp/iDpG5RiysrPFqJp8W5wTZA1pWNWBWWYioA
         SN55s1Pviktk5iZGp/wss6CrwZUWWpxQYoXl/Qsmc3raEDfG2dynXAsJx0DYLmLFyMTg
         /CNpD3UVvt+01dspkuIia6QolEVI2ScE5cQnI2bd51yBdc9Plyk3ayDICvj6gnYCeZwU
         /VdeBAUxcyUFapngTa8rhWbM+i91mROsr252RklPc7CpQKcFMlh4x8TZkxahmANb8vZh
         3Oemw2b2XqQ4PwZbg2wFX2rxwsrRcxyOgl5VJju0HwrukJxlduRxbp3F1PpFdC0Qmw4h
         oX0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvueKQMnMQgY6Eep7DvNBMryCmwVrvwQq1PGBkH2TJ6qYQek2u
	ynPIQdTztUub5T0qtavYUDo=
X-Google-Smtp-Source: APXvYqxznXKf7iJD41pLl3e2DI54v7Tz6eUtfMd9xV/aawvAs9El6z7dR50qmJnb9R5HgCk6feMPmw==
X-Received: by 2002:a2e:4601:: with SMTP id t1mr9047270lja.102.1567179574703;
        Fri, 30 Aug 2019 08:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dd6:: with SMTP id x22ls794076ljj.9.gmail; Fri, 30 Aug
 2019 08:39:34 -0700 (PDT)
X-Received: by 2002:a2e:900c:: with SMTP id h12mr8796851ljg.151.1567179574205;
        Fri, 30 Aug 2019 08:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567179574; cv=none;
        d=google.com; s=arc-20160816;
        b=D8JXiH/ep+NFUPi8Tf3sWMDrPS+9JAO22Qoc90cXovWe4a3/Xt4Ptm+VFmJoL47AfK
         /yM1BS2US9hC3ifUi/dW0gXU6ipDVQBOxhRS5T30HeH3JDMa96X2V7LPG/0l+JM3ppcB
         DN98rVEPbdQz8FPNXnrKnHSiOG8OwFX9tAym53hk8l3lEz7nVMH73QwpZWo7APTqbIgs
         y/dLSLwUohyy7LnCH1yC66ggz64rUshMgOpT/IcCgl7AtWP3tsQc6+4RtxpNHHnAXytV
         6Jyc3En4ZHIqMh7v1dptryaNyPFOeXo1mJGs2pN5HULG+k8avxz8VAp3v9yGTgGg17j6
         h5kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=fnYMRmAh6xBTb+YJtCe6kh96g85QsvNb4RyX72yVEjA=;
        b=yeES7LuHdAROhCRtOw9l57a425RtriW+NJZZSGguMHYw3gYetUrvHa5GpQ0lrZI1WQ
         lzVq44uVmw6jHOE8Db2eiBJzy77ZPvfgzM3W4QFMKEWdAuaCBvFhGJVPygfYbFaAYQb+
         5t0BNif78jXPUsq5kTTQvZKhi3PDD+tbBwULecjvzuxi3zJQNZ9S6eJeMpD6D+XZTmMB
         rH6337qZbaW8ChXgDAru13bAZI0cUvMw2Y4MaFZEOVNtQbJ6uHAIzTmLuWlMLZAmSxzN
         gNclf+ThSD9dKZU2+iMeaJhS0PV8X4qIalspbHDncDchXw5H6J6gYI4VrPu4B10OhE5W
         B7Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id i21si269961ljj.1.2019.08.30.08.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-142-RaVDy-0kN-m9dL8Z73xTag-1; Fri, 30 Aug 2019 16:39:32 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 30 Aug 2019 16:39:31 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 30 Aug 2019 16:39:31 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Josh Poimboeuf' <jpoimboe@redhat.com>, Linus Torvalds
	<torvalds@linux-foundation.org>
CC: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: RE: objtool warning "uses BP as a scratch register" with clang-9
Thread-Topic: objtool warning "uses BP as a scratch register" with clang-9
Thread-Index: AQHVX0Ptqj9VEXOMQ0SdqQ13OMpYJacT0mzQ
Date: Fri, 30 Aug 2019 15:39:31 +0000
Message-ID: <71c29f9ae371444f8b8e42bdf364a470@AcuMS.aculab.com>
References: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
 <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
 <20190830150208.jyk7tfzznqimc6ow@treble>
In-Reply-To: <20190830150208.jyk7tfzznqimc6ow@treble>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: RaVDy-0kN-m9dL8Z73xTag-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Josh Poimboeuf
> Sent: 30 August 2019 16:02
> On Thu, Aug 29, 2019 at 03:26:30PM -0700, Linus Torvalds wrote:
> > On Thu, Aug 29, 2019 at 1:22 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > Maybe we can just pass -fno-builtin-memcpy -fno-builtin-memset
> > > for clang when CONFIG_KASAN is set and hope for the best?
> >
> > I really hate how that disables conversions both ways, which is kind
> > of pointless and wrong.  It's really just "we don't want surprising
> > memcpy calls for single writes".
> >
> > Disabling all the *good* "optimize memset/memcpy" cases is really sad.
> >
> > We actually have a lot of small structures in the kernel on purpose
> > (often for type safety), and I bet we use memcpy on them on purpose at
> > times. I'd hate to see that become a function call rather than "copy
> > two words by hand".
> >
> > Even for KASAN.
> >
> > And I guess that when the compiler sees 20+ "set to zero" it's quite
> > reasonable to say "just turn it into a memset".
> 
> For KASAN, the Clang threshold for inserting memset() is *2* consecutive
> writes instead of 17.  Isn't that likely to cause tearing-related
> surprises?

Hmmm... I don't think I'd ever want a compiler to convert a sequence
of zero writes into a memset.

It is as bad as a certain compiler converting:
	for (i = 0; i < n; i++)
		tgt[i] = src[i];
into a 'rep movs' instruction.
Inlining memcpy() as 'rep movs' is one thing, the opposite is wrong.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/71c29f9ae371444f8b8e42bdf364a470%40AcuMS.aculab.com.
