Return-Path: <clang-built-linux+bncBCIO53XE7YHBB45XZH5AKGQEPTURA5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 138ED25DD2A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 17:23:33 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id n2sf1041739vso.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 08:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599233012; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1J3u7bkOSf0LYI9N+eXxArFDRILaUY6tAPUvSK6fsJNC1R+1LmhrFOypVuIVTmiOA
         4HpmvW19gAiPyCYTTsqmNLaGLhU0plj1Oz94Y6LYAn+nIqJ29PxvRUK8eQOFudodmcuE
         ys83Hmsm1b7n9cI7CEP8c8zmj0RherEdGoz6Ip1f5wZOKJ17K4RvFAHOr/9d9hZEAUAI
         XRSPHtG9baJXnaIqnOFCxrPjhdRCR2MrNOUnI7AvTlKdee2PAzqcYZXtkYTbgktbgoRB
         lcRpUt014OExHwR3nPJkspxKBA4YGgBXPsa5sdXHh7ReJvvv3QK3w0UPii7ZQdr1obPa
         mH6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=UhlaoGvZSqwlKFVD+dcCe5HCyW93PnjMrMFT4pTsjWc=;
        b=z666736V/3jphJXGh23Mo9e5GEELRUAzluFR8w69MrfCr2X6TMznRn7AlmNILloNmD
         rZCEopFOMLbGYaPkb1Kfp0tQRsV4EoUt+BEKp+ByiygTALZXDjzeUL1G8PhNOPaitgPf
         T/Y8XxBNlmZ7WRfw5qV0qavKcVfLkkfEnhF8gRYu53FTjWTws0mvyD9ut2T5wzFyBEI1
         9NA10QVcKdJlS3gGDQJxY3EEFDrljQtEihmRqjIfp8oMA08DNvpJD0vMfT+G/8biL2kz
         lTx98Xu05B+/PDWK683IuXWNRVvuo2Ch3s1nrNlFG8NvPdJ0Qw4U7vq2W70zwsxVy4Ce
         9QOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uXPuB5RO;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UhlaoGvZSqwlKFVD+dcCe5HCyW93PnjMrMFT4pTsjWc=;
        b=WgIVwnx/CJX+dg63ugtkIecFfmcpZgRg6QcuYdazBBe5JEUle92e+xRw1KrIKmxXh3
         f6i2KzvRbsFVOd71ixIPZlLju8dlGLCs68fmLaog4apu/kEMrflyfZn3Rz0/+MFrtHOO
         F8kYbFH5TSJcDpG06i5R9yL8vPq7/aRfLN/kRyX6sHZZhBNkOjBN4xdZkRt22cT1rTuw
         33/giGl7nvvfECxHRRYsJEFXJdERaYX62MI+NL71wc2SgDFZXaZWtgeOd8LJ57HPTJbk
         wmUAx9pfKlZ3BbGM3ULWyO/BohGwFzY0AXpsKx7BJTaiWS9qOOJ+cyTU3tr/DhpO0emr
         MLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UhlaoGvZSqwlKFVD+dcCe5HCyW93PnjMrMFT4pTsjWc=;
        b=ll82hlM/rfIoFmQaHqO1pw/yGw+FLEA7JVQu2L4PqJS2ZzLRU5w5rVz1xOO2E3dJEt
         NslGAkpLtzo1xIs/EU/Fhe9MvNaAE76sLZmUfJLcBPeg/DMvqArS2SHCfZM6Ff0YTLq8
         BgQ950mBuC7+7vDjBRIJAu31GyXRQsxN0K392OBx9xIP1W0RjHVG/k6my3EBpuSMI20h
         ZiLlyroqFfvKbSdUB6RxmnlU8Ehq/8WKzUCCq2IzsM+dFk05i15QfDj8GS9JnkHUxRP5
         XQYLT07zRUur3RKhqh8+oW2e8MqfUtl3oTAx9Wi7TMmkWV16axGRB0nNrBV90wn4nkn7
         T/aw==
X-Gm-Message-State: AOAM5315LxIdaTECR+GQUA1OU87XGfT5j35B+SZeyrX7Rrhfs0B6T8DR
	yCT7Fr2LZQvp3md/unqRPXs=
