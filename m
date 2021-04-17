Return-Path: <clang-built-linux+bncBC27HSOJ44LBBI655OBQMGQEYRRISDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DCC363091
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 16:20:20 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id o14-20020a5d474e0000b029010298882dadsf6105058wrs.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 07:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618669220; cv=pass;
        d=google.com; s=arc-20160816;
        b=FIdLdAjUCTprFlq58Ffu5jkvkIHEKub6cVOrthZG/P+tnKchRbYHBILsDg7ILNcVr9
         bKUSrmg7b6USMaCnnIrJOZXAp3yYviezr7JM/XsElGI6itGYwJ/iqnFtBZ2RR0E/WCPB
         R0A7TXuuT0gOKzP7zsYTE3YY9TduDcfDLoznT7r7n25juSusykXQRxqloG7EADRrJlpf
         eF8PfT93P8FBValGp9AbWo/peYz9wbG3oD22d0eVf2OvoAKsO6SG3/Sutc6LqQDZwzKi
         3CEP71d/wk5Cc2rtBc7DbVCQriuBjrDtc2+vJzrQIWtipF65/8diq7mN+bxOrqvjFT5J
         5Drg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=edifl7YDEZdf6UwNF09L7autK1GJywJqvBgOTAM6QlY=;
        b=Kg0wm7ihwP2AHQ7QA2mdukz8aO7oiVYIH77OCPBas0MnLVJS5Sn+a+ntbX9YVpgAes
         BpRv218i3GLgfE9b1v8NXcpb679rXI1T5aZruZdxzGai//7Px66UOTjqjkPw5xwWm8Uj
         DmtVXv4AER1kXyVNuwPp0VZawdTFEgGV/EIztjmHUYUMGmJNt8S9JFKjZ/QkgGxrqsUv
         66+ryBGHmdPjw6yZgTUeDcNUMD8Yy6aJXYR/JaoKqYJL8dDrRCMhJS0IdZYMIsG45rvt
         zcK2Weutl3xOI8dtlHHvojyUisWqLLVh8Nkgwz4TpGpcU3ZamSOAcHLn/ZDkJjnhg9e6
         ClgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=edifl7YDEZdf6UwNF09L7autK1GJywJqvBgOTAM6QlY=;
        b=O2GWmPaCGylqnjdbZKjycaNdsg2Q6DZkkdkroBK1YEsA/QE4TfJCgwGoCzNa7jF7SR
         F4VJfV41owjP2PYC19wdw3zUViDCfJDtN5iAxfp6+wQ1W2R5A4w8VL444+3yvyA9mhrZ
         xd8opL0DGwW9hA2RHJkfsCR8sd7QMRbhJVjmeqDfYdWWdW8c/kfWqGI1viX7y4Nyrjrr
         nKMu2ec0DSLXmawqpfiO2hAoMcrJ9DG1jz/auoaObgw+GpKxtvj9W0aUY1B4ZWraiO6N
         JTegRJ3/HjnkoPiZLLQ//CkOAtGYAgyoqtnfW5DeFYQTEWDZ3D2mIo3SeRatlMJ0mMHI
         /gLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=edifl7YDEZdf6UwNF09L7autK1GJywJqvBgOTAM6QlY=;
        b=BsUabevDvplAYQjfnF0a5Rk4+yc/cb4wq4zfDvPwvW3cKmo9kQ933fXowGVEBINnY9
         PYA5L6eARn3xgBUInGXkhI6/2gmLSluxk7CaGpl4RvHPDmRtlhYVAVZGvhxRahd3yYN1
         a05gfiEfymWQKHqZOVQ8+TZ5Z8urDBxiJOqA5VbNXDciPj2ZetOd2a7bRDVbbjXHkiZU
         4mZdH4p1g4Wgpf+rRqhd/XKGHk1gZJzBM1u0Qb9fvwFR1olngvLx0tPPGgF+IGdmaj8F
         tAqXb2CUqOTce6jSqakoyLdY/SQj8P48jUQ8C3S8kewYlHfZcVQmPQpIA/foq0ehkKut
         t+/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PfWfr188SnyMnCLRkYa5w/h6hRMXCuOntzHu31KSXZJxBDzWt
	qx2+z1/PZLcs4e7FsMeHWhM=
X-Google-Smtp-Source: ABdhPJxfEfaOBseNAfdBec4kZvVeO4ZaE90uFJKSIhdahu+FEEfe428omMHTLkwKq8rxND13NzMFaw==
X-Received: by 2002:adf:fdcd:: with SMTP id i13mr4451812wrs.185.1618669219969;
        Sat, 17 Apr 2021 07:20:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls5714829wmk.0.canary-gmail;
 Sat, 17 Apr 2021 07:20:19 -0700 (PDT)
