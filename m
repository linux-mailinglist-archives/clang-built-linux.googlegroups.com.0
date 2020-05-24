Return-Path: <clang-built-linux+bncBAABBU6OWL3AKGQEA7DJGGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6042E1E1AB1
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 07:21:26 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id x22sf2269217qkj.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 22:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590470484; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1MEGAQ0HbasUnLGMgDr0hC45QaSlh8cb7RFa6yO4z8OSSYTJNj2WBZroOtRz3laZm
         uYFhuKhMq05zLvrycvuEBwRbhhgtTES/1YVy2cerxbYHRjxk0a/H9ceV/TN1I9W7rZQF
         8HXvYANhICl+LSPEl3/HgWSJi93fbKbv7a/bRdNy8lwjqNpN/Jum7B5+cIM2KNAJTmNf
         kUkQ+VjwvmvtWRfj7B3PKRHShL6lOP1ytWF3rNEK9I1ORi4m9smVfg3+d67ubA/F7gKk
         IeBDW36YV7T507hhPN99FGfi9jkxjquRySOj8Afj32W0iMTdlGrjFXXxd71hPXcFaSmz
         kDFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=K8klq1NR4dFNfOpxrZ6VMEVes6K/6WJi50hr8xI3ucg=;
        b=zlYDUcmMEs9bq2wKKSqxBFdAEKEK9uKhNHbX2Dp3EK6wP5S43tgnBQrkzbaspPhk/r
         1ZckiOBPW16XCa8agDz5UIppxz7gbdOSR5p9JEQFOVP4/QN9N1d37wt2vTiN7n25487c
         zM6lQQE1mYW7y5XIpdURbL0EzJ5WOrvcCFUFsCTmP8ZoTfNTSaiN1nXjebjNH3ahS1tS
         j53LN17Z+r29sUIQeFp5oBt3PhTK9CUQ1PC6pbS5u3PZ0/0qyyKJc+Bpw8EWucOMs0HZ
         eSrm9a3Fth/Px89OfeSd4ItYMQW/j7/NoD8wnu2xqliEcCdyQR763ioui9/vsb+wsufv
         JLDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mVLLRMxT;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K8klq1NR4dFNfOpxrZ6VMEVes6K/6WJi50hr8xI3ucg=;
        b=SY4Zn9tOW/ncznv5lfo0BQDDF1RaO96AhZzL2gS2HKtlvDZiRMCp6O1CTGa+jaEOMM
         4vHQF4UMJA4JrrjnJl9f8FGU7sgEilroM4iLRWriJEjU8xTKgLTTmAlR45kpeICw2KPE
         kBm/M7ON/L236FNPqKp5xWc6GoWo9Uxrg7YGOrsOvmsTcOMv+kIsYmeVtkWd+vKWL2TB
         ntTL/89H5jkQUL9jhTS4vIyUBXKey5PZA7VXKclK39E2UvMy3aaXgbLXSrvurH8ttGOy
         I1QLkhCMvpjV9j1i1v53dp3L0KkcleWsnLFgcgwjttNnLjDpvRr7h1h+Lx0Bry/UOdHf
         7Urw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K8klq1NR4dFNfOpxrZ6VMEVes6K/6WJi50hr8xI3ucg=;
        b=gBJl+t/+HG5KK6PfZXiTD6VrWlZ2tN6/5RYsNG+iMM5v8H51drLRRRnXCoqZB4rdNj
         iW0S1+xAyCyEwO7TD9VvlKm0/AI8JvUtCB1bUJBf3CLIeik457geyeQtXStEhraFlTj3
         XCJ+OhOtvs2B4i63NyJFNCzvr/4YZkb5eX3UQ5YCP+Ue7qh/+RdukTebDephLlEnxXGa
         4sQRkBqiesBS8BrCTh/W5M7yBs2S+txDKEKPQjc9efA0A2H3c4LwoZmynf/eIUSSrg/4
         ENNwS3LDt1JY4rVH2m104CDBLdFu8l+YXhHtk57M3hD0o/Oo79RtpiMdiuLA2gS2PEV/
         NMNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532t3vcgp85pQq8ZxdJAl6E602QJfbqxIX/ZDE+UJEWzNMu6XED4
	7HAPELv+T8DD8MWIzmEtjVk=
