Return-Path: <clang-built-linux+bncBC27HSOJ44LBBNHX66BQMGQEWV6JXTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DE1364D54
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 23:52:52 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id p10-20020a5d68ca0000b0290102982b78eesf9749241wrw.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 14:52:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618869172; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOjLmc0tFyjBw1NBKF91b9ud8/Vq1mqtrjHmW9NU5BF1MG+VoV0HQihR8gvuYbcLsP
         dU4/a12C2VSLNdtcLKSIajuFCM8JPk7S7zR6aAeRu321Ti+wPkK75AQ81vuSJX9Vsv1K
         hMQJ1g3K2bU2cpEqSZi3QsuizN1lADanikvoKp8xlTjvYa5U0UdlOs9u9WeF26a0Njfc
         UNcdiljT59D18P/ypqeZ8f5pyM+bsBQfdp7F4G2l68kqo/R9L9kROnMJwR1DXJOHaJl3
         DzBvXiqUU0kzZtGg3NPwBPGlqyDzyCh5ZPctvUtUt7sVipUWu72ONu6c+g9Q1U6OgwOr
         2cYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=uwgiD0cgzSc0goSxahLb8gVcPjyFDg7cDxdyd2Ofo1Y=;
        b=F9DtwsbzPx3aI5Ta8dpBgcRT36Z6MMd6eZoTUCwlZZdCVFYgNkUSrBxKtBM0sVgjCa
         deOtbsTLa1DrkeYJhf539biapklLqcs8Dz6ybjoLK17W6vyjPeirwK9xK1eG5tEKBYf9
         78gKOX4SOqcqdixvUHfcFxwQJQRs1iXr7YfbYM+6DEDFWH2iw4BEcCnNI2KfhYQZYR7w
         p4V69jegWRktif2lg8GRpEprokkOIhwrHu8eXSOoR+c8/hbfmxUNEhXs+8zPHUvOBmog
         wpyA88oFmIR1xOj8xavAQuRZvQzyND60mUKV2RFC9pm4TSqNwUWIy9DJInCO5cLf48yw
         mNgw==
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
        bh=uwgiD0cgzSc0goSxahLb8gVcPjyFDg7cDxdyd2Ofo1Y=;
        b=DLnzN9ZzpVU2IBzSxw4mu0OkA440IJJewykgWwLN5XYiXzw2GIUh4kAli+cKzs0xVn
         /2hfTx0Msz42fQ4qtZtw6/pdY2nPKkHCbTEGJGHwInASoCg3MNQmQYORzWwRspUGq69n
         39Xp0YlqMnAUE0LSLEr1moVR38GeN/mcoQzzsjsMJfXMqD0AaSNLOWnEUjQ9SksStzI8
         phujrzaOaILRyz4dLxNS6UjUFEVJT09qIPI+KFGtT6mUYfGyAPata2g1nS8nl1dBj6h5
         UNAGxTojN955q4xTXpFAaMBjPz5JdE+1XZZpx8KqZ0EPRaWZsW/RfCaIPMf/Mg29vZS6
         pe+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwgiD0cgzSc0goSxahLb8gVcPjyFDg7cDxdyd2Ofo1Y=;
        b=g4DPBhDBoUqZCKbDYAqQzNTqbbayBBR/Eit6mteL3z7TPO9oEHUx33+1QE4uDqecSl
         bnOzpcX+QoJqmyi/B/zL9Y/hocOtMHfUCtHtgnpRNemUPsLIihlqLpGdDeA/c5u/Inhz
         Clkh2zjw14dcWQPb6NS1cZgl+pqPtbAkxw8PBdzZTCWO7n5iPWYxODolSE3PIJm8ILXQ
         rfb+8Ezcm+S0ifuSdKuGGfK2BAHNDh9t9OSQjMY4+SQdTy7zkG/eIIqV49lK/hZsWXFx
         EvHfOZAKafZ1WusoHKiEhUuQd/oGEflW13JPsH8TOvGedfCBjvnJ7/Iv/NCnk9SngdZA
         cHhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qCH+2O466kQFmBt0/Vt52t4Tm/5J2uVDdnj4toeIefYH2g72x
	VkiqMi1u2JacrTIqFX0Nm7o=
X-Google-Smtp-Source: ABdhPJwjl3dfbsmJfCrrvky9FdEnewI6BF+5ZIIV17D33CAJEvPfaEv+GBMI4iarkL6Y/fd3mpwMmw==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr1101681wmc.61.1618869172631;
        Mon, 19 Apr 2021 14:52:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls9521769wrs.0.gmail; Mon, 19 Apr
 2021 14:52:51 -0700 (PDT)
