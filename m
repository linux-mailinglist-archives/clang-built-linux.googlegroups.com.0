Return-Path: <clang-built-linux+bncBC27HSOJ44LBBS72UT2QKGQEMMQ3FQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8A11BD76B
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 10:39:39 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id m3sf516729lfp.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 01:39:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588149579; cv=pass;
        d=google.com; s=arc-20160816;
        b=D92R7JBSwbaM0AIlrTNoZchNVQ3WEMvxTUDkkEysukcUbDtdEBhwtfbW9HytKh+HP6
         +fqCVP8b2tL9wJYXiCV55UIYgOacJrgZjG1gqSJmyzofkzXjLdMDIjD2rhjVN0RHIaa9
         L+ZLBFcMESRrqag0lizZ0XzfHM8pIov5nG2M+vVOF8iY0PYPqYkUo/gnNlFBaumzAGa4
         JfkXc1pzXIXi1P3TdGmlFmGzS4HkiCkrdwF8D0c8jkzQpE673LJ5Kt8r7Sui4BJaJzHS
         8TkPNkxf+YtpVmdrwOx3s2SItUsXKveZ6m6m1Bnn1iiCS/J4hmbJHsZ1wX464sxV37YU
         WTHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=W8w99Nguzm/bQtlh/vSXQEiN4WCvKZHbdiOHBPxvmX4=;
        b=BGBxRjH2ks42fXMVTHbtlbLXUqfpPEG/c/8LulixXzB1j6dfSCM6LF7gouC0IrON+/
         fkOI1DBWhGOghANrcSOk7eUT6RBi+5+MkUdfm8Eq3WbeTKxuIXFIrIhV90O+4xKoh0mH
         sn1gY+lGUxagzll+5lRe9joyRQMRNp2pQJ6FwRzokIR9xloIVWvMcnt5L/OL3hS2OMd1
         qJfPn6ftAy8SPfsMhQzMY6LcrBJc/hVaGTRKC/3dyGtaIgKr4dtIG/7DX3kSXgqnIUgG
         X4srv27sccWe/BCUFcb0nOsTqmV+TahMs6m8FWPQRQBfIfZwvN9cnvROPF7Bm9B9e+qW
         OB6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W8w99Nguzm/bQtlh/vSXQEiN4WCvKZHbdiOHBPxvmX4=;
        b=IZ8sPEFEGqhET3VSsxmYK6e5tUJ7huQxWF68cNG4JzHYiU7gNqkwHzROFQOQ5sHsFZ
         mRGV+fgBN8+MYpKOVKW3BoqstxXQ+Z2QLHF3O1LeHF99b+asYAMBvmrFi8lWOPauolfG
         e/V3hdi7COcmWPfzAdzHpTWl+61dECfGB61bdUsY3PhhammXEen9nhj8buEuWP3j9Fki
         5h1Fn8Px6ubBtfKFYbxkG5VkyF6DTwuMyIOXS7cEP/rQGiOoKKS7RsZpCq9lH4352u/8
         cBJXfy2iT055cPYmV6wqps2heTIKa1rHf47qqqmf3cj5126utFHYUYiyyAYcrCP3KV+a
         1E6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W8w99Nguzm/bQtlh/vSXQEiN4WCvKZHbdiOHBPxvmX4=;
        b=oNGBaYA+PRNHjDicLR23WlK8rYUNeWHZB9WLNqrIQdvZ9RHwzdPVNzxGxCWUUAWRNT
         vc8a/sUz8SYcsZbe0eHjXZnxLwiMqsDgGY/+T7JdqVniiq0JVlV0Hf0tEnxjIOhbpeAA
         w0LH+GV4yx0BYgArYWF74EeZsuTaOKTW6xvktkKZFSBQGMgFkHyoXm4iXNL7zU8NoBHm
         JXOHJggzBEUZRAeDyzyitoOiduNqUVpxOIee6q+4QiBDZeCvOyQ/3xPHC4u9ziLT1zs+
         NB8X44T++vZe6QIQXJYaRqHQRWRCmfWY0X0acv0xK6/ShnYT+lHBYo1ADQBxoSxc4orA
         dAbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZQ9hRLLy2ILma54N0lqpufRHwWaol5aGl0hapaFzOz06tQ8GMa
	mB/igabn/z6vgEhLgPkkjx8=
X-Google-Smtp-Source: APiQypKU8kM4h+1Kep/JP43/JarFRHMj9zOT47UIsLH9dOLoYl5Ma+DlvOAv8VSMfYs5dT5Z815TcA==
X-Received: by 2002:ac2:46f9:: with SMTP id q25mr22198700lfo.149.1588149579112;
        Wed, 29 Apr 2020 01:39:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:55ba:: with SMTP id y26ls5876884lfg.11.gmail; Wed, 29
 Apr 2020 01:39:38 -0700 (PDT)
