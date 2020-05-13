Return-Path: <clang-built-linux+bncBAABBXWB5X2QKGQEBJDOSHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BD60A1D052B
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 04:52:15 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x132sf4668672pgx.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 19:52:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589338334; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cm2AkG2V3P4zRyHDuf+w2C4U8MijBdY/7paQSMTaEEwJju0RCngL/DhcZJK/tsCvra
         t/d7n7HCtFX1rfK8CBtgGBzmhudd2W1fSbf1oNJJf/baavU2/EgDC+Tb58mJDyeoklbe
         UiuwsQwHs1a8rN7XCHP1Q5w/iy2cbQhg1FX1qLMzcHAZnM3UkJazHeruLs4e2BuKpdty
         0rfG1fXAs8kEqgL4aAoICkN/PiLtJYnxrJgEQaGFzsH1sW9AndvlDt3q9DnCcZe+otFB
         jtzo84RMl5KbARRnAkre4oO/WkLfuymBHf3C4pojqKndrMqt8aWJbV6zzgSkdPKyAIZa
         ZBkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pDHaoVSiRaxZqhDvH6PouWh3cr2tLnmnfT8lzwxzScM=;
        b=Soi8IyT4wB6lbVCnyslskaf+ovjOkCT+Hmr6XRb86QbhhQiiUNNWY49W88bAdc5qRu
         O9rEPmsgFLQS63IS3rqKM4hMy/OHxwKERrYNT4h+dd5Hvir/kdclK+ONsh+f8qn9Vg2/
         d0fi6KsNorGqlmL3IOE6A/ciyk6DB5wZvJ/bU8dDVJBTVhfk7cHBkxZ8zMTz6XSmNYtc
         +E2BAbW0B9LfB61VlLshHdxzQvfbeCJ/lyQDvW7Ff1Csl/33VmpCSetqZY6wIqVj9zGs
         D/EhRqBdPDwA49/zcdsNAnlv0dZ+tUo8Tug6kgVApnAl6Ev1JE9oYCXYg/KtEuPYveof
         qxQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vns5+sHo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pDHaoVSiRaxZqhDvH6PouWh3cr2tLnmnfT8lzwxzScM=;
        b=mEncWKKWaLIOJuLr2quEFPrOhtAtNPlM4pLKPzBMWyVSog4CroBzGBCALDM3KpSmQr
         YHqHgHlxzK71QefX0YEwLB+jGK/IFBMSavth+YthH8n+RX2/Wq7vo6y8xp5ZTSYp2jgi
         tukNQeAb7n1J89Sxz6ReoyK+DjMU74b9Ez1uAzUGvf7vq4OzbkX1DoMiGd0tq3HqCzYA
         wVbXzNj3Wh7TeDaHqICisOqo30kMd8uv3iq+QPEI57XtOrkRNRVN97gvG6+CogKqKdYS
         OnykqVQRKbG8whRgv76Ifw9NUCES0XjvDGetLAGDDJqLov+AqDayDaTLmT3n9DMzxL1u
         rXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pDHaoVSiRaxZqhDvH6PouWh3cr2tLnmnfT8lzwxzScM=;
        b=nvnokHdXdK/apu6/WT1qI6ThE+1rALty/qBvUssgtIOrGFvjwuvJXGdTPAQbXtdFTN
         pIaqXCIp3tUoC0w4B1jw0H0RhftZ43acaMU69t8/jX168NLuEK5H2oQyfWen4kp4khTz
         asX7RnYQK53oBoqHf20cVHKH+CiMerQes/78j89l6a6B7h1k4tTniV1HsrYWb8AD7MiA
         qls4G8p9g45yxUKVPkGUQGBmy2vpjqPsj9/rk9zbZsoDOdVoSJM1SF49UqG7rv2qv26M
         PicO4QbKgYu+SyzeICM3iOGXWTCjZJOE1R9XYmrctrNGzK0wzPtOAx3MgbqpNUfHeJt6
         z1SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ilsL2IRUyKH5ifV84U54s7RTcUuUZC6wLrA8P3AhxuSCx/YrP
	QHdGSuBeJhqSyPri+XeZV1s=
X-Google-Smtp-Source: ABdhPJzEdY5w9wg5gNlD5tRy3jUFrOTjlduV/fVWxphNkTOcJOtY5cwAhRJKJQPc64HdIAgzTjqGiQ==
X-Received: by 2002:a63:7d53:: with SMTP id m19mr8910168pgn.168.1589338334208;
        Tue, 12 May 2020 19:52:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c02:: with SMTP id na2ls267168pjb.0.gmail; Tue, 12
 May 2020 19:52:13 -0700 (PDT)
