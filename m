Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGVV536QKGQE3VVNYQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 992DD2C03EF
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 12:18:51 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id x196sf1709987qkb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 03:18:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606130330; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcGF1cjcDr/IkXcUtlBF2lq56wlLdvom9Hbmn41EU6xYGWwfk2Kfo3YY6Kfcys8ql2
         ei2de79/67sSQZWrqu3FjXXs+t/x5+BgY0Hf9srbTJfW7D4c7/TFfSPxc8OdQ4xvF9NB
         CoRGlpGLn2fwYdzjhODMlVQElManuqRfBUVzYK2VfqrCXLWrBGsNlVivx1ACJH0WnJsz
         vK/TxyuUwFB1+c6Vo0HFzOrDpPzCWzbHLK2E9Gilt5rpTWY3XaIkVk7XFhjaKU9lMgZq
         sfdRQpdhEsuTt8kIyuQ8Rdpya9lpZAjG4YUttbFZVVx6j4TS7eGphSHJP58NbaYsDbKE
         S2iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=xNSboiXeq91NYjNduEAjfE4IjopFfUPA6YoE/Xu/zvs=;
        b=zGnaLKiEPI7r8Fh7eFcAK7/aVe64v1rqSeUtOaUszoAA+e/5SkjOW2Ka1yrk/J1RBt
         rQzc8JqkqmF4nySNiZS5R9WPf9IOVbgdP12n95fNhfGola2uy0kHuLpf6blw67WFUffS
         NwYtW5DCSsnlu/heZevJu765husaBvyo2PUOvEI1S6iUOIqW6/mgVhIZeyjZecMCmk1X
         s3hGR9NPr+zBLH7FRCjGmTLLcnk/OWlBzToaGQjVS/Mi3Jk8pF8mHPryutaSKtuoHoOu
         QMljfLdFzCje0bYSDn9mDyNNmkO/gxydf+SQTOp2LeLYLUgLWAknRVS8oI2mIMTdAaiY
         HoZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MqmHAABn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xNSboiXeq91NYjNduEAjfE4IjopFfUPA6YoE/Xu/zvs=;
        b=tjyQME5P6cD5DcmzfR+ZKu2Lr9t0FsLK0W11AtyWpFtNIkeDheOP7D4F1J5+IOCj0S
         Mn29ix6v791gwh97PZ9W2RGBws3BM+L4e7+XnLW/PomjtPMVppoVtDKGAPifVvLlxpOn
         USdpyWdDSrQuOUShQsSAq74/w3nOhRnmb2ivUyc5ifQXaZiVTjAFAMq2vuLuQamVGFBL
         zOCyLGIGFLaLYFs81kLHTFYN9qTEgv9gp24b332G+lArUNfzP1Ip+hN8ot+p04oISUeE
         F1gthZ9fzNm2s8DJ0HkyJ97U5GymlwkYdPjtaoGNrCANqrh7L1h8lJ79tItTiJO4eSNc
         Plug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xNSboiXeq91NYjNduEAjfE4IjopFfUPA6YoE/Xu/zvs=;
        b=dW0MY5SFmEkVHHDWYdpe5ZGj0w7YV8QDMQZFzAmdwVD01QkESzSVI8gpj7XjqwrxLE
         ScZVGYSClw0Wlv3AddoHTzQ9I0txaxivK/wtr4suol6KunuZ3JlzepAzFIwYLTPf/l2U
         2y32cRmZpBiK9kksV+PLWhWLNfJHv3R4isDE19zgGL25sYdceNTqUUOke0s2G2/yzRLE
         N6FoGd9wqPa3AhZMtkIlZQDNDXQ0/CiK/jjrhy8lK/7P1aBc0tv2hXhInlZTORhmjOcy
         4eap/jeRQ18xwTP9jhzN3vbNsYvdYBnMuNY62h2a2x9c0RE+2ggVriW+3aTx//m2980S
         Czdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yoDMtTVICyypMzTwzDV/MgWxls1rEum7K1W5gD9VNf2Ldc1em
	oomDTsqTfqtnKwXsXOZqEVU=
X-Google-Smtp-Source: ABdhPJwG453TyVVs962xwLTCihm39MtXJcHY76QPfkb038jC4x3JsYw3hP1Jscr/vvnjlaTEFUCZaw==
X-Received: by 2002:ac8:3797:: with SMTP id d23mr27280645qtc.205.1606130330544;
        Mon, 23 Nov 2020 03:18:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6655:: with SMTP id j21ls5012354qtp.5.gmail; Mon, 23 Nov
 2020 03:18:50 -0800 (PST)
