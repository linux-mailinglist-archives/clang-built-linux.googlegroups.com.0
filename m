Return-Path: <clang-built-linux+bncBC27HSOJ44LBBIVX6L3QKGQEE5KFYIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3811C210D90
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 16:20:19 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id f8sf13846185lfh.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 07:20:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593613218; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2k+MyNd91bnxIOcSyUZcoIGH2lqedITLs4/bg0GPqH+Wkua86+i0ho/CkpYo2027N
         A2Xpr4h+uBY9WSGNahsVYG0tS81rsj2fgwI7RHBE88Z5PTky41ax2f4AmFeTYO32D2Vf
         1Zn/WnUMyE9nrcuDjaEuOG7tskbZEMjVE+bMjwDnAmoTtNnjHb57yibss2YNKlNIhbZr
         4wFB5P8OPIk7P3E1Q1cJUv7+QH9TJdjvMaspq5VM/Da7l0Inhmqp7R/2Rlmqqym2ne7w
         aZVVLG1lEdMMX9llTYPnimsIUUssll7wal5x8y54PSytrAPdYgCtZyL7ncJchmRCIjNG
         s3NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=rK9AxXanD+TXw6uozT9+Daaa9TwAqCnXe471cCZYiVU=;
        b=oCgAYjqvega5jOHzd7O5u5p4f7sBONmxGY4xVYZvB3WIBUidK4uoXCLWy33lt3Duee
         LMyJzI6L7Ltqm+YTeYj3h84gxshjpQSuCRaxImslFnn4EZzgBazxF/r9GNBSWvComfD8
         d2GLKUP/OJkgs2wrj8YHQlKtEE8salPQEp2Pv9wgFwcjstbPtVNTX2cIcNFQU4+6kEUY
         1+jlm51NaF/0F3heMNeLtGvlJkdCN2/kSKX8Xhht35dujHkKCOVGa00Mx0BBZKNNvZQP
         9KSQjJqDkyvf+o0+leJq4C9ae1B4O2O/BJKur2PcqGF1UGZmZxPriD6Di9iJ7FJJR/mF
         utPQ==
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
        bh=rK9AxXanD+TXw6uozT9+Daaa9TwAqCnXe471cCZYiVU=;
        b=j/1AA0Nfi3Y0Y3/as+7R3Xczshmq+A/QbIDymjlOSEXr9dXlxf4ACpZyxRD6+uzmYR
         V8vo7Nj2uvBeaS7CfVAWJa0pZuZUlaV3oZoJowaxxW2YT/q+3qEaFR6J88LJ8s0ecYF8
         85s69+o/mt71dfR3R7vCzVW3CMZZ3GUnZQf8+mXwdKXQODiLF3x36IszAobsj0gpWZDT
         i/H7jzJE2d0fi/y2MiE15GzhN+h6f9GctzulMrdHhr+NyHpL6K39+9BIUHPsKFpTk7D2
         scZllp3IJaz3UlF2cKrw/rmSwrkFMNTcYzNHpOzS2r6pNrAeTfUQrAhhe07/vqI3syNS
         g3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rK9AxXanD+TXw6uozT9+Daaa9TwAqCnXe471cCZYiVU=;
        b=aTXTZNVByRF6WoP67WrqglNsfSvEfk6s7JAk2LQdUpqqM1SDkgQcm9ptg7Wxh2mMHx
         3gnZYcWeyq6t7xQSXnLVCrf9Z1acQKxZrBleFSKqQ6++PiKQv9usaAYoYsh2ilsKJks1
         1xZedjGqhkAwRxBgFvrUHl0goAOUQZ15lbiXdmP7kRcAdYO8XUpc1nP7XG2q/x4zBBTT
         LA9GFdLx1hhO+IdXNs5Jxg2YQ7YmYOFeHK0j5sWo3uAIJmAjRmL9GxMnodtKANv7E4S/
         Xvah3UJE7zQr5ZLuzCzIC6QR05Nri3pTk+0dXMCIkUGvhgrAbGVo4ntLmgI6VCCBWzHO
         IpiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327Hd6eXIkq8ZKVSN39U9KLzvwMUABvP1gJhzsJOi/7olrc9Tg4
	V2cRwyEjk6OY4gCtSEZ2KRo=
X-Google-Smtp-Source: ABdhPJxgKZgt9dWfh1MEIzmud9PfVtoQdUCoT5kkUFN9n4crhhptS6Gfskt+nVTRn3O+7ERwmOwbDw==
X-Received: by 2002:ac2:5629:: with SMTP id b9mr15382295lff.208.1593613218688;
        Wed, 01 Jul 2020 07:20:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4ec1:: with SMTP id p1ls764696lfr.1.gmail; Wed, 01 Jul
 2020 07:20:18 -0700 (PDT)
