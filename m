Return-Path: <clang-built-linux+bncBC27HSOJ44LBBXFU534QKGQEKKFPUNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B8A248166
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 11:07:41 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id i15sf5838870wmb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 02:07:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597741660; cv=pass;
        d=google.com; s=arc-20160816;
        b=J9CsPcb66VTEVauQuJXVd92ajRPYwTD4Xf8mwY34BX8nqfPCnyD2s8HL7feEnCnfkZ
         9JS+FyQBik6+OArQlKst8081aNPiZU9NF6R/K0v3YrlDl9yNGEC4GMOu1BHIapXFfonY
         oy9S0p+4krNvr3QlgRnYh1wqglUbLhcBsv/gwGwUk27ANyteRcF0M/0/g8n5p6rb8Rjy
         /L4ehbMwaafETLPiSdU//onLAkWKHtcDq2i5Qj9mE96/6KzAfW+q3BjJeFM9wtuT0Koo
         gLfUdbnKDkTHedUeaO3BfpubCRf8T5JVvzWQcr+r+7X6ktxAvbnXZFt6RKSK3qiHsdzk
         YKUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=0nUV9T2Eqs7fVJIHcf5SEnIZ+uSz1G+ZNHUZ3WP1hUM=;
        b=wdSYFtKhelgUIMTKJo810r47TxESgdBylSDiVe6L9XXnapBnlosmeSMSvRaOcxZY04
         h8tXD0qACOoFNM6rugBVdZn1mt9IihMJ5PqMVOnOlnO5eqYHKg1gUjp6RWv4LOI9qp22
         YzchZ6Ep5KUdjy4e3chmM7WYkxr8m0QmjoNyqUdwOQAkXJbRhThiPgExLkl/Mn9x6DED
         +d9OQuDjuVQfXjGbit13tyXVYecM0oQeb4pGxlILFiZIfJuPGYEq2/0034gIQSyOaRTc
         F93ol4DEdCcYiisfKKO1G+pxwX8t1OugVoJTrDCN25iZcra+Jq9wX5ol0ds0Q+TakXQ2
         a7Nw==
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
        bh=0nUV9T2Eqs7fVJIHcf5SEnIZ+uSz1G+ZNHUZ3WP1hUM=;
        b=eG8bHgO8O85QfiAutRwRdctjRjijoEl++9/HtzBRjEneJMFSIWncFuFWDQ08KQda5Q
         nQtYUfseYs1QLaaNt/NIYQ7+hqoKEykPSQRHdWMZ8RYQA1Quwai50GHSsga2h2b1JST9
         mWu76ef2Vrsa0qtVAtixFDgtrEiillM0RS/0tNByaw+LL5Q3Z8O5kvpCvmpiaXCW03d1
         7np+6NleIFRvvKp7itur0pLZ4z0QQ2sCECe8gJhpP+lJhPtmizoAl2c5ReGZM6k5SRoz
         R4VEKzen9g70ojMoRLX3Knj20NUbLej83Y1HQXpHR86tFSvgOK9VlKJqacXi+HQDTARn
         PRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nUV9T2Eqs7fVJIHcf5SEnIZ+uSz1G+ZNHUZ3WP1hUM=;
        b=Ita6c3Wym4wRlizYtpNdZa5nv2NbSAr2kll8BLSBq8o+7GV6FmcDNyzmBE5owPgkr3
         EkS7w/OBPnMOvtgmDdEXjJfztuAEGqDaA5kmbmmA6wgAxV+UBxfpH2vCAHb2vgkd5uFW
         q7tVONV9sfCsC4WNE3p3eeF+vGICpmt7u0onWrTdqM3ttZNFLOVzw5wYwep3Rg+5Iu3a
         aJFuRoiFFoGRxtln2CffCepUhvIS6GMFpTA5lp81mLEHhAISwTGS/ApaWSMnOW68Pzoh
         7EiG3qzpGyMW+AdiqejB0phoq9JnjHGt3L46vj20Gpc2O8dtAU3+qPq85gjjnax1qTLd
         xeMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QVCL59dbyANvDsGSVAo9+YSAPxaLwNLfgzp/knS8n8YzJWIEb
	dtJOnD1R1k+8LDwufI8VPOA=
X-Google-Smtp-Source: ABdhPJxoFxyYNYExwZdHxD3VhNrefNhfV5Q7lKwWI44aN4PIsVeVqURUaJa2vkfclhVVCTMzcKKyiw==
X-Received: by 2002:a05:600c:410b:: with SMTP id j11mr19231325wmi.38.1597741660707;
        Tue, 18 Aug 2020 02:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e78f:: with SMTP id n15ls7207wrm.1.gmail; Tue, 18 Aug
 2020 02:07:40 -0700 (PDT)