X-Google-Smtp-Source: ABdhPJxomMhDdnDbYMPRioFQZBS/K55idqd+jAECWEbXoIGs0bzNVJMgIayqJDSNT+P9HPPJ3UNRwA==
X-Received: by 2002:a0c:ea89:: with SMTP id d9mr18841012qvp.241.1590470484017;
        Mon, 25 May 2020 22:21:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ac7:: with SMTP id 190ls1447014qkk.0.gmail; Mon, 25 May
 2020 22:21:23 -0700 (PDT)
X-Received: by 2002:ae9:ed87:: with SMTP id c129mr12200542qkg.383.1590470483850;
        Mon, 25 May 2020 22:21:23 -0700 (PDT)
Received: by 2002:a37:a85:0:b029:ee:edbf:eaca with SMTP id 127-20020a370a850000b02900eeedbfeacamsqkk;
        Sat, 23 May 2020 20:57:53 -0700 (PDT)
X-Received: by 2002:ac8:6bda:: with SMTP id b26mr23887004qtt.230.1590292673537;
        Sat, 23 May 2020 20:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590292673; cv=none;
        d=google.com; s=arc-20160816;
        b=hRmpOkAMy/YsWmnTqMZKBPXbEKhEVCjWmcX6c4zZ40ujG0qgitIdZVP7/p5X0UbFaY
         JzRbGw51iQDk8j9yn1t3zGmhZks+8lB0huKUdXmVrUOmgSy4Fg3mwc1tAiS3M/NsiiG+
         IOtYkTERD7374xjJJ2s9GNNqPj1L77ttpFHfaXm4v9asjl9NE+JwzmNI87pLB7L/WOJ0
         2sKLqyiJYobUTmtRi7JLXrjP5QmONNNCAot2MYxV3IYvt+XoptCkC9AhWbYSxsOCPqzB
         y3zNQRoqxD7ZCiKTQT8NNrJ1jCPsTm7/ric8x88cYQsoZB3q3r2aYlX8NN/3AJvomhkK
         jVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Ae2qcMGFAABdhXLru/aLLCokI5YSUeFUt7ZWMrSWTDY=;
        b=yuzuowRgbfHjTWIkX0WO33VTjgzPlI7CSnxWYpQWz0P/I2+JVFbK/mSyJnH8lQO1ZR
         xb2YmpAs4i3PJQOq/JiEQtWk+4bw2zWjPPsrm+9Quyrf23yIguU3YvQgouMYE+96o4SY
         lhbD7YEQglSbTcGoWXBBW6txmVrCrmRww90g5+j69gHhDOLTVbaDtcsjTGHIiYcR0ioK
         aFMjzHaAET+ZNiwOxrkKfcFy8cgx1FxbIV1iLp/U8LH1eg9IlU3bZEWAJHHBeng5DNDf
         AOS7Q2b26+16xufceCDI7h9sux1mXdckCXZRiyd9z75aLW+O/fywdDm8PXVEcuc7Xfjg
         Buig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mVLLRMxT;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id s11si130314qtq.1.2020.05.23.20.57.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 May 2020 20:57:53 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 04O3vQik003295
	for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 12:57:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 04O3vQik003295
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id z12so5145008uap.6
        for <clang-built-linux@googlegroups.com>; Sat, 23 May 2020 20:57:26 -0700 (PDT)
X-Received: by 2002:ab0:7313:: with SMTP id v19mr15854792uao.121.1590292645381;
 Sat, 23 May 2020 20:57:25 -0700 (PDT)
MIME-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
 <20200520193637.6015-1-ndesaulniers@google.com> <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
 <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
In-Reply-To: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 24 May 2020 12:56:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNARofo7wawEF4EcA2-wxnQkKw+WFoJ36EOeYFTUrthRfrA@mail.gmail.com>
Message-ID: <CAK7LNARofo7wawEF4EcA2-wxnQkKw+WFoJ36EOeYFTUrthRfrA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>,
        Nick Clifton <nickc@redhat.com>, David Blaikie <blakie@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=mVLLRMxT;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Fri, May 22, 2020 at 6:57 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, May 20, 2020 at 7:48 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > > Suggested-by: Fangrui Song <maskray@google.com>
> >
> >
> > Suggested-by -> Reviewed-by
> >
> > https://patchwork.kernel.org/patch/11524939/#23349551
>
> Yes, my mistake.
>
> > > Suggested-by: Nick Clifton <nickc@redhat.com>
> >
> >
> > I do not know where this tag came from.
> >
> > Nick Clifton taught us the version rule of binutils,but did not state
> > anything about this patch itself.
> >
> > https://patchwork.kernel.org/patch/11524939/#23355175
> >
> >
> > > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >
> > I do not see the source of this tag, either...
>
> Not all contributions to open source need to be in the form of
> patches.  Both Sedat and Nick gave suggestions which ultimately
> informed the contents of this patch.  They should be rewarded for
> their efforts, and incentivized to help improve the code base further.
> I think suggested by tags are a good way to do that; but if it's
> against a written convention or if you still disagree, it's not the
> end of the world to me, and you may drop those tags from the v3.