X-Received: by 2002:a17:902:8601:: with SMTP id f1mr23340539plo.122.1589338333828;
        Tue, 12 May 2020 19:52:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589338333; cv=none;
        d=google.com; s=arc-20160816;
        b=q3RfMGevU90srvDJr83L/quF9yKdXtQvlS95+vpyRQ+GIy2mlngsCAr6PMA9CPk1SF
         +vvsOyWYsNDmR4dv160CCrFg93rY90UPfm6W93pEBA9VekLSd2kTVaH69+hM+fNfgGPx
         MrZHl1uLVZ8o3X0/obTdP/duu7R7nJ9hqK6BTNyNaqfK6dNlRq0WgPVcfmO1zhHAFbB4
         o9khIySJbSI+6sLhpjybnlW7Eg9di4ufPYtoYMbAr9EeGJpt8QBJ7jiJMCLrK40NhXWg
         Mjvc1+bCMpc+W8984JthjtMv26X9glJWit98RviURr2cNZVNuAFtgVcVRUhA2o6TBdtV
         NyGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nPF0UZ4QARocmx7+6QkAPjfyPPWGMF/E7w8Sll+vGQ0=;
        b=AyYKWgCHQuPVBdz5JjWKhlUf5XkR6YoD0xbskMeUMYI9N5r9cU9bCiG4/Bbuy8curW
         bK+7vTzgQKF31uq9FaozHSkr0mFfNEy1NxgrYo8PrLudTnmAs6BDsd+AyffDkSWsqjfC
         O6MAMaaneXG12GI6p6wK7xD4sjo0LYm+S6ymPdjtKwOTCe1OIX533RtxzrfgFxabJHmf
         RZiog9fFIKlbHBwEp7ly1KNs++pFTWpykfiNO19htynOM+RSxpy5f13LbczH3Vvq2Qcm
         1c7iry6ENHVj5beI2YD5Iszg+YByp9LLaTNXvie2ajJxztw5mgYS65AI7DrQMhCXjlTv
         hioA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vns5+sHo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id bi9si447457plb.3.2020.05.12.19.52.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 May 2020 19:52:13 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 04D2pnFa032763
	for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 11:51:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 04D2pnFa032763
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id m24so9197252vsq.10
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 19:51:49 -0700 (PDT)
X-Received: by 2002:a67:d00e:: with SMTP id r14mr7200783vsi.215.1589338308705;
 Tue, 12 May 2020 19:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com> <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
In-Reply-To: <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 13 May 2020 11:51:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNATm2r9pH7i=pe3e7WvNmumGnivn05J+Mz10DzrzB8i=hw@mail.gmail.com>
Message-ID: <CAK7LNATm2r9pH7i=pe3e7WvNmumGnivn05J+Mz10DzrzB8i=hw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>, Sedat Dilek <sedat.dilek@gmail.com>,
        Nick Desaulniers <nick.desaulniers@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vns5+sHo;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Nick,

On Wed, May 13, 2020 at 4:23 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, May 11, 2020 at 10:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > > >On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> > > ><nick.desaulniers@gmail.com> wrote:
> > > >>
> > > >> As debug information gets larger and larger, it helps significantly save
> > > >> the size of vmlinux images to compress the information in the debug
> > > >> information sections. Note: this debug info is typically split off from
> > > >> the final compressed kernel image, which is why vmlinux is what's used
> > > >> in conjunction with GDB. Minimizing the debug info size should have no
> > > >> impact on boot times, or final compressed kernel image size.
> > > >>
> > Nick,
> >
> > I am OK with this patch.
> >
> > Fangrui provided the minimal requirement for
> > --compress-debug-sections=zlib
> >
> >
> > Is it worth recording in the help text?
> > Do you want to send v2?
>
> Yes I'd like to record that information.  I can also record Sedat's
> Tested-by tag.  Thank you for testing Sedat.
>
> I don't know what "linux-image-dbg file" are, or why they would be
> bigger.  The size of the debug info is the primary concern with this
> config.  It sounds like however that file is created might be
> problematic.



As Sedat explained, deb package data
is compressed by xz, which is default.

You can use another compression method,
or disable compression if you desire.



"man dpkg-deb" says as follows:

 -Zcompress-type
      Specify which compression type to use when building a package.
      Allowed  values  are  gzip,  xz  (since  dpkg  1.15.6), and none
      (default is xz).



Kbuild supports KDEB_COMPRESS variable
to change the compression method.
See line 46 of scripts/package/builddeb.



If you are interested,
try "make bindeb-pkg" with/without CONFIG_DEBUG_INFO_COMPRESSED,
and compare the size of the generated debug package.




As Sedat stated,

(plain data) -> compress by gzip  ->  compress by xz

   is often less efficient than

(plain data) -> compress by xz



I hope this is clearer.








> Fangrui, I wasn't able to easily find what version of binutils first
> added support.  Can you please teach me how to fish?
>
> Another question I had for Fangrui is, if the linker can compress
> these sections, shouldn't we just have the linker do it, not the the
> compiler and assembler?  IIUC the debug info can contain relocations,
> so the linker would have to decompress these, perform relocations,
> then recompress these?  I guess having the compiler and assembler
> compress the debug info as well would minimize the size of the .o
> files on disk.
>
> Otherwise I should add this flag to the assembler invocation, too, in
> v2.  Thoughts?
>
> I have a patch series that enables dwarf5 support in the kernel that
> I'm working up to.  I wanted to send this first.  Both roughly reduce
> the debug info size by 20% each, though I haven't measured them
> together, yet.  Requires ToT binutils because there have been many
> fixes from reports of mine recently.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATm2r9pH7i%3Dpe3e7WvNmumGnivn05J%2BMz10DzrzB8i%3Dhw%40mail.gmail.com.
