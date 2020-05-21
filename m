Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXHSTP3AKGQEF7NVEZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E271DD9BC
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 23:57:49 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id b9sf4158235oom.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 14:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590098268; cv=pass;
        d=google.com; s=arc-20160816;
        b=ce54USLgAWspI6XK9lcmT0rkYUtFqYzjME3ZzoRPvptVP1eqXhhTMxvL3lbphrqZ7r
         y/k142bE3DCSHka+w02CruAmMI0LdWiPYAIfW431ULa6g1ui1/wiUwGHD6914RICuFRJ
         tw5pX5MjoHwTmTmZ/5iDpL8uNKqvCijnhoTR6J8hQQgl+CPGIiQatdnFmmCCjGq/Mgm7
         0z1U+CCH2OiN4mMLoyzhKM32+3Z8RIsGiSP/b+6gO7dsUuY64ekENMx6hvsPYnZ39Ksj
         ET4v2xyxF0ZdA7yfKmO/8jXytjKUwpTWIt7WQdKvYD49yIYPlaRjGxG/sKyvwZHF86oe
         Nerw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MwHKQgqrUyupdmGJ4TR1Bxecuobg8J+Tm/glUrwqdqk=;
        b=SVzvfJofiwNwFDntAF1BPLEjYTg79Hi3Mw1zXkrEfAg/oPelMXKWX4ySyZYNguhaZi
         +t2ESPx/r2LrcexGfRnfItGD8VSkiXBudpSP+314ntuf6xPmrOZVV4VwrPUTJJdugLpR
         H52UnE6zHceII1pTLP8pgMklJ4Le4gsj1GieQSLh4oBmOWd2Chgwht8peiRNc9NLn3vg
         MxZvIitakj70MuvDqc3JqlWSopuZgvcXrpdWDT/Aek9PWsJ4aojEA5lS2sVCks7O6Tek
         98C9e7FJEMWQHDTE2rRXRSroe/qeIpDXaZBWDyg6DKhe/WO8trloQuD064Pyuwn61AXl
         2uCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dXPScmAf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MwHKQgqrUyupdmGJ4TR1Bxecuobg8J+Tm/glUrwqdqk=;
        b=ihEVrokACJMFFdrxyoYRHN0um4kTbDr9sszxHf+58HI98Ajks+HTESacJde21kX7im
         /3PZll9gqroSVnS9i/CTv8bpL4+jPJcF1NoJ7KnyYoFMKZVNxKmyhFtvvVolpFO3/da+
         OgxZva/d9Fk13qT5qHwrOkom+B5BShtH+QowCdoIGVBm6r/T4dPNM8bgeMmerJXZz+Nt
         UluhtAeNH8Joi/QsriA5Oxs4ML6emq2xof8oomCosIjAgK1WWCA2q8zmbkBdjCedlJ8T
         c98trlo6sjFksc7o+fTWS2/x36VIpunzKU3dH+b2m0f4oiCLA6AMAc2h4hKGX++3hm+0
         unJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MwHKQgqrUyupdmGJ4TR1Bxecuobg8J+Tm/glUrwqdqk=;
        b=gQcrTFDsET3DIBCGx8BJtd8himmbnnPAQp7lpke3xuTL78LnY+csopqjtE2GcEQWX7
         zcmTcUqdoHkkE/s4ddv/l+GdiaZPNwHDK+TY2D8hehwyTBrb2gNLYYr4r8mZv2lIQ6NW
         Dk9/xzKS7YWpa2xRJYdVkEnMlO5HWeidgXnC9sXPx8uDVYy6oXD3Vb2kER4/6LJiSJgk
         nzmWtxJnHnfjyi9KbSuJeisQPk0me0Jbr8GhysJUfzS/cWpS1FtU6zqzvLOIVhf7x/1z
         IdLF7n2xttB7p/ofZXywbJ52fxhDUYwPdL0m4hKHOpZvjrKNHTJM6QM+PgKaKwIkSGrq
         g8hg==
X-Gm-Message-State: AOAM5320Xkun3x/c+PdhNp6m9aNfjXPVC9qw4LS6Tk2sVcnpNc3PQvyE
	94e75nq6ExWhpDmFiKWS1TY=
X-Google-Smtp-Source: ABdhPJzIhmmj6v44e6N5owB/uAseBNLC9ZJdn3iSQb1eJFa+HPqJRtnt2EkBkz+bQdt/styWTKQujA==
X-Received: by 2002:a9d:24c7:: with SMTP id z65mr8323231ota.57.1590098268195;
        Thu, 21 May 2020 14:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:86a:: with SMTP id 97ls729216oty.9.gmail; Thu, 21 May
 2020 14:57:47 -0700 (PDT)