X-Received: by 2002:a19:7111:: with SMTP id m17mr15764964lfc.156.1593613218153;
        Wed, 01 Jul 2020 07:20:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593613218; cv=none;
        d=google.com; s=arc-20160816;
        b=PVRTr6rZ6La1FQzXg2ONAaUEf/70LrTT7LBE/phqI21vYxg0BC+3O4gE53X8d9sC2C
         s5Icv6dR3r/8qPfA32LlHQvf0ekDgV5VEeQvNk2kJ2O0f4M3i30egGV3z4DmLFQE5hWz
         TTKi5hN8LcXsXVbYO98jl3AMK+3bmapHEuY4XPdP2WsYT8Has/j2RuUOerq6aO0sLjDu
         MhXcx8WGOdQlnAiJXux5zJssY5KshiAb4LfXh18gCGj0pwhd3fYONjxbPnyFirmuZ01C
         n+UnIuRfdXHris9tEBhNsQjvA3+dqqajnTNqpKG/CqFfHF9s6Uoun6zslC67TheZxgsq
         RW6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=Tdn3QhQV9Vyp5fddfbyBFA1vvfWaA4wK2aF0BbAyAzA=;
        b=Jsv8ynMcRLfEH0WNXYm4+NS+jhQRLgLfIvsKNLcli0Ba48koW0YwEqXUPB5mxRZdsb
         87UCxI6mL9DjksfxwA8mVw0m87RpQXbOxQHuK5+25vLG6g1DprUhCDmvEyi4qH5GOR7R
         PzpAgGKCGBBK8CuZcUbeoXsm6pNf+SPue21r1MQ3MUCtMGZRa5a2Aht4PQwGC6meDjmO
         Mizz09UWKqxcDnw/NUrg6SSxn59cwBuu/tVGTt4ZszT52QPrWSDt9RJlFj8LYDB4CQS2
         8uTbYLR8u3rs9lEf8IZHCMcEk8Puu59ppGX/qjhMTTaGUEhcJVNGgl/kXFD3FdI6UxTH
         zugQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id k9si438604ljj.5.2020.07.01.07.20.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 07:20:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-16-BVV8QEx9N7etV0JoaSvqjg-1; Wed, 01 Jul 2020 15:20:14 +0100
X-MC-Unique: BVV8QEx9N7etV0JoaSvqjg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 1 Jul 2020 15:20:13 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 1 Jul 2020 15:20:13 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Peter Zijlstra' <peterz@infradead.org>, "Paul E. McKenney"
	<paulmck@kernel.org>
CC: Marco Elver <elver@google.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, "Masahiro
 Yamada" <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Kees Cook
	<keescook@chromium.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Kernel Hardening
	<kernel-hardening@lists.openwall.com>, linux-arch
	<linux-arch@vger.kernel.org>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "maintainer:X86
 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: RE: [PATCH 00/22] add support for Clang LTO
Thread-Topic: [PATCH 00/22] add support for Clang LTO
Thread-Index: AQHWT4eVR3DE4y9c50++UkzL75GurajywsMg
Date: Wed, 1 Jul 2020 14:20:13 +0000
Message-ID: <4427b0f825324da4b1640e32265b04bd@AcuMS.aculab.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <20200701091054.GW4781@hirez.programming.kicks-ass.net>
In-Reply-To: <20200701091054.GW4781@hirez.programming.kicks-ass.net>
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

From: Peter Zijlstra
> Sent: 01 July 2020 10:11
> On Tue, Jun 30, 2020 at 01:30:16PM -0700, Paul E. McKenney wrote:
> > On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> 
> > > I'm not convinced C11 memory_order_consume would actually work for us,
> > > even if it would work. That is, given:
> > >
> > >   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
> > >
> > > only pointers can have consume, but like I pointed out, we have code
> > > that relies on dependent loads from integers.
> >
> > I agree that C11 memory_order_consume is not normally what we want,
> > given that it is universally promoted to memory_order_acquire.
> >
> > However, dependent loads from integers are, if anything, more difficult
> > to defend from the compiler than are control dependencies.  This applies
> > doubly to integers that are used to index two-element arrays, in which
> > case you are just asking the compiler to destroy your dependent loads
> > by converting them into control dependencies.
> 
> Yes, I'm aware. However, as you might know, I'm firmly in the 'C is a
> glorified assembler' camp (as I expect most actual OS people are, out of
> necessity if nothing else) and if I wanted a control dependency I
> would've bloody well written one.

I write in C because doing register tracking is hard :-)
I've got an hdlc implementation in C that is carefully adjusted
so that the worst case path is bounded.
I probably know every one of the 1000 instructions in it.

Would an asm statement that uses the same 'register' for input and
output but doesn't actually do anything help?
It won't generate any code, but the compiler ought to assume that
it might change the value - so can't do optimisations that track
the value across the call.

> I think an optimizing compiler is awesome, but only in so far as that
> optimization is actually helpful -- and yes, I just stepped into a giant
> twilight zone there. That is, any optimization that has _any_
> controversy should be controllable (like -fno-strict-overflow
> -fno-strict-aliasing) and I'd very much like the same here.

I'm fed up of gcc generating the code that uses SIMD instructions
for the 'tail' loop at the end of a function that is already doing
SIMD operations for the main part of the loop.
And compilers that convert a byte copy loop to 'rep movsb'.
If I'm copying 3 or 4 bytes I don't want a 40 clock overhead.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4427b0f825324da4b1640e32265b04bd%40AcuMS.aculab.com.
