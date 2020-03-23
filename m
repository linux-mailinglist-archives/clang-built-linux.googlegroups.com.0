Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB74N4LZQKGQECF6522I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id CC82618F22B
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 10:53:03 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id w6sf2357065ljh.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 02:53:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584957183; cv=pass;
        d=google.com; s=arc-20160816;
        b=vIl990I4fB3MC6L52KXsBpEevmOtirKLuYVh81hd6ldyKVkHSPLgccG37CYGmi4+Nx
         cII/fwHWR6QSF8utL1lFrHkIokQ+/t9DDb4ybkf8KAt4KJm9ifMiakFOjUp83VnEAGgN
         FnQVwV1uK0YVinlWmbS3qZuSRX0bWb+fyHhpFmN+zBFK/o1UUmg1Av0fESLR2RhQZhWq
         UKLu83FGYvsBSQq9KSeJTWDzSWGB+v+1ARrYJPKUr71vEM4KTfS/YC0D8AbQgyzauniX
         RKrao3FP8W2+KncrsjouceBDLQNiawG9t5uiSOmv+9L38RyKbvwO51wYXNwCtMeCHloz
         idCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VmNlntDev1R5K6aRjvWBPF4R/V0F9yfErWfWLuGY2UI=;
        b=QFGO49WkNZjdQ3xUHatNW/AwnyplG7Nqt8AUSOciyZOt98NpSrQDE9aZ1Wdmf2rFnU
         V4DFTREKlreLMGiuBg2VtELrQEgFdYtUYQHbMBK+eTpL4yQkQZjZWv1g9BgsDH8k4XkY
         gOkvna8nF21EjJHDkAeNZv2OG0CgtAQAHwXuF8ZbG9sBblDv76J45ip/6scFIMHqX1Fh
         LJe2GQE5S1sIBdzoOE87XGPiB+HewMNrVHCw4JHaHGbHBLA/IPpUldXwAUHg1l/E+uJQ
         9Dad/kUDWaTSk0k1auhf1b1/XxD8qkgctBo73PUAhIA69SgRy20yMOqtGzH81ecRJOe/
         hinQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EI2zKktS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VmNlntDev1R5K6aRjvWBPF4R/V0F9yfErWfWLuGY2UI=;
        b=gkmkxvQKRYpwwm2Bdx8dH7Khc9xLmiarf5HtdJF1CjKY/pThShQEg865a2cRHU6t9H
         5lMQMkEaJ6j0qqK5HYVNWTnkbauOhuFQYnPekA0kygRutR985Dol/7GTOwvSeIDet3P3
         nY/cLnamXtNi40TOkEUG+CHkzXCJEw/EwJE/k3NIdXb+QffZmkxi4ekY2N+uTjtMMlua
         5T88gHOsC+pksbeZqRX/Gai+zgO9OdEZkBs6jsP3pbadbDSFOOO4BHNeOog/Bz5JI2ab
         4J/nRmZMFFi75JH0bdYE0Gy/1zAPF6JRZ/uk775Cr5V2aRMIcfmgULVcJaPdOO/8Lt3C
         +C4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmNlntDev1R5K6aRjvWBPF4R/V0F9yfErWfWLuGY2UI=;
        b=CYqSSUQC7CKdHVudKprho2/IK7ukFx9dzHXX9N9o3yOJkYgHiR7kx++hwypz6W10Ti
         7VGvGj4jcM00ecIqVdB6t37yH5Bo7SoZBRIf4X5oI6x7NNK7Yx/uSnfScd7AwNnqdWqh
         AbyUx+LCcR1THOVyUEn70PMlky7z5gZR+f/BW+UgSxF3QnuEeE60wyCoy0XVlmAqHZ7M
         w5USGN3hvAHvodbjUceav5M6tyntXu1va+QKrWe3anvunpODkdwVjimXGCEXOpY80RRg
         4BgdEBQNFItSroPw8mvcRN674T7rpWxQVmbKW+jB+/Tw3x62iUfaT31thTLze9nF5Hl5
         of0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmNlntDev1R5K6aRjvWBPF4R/V0F9yfErWfWLuGY2UI=;
        b=JkNd8+T4Ci686vPUcshc+/sMckg6lY+Wji8LIxd7GNcwTHxL1zCCIOorCeJSO4+9Uq
         yLYNxtbSKf7lP22jrd7B/8lEKyMdXm5g/i89IvnM/DNrRCHMASu49Oks30ZZFpXJLS+V
         oUTgnLQvcxliBK5znv4rvUmtJ8N1R6FUNqkp8zI5QXJJehigYhckdu4hO1aAeVdDNY8B
         g8DzQ/PGYUNbmvCrBmJfEk2K8d3yBxuXvT2AXiCE+hum4qaUocwlcvYwDH0hpphS/x1X
         zo2orOOaqvdkt+HMbCEx/SFE+mmIdiJhyOOmqKRtPYQhejI3oxeL8VLkXiTLaED4nzpU
         ccBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1aiGtaIM6of8vPANMEdgVmaapqhOZ6ecH12cGMllKqaMQK3his
	2Vs1Cf7Jp4yPTmZcyyn1F9Q=
