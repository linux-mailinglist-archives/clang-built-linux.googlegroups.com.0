Return-Path: <clang-built-linux+bncBAABBA6O3HZAKGQEMESSFMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B95716FF29
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 13:39:32 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id r29sf2019860pfl.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 04:39:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582720771; cv=pass;
        d=google.com; s=arc-20160816;
        b=jVO4uAaeqZ8lOHoIzPJy9Z8M2XfZi8wGmq1Si5qypmf1plNTjeQyxEfEnIeLNGnc3u
         uIGO9DMP1t6H3/8s23/Dm7rrSidS2wQKXXIF+mIGw6vF/fRDsDwPEsWFh3HJzrbo0+mr
         CROBeEzM/HBJWFXsweYe2AJxoJTn98m9aj6jUuJ9mdeF0E/hpukK3ygCAVbIHvG2FYkI
         si/uyYA2NsDPOZ9sFSE/8h/57tHVCPLeut8d9fPvG7FfIl0lyEG1RdWbT/fbWnTzJcCw
         UqW/25Imtre7dNRXC90f2kgLU/N3/nZ62uj6hJA16grXPeyKGSNQc9uG1KwpGCl5Daxm
         xCaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4WslJNGa7IWvs0TGOBR38Gjwtb9KvB75f8GETEr8Htw=;
        b=KODd1ezZglO1Piq3XICiC6f69ggSzMrlhePC1Q/AxSEc7LI4DhTGVCuhorph9h8VKj
         8DMMIJclWqPyZYVFzqQAjXZYXwppEnfN0q1k5Jw5UuNN5JSHSKPOBJ/CLppafPjO5C49
         Jlz9ptg8edcjddUA0IfAAUm2Amq1BjpTW/ZPfYH1mXEyvtSxjElblrATRafKEM4IeE3m
         BfMz4t2NXCY8AIvDs/7+Gv2EgZ4dIiaH6IXHly+NdJO5KG4bfqZVo5W/vRY+HhRNdWck
         FTCUQW0ywSYDIu8dxYhFFpZZmGSR4cMrvX4iWGi8pZ8+cTIbC+JGwAO5kJgrlbr//FbI
         g0mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UTNmXnIo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4WslJNGa7IWvs0TGOBR38Gjwtb9KvB75f8GETEr8Htw=;
        b=PcYVgEvLyZxwq+MLsQ1bRGN1WXIPgZF9ucBC0uj7kWcSMIpKxUjp47LnJCIVZwnZmy
         8kFyg3+ES9tbuVCzTc/62UCri8GlzVWpTYln0kyKcSHvjwzDZrjw0MeyT+8j7pm0U+ie
         KiF/fDCh+R32fmZT05JRalluTF97Lj2s/w2mKLL0DaGrOsLpJVGKZ4eYfIRSoekwuoBw
         pXXQwoboZp5DSozs7xtrIioxY3WLkxtN8VAJj/1I87QxJKDL2JWQ+EgRIZv7CANY1V03
         5GWr1RJtIBDYmNHkuNd4dwkWyK9UVP60mnAk0KHje1bgJez9lUSH2kwhM+KNL97H/ugH
         Dqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4WslJNGa7IWvs0TGOBR38Gjwtb9KvB75f8GETEr8Htw=;
        b=kPDpoLA0BdBFtrlXTz9hFb2rZj/1BWbRPRVvZffuLZ7Vjk3qT0g6IR67Z/fA7T1MsA
         OQnk6vGVyM1viYf6PqLCjHOeaUyMaePbm+jAHbve7lyX+KpmjhT0jt6ipQjVF+EmZyGV
         /Y/BdaaNAKyP2afU5uUkgNJr84FJPSroPh2BXz8HcXsy3lzgu8c1mEJZuH9KfeNV24f5
         hwpGyJfalS3ZOofIf32Dn+rrSo9xK277qS4fdMwVeTJU8GinQkQt3yhHIt89xXL2qGyH
         GEWZ9A4G0i7olGb43C8FNXK9aX6ql0m7+TV+Kjh2GMN9+AiiNL399LgGWiJOYozOv6OV
         tDuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxT1G+ui65HyapJV+EhwprqB5r+SBW6M5Ih7oMv+H7J+w/meLk
	hP6j/8TA2096Y+vE7Oy5Kz8=
X-Google-Smtp-Source: APXvYqxy6EfgqAML1DPxIl3YYVCeQiAF6MvFWW4/6kErqxdIigY435LoBTrQZzAqTytjBzWkyFqLkg==
X-Received: by 2002:a62:1944:: with SMTP id 65mr4327608pfz.151.1582720771077;
        Wed, 26 Feb 2020 04:39:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls1092913plp.2.gmail; Wed, 26
 Feb 2020 04:39:30 -0800 (PST)