X-Received: by 2002:ac2:4187:: with SMTP id z7mr21969079lfh.113.1588149578529;
        Wed, 29 Apr 2020 01:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588149578; cv=none;
        d=google.com; s=arc-20160816;
        b=02vysBM3oDZUVXa2Iz6rf7C4dZFgOM3V5EqgBjyI4I72YM3CPFK648hjpHbjRIdtBE
         WtQOQdAge50ThEmNYJ9gm0lvTr0YmCUMk23rTuCzW8RgPhPfWnydFFmT7RxGAvATRxpB
         BmHYlBo6bZP6bkSiclz0eLgWJf1NSugZ36D0IMQaXpCaeo9YP3dkALjs1dB38VknxAsI
         gM9g4xZCgnMg0ptMpN8E0ugpwhMuPoyEW79Ij34Fsb+d/fnx2ax5z7sked2hAeyoHTI3
         dmUeAnCTKjS7aWK7waWOE7TXR1bsCQ5W+p4+4VNWELaAFCOnkGKckWV3AM9WQSkn9VU6
         cG+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=rh3Usnw8bOex69mvNB+d0nBhcgpfGnAT8Fk1eVONbL0=;
        b=fkn009+s/2zvS7ILKIPTyZgHC+WYSOo4I/3BVon1rHcyaFz/SFeQZ6VI8VG5Dh+aB8
         KhdIxupyeo+/Sa3EliabkBV2GQaeD1nM72aXairssi1aK/6TiiqeanHVnJgMV7lsrw1z
         bUrgfQCgHma7YptM8miohtRWOWw6RMc6zW8sOz5wkQHX5K7ctFv0mIHRymx3Xswm/Y7V
         4RRAp9oMTw2lbKXicjtaMDYyxvTn99FUy8BT6oLqIimOK2rGJjMCH9BVZZkyC0f64IhR
         16zhnUr1g/mIlfW5pSS8gH8iK8tD9StgqpxLfT38GegiHWKUbX/3tCEattjvS0sd88k8
         KX2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id c16si97537ljk.5.2020.04.29.01.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Apr 2020 01:39:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-153-r75nPERROFeEoEJIwkJHxw-1; Wed, 29 Apr 2020 09:39:34 +0100
X-MC-Unique: r75nPERROFeEoEJIwkJHxw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 29 Apr 2020 09:39:33 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 29 Apr 2020 09:39:33 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Sami Tolvanen' <samitolvanen@google.com>, Ard Biesheuvel
	<ardb@kernel.org>
CC: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, "Ard
 Biesheuvel" <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
	<michal.lkml@markovi.net>, Ingo Molnar <mingo@redhat.com>, Peter Zijlstra
	<peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot
	<vincent.guittot@linaro.org>, Kees Cook <keescook@chromium.org>, Jann Horn
	<jannh@google.com>, Marc Zyngier <maz@kernel.org>,
	"kernel-hardening@lists.openwall.com" <kernel-hardening@lists.openwall.com>,
	Nick Desaulniers <ndesaulniers@google.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, Miguel Ojeda
	<miguel.ojeda.sandonis@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Laura Abbott
	<labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Thread-Topic: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Thread-Index: AQHWHOCVWHSK1xvpOUef91FgkS/f7KiPxyTg
Date: Wed, 29 Apr 2020 08:39:33 +0000
Message-ID: <6762b8d0974d49de80c3b398d714b3fb@AcuMS.aculab.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
 <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
 <20200427220942.GB80713@google.com>
In-Reply-To: <20200427220942.GB80713@google.com>
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
 (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as
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

From: Sami Tolvanen
> Sent: 27 April 2020 23:10
...
> > > Alternatively, I wonder if there is a way we could let the SCS and
> > > ordinary stack share the [bottom of] the vmap'ed region. That would
> > > give rather nasty results if the ordinary stack overflows into the
> > > SCS, but for cases where we really recurse out of control, we could
> > > catch this occurrence on either stack, whichever one occurs first. And
> > > the nastiness -when it does occur- will not corrupt any state beyond
> > > the stack of the current task.
> >
> > Hmm, I guess that would make it quite hard to keep the SCS address
> > secret though :-(
> 
> Yes, and the stack potentially overflowing into the SCS sort of defeats
> the purpose. I'm fine with increasing the SCS size to something safer,
> but using a vmapped shadow stack seems like the correct solution to this
> problem, at least on devices where allocating a full page isn't an issue.

Wouldn't you do it the other way around - so shadow stack overflow
corrupts the bottom of the normal stack?
That can be detected 'after the fact' in a few places (eg process
switch and return to user)

Actually you might want to do syscall entry at the base of stack area,
then (effectively) allocate an on-stack buffer for the shadow stack.

I'd have though that kernel code could be the shadow stack address
by just reading r18?
Userspace isn't supposed to be able to get the main kernel stack
address either.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6762b8d0974d49de80c3b398d714b3fb%40AcuMS.aculab.com.