X-Received: by 2002:a05:6830:10da:: with SMTP id z26mr8933059oto.290.1590098267889;
        Thu, 21 May 2020 14:57:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590098267; cv=none;
        d=google.com; s=arc-20160816;
        b=oHK5yo4aKGSWTnXyeftZysQxALxWBg2P3+k6xL5ptaSuD7DjbrQiWpO1nnmgJbfF00
         R7yHU72LpLkLbkJoz4FT4PSx7no2SiVZsXQ5fWK7hDlkMvDy8ORVyO8QyjZIu+FZ2bLs
         PRRLVgVlmAVqJQjVlvEoVE1gSxfRBjxZfAW4FfkM2UPKcvopxc3h9vjP2lN1dlSUZA9P
         1XMWNF8PWuoY7t6H8Sp6StFXYHq8/ECGPfeJDlRFNNsTpFwkCUHXX0wNX4VMZMDeKT00
         pwZr+SoK8x2qH0nh3rsbJIgfzbBFOMjf+uxyfnL7ZYH6xadn2Ho7GmGB6QrbGtpmyj2R
         cxPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TSxKnnFyDzr5TIHifuloj5+MkU6+ljp348ta4rzKVFY=;
        b=pYaI1UoWzdiUDFPYFgNRcn077vmQ8Tvb0xCKSOy3o1vjGWfJtBWwOcuI9pvk0DeMEk
         +j9PQ6hIP/Jwf7Y4VU6mmGlZac6FSHEmygBh6BtguidmV+2kPltrHxh9lH0/09PduuRr
         1xQyc06essf3pGxed1iy3lx3aZwFyjongFV2u4trQN9fWrKjGM/neG2ts8KFxG49E/hd
         GQHHQKi1KAPbA42DkjK7EBrfjoPCkrcq7+FnTFqq2HBQLKvXrldQnXZUdKNgPvSJy/x6
         BW5nkpXBJkFFfMgrysMSpe2Xp+9zo+tCGN/wzwaL62B0WHaPbH91HovtUGMSKAGvtnby
         RXPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dXPScmAf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id u15si714164oth.5.2020.05.21.14.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 14:57:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id n15so3990124pjt.4
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 14:57:47 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr679103pjb.101.1590098266861;
 Thu, 21 May 2020 14:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
 <20200520193637.6015-1-ndesaulniers@google.com> <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
In-Reply-To: <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 14:57:34 -0700
Message-ID: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blakie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dXPScmAf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, May 20, 2020 at 7:48 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> > Suggested-by: Fangrui Song <maskray@google.com>
>
>
> Suggested-by -> Reviewed-by
>
> https://patchwork.kernel.org/patch/11524939/#23349551

Yes, my mistake.

> > Suggested-by: Nick Clifton <nickc@redhat.com>
>
>
> I do not know where this tag came from.
>
> Nick Clifton taught us the version rule of binutils,but did not state
> anything about this patch itself.
>
> https://patchwork.kernel.org/patch/11524939/#23355175
>
>
> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> I do not see the source of this tag, either...

Not all contributions to open source need to be in the form of
patches.  Both Sedat and Nick gave suggestions which ultimately
informed the contents of this patch.  They should be rewarded for
their efforts, and incentivized to help improve the code base further.
I think suggested by tags are a good way to do that; but if it's
against a written convention or if you still disagree, it's not the
end of the world to me, and you may drop those tags from the v3.

> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -225,6 +225,21 @@ config DEBUG_INFO_REDUCED
> >           DEBUG_INFO build and compile times are reduced too.
> >           Only works with newer gcc versions.
> >
> > +config DEBUG_INFO_COMPRESSED
> > +       bool "Compressed debugging information"
> > +       depends on DEBUG_INFO
> > +       depends on $(cc-option,-gz=zlib)
> > +       depends on $(as-option,-Wa,--compress-debug-sections=zlib)
>
> This does not work. (always false)

Technically, always true. `-Wa` disables all warnings from the
assembler.  Also, I did test this via `make menuconfig`.

> You cannot enable this option.
>
> The comma between -Wa and --compress-debug-sections=zlib
> is eaten by Kconfig parser because commas are delimiters
> of function parameters.
>
>
> Please write like this.
>
>     depends on $(as-option,-Wa$(comma)--compress-debug-sections=zlib)

You're right, I knew this bug forgot. Will fix in v3.

> > +       depends on $(ld-option,--compress-debug-sections=zlib)
> > +       help
> > +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> > +         5.0+, binutils 2.26+, and zlib.
> > +
> > +         Users of dpkg-deb via scripts/package/builddeb may
> > +         wish to set the $KDEB_COMPRESS env var to "none" to avoid recompressing
> > +         the debug info again with a different compression scheme, which can
> > +         result in larger binaries.
>
> No. This is not correct.
>
> CONFIG_DEBUG_INFO_COMPRESSED compresses the only debug info part.
> The other parts still get by benefit from the default KDEB_COMPRESS=xz.
>
>
> The numbers are here:
>
>
> CONFIG_DEBUG_INFO_COMPRESSED=y
> -rw-r--r-- 1 masahiro masahiro 209077584 May 21 11:19
> linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-26_amd64.deb
>
>
> CONFIG_DEBUG_INFO_COMPRESSED=y and KDEB_COMPRESS=none
> -rw-r--r-- 1 masahiro masahiro 643051712 May 21 11:22
> linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-27_amd64.deb
>
>
> CONFIG_DEBUG_INFO_COMPRESSED=n
> -rw-r--r-- 1 masahiro masahiro 112200308 May 21 11:40
> linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-30_amd64.deb
>
>
>
>
> For the deb package size perspective,
> it is better to keep KDEB_COMPRESS as default.
>
> The main motivation for changing KDEB_COMPRESS
> is the build speed.  (see commit 1a7f0a34ea7d05)
>
>
>
>
> CONFIG_DEBUG_INFO_COMPRESSED has a downside
> for the debug deb package, but we need to accept it.

Ah, I see. Thank you for those measurements.  I'll send a v3 with
fixed up help text, but ultimately, I don't really care what it says
here.  Please feel empowered to reword it should you choose to accept
+ apply it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DjOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH%3DUjnw%40mail.gmail.com.
