Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPMS2LVAKGQEJJ3MP5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 488CE8E09C
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 00:20:47 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id z93sf641073qtc.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 15:20:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565821246; cv=pass;
        d=google.com; s=arc-20160816;
        b=mvD9LWY3ykFRfIZtiEN0PolZfBCCkQSjZBEtUrKBZ/RoDP3ROcNqbYF0rLgAHpycqC
         ermAGwUMVdXgoX0bPrQyL33OnTndVPYodWBaYMeSv3TBvrQOI0ttBVRXohsgbnrk8W8y
         tseGwuiHrSClMdHQ05E7MxlHRRa/rWD4GQeTDqqP/igiR5ZLabW0aBzZmhfWy7kQcbkq
         GdK6ke3uGPNOiyZsCRXHPjZtR6VrL7B1aoQ8cluQAAf95JwxhAw2SJCvu2o0c8r/cZRI
         Takzsa20wwz7jL00pUSJkQ9GBYXpciWnRg72ac0fkK3oXZtMkObTiCvAhy5+5Mdrgj/Q
         ffgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0FuwuF97BoCLAiirj2+VgmicuYKvYPSrc9wwlrZvptg=;
        b=scOsurzBnNoNjQv+XVhTcr7PbtXhXZ12Avsbe3ZxRsjioGFAl9Lyq4h+MVyq6uZ+Eu
         i+fMg2oaPuY9/VRxaXbZIfaQbOXV7vOcDXML8cs6OXVW1mnJUIf+vP6917tKphL7MuZQ
         tpUUWvINOIzzSlKQjL4Xg//V5lCmEMZqNerFRMpiiOqWSZIcsO4WwVVGNomn86minkr+
         VHRb6b2sFQiwGGGcYcdysQQu4uZPj8B8Y+yDzv8Ls97tchq8H6DqKnaqeAE19KAMZBqq
         1ry9OhxL46YFxCFBreIQp8zk6gAaxZeLH72LsMbo/4DL3XuGieLIwwZ1FKEdEA8o32/5
         upmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bIzCRgoq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0FuwuF97BoCLAiirj2+VgmicuYKvYPSrc9wwlrZvptg=;
        b=PpR5yO/Qp71ndxsW18jXFVJny2VC2DI20aLiUCHtLy8jevrj8PfMmQ2EDNPf4xz3qs
         ZpgjkVEv11vyCKfr6RkQfG3FqwydxcuxeKLMR/5RFHkaBhtqGM7pFSfS7kCzJU6WbhDG
         7GGXq9ADIaGHLrtbibbafH57ZHrMkGvStSoceUis0GY+oYUn69MQITLnb3wAR4dW0bX6
         v1iKtik+G7AERSgYHJgbqwKnN88ltbaf7p3fQck2YTAB9uqVKN72H3TyYdiODK5qOtmb
         LUYQQr7lB8zwnpjbsMeQqYMifrBYCyFXNZpCOkPaldMypoBJk9oQVvRoUU6pYCPCKthV
         RNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0FuwuF97BoCLAiirj2+VgmicuYKvYPSrc9wwlrZvptg=;
        b=NSENMt1KZ5wvOXKrlY8LCCzizCZxaaUgpjbXCKz0vx1AIgzJZZwfRQcw7JfWmcGHlE
         mTY7r72vpglGkFYLbvXEOoxKoNjRnIl5E+w3ZPT3lMEtFXsIZIQIn/UEGVr+mKD5+2U/
         pWEjeZNtaMgOT5U3+ABQ94HgT+D6VT6I434prXqMt8qg3mH/a5LlLf+HTiblZYmnFhz5
         QXYInRHaagt4+JJ+sIrYwq2go5IWhGEvo57o76s889PApSdT4VpnBMzpB/zujUkHqB4F
         WfAjeg69DiuYx4Pzk7DJGs+dZL2d/PVqE+OquD5yQIyhYssnWj21elsRciI9B/no6EX+
         zsUg==
X-Gm-Message-State: APjAAAWs2A+u1zbAIwCd5kfQYK5oYNJrRbgXKRfprS7Xq/3WpQmY/t8k
	LKG1mqik/P5pZtUAUFQNOP8=
X-Google-Smtp-Source: APXvYqwSusJ5pJGxmSekXxeizWbJvUfRS2qR0yU14lgiPLZNEIGZEaDX/tPt1QeocK6R9/a7/IbXRg==
X-Received: by 2002:ac8:3f86:: with SMTP id d6mr1416432qtk.346.1565821245835;
        Wed, 14 Aug 2019 15:20:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:81f6:: with SMTP id 51ls560019qve.2.gmail; Wed, 14 Aug
 2019 15:20:45 -0700 (PDT)