X-Received: by 2002:ac8:5450:: with SMTP id d16mr28943517qtq.33.1606130330202;
        Mon, 23 Nov 2020 03:18:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606130330; cv=none;
        d=google.com; s=arc-20160816;
        b=f5GQt46kVunC5VBC0sI833663Ho8wWzL1/4wA+RjHDtxYy8UydMqcJRSPd9k9bNgLo
         bdEtlOPNZqhabySPM2MH/Wmyy2Yzz/qDWw+0WRwvUn27rFf8L9yXsl6QU+aighfpwvtD
         vxtLmFcULMs+JfVfpQx+c9ncURI15/GVypuN/sCzujpHFmRvl0aGROVdiiY+mpSy43yn
         Xz16B4vMVP76yraE64SQHCmi/lA6+fpNCALsmapv/6yM73VSb1d9Hwvfna1rCRwsdXF0
         qNoa6LFEYDCrdYDNeJoV+hW/+ons4zzK7Y7clMwtpGiPUODdN6tcAkPC8H/LvkuZKVkq
         33eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=v3Ya0vKYFsorXl+gwNrxF+if1F/H9gfmTii8TZdd3G8=;
        b=oV+8UjHVj5MbL7pbcwWqH4Zc39nx4jN7pAA4VdSkChyYRwUx6Kz0kEi9dTQ+wzMVhh
         ZHvLsmqtYyqdzo2pVLN7pkEtblYCAE6lkRVUvkX+k9EQ/GAWT6PrxqkgPOW+9aa1qjNP
         OE7C9CGaQqzI3Xf+KK5bJ8Dz3AwLcZ+yzclc87ViFmAYzHseeJeV6wtOQ2SwLlscU/G9
         6MiwAWa3wQ1TmXPm3Cob5oXhbYQim5mPcMYyC6YaEypSoxboAeZgxdf3uyLpODhzYpDO
         HewwPrUiHm+qOI4s92XtOW9mWy6880BZMKlwXpRtjStgETwOBnHJcfHScQ1PKo8eOWW9
         WW/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MqmHAABn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id n21si664437qkh.0.2020.11.23.03.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 03:18:50 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0ANBINjn009531
	for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 20:18:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0ANBINjn009531
X-Nifty-SrcIP: [209.85.210.170]
Received: by mail-pf1-f170.google.com with SMTP id b63so14585418pfg.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 03:18:24 -0800 (PST)
X-Received: by 2002:a17:90a:c209:: with SMTP id e9mr25229153pjt.87.1606130303346;
 Mon, 23 Nov 2020 03:18:23 -0800 (PST)
MIME-Version: 1.0
References: <20201026220331.3896226-1-arnd@kernel.org> <20201027014219.GA4058050@ubuntu-m3-large-x86>
In-Reply-To: <20201027014219.GA4058050@ubuntu-m3-large-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 23 Nov 2020 20:17:46 +0900
X-Gmail-Original-Message-ID: <CAK7LNARSn8D_0Gq3072SrD5ijzaqjLGxN=ttLZp5ay-G+adFUQ@mail.gmail.com>
Message-ID: <CAK7LNARSn8D_0Gq3072SrD5ijzaqjLGxN=ttLZp5ay-G+adFUQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile.extrawarn: move -Wcast-align to W=3
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@arndb.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=MqmHAABn;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Oct 27, 2020 at 10:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Oct 26, 2020 at 11:03:13PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > This warning behaves differently depending on the architecture
> > and compiler. Using x86 gcc, we get no output at all because
> > gcc knows the architecture can handle unaligned accesses.
> >
> > Using x86 clang, or gcc on an architecture that needs to
> > manually deal with unaligned accesses, the build log is
> > completely flooded with these warnings, as they are commonly
> > invoked by inline functions of networking headers, e.g.
> >
> > include/linux/skbuff.h:1426:26: warning: cast increases required alignment of target type [-Wcast-align]
> >
> > The compiler is correct to point this out, as we are dealing
> > with undefined behavior that does cause problems in practice,
> > but there is also no good way to rewrite the code in commonly
> > included headers to a safer method.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Always sad to see a warning move further down the list but noisy headers
> are rough to deal with. This seems okay.
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > ---
> >  scripts/Makefile.extrawarn | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> > index 95e4cdb94fe9..6baee1200615 100644
> > --- a/scripts/Makefile.extrawarn
> > +++ b/scripts/Makefile.extrawarn
> > @@ -60,7 +60,6 @@ endif
> >  #
> >  ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
> >
> > -KBUILD_CFLAGS += -Wcast-align
> >  KBUILD_CFLAGS += -Wdisabled-optimization
> >  KBUILD_CFLAGS += -Wnested-externs
> >  KBUILD_CFLAGS += -Wshadow
> > @@ -80,6 +79,7 @@ endif
> >  ifneq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
> >
> >  KBUILD_CFLAGS += -Wbad-function-cast
> > +KBUILD_CFLAGS += -Wcast-align
> >  KBUILD_CFLAGS += -Wcast-qual
> >  KBUILD_CFLAGS += -Wconversion
> >  KBUILD_CFLAGS += -Wpacked
> > --
> > 2.27.0
> >


Applied to linux-kbuild. Thanks.

But, I think people already tend to ignore W=2 warnings.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARSn8D_0Gq3072SrD5ijzaqjLGxN%3DttLZp5ay-G%2BadFUQ%40mail.gmail.com.
