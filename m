Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZG472EQMGQEAC62U3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E27409DA0
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 22:02:44 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id s13-20020a5d69cd000000b00159d49442cbsf3065624wrw.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 13:02:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631563364; cv=pass;
        d=google.com; s=arc-20160816;
        b=UV27oCuMM/uEySYX59NuSSC8+fJwp1zcYah+N/iJN4k+N3774z6KbeInTAYsxPKZoH
         TR/AeQfzQzrY5sxXKYk9rBxlfI2GrkV9ZYwGHel7fis6kaBH9ASiRXsnoOdwlyY5XKuH
         1R7Rkq63zKBbpy3N277J/gw12QcIYwv5+uicjhWKCwvP8M6QH9d1KOZsnO7twx8XsE/v
         ZwuaK3W0vX5impbSyQNC8rh1jIQyA3MbUgC1Ul3VzSMDzQJJeModHu4sRwlYKMM2hR3A
         Ks9suP7V/7Cmn8Jw+vIRYOhuNsw4i2fK9prPZp0hCwIKRMlWmsopVKV43BzC4PXBrFqx
         p6Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UoeEr4fobLEUGaMjPM/cPuW5nYYwidWwLi5Hl75c0Lo=;
        b=vg7EdOEQzd+mIB7ZIhsXfDEv2Y5jvrva/H+nf1j7ApJh5ckZCqlCvBC7bIbST8cT0J
         qfx5zJytud0CN+//OgIUXXqUhlMb0wKXwhs9ZB71ecrbhjOqQOdsq3bOmLhO13r8AaKQ
         JXJ0LrgOeQyRmGkAC+uvBnx9gh8yyo1VehrlIUgpI0hVWVIWJCY638wRKTMt8LKYhjJF
         N0zK/eB/CWEwvJYB8dwO5rqw/U+i5FKfyuDweMRylLu0maQ2bpCWmC0kU+vY0aAgV2h6
         UDr2egl01d85csJDSz+WaYTKefn/I3+21FAs8bThMp/IRCmjRQtgG3Uuy/Wyaefp76/X
         rV4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=UtwnzoxI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UoeEr4fobLEUGaMjPM/cPuW5nYYwidWwLi5Hl75c0Lo=;
        b=nOhmt78V4o2rjrLyJnC6Fk9QTh1khgRBRnyHoHBaQ2ExzYfz+YUf9Xb2vqr+rA6vdZ
         LmW+L007NrV/Wm591N92KNw5ndWt0QEc8FjIbdXRrHO4EwAbmIdkSk4yiRny1tbn+NPw
         sfhoUI6pzuNryFRqYQU/tZSdHdJ2JiREr/dxC/vnaGwTU4viUvJNhFViTpOox7vQPig0
         YGI3NIk5LQTPjMXXncWJkWhnwjRJ4TX274InsIUZMDMUL9C6OhO993SshCwWeGRREgPp
         UStkOCC0RTykd0WzmCeHp1XSHFoPvHUWNuxc+pLjG2w9pQ0y8APH5z3FS6a9/k5kBlEq
         NecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UoeEr4fobLEUGaMjPM/cPuW5nYYwidWwLi5Hl75c0Lo=;
        b=vdlXWCIi2sZkU5R0i+/iyjYkyFyEcG5l87kM7md8PO4Y7cmQ8bN5oh09FamFSDz2Mu
         zOXgludZOU37mtvEds3zzTw+fiAU+4MyLFt4cmueLaf9LBdl1JUiCMhS/B/Zmv8ku15o
         wkdaEkHkjcvN4MFKrC+n9HrNig1qN1U720E8Xc3IiNZgLAwnKvp7Wf/vKdXV3VDs1UPu
         TY0OknY6hw87dPMWKEHw1XEfny6H54JXv4j4GXTMKcMi2rsdxlKXAuZyNUAuzgFDgGg1
         eyx+qGeNhsfBlvi+R2vpxWIh8bkQkMvIrOgrcAWMGV1C6yw18nxmZnPGlRaAOMpQNuUe
         S8+w==
X-Gm-Message-State: AOAM53157Hla8HrPzSHT8W9w1Fm6BFOEEDqc/kDARVzggN122siVY/Tv
	hTCObGan0MZATRhbL/9RyTE=