X-Received: by 2002:ad4:41cc:: with SMTP id a12mr1384316qvq.0.1565821245607;
        Wed, 14 Aug 2019 15:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565821245; cv=none;
        d=google.com; s=arc-20160816;
        b=RK9B9D6lVHNLCbb4fZZNnRgDGFL6C3Gd3H+fMpIF8by5WKt4hJbMydlJt4aXMRPtPV
         roORkH74lsAlwDQATnaX+kh2Wq/SRba/RESG531rsdL1D2Ab9G1h4cp8MDpP7rHjj5R0
         IxlcDQkIVnbmxrbxhFXIMwxFuosJTBLvkqFSpzSxlsMPa+8501IpHmxU/1Ps2TAI7P3y
         ALtaMmoKlCoGbQXhlKkvL8V2vFX22OAmV3TXF8Y3kJ29X08Ae2FcEOKIhYGzkARUGVYM
         1aYNs4ha2CLPfJRL6/Yii76aUARJBftoKK8XfscZ9fbs57F26xyc6L3Rxb8j+64jKowB
         4wgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3k2w+T8PpskZpxccjtIiizfMIZhjmdjjp0d3COyTRJs=;
        b=gywISSgWKEas8qIZeuF3cQCiRy/UYUHdv1iiF88+FxQRI5vndzdmLx0b1Dn2xWFU1d
         ifYOrf6I5IYlI2OMhmeCNrfzCReO5lN1U4geOy9xoNui8uDd6YVqFKXL6ntszwazltCo
         vzPcteep3RHgfA1/Edl1+xrDmM8QIwh4lfVtnOylj7I2uJ+Jr5g6fsm5wvXs/iASZXMI
         hdoijSFVsAhvTxc6hEzmFp3WxR7dROLOvbLAViyA2PTJgZf/J3Y3kcj64KJz+4oUDDZO
         lrRQjdB5M1nd0qztEOaU+1+XTX/N6m7TwI+badQ2OVqviGBMh6+5KdYxcgd0ldwQQgo1
         JiBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bIzCRgoq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p24si78958qtq.5.2019.08.14.15.20.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2019 15:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t14so223721plr.11
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 15:20:45 -0700 (PDT)
X-Received: by 2002:a17:902:a9c3:: with SMTP id b3mr1454831plr.179.1565821244245;
 Wed, 14 Aug 2019 15:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com> <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
In-Reply-To: <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Aug 2019 15:20:33 -0700
Message-ID: <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bIzCRgoq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 13, 2019 at 10:08 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Aug 13, 2019 at 02:36:06PM +0200, Miguel Ojeda wrote:
> > On Tue, Aug 13, 2019 at 10:27 AM Will Deacon <will@kernel.org> wrote:
> > > On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> > > > GCC unescapes escaped string section names while Clang does not. Because
> > > > __section uses the `#` stringification operator for the section name, it
> > > > doesn't need to be escaped.
> > > >
> > > > This antipattern was found with:
> > > > $ grep -e __section\(\" -e __section__\(\" -r
> > > >
> > > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > >  arch/arm64/include/asm/cache.h     | 2 +-
> > > >  arch/arm64/kernel/smp_spin_table.c | 2 +-
> > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > Does this fix a build issue, or is it just cosmetic or do we end up with
> > > duplicate sections or something else?
> >
> > This should be cosmetic -- basically we are trying to move all users
> > of current available __attribute__s in compiler_attributes.h to the
> > __attr forms. I am also adding (slowly) new attributes that are
> > already used but we don't have them yet in __attr form.

This lone patch of the series is just cosmetic, but patch 14/16 fixes
a real boot issue:
https://github.com/ClangBuiltLinux/linux/issues/619
Miguel, I'd like to get that one landed ASAP; the rest are just for consistency.

> >
> > > Happy to route it via arm64, just having trouble working out whether it's
> > > 5.3 material!

Thanks!
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=80d838122643a09a9f99824adea4b4261e4451e6

> >
> > As you prefer! Those that are not taken by a maintainer I will pick up
> > and send via compiler-attributes.

Miguel, how do you want to take the rest of these patches? Will picked
up the arm64 one, I think the SuperH one got picked up.  There was
feedback to add more info to individual commits' commit messages.

I kept these tree wide changes separate to improve the likelihood that
they'd backport to stable cleanly, but could always squash if you'd
prefer to have 1 patch instead of a series.  Just let me know.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw%40mail.gmail.com.