X-Received: by 2002:adf:f08a:: with SMTP id n10mr20360193wro.351.1597741659971;
        Tue, 18 Aug 2020 02:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597741659; cv=none;
        d=google.com; s=arc-20160816;
        b=hsdlccwOvqqMaoSRImv59kSO23R6cQc19IjI3pntaqkZk5zugOKVlalYK4M6beoMEw
         erSIYD0foOxu0rS7gHflfJOb65lJeEeky0KeZ64ZRw25/VupyGYMPC17gt1RMQ8oF3j9
         n4vvfViuxju+djLBGr7F/+rgHX7zlb8s4Ne0904Wag3RLkO3UcDfUQOYSCTHilZjhtGE
         2P6mocFAE0aaDy6zmtNGBHhAo5YPAe2pFho422RY8UZB0vMXWKqWxlfvJfM5yupaKLNT
         zKTb0Y89UEht+ofEB+szGLlGaXTTLXiZo7LYrN71Q6RO5pptzy9smmfzQq5JFLiYE2Sa
         Rbpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=VKqwlxnebsE0XbsVhDZZYG/kN9YVdU99IjfAU+GKh/0=;
        b=NM1eC6eOYTLHYOf0HggtZ33oQPzlasOoS+DrtuBIVj585SPdpd3XY0YMpmAZVwTdc8
         IFzsvL7jatZZJXulQuSUXhQDtWa2PMs1LzhCzMeRkhvyn8IykP9D+uwA7AWnKqpEQh+B
         MeOgP3z7L5K7QXSm50IPxkUdGBGzI6w5ZOZWbMTVTyeQCBICi4PKdwCtAwSiyOVdh1gA
         az6xHiOuHhJxAnWIiIxvTf740nvmxx+yB/ZG7CxScEyMrqvKXa8yAK9PxCLXFJ/oP/zE
         aqlVyjAXxbZErBTe0Lkx+8YTAQ445AyjE8PpgVCmkBalDnYia9h6ao7bWwsvwHBYJYAm
         83/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id a67si768880wmd.2.2020.08.18.02.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 02:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-26-lkGMLaDiOx6CrMB4-riCIg-1; Tue, 18 Aug 2020 10:07:37 +0100
X-MC-Unique: lkGMLaDiOx6CrMB4-riCIg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 18 Aug 2020 10:07:36 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 18 Aug 2020 10:07:36 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Joe Perches' <joe@perches.com>, 'Nick Desaulniers'
	<ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, "Arvind
 Sankar" <nivedita@alum.mit.edu>, Kees Cook <keescook@chromium.org>
CC: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?iso-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>, "Eli
 Friedman" <efriedma@quicinc.com>, # 3.4.x <stable@vger.kernel.org>, "Vishal
 Verma" <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Joel Fernandes
 (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, "Ingo
 Molnar" <mingo@kernel.org>, Yury Norov <yury.norov@gmail.com>, "Alexandru
 Ardelean" <alexandru.ardelean@analog.com>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Rasmus Villemoes
	<linux@rasmusvillemoes.dk>, Nathan Chancellor <natechancellor@gmail.com>
Subject: RE: [PATCH v2] lib/string.c: implement stpcpy
Thread-Topic: [PATCH v2] lib/string.c: implement stpcpy
Thread-Index: AQHWdMVrhS1zOqzdfkiDV9gXdl2oC6k9heNQ///z8gCAABlS8A==
Date: Tue, 18 Aug 2020 09:07:36 +0000
Message-ID: <fc8713c175ef489d9ada72561ea2eccc@AcuMS.aculab.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
	 <20200815020946.1538085-1-ndesaulniers@google.com>
	 <202008150921.B70721A359@keescook>
	 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
	 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
	 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
	 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
	 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
	 <20200816001917.4krsnrik7hxxfqfm@google.com>
	 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
	 <20200816150217.GA1306483@rani.riverdale.lan>
	 <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
	 <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
	 <77557c29286140dea726cc334b4f59fc@AcuMS.aculab.com>
 <3ae89ad82dca2cf0adeba9d7d07f3c76ce577c39.camel@perches.com>
In-Reply-To: <3ae89ad82dca2cf0adeba9d7d07f3c76ce577c39.camel@perches.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
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

From: Joe Perches
> Sent: 18 August 2020 09:32
> 
> On Tue, 2020-08-18 at 08:24 +0000, David Laight wrote:
> > From: Nick Desaulniers
> > > Sent: 17 August 2020 19:37
> > ..
> > > That said, this libcall optimization/transformation (sprintf->stpcpy)
> > > does look useful to me.
> >
> > I'd rather get a cow if I ask for a cow...
> >
> > Maybe checkpatch (etc) could report places where snprintf()
> > could be replaced by a simpler function.
> 
> You mean sprintf no?

No one should be using sprintf() so I typed snprintf() :-)

> Reminds me of seq_printf vs seq_puts...
> 
> https://lkml.org/lkml/2013/3/16/79

At least that was a choice in the header file, not some
'random' conversion the compiler decided to do.

I've got annoyed in the past by it converting:
  printf("%s", string) to puts(string)
now maybe the build should have had -ffree-standing
but I'd only got an implementation of printf().

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fc8713c175ef489d9ada72561ea2eccc%40AcuMS.aculab.com.
