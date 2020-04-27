Return-Path: <clang-built-linux+bncBC27HSOJ44LBB3FCTT2QKGQE7SQA5FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC311BAAC5
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 19:07:57 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id e18sf3231229ljg.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 10:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588007276; cv=pass;
        d=google.com; s=arc-20160816;
        b=uqR39C+9TPvEemHHLR+VPztspm5TdNfSG9INTbuReHWNlEpCPkXVG20+5Lg69B3HQj
         F7kSuYKZUn2SplL4vIMcn10thNcZkMm4secONZUuLUz8v0f+m0XX1Q0G2qhEezVYpnN3
         BRMGWp33/Gc45IuGLpYJYsQ9KoIrhm3j+5xkfLUAQ0Gt666IwwuRnZIJHWu3zCfg/SEe
         hRYoPeu3rxfTwRWB65adjSAtJv0H2ph8/XyeQJAMcJu1wKBHlflE/Y1HnXc8Vi31cb0e
         OuAgRLsx7v28XkkDGwHOYLlifFvB/QV+ktcA8E4mYvgMDCX8j79DqFz/hrW/Lm0zBHe0
         WF+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=gA4OoemOow7ipMOFiOthRE0qYQ3EASwt2FBSrOIvmmY=;
        b=muD2wQqaqwNhuxzpvH0ZbAmPoQ6j+aQTRaS9URrA/9B98CnrIoDMVmmeFljW6iiOsq
         IpASuuA+XoCnkc3W1HPrho+KnXZfVDhke22O0vAYW4fwvWf7YkPQl7urVwxPzzOaMliK
         kNu+Va7IG8pXh6ARnJTqHj44fXYfDSRH6iGAHRCLwZAFmqNKvGsq2qg0McdIKnyBkmgU
         FquXAAyv2qum6+g8ZqFxvck35ehmUgFiZRXusAVGVvgDw1BaKY6qgrk+cQkxP24ZkgRe
         iRnNhuwpevad6cScfytF1euWnySI3NUin6Gqa6IBlLhYZGB949N6Krur027L+dUZAbow
         2a0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gA4OoemOow7ipMOFiOthRE0qYQ3EASwt2FBSrOIvmmY=;
        b=fDnICfj7WvvC3NNLcMTJGXkNmclhkknTUal4dA/LOfgvV+vitwkAzanYFVO2Ar8OjR
         m/KhcTNPkFnJRDHlrQDqeujAndmJ94rmpo/TLK11bdQPg66XwcOXbp3x/APHmTxfKIrR
         xVNfSljiHaFO2xXOz71b22JtqfO5D883lHvR8U8kOuKKv3Kc0zCQh20qFy4OKBb/MjQk
         C32Z9GT2uzDYEjPwQzqGfqk+F8af9+mQzeAfgj904gyGQEFDVvPqb3wUwv5NEsmBD6+k
         01AZ7g0lRKUlZC16c+ErkAbYWAvBBT9cfrDM4snq38rcnGW6Vsp1GK+r4vbHHLi2M/nW
         UvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gA4OoemOow7ipMOFiOthRE0qYQ3EASwt2FBSrOIvmmY=;
        b=LJAJ6M0DwXVvp/GtWt60GPrLlzOZB9/zkFHLOaNP8dJF3hDj9mDd/+A4U1v8/iClh4
         HPtb+rLnu60lY1uALQfQJerd9yHrSpZBhs6urjWcwvJXUGkFsi5pJoo+pCE/ZDmyptb0
         jhzpEYTILzQ1davYThxXve3LyANBAPmaQ7rTCfS7lkkTRlmRgb5tU72Bsxnq1gYGd8/e
         FZ3Ufnh+/9d77RDWQndELgBbgzBIjUQ8GsXOZwp5kAFgp6NYm84SQwzZ+OpQKxwKQSsX
         vg2QYCr5j7UJ34v4Q0G2nNocl7szRSdYWqms3Pxh+9GmFATEHQJHP7ywEOBP9x2sKMEF
         Fwdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaYFHgygmlKDUTbXdVYNuMsNKi4iUqVu53lMFvw3cocSLwfO4Fv
	FXQ0RukvdaR1mtPnEyaYR6c=
X-Google-Smtp-Source: APiQypIlTLeir3FfaI/eM7teJZ8ecoCcqO3+gcEy6I7UpgsXpPdSP0Qmnri6jitnaTNFCUi+Km0AUw==
X-Received: by 2002:a2e:9990:: with SMTP id w16mr14654074lji.194.1588007276718;
        Mon, 27 Apr 2020 10:07:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:980d:: with SMTP id a13ls1393270ljj.2.gmail; Mon, 27 Apr
 2020 10:07:56 -0700 (PDT)
