Return-Path: <clang-built-linux+bncBAABBJFMR2DAMGQEPDK45XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 246483A4734
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:14 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id r3-20020a05622a0343b029024761fabab8sf2293724qtw.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430693; cv=pass;
        d=google.com; s=arc-20160816;
        b=kx3UyXb6umk0ZMsy5c7EdTvrxauY+L6pCVoRjQWsgVbljAtbnPvLwVFlN0BOvkXZLF
         9xaSrUdL2O7n14Z0uDI9gTfLeKmfITjAl/FYOtUWCFquu6BxpVes5fORg31JkqGOR+xX
         L5oH7ne10yyCJnLr8hpK5oKwutsPGFpDfjbpfW2E4LC6D6sy49go300TTvjavWXyEGCY
         +ppwuoaccE3FFkiRpjnGrJRDJbC114Zt16f86zJhuQIPYaYvj67q+QFiyqM9b1APB9qD
         Ju3h6UwyHcrj8VoZhgpzj5ccOnVBwrzwCAB7LLVZYLoLeTyey12NVhYlZpvYpKWPsj0B
         0JzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=qMOnHQDsYbXczvZXdPClixyiEfaHrjPO0c+nYN7nevk=;
        b=nVChxUP6iQqf9EJuqsV28n7Kg02J+Q5USWRQ9hG5JcbNVp/P+MOmatn2C9LxdSD7EA
         P7GOwq9B1pG/HO9NLr8sX3fEzBrsMSuN4iDb5Qh0K6Me6Dxgg8HA5nCQH46Rhx+dSzPy
         2ZMQhzjs8OxpTQ033KOdl29AD22Oy86wH82ms0ksLt2hor5HMIfVNVvAWiLpQ9kOCGnI
         JoAcgvVJmgPE9UxJDhydN+QpmTJuzetpDF3v8ZZP4Jccwy+hBsGhkK7EpPKTljYhg3tF
         p5Re4HlSIaVoByCUvSTrnJ/Cwm2Jqjr/rcD+Eb6fM71hJgNwzQ1n+K858WB7hRmLqzY+
         GYRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=O59tkCKs;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=t15LK5QH;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:103 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qMOnHQDsYbXczvZXdPClixyiEfaHrjPO0c+nYN7nevk=;
        b=Hmb6+mtAZBYF2OumvrXN3A9nhNHZ0ZP1IbCTut4QHJ6lwXtBqlYZfJKetYDoSOOCjt
         69pE45M9stKqBguETh8bi8r3u3w9qCIg1m8veHY4+zCW9NJxoUhGhQzQuHydwanbg3S1
         /ljm6gNzv8wxhr5lM8aP7Nr2csQPalHFu6DiKWlrUWWNhHhzLHBgPF46njSgzPtO8r0G
         IcThTZXD33egKHhSGRgBoaxKdmP5/iJaSTTMr1zB0VqNNZAjMmniirk79ejMO2KpcAbX
         0m9blWMO7ykd1+KHh7nGZ44EnjkxP4klyG+iVH2Bsc/xrWHNqnIfxo+t6ZLr61NBJ5Km
         1fHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qMOnHQDsYbXczvZXdPClixyiEfaHrjPO0c+nYN7nevk=;
        b=HM9SDbflIHtxP8cLImlqBnyqF2Z9uz2Lw05zxBiwB/KbJpYSAwNQ6s5CpbjKp8nYHt
         QxJ+e4u8VrRMtuidluLG8w/hzhvnFsnD1qtoAynaoW+cCVeufrFmo3SpI3XyOwg5TDQ1
         l+9nR67MK/bCwt2J65fhoqnmi1fa1C3DUb0nuCcqXV2jsaQ0YJtoGx7ZDU+frq7xkgN6
         V18znj71RwaCdYwY7KngLkrpx0iLOmvnkNGkCtsYUJCOm2CJDcN7AdjB6147NTpRMmoP
         Q74apPn0h0XZBXuKiRihfeLXKQmvh51c0rNqeXaJEXNJKYmzmqS/d9fbxWyHS/au6mcK
         PxlQ==
X-Gm-Message-State: AOAM532eiTppdiDx2CTG88cE7x94B9g+w+JpRJvZXkg6Z6wrOZeKNXEy
	dwGLDlWhMV/769/D+8RvrEw=
X-Google-Smtp-Source: ABdhPJyxOzzc4ZjlV5I7EECYOLDO18Vwqx8+VF7guGnDfcGJzhvy6NscUrP26c3LtjZi6C7nKClcYA==
X-Received: by 2002:a05:620a:787:: with SMTP id 7mr4790011qka.397.1623430693066;
        Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5ace:: with SMTP id d14ls3880287qtd.7.gmail; Fri, 11 Jun
 2021 09:58:12 -0700 (PDT)
X-Received: by 2002:ac8:1285:: with SMTP id y5mr195301qti.322.1623430692764;
        Fri, 11 Jun 2021 09:58:12 -0700 (PDT)
Received: by 2002:a37:a457:0:b029:2fa:742e:472d with SMTP id af79cd13be357-3ab4370ba4bms85a;
        Fri, 11 Jun 2021 04:16:25 -0700 (PDT)