X-Received: by 2002:a17:90a:9311:: with SMTP id p17mr5015945pjo.140.1582720770631;
        Wed, 26 Feb 2020 04:39:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582720770; cv=none;
        d=google.com; s=arc-20160816;
        b=Gbm+8VKMeVXMLAGe08XIZ6VSTZmLuEnvQ+zvYX0ZjUAe3XzndytTkN6Y14JWctz5yB
         nNoC3+XQ0GXle7W61tD4iyMMuOHEVL0I5LTe1yWNb2KOH2RiwHdW3XE4Wi5IZubzUsei
         QABp2Anak53K/s/MZBf4fxwMsBVyxj62RtflTvR+zASUDjE0T2BHamt+nnH5Qg+kpaS8
         5Lpyn9UM5zB3+DKDCNtK1N5hoXsaw4Aw5L3wtteah6ZVYk3TZf3O79JR7Ft13jp05XPa
         t0K+33cuaOD7lR+SjnfOhS1FCp0vMbxr/vMn1R+i5CErhpcjWLzdhlUpjfh/CuluBUJa
         hk4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=z6qp7SEaSbOA0Cr/WUj8Kq3ma/bqB52FhxOA8N293hg=;
        b=XtAPF2ViPa6nK/yCic9Y4pMT2Bdik6Cl5DihHUWXzRDso0Wk1H8YqiPTXhWruEa4Ji
         6MxAepKpxah46hL9z5ahQj07rUzmlOzduDbScx3fNOgDhPJvlBZGTITaqDsXWkfZfPem
         /Q7vPYwHrOjgDESiMdAQgS6Vm7Wjtl47php1Tm0VaEIE069FPpoNbWvo2Qbmby3nWqRb
         y+ZJ5vTOJ1Hum6NAHfTCpelP1SeehwouSpQyOR5u6kJ+B3bJ6FLw6TOA8cdv2w25HErO
         LfDKEK2pMi9lJJ7x6xk4MWHQYjQtxC6EKpftUOIe3yPp8ec1qnaWBsccvtIivwVcWVix
         A69w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UTNmXnIo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id i16si138493pju.1.2020.02.26.04.39.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 04:39:30 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 01QCdFnH011781
	for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 21:39:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 01QCdFnH011781
X-Nifty-SrcIP: [209.85.222.41]
Received: by mail-ua1-f41.google.com with SMTP id a33so891978uad.11
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 04:39:16 -0800 (PST)
X-Received: by 2002:ab0:2ea6:: with SMTP id y6mr3785026uay.25.1582720755290;
 Wed, 26 Feb 2020 04:39:15 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <20200225210250.64366-1-ndesaulniers@google.com> <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
 <CA+icZUWcW3+9QdZcACCXP6Yun__Sm_s4+qM4rALdFf=hGBt3FQ@mail.gmail.com>
In-Reply-To: <CA+icZUWcW3+9QdZcACCXP6Yun__Sm_s4+qM4rALdFf=hGBt3FQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 26 Feb 2020 21:38:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQX0nFWruCgHDEkZsTKT895ahrAVQT12wuJQ_dUQtVrsg@mail.gmail.com>
Message-ID: <CAK7LNAQX0nFWruCgHDEkZsTKT895ahrAVQT12wuJQ_dUQtVrsg@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UTNmXnIo;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Feb 26, 2020 at 9:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Feb 26, 2020 at 12:31 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Hi.
> >
> >
> > On Wed, Feb 26, 2020 at 6:02 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Added to kbuild documentation. Provides more official info on building
> > > kernels with Clang and LLVM than our wiki.
> > >
> > > Suggested-by: Randy Dunlap <rdunlap@infradead.org>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > > Changes V1 -> V2:
> > > * s/On going/ongoing/
> > > * add Randy's Suggested-by
> >
> >
> > I do not understand this tag update.
> >
> > As far as I saw the review process,
> > I do not think Randy deserves to have Suggested-by
> > because he just pointed out a typo (on going -> ongoing) :
> > https://patchwork.kernel.org/patch/11401189/#23179575
> >
> > (or, was there off-line activity I had missed?)
> >
>
> Hi Masahiro,
>
> I got some credits from Nick for a review by seeing a typo - not on a
> review of the code - and H. Peter Anvin asked why.
>
> I am not sure what is here the correct credit to give.
> Depends a "Reviewed-by" and/or "Suggested-by" on a technical review?



Documentation/process/submitting-patches.rst

  13) Using Reported-by:, Tested-by:, Reviewed-by:, Suggested-by: and Fixes:

is a helpful guideline.







-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQX0nFWruCgHDEkZsTKT895ahrAVQT12wuJQ_dUQtVrsg%40mail.gmail.com.
