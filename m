Return-Path: <clang-built-linux+bncBD7LZ45K3ECBB37J7T5AKGQEZMJL4EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BCF268812
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 11:16:32 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id i23sf1039310edr.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 02:16:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600074991; cv=pass;
        d=google.com; s=arc-20160816;
        b=JZVJeJmrhgJ4kx6mhbgR0vSos1yxa0ka4H3m0nfOsGNo43HXZTeNL879toN0zcgpld
         6JGWi+Lg6la3xfv8f32eVzntUflbGBAFBb+rpcTxgJstaLCbpj6dwe/tn4V0PuzZqfVo
         Q0dfCHh/adSS4gLra8TO5FasMjXW9LO9uOA/flS1hNJe/8FUKopqhCmphvF2igmxAwfp
         Fy7EED/hi1l5E6logWYTOQ3WZJWJTt3VmdPXFagxHIkw6b8JQS3snE+KYWCFORo6Nj3/
         dvnIWweTaVAA3MNfRNV0/ua9p1Q0c3Ok5oAqfFI7UAj7m6NQy+sde5m+Iq0Zit4A5jkr
         Px4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FQogxfhZTyBmcP/rwiiML8zWsH+HeJe+vQWBP6foU4Y=;
        b=ZovCfq6ZENSaclPMUHL0iLVl7l7/k1fyRjWJ7/40Z6jXnZ18bPJBT916qAsBxV+avo
         HznvaUkNQic28RHc957DhdcAvRZp62amTUfTm822ePCSVXrpUrNlMTZJlpCVxDapokhg
         Nko6ZjWx6nwxkGcmRw7hrIpSHJ8sYkfb8hJpS5AKXroFAv35Xzd4JEKU8K5TaflhCNk1
         4jVhJHRsncMJwTZL0pQQXaO38Jh9stwbjPKOBu10Qkhe65OuGaM47vNbZxaeeNSdREh7
         s8O9j6O4IhwIAJZqgv2ZU4vRM86PRbthyWnCAwSCy2BukxRNibMgFJPGYIf+JwRst4ji
         7sTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gy6frrKp;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FQogxfhZTyBmcP/rwiiML8zWsH+HeJe+vQWBP6foU4Y=;
        b=Tf6e5Mkp9ICvF/Xbfa603smXknKKLbyOO28c/9QIYa3WLJqMWxmx0W09VT28Gixd5N
         V1BO3QmuUMatQFYI2ZDniYmQwgg0RFtaIuzoihWUG9jxPuXDmEM8YgXhkUXilKwofRNi
         gyRUsGDVQib3D4iEcvxK97iculzELHPrSG9avRj5PDodsKaqyGsNKpdj0RsNES5om6im
         wGsb90RjDhZXAQQU78Mb+PnP7UY76Uatsbrqp75Mid4rTrAzWoTtxtjqP3kuk/7snmSU
         vqfENpFNGoZLGonBBDU8E1H0V7mJJTjlVNEtQ3lKi6muz9u+k/Zuq3qns4auE6xBHm06
         lIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FQogxfhZTyBmcP/rwiiML8zWsH+HeJe+vQWBP6foU4Y=;
        b=E9LU3ki8UHYmGkSWCr7pvWodGMOPzC9B1Eyc8GKIGzx0P0awIRji/BxH1JNy14SjLI
         i4c7jLBR2ULAPHqfy693F6TnWnwyV1dA5nD3gkakyNbQvoAcUiJcgEUAcl68z9zRoHcw
         pLxzMLpa4q6IyAjT29iDhOSsAW+77oPOoCKtFZ1kz+ldWlmrrsODoP0Mp1OHPMAKycIx
         OprRzLj51LAEmBijenSNWW+8Rf0t/rXzyOBeSue+abNbMLBf3vCsN6DIFTWIBRtqDuVS
         JIxK+K6c/fgB/pO2PEhl2qK1KumdaSECNKu0o0qfgoYg2U4adFQfZpJlLv+3ePrTwAef
         UYhw==
X-Gm-Message-State: AOAM531BeHUNT9KJc53u6iXoEBNNMPRK044n5FyU9xqi1t12GERqOKkv
	IPJGYk9xHDnpptBRZQeUVEI=
X-Google-Smtp-Source: ABdhPJyeyoiRSsNjRdFiN5P9u+b5ubJmJrD/XrM2kNhwhkf09QkQ86LA4ZDDbrSttGm9msL1iS/o1w==
X-Received: by 2002:a17:906:2e83:: with SMTP id o3mr14301429eji.47.1600074991772;
        Mon, 14 Sep 2020 02:16:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c9c2:: with SMTP id i2ls10209082edt.2.gmail; Mon, 14 Sep
 2020 02:16:30 -0700 (PDT)
