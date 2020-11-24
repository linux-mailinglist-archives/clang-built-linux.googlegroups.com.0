Return-Path: <clang-built-linux+bncBAABBAPK6P6QKGQE5J55EKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DB52C250D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 12:56:50 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id f7sf9964597oti.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 03:56:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606219010; cv=pass;
        d=google.com; s=arc-20160816;
        b=xKXX7rSZSuzPCnBNYrMmlcsdzkZrPw9g2VEm/T++6CzeCIv5PIZ0bF/prJBDOxDjtS
         33DVCSuP67GimjvsNKrPX7c7xtIQ1sk5YUMX/cCfrr3SFhxdIqB4Kt30Xu6dvryR+gEO
         PNPyMhOn8t++rUi7MIkpPN2z9CR5vXafHxDT/PMp75TF7yJ+h3qjilc0+YEWgemtGz9s
         gE4vlNRYVf54WnzfP8xKeqW2Fn/WDg5bscA6Yy7GnmbML5PHajrnI0VOwgqB5cYoP8id
         C4ie1TvtmMxsf3t0owmZUhMaGZcP1VGUGmrdDLpsBeRp8Woq9aM1AcCoCtszZ7+dEAFC
         eATw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QH/gKLo8XAmyPt6D/7sVfD6r7j+T4byVY9i5bjaTeeQ=;
        b=p5Jk8CdgKiTshe3FPWavxtxeWGH6HSxPYn4nu/VSApgTVkG+Z9KNHaTi5babjh0jaS
         28GKWK0AJ1sfYt4k0lpRxRNfw6V4HOXQC8md9cZHli8h7CGT+8yGiciHV0sGX+LxPHtX
         KA3bXIkvrk0z+sFxTu7ME5Ih17LM8GnzOe5whAb1wGWRGEa0TzqhcZY4W04QiOAGD6kC
         mN04eSc75KCLAr3x3YgJz2YGRIE46hp5Lhj1Rdvj2sY9Ud25L+V30jbBztp816/Y0FLH
         D1rROHhe5ovGlUV9HYoWiBEq7fxGgiFp+BoHsvYsnwA3SlWA0lKe16OZl5VCgPDU9MXi
         jrDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ubr93Bgq;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QH/gKLo8XAmyPt6D/7sVfD6r7j+T4byVY9i5bjaTeeQ=;
        b=XBI7gQMotWX6/uVJsAIEz6kDlnJJ+hzsitz0KfRoH+kT/0W9WJIF+yk4xPWSh8t5Td
         eooorLE9OwiknfPbNCGlXw9ZasNVSHS/Z5zxsS/+E55L814Lar3B58qFvcvrI/nfgRiz
         nh8pgE30seHPkFCsxgM2OmDeJgqUtIOXUhbYlsBnY6DwqH17S9u8zD4J5kpfdjli24w7
         FPJhqfvz/+n3lpCBjwkVkj98YjiCJe+LpkcNmwAsSAbZ/QWmb1UvI08QFy8zT8jswvkU
         6q9x8/u+Uh7rodAbNv6PUXBHeDibxK0I/RR7BiI+gaezeCHxqzTJfKYKnCkpwHCzbvUl
         5IRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QH/gKLo8XAmyPt6D/7sVfD6r7j+T4byVY9i5bjaTeeQ=;
        b=VALvJZ9Kfy4bNSpkHWCTmxrylxwLFagWrou62uDNGbzhSqzU1cgirhjajn+/EpfMDp
         +rMXhM/si8izpdr19XC1gpSCqXblqVHHgibJZ8S9fCx1AEnYyqCjfRuNk+4pIp8F7Hrd
         IIFlg9cNaUFWae8vVdvjDADNlzPIoZ6qY3dX72uVVnyj/lMX4I/T6akh50eTCdjA4qGS
         lIsFy6E/SzxVuik8fVDN0XDDuA+gQKUcbkUztePIl7m+/abDaNvERHFw90+FA1Gd4jvj
         cCMlBCyAmYaW45ajeJ1vZyQ3ScULceD6vZIcFfqXYEbO4fAzw+1ozZEzp934G73fTXgJ
         GS1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zayfa9HzeZLVcWgbrptgZ4gkVPmGdYNC9WHJNlM2mBBTSmmkc
	DhRtLGF27x2+B9FK+UaeTB8=
X-Google-Smtp-Source: ABdhPJz6TAZboT9tYyr9MIm5emrJHalUKp72Ym/MymT+CDv5XzFUq4NGw8vGuMb5mAyzhCCHT4gP1g==
X-Received: by 2002:a9d:754a:: with SMTP id b10mr3028708otl.140.1606219009846;
        Tue, 24 Nov 2020 03:56:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1ca0:: with SMTP id l32ls4245286ota.5.gmail; Tue, 24 Nov
 2020 03:56:49 -0800 (PST)