X-Received: by 2002:a2e:914d:: with SMTP id q13mr2647546ljg.179.1623410185242;
        Fri, 11 Jun 2021 04:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623410185; cv=none;
        d=google.com; s=arc-20160816;
        b=B9AHZBeYMofeSbTRVAl7VMuEQxkINiC+0lnyTqDcN8OwfNGffdGOjUTbdBBNxiqCsE
         jqjA12+czjzrAg9sWMfYLMMa/Ego5pldq9f+0/Tuln0ES/0seEa1WDF5ixJ5LD83nRWs
         0uaVosSACNL5dc5y+PAyM/CASI4c46779teXcf/NaXZLDBYO5tv4GPU9I5ncagBRQFzG
         0Idj1dax7sDmgQOfQVcNFxMFiixCeCLN/+MSFN8JlPEMJyXdtuaK2HoX5/A9z3ADfMFf
         B/tJdygi8gUOpWEKTS8sYnqACBKt+AO/lefbmDNuhqk4hKy9TGN2Cvn1kRzpJKOTvO0D
         b+0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=VzKvPjjK2fFjRIkmNl4t0mICArkki4NPshBRN7d49zI=;
        b=M5CGxCe4RrZs8zSofBAMHs8YKVA4sJu9qQnQa5syU8CSQefVIlJOpk7RXZREbkM/3W
         hGWgHnkWYcAsQV67a2HHDzegcHva4NZjnO6FQFJ7Ha4fR3IXBx+beq5rzI6ZV+9hhIdV
         udsnAU80CZ1CsaxuR3PqfLn83cJ+48VaPBs1nD02MnZBwRixTt+8vpr9tyhHYYfrsWrB
         E7nNhLXOjBmqwZ/G5b523RE3laQL+PQopJLt5IQg5rtwXVqUzA9SKBlv0Au/SsjLXEdE
         6/1QqEQKbrGDNUdZLzqzFaE8wGN1PaSLcA5DVcDyb+oQ+ALwQEmYsqMB9DkAOceqsp/a
         UB+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=O59tkCKs;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=t15LK5QH;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:103 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org. [2001:67c:2050::465:103])
        by gmr-mx.google.com with ESMTPS id w3si250005ljg.8.2021.06.11.04.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 04:16:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:103 as permitted sender) client-ip=2001:67c:2050::465:103;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4G1dZc441QzQjcR;
	Fri, 11 Jun 2021 13:16:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
	with ESMTP id tIT0xiDmclvc; Fri, 11 Jun 2021 13:16:21 +0200 (CEST)
Date: Fri, 11 Jun 2021 13:16:20 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: David Laight <David.Laight@ACULAB.COM>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nathan@kernel.org" <nathan@kernel.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	"mingo@redhat.com" <mingo@redhat.com>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"x86@kernel.org" <x86@kernel.org>
Message-ID: <1339363993.74717.1623410180450@office.mailbox.org>
In-Reply-To: <6c8315ef3ebb45b59dd531c634bcff48@AcuMS.aculab.com>
References: <214134496.67043.1623317284090@office.mailbox.org>
 <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
 <6c8315ef3ebb45b59dd531c634bcff48@AcuMS.aculab.com>
Subject: RE: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD
 < 13.0.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: **
X-Rspamd-Score: 2.46 / 15.00 / 15.00
X-Rspamd-Queue-Id: 67E3E181A
X-Rspamd-UID: 6ece5c
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=O59tkCKs;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=t15LK5QH;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 2001:67c:2050::465:103 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


> David Laight <david.laight@aculab.com> hat am 11.06.2021 10:07 geschrieben:
> 
>  
> From: Nick Desaulniers
> > Sent: 10 June 2021 20:21
> > 
> > On Thu, Jun 10, 2021 at 2:28 AM <torvic9@mailbox.org> wrote:
> > >
> > > Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
> > > leading to the following error message when building a LTO kernel with
> > > Clang-13 and LLD-13:
> > >
> > >     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
> > >     '-stack-alignment=8'.  Try 'ld.lld --help'
> > >     ld.lld: Did you mean '--stackrealign=8'?
> > >
> > > It also appears that the '-code-model' flag is not necessary anymore starting
> > > with LLVM-9 [2].
> > >
> > > Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
> > 
> > Please include this additional context in v2:
> > ```
> > These flags were necessary because these flags were not encoded in the
> > IR properly, so the link would restart optimizations without them. Now
> > there are properly encoded in the IR, and these flags exposing
> > implementation details are no longer necessary.
> > ```
> > That way it doesn't sound like we're not using an 8B stack alignment
> > on x86; we very much are so; AMDGPU GPFs without it!
> 
> Actually, give that LTO is still 'experimental' is it worth just
> removing the flags and requiring clang-13 for LTO builds?
> 

Hmm I don't think that a hard requirement on clang-13 makes sense, because you
can compile and boot a LTO kernel with clang-12 just fine (at least on x86).

> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1339363993.74717.1623410180450%40office.mailbox.org.