X-Received: by 2002:a05:600c:3397:: with SMTP id o23mr12649506wmp.26.1618669219115;
        Sat, 17 Apr 2021 07:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618669219; cv=none;
        d=google.com; s=arc-20160816;
        b=GTe0o/fgxFPuzYm5UICGhQeMhpRjedWO+X2IfMrTRlO+6IW0wILnt41UfdJL5ksK3u
         cesZ9PQVcJzL1tu2mDLDZ6j2loRVC3KfAzxDfHmJNdSwyWsnk5yVZurwOq0GoDfxpNSz
         Ct4B5IHJpBhpgHqIZ9Tzvc3GnkYU8GaIFR8EgVnvUkADaJYVtwWoBJpq7x6hD05b4Ig1
         jIYgVOpYyYTFDpFvRB/klvlM3zTCwnNH0MJBP+GlJ2DBZMmf9q4i3wRLuwGjNqxVOAzA
         JdjLPJl8lzPu1PCsT9uUJeDoB304b6IycuzWazdZWWehjNcaSXYHvf+HhqmxW8Ic1dQs
         f/wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=RJXAGbx9vFXnk+C5NSZ1XtHcOxmN8tzU3st4M/qACds=;
        b=Zr5p/e/qONYNdT5vKyWQkOuXgEZSLpL9Alx2J1yqg6eE5svqJmjaQscQAhcFPahyJc
         SB8biqnW1A+wEFxmJb/nTfc82E/9rkTk1AhbGGRAfLkTDa4TLLrcDe21NCJj5R/jm9Yu
         +3Bp00sZdKxtXJPwA1PswELlEW2x+ZahKIOP3llVpsqQZR4LRMkHcM+c3eecnGZ4OuOr
         OmwqqlTkHuupn2f7Zb0LVYn3DK5UgC+XAqBCQpD9P01svDa6IFxMedPOcUN5nVAzLSpT
         UkzIzrO5d+bzpCf5lvje8r/ZE12BQIrkMjpAjkZcrQjzVdnbTcUbOErL5mmVIgogjSCY
         YFZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id t124si787484wmb.3.2021.04.17.07.20.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 07:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-238-fScdoKE0NyuCErCmE_g1LQ-1; Sat, 17 Apr 2021 15:20:17 +0100
X-MC-Unique: fScdoKE0NyuCErCmE_g1LQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Sat, 17 Apr 2021 15:20:16 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Sat, 17 Apr 2021 15:20:16 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Kees Cook' <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>
CC: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
	X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra
	<peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>,
	"linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH 05/15] x86: Implement function_nocfi
Thread-Topic: [PATCH 05/15] x86: Implement function_nocfi
Thread-Index: AQHXMw/PuSsNstP2FUia6sIzu9nmdKq4wQCQ
Date: Sat, 17 Apr 2021 14:20:16 +0000
Message-ID: <a8653ebf0a52498888f728524ebaa110@AcuMS.aculab.com>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
In-Reply-To: <202104161519.1D37B6D26@keescook>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
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

From: Kees Cook
> Sent: 16 April 2021 23:28
> 
> On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
> > On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > > > __nocfi only disables CFI checking in a function, the compiler still
> > > > changes function addresses to point to the CFI jump table, which is
> > > > why we need function_nocfi().
> > >
> > > So call it __func_addr() or get_function_addr() or so, so that at least
> > > it is clear what this does.
> > >
> >
> > This seems backwards to me.  If I do:
> >
> > extern void foo(some signature);
> >
> > then I would, perhaps naively, expect foo to be the actual symbol that
> > gets called
> 
> Yes.
> 
> > and for the ABI to be changed to do the CFI checks.
> 
> Uh, no? There's no ABI change -- indirect calls are changed to do the
> checking.
> 
> > The
> > foo symbol would point to whatever magic is needed.
> 
> No, the symbol points to the jump table entry. Direct calls get minimal
> overhead and indirect calls can add the "is this function in the right
> table" checking.


Isn't this a bit like one of the PPC? ABI where function addresses
aren't (always) the entry point.
IIRC is causes all sorts of obscure grief.

I'd also like to know how indirect calls are actually expected to work.
The whole idea is that the potential targets might be in a kernel module
that is loaded at run time.

Scanning a list of possible targets has to be a bad design decision.

If you are trying to check that the called function has the right
prototype, stashing a hash of the prototype (or a known random number)
before the entry point would give most of the benefits without most
of the costs.
The linker could be taught to do the same test (much like name mangling
but without the crap user experience).

That scheme only has the downside of a data cache miss and (hopefully)
statically predicted correct branch (hmm - except you don't want to
speculatively execute the wrong function) and polluting the data cache
with code.

This all seems like a ploy to force people to buy faster cpus.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a8653ebf0a52498888f728524ebaa110%40AcuMS.aculab.com.