X-Received: by 2002:a05:651c:385:: with SMTP id e5mr14938752ljp.208.1588007276102;
        Mon, 27 Apr 2020 10:07:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588007276; cv=none;
        d=google.com; s=arc-20160816;
        b=KjHhingC19z6ZMEHWHA+xa2fGABlqe+nS3w6ALuYvTBqyHXo6G5wSUlzBJnNXlZ9nf
         KLCHNUfatdhueg3Ykhk/RS67XNhKHKSfxWkZWYUaOMZbAgdE79inQW1swJz2QvBMCPMm
         keswiEhxfSf4w5zNqlqnGbNxFKyTn86yPfhYZmycDIGewv21Gdz9J9D0AprNcHj83P/g
         U/4eTaU8kVqoR0d0WGp7gieTe0/hrV4Y1ZMxpuKGIatEfDcV+kOGEWa6buMrJTEnOn24
         ZxMYq9hCB8kArcpM/96pC25LfoK3/EvoXK+Fpfz7ofxBL3jnc393/JR3JwsL1TCarSxb
         BYXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=E6itUdaM8e9/Zxg1QkuTEMqnWxogya0e57gX9kfBZzY=;
        b=t78wkyQzVbCZlOHtqUVFd+9u5FszXiGP2CCBorM+ly4EZdjd/hRR7NBN0P3IZmyYpX
         OsprTMN2NIxVeVFPL46xLpeRsYkcXykn2NnLiIqdX7U/ChMkS/1vaE3jQZUXttdnnz1b
         n61/yYJGX20hBlXq72no//eIKjiN8TIlbVTSJFZjW07ko0x3fJpdsjBnoPIFBpnRCq6+
         9U0MR5ChOvNQ/ETqAFLlKoSpJzPYRaM2GhWTg/Yy9g+zBMpxOZ0/qaP1A6N4RI2yrUsM
         c5sdn3Yn8OQKTFX0SLQCZcMvZVLZAJNPoJ6QenYOqgqUWZ/eQOTY/G/ri5cWFy2Q+I79
         3aPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id q24si1167555ljg.4.2020.04.27.10.07.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Apr 2020 10:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-168-ve_xwjQ3OrGthkNl1IKjAA-1; Mon, 27 Apr 2020 18:07:54 +0100
X-MC-Unique: ve_xwjQ3OrGthkNl1IKjAA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 27 Apr 2020 18:07:53 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 27 Apr 2020 18:07:53 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Borislav Petkov' <bp@alien8.de>, Arvind Sankar <nivedita@alum.mit.edu>
CC: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>, Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, "Andy
 Lutomirski" <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	"x86@kernel.org" <x86@kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>,
	=?utf-8?B?TWFydGluIExpxaFrYQ==?= <mliska@suse.cz>,
	=?utf-8?B?RnLDqWTDqXJpYyBQaWVycmV0IChmZXBpdHJlKQ==?=
	<frederic.pierret@qubes-os.org>, "boris.ostrovsky@oracle.com"
	<boris.ostrovsky@oracle.com>, "jgross@suse.com" <jgross@suse.com>,
	"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>, "Michael
 Ellerman" <mpe@ellerman.id.au>, Benjamin Herrenschmidt
	<benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>
Subject: RE: [PATCH] x86: Fix early boot crash on gcc-10, next try
Thread-Topic: [PATCH] x86: Fix early boot crash on gcc-10, next try
Thread-Index: AQHWGypePJ4OzIUqcECsVX65Qe8dmqiNNepw
Date: Mon, 27 Apr 2020 17:07:53 +0000
Message-ID: <0ce42f2537124ee3829a307eefd12db4@AcuMS.aculab.com>
References: <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic> <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic> <20200425150440.GA470719@rani.riverdale.lan>
 <20200425173140.GB24294@zn.tnic> <20200425175249.GC24294@zn.tnic>
In-Reply-To: <20200425175249.GC24294@zn.tnic>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Borislav Petkov
> Sent: 25 April 2020 18:53
...
> IOW, something like this (ontop) which takes care of the xen case too.
> If it needs to be used by all arches, then I'll split the patch:
.
> -	asm ("");
> +	prevent_tail_call_optimization();
>  }

One obvious implementation would be a real function call.
Which the compiler would convert into a tail call.
Just to confuse matters :-)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0ce42f2537124ee3829a307eefd12db4%40AcuMS.aculab.com.