Documentation/process/submitting-patches.rst
gives the guideline.


"A Suggested-by: tag indicates that the patch idea is suggested by the person
named and ensures credit to the person for the idea. Please note that this
tag should not be added without the reporter's permission, especially if the
idea was not posted in a public forum. That said, if we diligently credit our
idea reporters, they will, hopefully, be inspired to help us again in the
future."


I think this tag should be given to people who
gave the main idea to come up with
the main part of the patch.


Is that David Blaikie who suggested to
compress the debug info ?
If so, definitely he deserves to have Suggested-by tag.

For the others, I do not think Suggested-by is a good fit.

I appreciate their contribution to improve this patch.
So, maybe you can give credit in other form, for example,
mention it in the commit log explicitly?

Nick Clifton helped us to provide the minimal binutils version.
Sedat Dilet found an increase in size of debug .deb package.


Thanks.

>
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -225,6 +225,21 @@ config DEBUG_INFO_REDUCED
> > >           DEBUG_INFO build and compile times are reduced too.
> > >           Only works with newer gcc versions.
> > >
> > > +config DEBUG_INFO_COMPRESSED
> > > +       bool "Compressed debugging information"
> > > +       depends on DEBUG_INFO
> > > +       depends on $(cc-option,-gz=zlib)
> > > +       depends on $(as-option,-Wa,--compress-debug-sections=zlib)
> >
> > This does not work. (always false)
>
> Technically, always true. `-Wa` disables all warnings from the
> assembler.  Also, I did test this via `make menuconfig`.
>
> > You cannot enable this option.
> >
> > The comma between -Wa and --compress-debug-sections=zlib
> > is eaten by Kconfig parser because commas are delimiters
> > of function parameters.
> >
> >
> > Please write like this.
> >
> >     depends on $(as-option,-Wa$(comma)--compress-debug-sections=zlib)
>
> You're right, I knew this bug forgot. Will fix in v3.
>
> > > +       depends on $(ld-option,--compress-debug-sections=zlib)
> > > +       help
> > > +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> > > +         5.0+, binutils 2.26+, and zlib.
> > > +
> > > +         Users of dpkg-deb via scripts/package/builddeb may
> > > +         wish to set the $KDEB_COMPRESS env var to "none" to avoid recompressing
> > > +         the debug info again with a different compression scheme, which can
> > > +         result in larger binaries.
> >
> > No. This is not correct.
> >
> > CONFIG_DEBUG_INFO_COMPRESSED compresses the only debug info part.
> > The other parts still get by benefit from the default KDEB_COMPRESS=xz.
> >
> >
> > The numbers are here:
> >
> >
> > CONFIG_DEBUG_INFO_COMPRESSED=y
> > -rw-r--r-- 1 masahiro masahiro 209077584 May 21 11:19
> > linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-26_amd64.deb
> >
> >
> > CONFIG_DEBUG_INFO_COMPRESSED=y and KDEB_COMPRESS=none
> > -rw-r--r-- 1 masahiro masahiro 643051712 May 21 11:22
> > linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-27_amd64.deb
> >
> >
> > CONFIG_DEBUG_INFO_COMPRESSED=n
> > -rw-r--r-- 1 masahiro masahiro 112200308 May 21 11:40
> > linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-30_amd64.deb
> >
> >
> >
> >
> > For the deb package size perspective,
> > it is better to keep KDEB_COMPRESS as default.
> >
> > The main motivation for changing KDEB_COMPRESS
> > is the build speed.  (see commit 1a7f0a34ea7d05)
> >
> >
> >
> >
> > CONFIG_DEBUG_INFO_COMPRESSED has a downside
> > for the debug deb package, but we need to accept it.
>
> Ah, I see. Thank you for those measurements.  I'll send a v3 with
> fixed up help text, but ultimately, I don't really care what it says
> here.  Please feel empowered to reword it should you choose to accept
> + apply it.
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DjOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH%3DUjnw%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARofo7wawEF4EcA2-wxnQkKw%2BWFoJ36EOeYFTUrthRfrA%40mail.gmail.com.
