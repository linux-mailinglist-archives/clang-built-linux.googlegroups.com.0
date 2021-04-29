Return-Path: <clang-built-linux+bncBAABBDHVVOCAMGQEKZGN4NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA1E36EF71
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 20:27:25 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id h2-20020a05622a1702b02901b9123889b0sf20581468qtk.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619720844; cv=pass;
        d=google.com; s=arc-20160816;
        b=odKgdSntxvrHK1mpc5UhOBXy22QikqKYWkmA0npooQLcytaCA/MNbtUZUFnTpLdCCl
         xgWkL+NfEXr268dcSUYNBVTgmLug/ysVGWStDIOrWgEK5K+3jqzd5YA5FCZ3H+KRkiqr
         hBb23MyQLeDD50Wjr23nZWAeaFyaAbuiZJfyqYnDCB/EFki4nJw3dt0DO1/NzwlAxqx+
         /5CALcOXvRwzvvzfDmsmJSDb55aH2Ir4H5Y9oGoje9ITYjEwJZ4ksruPBNPUR9ezqJ2B
         2b5GH3n+syEumSqVF1b68z+MdhEcdxGq4AxBr2OSw/n9CSPjCRun+YCXe00XglZXXkLJ
         X7Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pUF0PoLhFlUMS3dHkBazf94m0WV9wjIUviyRBFxDepY=;
        b=awUYdJmUPAxsyt5e9gV9H84p8G53uo6UOzL34CBTTwZFg3HVH6eKVcr5DSDBLeowr6
         40LQmnj1849I+mZWN/hfs2Bd3p1Yf68Bz24gE92xoW2/C7+/xNQIn3NDm+99Yp8qCu3+
         AIdmxBjMcbbRC/xu1XpBcESHF7CAPgzLz5LB0QdXXkacBIQsgfiK38njM6T2bYp0Omba
         cA2FMTNqSdRRn7hxe3cmL3LAxPDUJ7XVcYk4jQG1sCIwdWLekGPz1+TvrhpJSeZgmsb7
         P2ceMmfXKDPIXXcqYrCqRHxfpxAvzCqMZ+/Ghg3glDBGWslwMFSaEJ7UYWrIrCadT3lW
         NquA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nrw6p1vO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pUF0PoLhFlUMS3dHkBazf94m0WV9wjIUviyRBFxDepY=;
        b=FVL9TysXXWSO8W6AGyc7nw51tLIqny7j3vFmEY53CnhgOb/PalLW+5VT0NRr8x4BrQ
         F1n/gwhbyEerd4up6+DR2HcNBaPbO2vrCSGHOLP3H+jGDaYyI3WDuaA3CNMYqSWI7Vfd
         dge0OAozSMhKhlN+XV8FCCt8YbrngULiNNXHNppbcu1D5dmfeFruEl4aX5zdOpTQscA3
         /z0VnTkAo3qPmXDpUhfi+UXSIdCxQfo/xCvyfVBlccQ35a48XFy+dejNQ7DxFKFjvSTD
         umBycuLuYqcaKHiOoa8aumEoORurBIJ7+Y128qYl649iyuUXxYPf7yaecFFjmJ0RR8k/
         eUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pUF0PoLhFlUMS3dHkBazf94m0WV9wjIUviyRBFxDepY=;
        b=PGU6h695JzN5vyPSdBrhADCuR2UH3BFLlqt/uVShAPf5FzfH60/hPKVFC484tYIjKI
         kkyEVZhKmM3+m3eXr6QjXH+92HBjq8nFOMwYUwEa77rOliOtD9NsEz4JXaJGsm3HZJuq
         2tR6+aEb1N9hCVqSc9x678Iy8B/ikg1yj87OFq3QdQo8MWf+ayh5q7A5c963m/rSKi5J
         uwNsZLgYZD/GcOe7odkE3kbcf28Sjde20oE4h9wDY1HLAcF4aC7rUNWzFH+T1bwdogWD
         VRmtPvqQSu3OAvVKBVQ1RI6zNSHn2PUViEDA22tYQK133/4Bb4eYcUyxCs4o2xENrEA8
         WJ0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JL/ULIj0p+kKgP7dbG06S/kurpePoImaVF1j4ISIqjiD21KmR
	wJLWgJjyUS7znZnDO2DLhsM=
X-Google-Smtp-Source: ABdhPJxzhlaDngb3JGxbx9/vOOguwFl4yLXZiMLJ6VRjHQB0RimzcZ9B56fQmUciB2yjxgsOikvrbA==
X-Received: by 2002:ae9:f10b:: with SMTP id k11mr1137676qkg.62.1619720844792;
        Thu, 29 Apr 2021 11:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:21ca:: with SMTP id h10ls2271252qka.10.gmail; Thu,
 29 Apr 2021 11:27:24 -0700 (PDT)