X-Received: by 2002:a9d:6d05:: with SMTP id o5mr3088961otp.158.1606219009474;
        Tue, 24 Nov 2020 03:56:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606219009; cv=none;
        d=google.com; s=arc-20160816;
        b=IHSjQngpWD7aX1qz5VOeUOBEQnD2tjTEVXueuKTVA+gFgJlCzP+FWO20GAFLT28rtq
         BS0qGF5eOn0ToWdtmUt3z8U9rONHV0heQuY7Fnv4P8sgsw2M813dfvD7mHW2ANW/Od9K
         Gt7dpVLaspPU0LxVnJ2oL34BWwSlzRtlvw6drdrLARE7NbKBgpQPvRTVW3diDHYx+BgE
         s7Etdah7XsV/BnpSTgK5I1jCavMJE+y1Vg0R+Ln6Y6fxuoucB/1dShRfg59UPzEo7AzA
         q1gAVVcM3oUdaMQ6pcl7qPGfrXmX/F0YjoL5hKuepGsZLXnhrUKNNUkYv3WkD5WV//47
         i5xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Izcp7VREgyCaRHkeOHharlEHLZvtUUoRvGQZnIJbdx0=;
        b=E1pCmDw+F9Vb+aYEhUQzTTVMMwlZENHnBvkMFocWmxnxlnag8iMjvmjHsRJr7pgWUH
         CzNIZ8fADcX5C3Osn7Xn+FfHeUyH1UvX7QjuTyDwq6KoQ9jSc1w41iQSgWMEWfNQpCX2
         hkcRmmhDO3tfVI6tXFaulsTBq0fMCP16OzCJXpuvEKA2oFbDtev+HiXsW24W6ETHisf8
         zwMV7bsRddHlEqQQ+ZfFgZT8+349J4iSAcu44R0gjL1G2p8MfR5sp3BOr6ExJODZAyPm
         QcjbxGRhgDWljSqoEQB+WmxmNganNkoGLlT9iV+z7mWscRQYWBcigr3XFZl+wG61vCuP
         a6/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ubr93Bgq;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si1013568oto.5.2020.11.24.03.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 03:56:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 579012076E
	for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 11:56:47 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id o3so19067309ota.8
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 03:56:47 -0800 (PST)
X-Received: by 2002:a9d:6317:: with SMTP id q23mr2756972otk.251.1606219006415;
 Tue, 24 Nov 2020 03:56:46 -0800 (PST)
MIME-Version: 1.0
References: <20201124104030.903-1-lukas.bulwahn@gmail.com> <CAG48ez1FqJYay1F=LUt84DVHd+k0=gXohwhTnwv=t1sv=hTSjw@mail.gmail.com>
 <20201124115058.GA32060@infradead.org>
In-Reply-To: <20201124115058.GA32060@infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 24 Nov 2020 12:56:30 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2rVKQ5UHzcycu=0QpjtSQ3Nne4Xre-7+V27vmCe9yfKg@mail.gmail.com>
Message-ID: <CAK8P3a2rVKQ5UHzcycu=0QpjtSQ3Nne4Xre-7+V27vmCe9yfKg@mail.gmail.com>
Subject: Re: [PATCH] zlib: define get_unaligned16() only when used
To: Christoph Hellwig <hch@infradead.org>
Cc: Jann Horn <jannh@google.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-janitors@vger.kernel.org, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ubr93Bgq;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Nov 24, 2020 at 12:51 PM Christoph Hellwig <hch@infradead.org> wrote:
> On Tue, Nov 24, 2020 at 12:08:40PM +0100, Jann Horn wrote:
> > > Since commit acaab7335bd6 ("lib/zlib: remove outdated and incorrect
> > > pre-increment optimization"), get_unaligned16() is only used when
> > > !CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS.
> > >
> > > Hence, make CC=clang W=1 warns:
> > >
> > >   lib/zlib_inflate/inffast.c:20:1:
> > >     warning: unused function 'get_unaligned16' [-Wunused-function]
> > >
> > > Define get_unaligned16() only when it is actually used.
> > >
> > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> >
> > AFAICS a nicer option would be to "#include <asm/unaligned.h>" and
> > then use "get_unaligned", which should automatically do the right
> > thing everywhere and remove the need for defining get_unaligned16()
> > and checking CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS entirely?
>
> Yes, that is the right thing to do.

It's possible that this didn't work when the code was originally added:
The decompressor functions are called from the compressed boot path,
which is a bit limited regarding which headers it can include, at least
on some architectures.

I would recommend test-building this for all architectures that include
../../../../lib/decompress_inflate.c from their boot code.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2rVKQ5UHzcycu%3D0QpjtSQ3Nne4Xre-7%2BV27vmCe9yfKg%40mail.gmail.com.