X-Received: by 2002:adf:e483:: with SMTP id i3mr17340435wrm.286.1618869171856;
        Mon, 19 Apr 2021 14:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618869171; cv=none;
        d=google.com; s=arc-20160816;
        b=A0baF0dhiX55gFW+5QXjX3BAAiKd8747BTh7IaPB2P4kynzX6mLxY34z7MSumr8/9H
         XosLcDpGO51B1JlPNz1ioujTE/HCscolPYbXKPLqharfRXMXK62HNuizeK+2PVXzNsZb
         SsRScyOLL2P3G3NBbXtuXE/Nb6eTuDuTkOmWIsxI50FkQpSsd3LlUCeKJ7NzV4fXOLGb
         W7DPwLbsiikZABqD6Ix/quE8qWxxQ2jxEnb8BuD1l6D1suqJqUVkwoeExMx91o1RQ4r8
         K71Eo4zF51LOzCLHCHi7XiCRJaYXTSqtbEzU/iwAdDBs6paBFEcAMNCLDvVPdJ6YLjPe
         tKKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=STJ2PP7ylHnVXwKJl0K3XBYxBlbwvSggd4BHgc93K8I=;
        b=XUn8zstWaHbTDt7yfyCyMKG8eHm+DmfkBbldncxhfkE/mM1HLpoP5EwDMXS6M6txW7
         oxfs8Q1KnVl/EERCXRWBqs+xfP3bCZnZkl/SDMSuNMCCzf/UZzlBcseIkdxTZHmJs0Z8
         2FSOGKhEvTTPd0sCgsPitP6nGaDwMcHI5fyW7Y0yNMUq8pOpmX1NC+VLizu4wMP3SQVY
         EHuB+V9kQKxAZ0FlsAiROsAcAsIyElaCx06ux+t2Xes04piWMvh67nbZ0TDrC8jHmRTA
         TsfJWCAju+uZTIMyYi5UscmHhU2EGTnjq0fYHW2gp/hTY2z5UwEOjwTxCwsp1aSD3I+G
         koTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id s141si295519wme.2.2021.04.19.14.52.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 14:52:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-122-5PwNCrjSNRSPg_lGIzvSdg-1; Mon, 19 Apr 2021 22:52:49 +0100
X-MC-Unique: 5PwNCrjSNRSPg_lGIzvSdg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 19 Apr 2021 22:52:49 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Mon, 19 Apr 2021 22:52:49 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Rasmus Villemoes' <linux@rasmusvillemoes.dk>, Kees Cook
	<keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>
CC: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
	X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra
	<peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>,
	"linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH 05/15] x86: Implement function_nocfi
Thread-Topic: [PATCH 05/15] x86: Implement function_nocfi
Thread-Index: AQHXNPeauSsNstP2FUia6sIzu9nmdKq8X6yA
Date: Mon, 19 Apr 2021 21:52:48 +0000
Message-ID: <a40525ea67144351a1baab99739fef52@AcuMS.aculab.com>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
 <2812c98b-3b5a-7be5-9fd9-2a6260406a45@rasmusvillemoes.dk>
In-Reply-To: <2812c98b-3b5a-7be5-9fd9-2a6260406a45@rasmusvillemoes.dk>
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

From: Rasmus Villemoes
> Sent: 19 April 2021 09:40
> 
> On 17/04/2021 00.28, Kees Cook wrote:
> > On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
> 
> >> The
> >> foo symbol would point to whatever magic is needed.
> >
> > No, the symbol points to the jump table entry. Direct calls get minimal
> > overhead and indirect calls can add the "is this function in the right
> > table" checking.
> >
> >
> > But note that this shouldn't turn into a discussion of "maybe Clang could
> > do CFI differently"; this is what Clang has.
> 
> Why not? In particular, I'd really like somebody to answer the question
> "why not just store a cookie before each address-taken or
> external-linkage function?".
> 
> (1) direct calls get _no_ overhead, not just "minimal".
> (2) address comparison, intra- or inter-module, Just Works, no need to
> disable one sanity check to get others.
> (3) The overhead and implementation of the signature check is the same
> for inter- and intra- module calls.
> (4) passing (unsigned long)sym into asm code or stashing it in a table
> Just Works.
> 
> How much code would be needed on the clang side to provide a
> --cfi-mode=inline ?
> 
> The only issue, AFAICT, which is also a problem being handled in the
> current proposal, is indirect calls to asm code from C. They either have
> to be instrumented to not do any checking (which requires callers to
> know that the pointer they have might point to an asm-implementation),
> or the asm code could be taught to emit those cookies as well - which
> would provide even better coverage. Something like
> 
> CFI_COOKIE(foo)
> foo:
>   ...
> 
> with CFI_COOKIE expanding to nothing when !CONFIG_CFI, and otherwise to
> (something like) ".quad cfi_cookie__foo" ; with some appropriate Kbuild
> and compiler magic to generate a table of cfi_cookie__* defines from a
> header file with the prototypes.

I'm wondering what 'threat models' CFI is trying to protect from.
Adding code to code doing 'call indirect' can only protect against
calls to 'inappropriate' functions.
You may also be worried about whether functions are being called
from the right place - someone might manage to 'plant' an indirect
jump somewhere - probably more likely than overwriting an address.
But a truly malicious caller will be able to subvert most checks.
And non-malicious errors can be largely eliminated by strengthening
normal compiler type checking.

A simple run-time check would be adding an extra 'hidden' function
parameter that is a hash of the prototype.
Especially if the hash is based on a build-id - so differs
between kernel builds.

Having the caller scan a list of valid targets seems just broken.
You might as well replace the function pointer with an index
into the array of valid targets.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a40525ea67144351a1baab99739fef52%40AcuMS.aculab.com.