X-Google-Smtp-Source: ABdhPJxdiwmGSxZJDATHUMFWXc4s9l7Ck51FYZM+4IPlBwyVN8LiQ3urfUBDG64+EG+DdLPjMOJyRQ==
X-Received: by 2002:adf:f507:: with SMTP id q7mr14855255wro.7.1631563364663;
        Mon, 13 Sep 2021 13:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c2b2:: with SMTP id c18ls3596833wmk.2.gmail; Mon, 13 Sep
 2021 13:02:43 -0700 (PDT)
X-Received: by 2002:a7b:c351:: with SMTP id l17mr13093690wmj.120.1631563363792;
        Mon, 13 Sep 2021 13:02:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631563363; cv=none;
        d=google.com; s=arc-20160816;
        b=pzdybsfbztgY/A2RYHzJr99XplWSq8MqaHdZ0Tgl7kd0GbqBlRP7M8jVoITc71O5/Z
         josJSUOtmk+qE92q2hnSyQ+K71+DAjPkOPykWIqmgVJcCGleO8gq2JNn4n5xR2x9KOf/
         BZQeT5W2Yp/5eIc5epWN5Me6t1mAREVbnllR1+j/WoR9ZG4Mi6I3g0Olz905+pSkEpmi
         cm0q3Pjcr5Lf4/uG61Xyxhpy5roeFdErKUq+sydQ7VkbHxZ2G3ASKqQmvkXF2+6Ksg8P
         iOsqAy2AH5x/saWShQf7T+LJsneAhI3Hu5D5awaLOHALawpLraBqITluh7IqjUZst+jY
         FAZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gVlem88uR6+O3AEpNn6Yh2wjkDnIsvdG9SBuzHecDPY=;
        b=PbM7MSG1VC82CJuff8VCDpejWlZTyONtvTlSglj6/40f9YF54YzsM8KoEJhQZHX8/s
         /xfwoEvvgNj98B/eIV7oW1Pxjfx9BcJGRD/0sYTDjBhNChyECWoSR4E2isL4oa2WAo2b
         XsoaFR3iyRv8ymyJI5M7f4B+VRzmnEVdq7D2u7edCj86MXQ14/8VZu8rvYTBPF95Tvg/
         DPVkU3HgSUy2HEHZFKv0ArzwQLH5FaAnfUpR1U1S+UYVJrPv9S44HuPgwcFNcoyXhIlp
         m4gcKTIixPSPgY2Q8nINHSCChg6UK4U0TrHcQ7uGP+XfhuT4tJgWdUJY039hpX5/UfCn
         MCUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=UtwnzoxI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id g23si558002wme.2.2021.09.13.13.02.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id x27so23540989lfu.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:02:43 -0700 (PDT)
X-Received: by 2002:a05:6512:139c:: with SMTP id p28mr9744729lfa.523.1631563363038;
 Mon, 13 Sep 2021 13:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com> <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
In-Reply-To: <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 13:02:32 -0700
Message-ID: <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: sedat.dilek@gmail.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=UtwnzoxI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Mon, Sep 13, 2021 at 12:57 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Sep 13, 2021 at 9:53 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Sep 13, 2021 at 11:39 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > There's an issue with my alternative approach
> > > (https://gist.github.com/nickdesaulniers/2479818f4983bbf2d688cebbab435863)
> > > with declaring the local variable z in div_64() since either operand
> > > could be 64b, which result in an unwanted truncation if the dividend
> > > is 32b (or less, and divisor is 64b). I think (what I realized this
> > > weekend) is that we might be able to replace the `if` with
> > > `__builtin_choose_expr`, then have that whole expression be the final
> > > statement and thus the "return value" of the statement expression.
> >
> > Christ...that...works? Though, did Linus just merge my patches for gcc 5.1?
> >
>
> "Merge branch 'gcc-min-version-5.1' (make gcc-5.1 the minimum version)"

Ha! I pulled+rebased and this code disappeared...I thought I had
rebased on the wrong branch or committed work to master accidentally.
Patch to stable-only inbound.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmN3nQe8aL%3DjUwi0nGXzYQGic%3DNA2o40Q%3DyeHeafSsS3g%40mail.gmail.com.