X-Google-Smtp-Source: ADFU+vuhB9dD2tZbG+6vYPEQgwtdzK6xrT7acjMakjYObpyIPhwUy3RimMin3Yf9FDM606XufEclVw==
X-Received: by 2002:a05:651c:30b:: with SMTP id a11mr2217256ljp.164.1584957183387;
        Mon, 23 Mar 2020 02:53:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls1943222lfg.6.gmail; Mon, 23
 Mar 2020 02:53:02 -0700 (PDT)
X-Received: by 2002:a05:6512:10cf:: with SMTP id k15mr12938578lfg.142.1584957182642;
        Mon, 23 Mar 2020 02:53:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584957182; cv=none;
        d=google.com; s=arc-20160816;
        b=kbIJUv6VG4pFtNp2pnptNVY8KVdF4smEuqHcG/5XMR+yNCRSPk9WGOVIHIKDvXhlys
         lDpg1dCvAxQGIjzLcuzUvN5luuez0tDh60WJd1ASB0Runb33n1OkMDZPYuX7BW5b46Xt
         jVhTdH2084/d9xz4umcgWG5eqHkM3pVQvDfdV/et4bFILG4FyO3DNzZRUts17D5wRycg
         hokiP5HPdyZF/L0FECPNQ0jYsFB3QG1G72qYV2AaVxBZ6Y3hOVfD1XLoDA2MW81aKGCr
         9tg3qb+GfwABSNllyMn/HE0yLKc1Ev5+ynnjNrOC0usQqR2/xuH2b/CSs8QhfdoZslnD
         Ad1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z+6XVznaFEON0f8iN5LEjyjFaUvEkyzSk7nWE3yhXyU=;
        b=IIg98/kfS2g0GJlRMXIC98wJ/t7K3QiR7Xrm6zGNJiNmQTYqXvBRbvhsNCKpSHITcv
         zoaXbDZFm2XO2mJ3HIMGO9yk9VPbGRIXb4zrM7kpprhwlER7niWMiNOaBfAAY+EO1HOf
         +mYw9gTlebpBL8GyQjinB6wPr14xZCbh3FdoFz0Ou1RtQfaMbDVg9CgkJZmfVOSp6YRn
         9L6loUcJE9/GVHdoMATXWIiYNc56s3LLCpxCJso5c3p0B0QmbRdW49HqMTGxCXO2W+Bb
         lvp09i++EPCPBaJ89sUu0knoS07Hc3TP974Astlhhtd45RDjiYeTLRFxV03NvDoFEbvK
         tX6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EI2zKktS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id e4si513417ljn.1.2020.03.23.02.53.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 02:53:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id z18so5064323wmk.2
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 02:53:02 -0700 (PDT)
X-Received: by 2002:a1c:4e0f:: with SMTP id g15mr12959874wmh.163.1584957182077;
 Mon, 23 Mar 2020 02:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
 <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com> <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
In-Reply-To: <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 23 Mar 2020 10:52:50 +0100
Message-ID: <CA+icZUUjP7e2zgrVCFenO_YJfpcOQWV++kuU5UWGKN_5udZXSw@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EI2zKktS;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Mar 23, 2020 at 7:53 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Mon, Mar 23, 2020 at 12:36 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Hi Jason,
> >
> > On Mon, Mar 23, 2020 at 1:28 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> > >
> > > Hi again,
> > >
> > > I've consolidated your patches and rebased mine on top, and
> > > incorporated your useful binutils comments. The result lives here:
> > >
> > > https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
> > >
> > > I can submit all of those to the list, if you want, or maybe you can
> > > just pull them out of there, include them in your v2, and put them in
> > > your tree for 5.7? However you want is fine with me.
> >
> >
> > Your series does not work correctly.
> >
> > I will comment why later.
>
> Bummer, okay. Looking forward to learning what's up. Also, if some
> parts of it are useful (like the resorting and organizing of
> arch/x86/crypto/Makefile), feel free to cannibalize it, keeping what's
> useful and discarding what's not.
>

Hi Jason,

I have your patches on my radar.

I have not checked your Kconfig changes are really working, especially
I looked at [2] and comment on this.

I would have expected your arch/x86/Kconfig.assembler file as
arch/x86/crypto/Kconfig (source include needs to be adapted in
arch/x86/Kconfig).
What about a commit subject like "x86: crypto: Probe assembler options
via Kconfig instead of makefile"?
Not sure if the commit message needs some massage?

Maybe this is all irrelevant when Masahiro has commented.

Thanks.

Regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/zx2c4/linux.git/log/?h=jd/kconfig-assembler-support
[2] https://git.kernel.org/pub/scm/linux/kernel/git/zx2c4/linux.git/commit/?h=jd/kconfig-assembler-support&id=ac483ff6fb4c785cd0b10d9756b71696829cd117

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUjP7e2zgrVCFenO_YJfpcOQWV%2B%2BkuU5UWGKN_5udZXSw%40mail.gmail.com.