X-Google-Smtp-Source: ABdhPJxRVqx8Z2vsDCwmttPBc1titgXRv3Kr+xFQaMtI9gwd4tn4N12fN2qneZ8j00NIpMQNriesdA==
X-Received: by 2002:a67:5f05:: with SMTP id t5mr5697292vsb.190.1599233011838;
        Fri, 04 Sep 2020 08:23:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2517:: with SMTP id j23ls775941uan.10.gmail; Fri, 04 Sep
 2020 08:23:31 -0700 (PDT)
X-Received: by 2002:ab0:1390:: with SMTP id m16mr5178545uae.132.1599233011405;
        Fri, 04 Sep 2020 08:23:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599233011; cv=none;
        d=google.com; s=arc-20160816;
        b=GQNVTfyE56jstWwoj4whTBAOvBA7gyW2cma4hWQIcGfr4MGGpunnH5WS3qXCWnB6it
         O2dLfia/R/TzYLq/M6ezuw4+4RQk9DfkIQV2aLMMOrgHzR2q5xJiDksbPJSg2wusakVY
         CyU2hEGxWB7f8WhITSIBcNABFkW2Kg0R6foAuiQRzX5u2Om3REoUq1WIJWoXG9QHT/46
         sHpehIzX9cLPeGlpFKA7TAH8jXa1b07pvIz/SYdyH2TjhlCeHXfa1MnYZ0a+HRyBtjDc
         M/X+GI+cQDS2SFikElBo1KqfX1W7XIeweM4u1O1QbSVtTtQ9Iio+lPdD9sgTEx6PSqmB
         42+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=V2LPJ4nXa+V+etvxBl1uYInuURWvbjbvsWUWYcsfsKg=;
        b=e/JFqBM7zN2MAUSupweft7Bn+YpXftwfcC3noh3CI0YZWkv35sG6wP9E8+L9/V3Nku
         xyGaLW8vuffkf++IVHNtEGAptziZKXmM2Vq6reRH3gM8hkoxUNEEvSIQY9z6Psh+xBgT
         flaaDKE9QmyG/Rq+lpD62k16ru85DpL/3WWBiHaxoofkcMPoAN1WIIhusty7Ad8QJ73g
         5LOKrUZktX+F83sqxhRq+9CErz3gfEgcu5zTOawXFKc3Qoa6qVxv0KzSuxj2gdHImstH
         sZbQgKTu8e5FC8WjYZ4e23YNG+LyF0Ijy6yuW9jpyZQ4ZQL+D3hkhrvsXTrobqilAJ5C
         M09g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uXPuB5RO;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id q10si50505uas.1.2020.09.04.08.23.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id b13so3190708qvl.2
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 08:23:31 -0700 (PDT)
X-Received: by 2002:a0c:8d4a:: with SMTP id s10mr8482213qvb.34.1599233010961;
        Fri, 04 Sep 2020 08:23:30 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id f7sm4620078qkj.32.2020.09.04.08.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 08:23:30 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 4 Sep 2020 11:23:28 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
Message-ID: <20200904152328.GA205145@rani.riverdale.lan>
References: <20200812004158.GA1447296@rani.riverdale.lan>
 <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
 <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
 <20200825145652.GA780995@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825145652.GA780995@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uXPuB5RO;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 25, 2020 at 10:56:52AM -0400, Arvind Sankar wrote:
> On Sat, Aug 15, 2020 at 01:56:49PM -0700, Nick Desaulniers wrote:
> > Hi Ingo,
> > I saw you picked up Arvind's other series into x86/boot.  Would you
> > mind please including this, as well?  Our CI is quite red for x86...
> > 
> > EOM
> > 
> 
> Hi Ingo, while this patch is unnecessary after the series in
> tip/x86/boot, it is still needed for 5.9 and older. Would you be able to
> send it in for the next -rc? It shouldn't hurt the tip/x86/boot series,
> and we can add a revert on top of that later.
> 
> Thanks.

Ping.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200904152328.GA205145%40rani.riverdale.lan.