X-Received: by 2002:a37:a315:: with SMTP id m21mr1140425qke.106.1619720844404;
        Thu, 29 Apr 2021 11:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619720844; cv=none;
        d=google.com; s=arc-20160816;
        b=PyFWcshBuPWa/wdGgvSkMKBNK0dMLn0bnD5ddwPn/rpJqOt70Y8G1NPSdCIxoHrmHJ
         RISNC9yvihsJj1t0B7PYim1QMZakW5R6TxFAvPYrC9byQ/QB6g4CEVcoseTMrmuO2xZh
         YselMpBNX6nZRc6j8eHAknGnaWqTpoiEcggcRLCjiQrho5uOVwY7g18q8a4+vJq5DkQQ
         X0T7ur2Fsi4iOvJp8IOFXEn3yelIU/24Pq1Ao4MpxXCgHWvydBUnjhTLGNx47qpAoFtz
         zW3ed5GseiS/1HWcmUjp+jQOFW4mVKS4BtFnl5Ta2JAoyqFFGOkBzNKe0Gj1eJ64yzhV
         Q5BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jeySVn+2hOKNFVFci5HCbbmdxTSp11lgHxPEZh6MdM4=;
        b=gKieY5XMOJ25E3R/RmPdF2ogOydAf2ycwimjhe2JTYfAKaDnvMj1KOEFz/yTaQoWC4
         KZkQ0nTyRXrpaO2KBebI4K5wqEAG3CjuWM84QKQH1eA4PXP6kmvyEZswmyDWEvH9vumW
         w9EU1FmTqDSxNqYRZ42NFQMvNgh11M8D3ldg+XAwrDV4Qa7i/TeMAEDQvU8ucjpWfQIb
         gZ3IoePbox4yz1X+tTnWRmpn84vD2r+m24qYkjt1Ayh74pWf6aJXCVEAcA+P7Q7HY8FD
         xnOsvbbe03bUk8JtkmvtEe216szZjDkZ4g/jEm8JOOnWdvzO54lqC4Z4TKL5YIXnzbQs
         SV7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nrw6p1vO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p207si317017qke.4.2021.04.29.11.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 11:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 225F761040
	for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 18:27:23 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id o21-20020a1c4d150000b029012e52898006so307919wmh.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 11:27:23 -0700 (PDT)
X-Received: by 2002:a1c:a949:: with SMTP id s70mr12305016wme.84.1619720841576;
 Thu, 29 Apr 2021 11:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210429150940.3256656-1-arnd@kernel.org> <20210429181716.2409874-1-ndesaulniers@google.com>
 <CAKwvOd=5sLHssCf0Umfh+E__TjSwpxtO9K2MYVcXEhxvVp8okw@mail.gmail.com>
In-Reply-To: <CAKwvOd=5sLHssCf0Umfh+E__TjSwpxtO9K2MYVcXEhxvVp8okw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 29 Apr 2021 20:26:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1S0ct832wN0aM8ZAKbbQ3=w2_vSprhzQ4rLN=Ue=L0JQ@mail.gmail.com>
Message-ID: <CAK8P3a1S0ct832wN0aM8ZAKbbQ3=w2_vSprhzQ4rLN=Ue=L0JQ@mail.gmail.com>
Subject: Re: [PATCH] smp: fix smp_call_function_single_async prototype
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jens Axboe <axboe@kernel.dk>, Borislav Petkov <bp@suse.de>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Juergen Gross <jgross@suse.com>, Jian Cai <jiancai@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Michael Ellerman <mpe@ellerman.id.au>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Huang Ying <ying.huang@intel.com>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nrw6p1vO;       spf=pass
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

On Thu, Apr 29, 2021 at 8:24 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Apr 29, 2021 at 11:17 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > (replying manually to
> > https://lore.kernel.org/lkml/20210429150940.3256656-1-arnd@kernel.org/)
> >
> > Thanks for the patch; with this applied I observe the following new warnings
> > though (for x86_64 defconfig; make LLVM=1 LLVM_IAS=1 -j72)
> >
> > kernel/smp.c:515:19: warning: passing 8-byte aligned argument to 32-byte
> > aligned parameter 1 of 'csd_lock_record' may result in an unaligned pointer
> > access [-Walign-mismatch]
> >                 csd_lock_record(csd);
> >                                 ^
> > kernel/smp.c:516:14: warning: passing 8-byte aligned argument to 32-byte
> > aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access
> > [-Walign-mismatch]
> >                 csd_unlock(csd);
> >                            ^
> > kernel/smp.c:525:14: warning: passing 8-byte aligned argument to 32-byte
> > aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access
> > [-Walign-mismatch]
> >                 csd_unlock(csd);
> >                            ^
>
> Perhaps roll this into a v2?
>

Right, I just did the same thing. I wonder if I failed to hit those because of
differences in configuration or because I tested the wrong way.

Either way, I'll give it some more time on the randconfig build machine
before I send out v2.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1S0ct832wN0aM8ZAKbbQ3%3Dw2_vSprhzQ4rLN%3DUe%3DL0JQ%40mail.gmail.com.