X-Received: by 2002:a05:6402:7d2:: with SMTP id u18mr16384726edy.69.1600074990692;
        Mon, 14 Sep 2020 02:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600074990; cv=none;
        d=google.com; s=arc-20160816;
        b=zr5j9pKgmSHsWuqCytDkii7mXmNjFZSdhFTJ/HdQ7V/3BKcac2bp2LKxudqHe0hJi8
         BV96ZS1wiaRiB2m7ODG/TLLzRSbzXsZBeieo9iK3l4pDJmj4DcnMpSKxipyzTqZ2QajY
         3Q9NUn6hNwSFW08J439g863Nu4F3XiRVNu/sO9a1eUq7n8R0alu2r12p1EnIfJq4k9fm
         ZAV/S3hLyKdX3Yb63L0uo7yLULM/G4kJBwRHYShkdxj2qdTX3cNCpZaQe2hP27QBqcko
         quKkEE9oc+IjKdFIhQdjgi1nXU8dyJq4AODopOtxf+L19Hek9rRbFQ0HEIAJaNvK4lEI
         oXIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=XXy/wM2htl8rGdlFZEO1cSyO0iLpVUoMkmwaTLnGh7Y=;
        b=k4/qRET3WHsYE+F3ZEM+jLJh/sQIKIzS7+1D8DU/AW23pdOQYLgBScc5Aua2AO6eod
         Y/esAhu48i8DFZkwUIXE4SaZFwIUdT2HXrkdEBDT1UWspM4efsxGH/pbH3oYrZVoIr6F
         QbEpCj5UJ0hPeYA65KnDIPJ67yaak+cZR4f3n9oDALW1jTLuKTCQcSmf7LQM39K1ih+G
         8bcxfXK0QXI/m5H6FWCPTqiLxC8u+baR3xNYZrKGGwPXk+6/EBjAHuUVO3jwmitOcJUa
         6jS4BV3JeZLpzD+HFboulabzR0Teg2uu0J9SSagyDoC+V36/kGHOCoi1Niiml/6zTxUE
         d3yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gy6frrKp;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id dk15si277446edb.2.2020.09.14.02.16.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 02:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id l17so16767596edq.12
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 02:16:30 -0700 (PDT)
X-Received: by 2002:a50:fd0a:: with SMTP id i10mr15856716eds.277.1600074990515;
        Mon, 14 Sep 2020 02:16:30 -0700 (PDT)
Received: from gmail.com (5400A980.dsl.pool.telekom.hu. [84.0.169.128])
        by smtp.gmail.com with ESMTPSA id c8sm7266991ejp.30.2020.09.14.02.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 02:16:29 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Mon, 14 Sep 2020 11:16:27 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
Message-ID: <20200914091627.GA153848@gmail.com>
References: <20200812004158.GA1447296@rani.riverdale.lan>
 <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
 <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
 <20200825145652.GA780995@rani.riverdale.lan>
 <20200913223455.GA349140@rani.riverdale.lan>
 <CAMj1kXFnuzdmPxCytCbFdgtLo8Bb4k247ePgbLuZ1mANEn=azw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXFnuzdmPxCytCbFdgtLo8Bb4k247ePgbLuZ1mANEn=azw@mail.gmail.com>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Gy6frrKp;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Ard Biesheuvel <ardb@kernel.org> wrote:

> On Mon, 14 Sep 2020 at 01:34, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Aug 25, 2020 at 10:56:52AM -0400, Arvind Sankar wrote:
> > > On Sat, Aug 15, 2020 at 01:56:49PM -0700, Nick Desaulniers wrote:
> > > > Hi Ingo,
> > > > I saw you picked up Arvind's other series into x86/boot.  Would you
> > > > mind please including this, as well?  Our CI is quite red for x86...
> > > >
> > > > EOM
> > > >
> > >
> > > Hi Ingo, while this patch is unnecessary after the series in
> > > tip/x86/boot, it is still needed for 5.9 and older. Would you be able to
> > > send it in for the next -rc? It shouldn't hurt the tip/x86/boot series,
> > > and we can add a revert on top of that later.
> > >
> > > Thanks.
> >
> > Ping.
> >
> > https://lore.kernel.org/lkml/20200812004308.1448603-1-nivedita@alum.mit.edu/
> 
> Acked-by: Ard Biesheuvel <ardb@kernel.org>

Thanks guys - queued up in tip:x86/urgent.

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914091627.GA153848%40gmail.com.
