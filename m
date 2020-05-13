Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZ6C6D2QKGQEPYZK4PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 568CC1D1B1B
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 18:33:45 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id b1sf111747plm.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 09:33:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589387623; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQ7/IKbzAlabM5HXb+NEE5j8TGCFs8ppjOeoYP1a6SBaqYflOppnGdi1lyAdhmCSEl
         bVedyh/Epaj5DmgzC+RZLSsoUKqyrgt/zDJlUQyffx1AlC80Rh6xdLF8FJHWpeu37o7G
         27vGw/k/af0AWEWhBcRjA+XK+dftjTT75/3uhFuuyIb4aHhcwrgMndyLGGiXIR5Nqvy2
         fQwtMbnv5yEF23AqAxv+K48eOfXoiaq2M4JD+1wWXhaZ9LJuLGpG9XY+8idL+WwXH/KF
         9xgTktlqGr+UPMK3jGsBpecjuYOS96NnheqfluFxNLedVCKE0SVc60fU4FXwxDQvIYzd
         maPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cQmpvWkdCL5dURdCNnNqPsWobiLHYtEL1D6/UW7sVOM=;
        b=CAQGOSg7M+py23zPQlKE4adEC7NyXjhg9iw4uHrzINZ9GtmR5Uf0L7aWIbCltxAUGV
         39qWVaxoP6w4BrLd8x57zXvwY1W3+Kocnks0DXDkb6dOmUXeVoM89mtGCYzBfauvT1aI
         6ibsor4NhUStF6ixx63WTRU9XsRcFG7esfpREhEc2HQeJTyGaEsvd9A1f887JwKN8And
         BTnhnLHA9SKNVU28TXpbHtvZXbwcUsSKcBbldQOLrTHuZ5jGd5oO3vDxGqXAIbxd8YkU
         lXmrgazOWvv1aX9gqlJOHNkhAZlEh61ySWOaBeyHw5IVtFVbTj1uX4847/8NJuMz5E0F
         Ypgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQuBIWh3;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cQmpvWkdCL5dURdCNnNqPsWobiLHYtEL1D6/UW7sVOM=;
        b=LR/MiDZonvn2JTUsv6HcAhqmYip9EVVDe4Q7am1e17YNdd8yD/eteYjyIbWRmftAy2
         neQHFyaJe95k9DYv0w2C5I53/rvqzW7rIziAYEvfc6uqEhFgN7gTDoNl6sKM21Q+lNja
         nixjTq3BYtN01zqA/+2MjeWylAqgNttaOWGh3ErxBUKgbyK+c/JNk/N0AmzGhMotArZB
         lYr6ICyhEdRGp3kSpMYLuHzsE7Lzm/9qO9kNZB3e8Ke+Bour6R7dydr/4f4eBGrzplCd
         bIDHX7g5XH9v+ZnEJ3ZNq2nDg7enX5xRdIrFr3ETn+DeJd6wZPBIN9pCJf8C51MkC0EQ
         HiOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cQmpvWkdCL5dURdCNnNqPsWobiLHYtEL1D6/UW7sVOM=;
        b=DBn6YVnyKeCrErsi7/a6A0W0gqcZSo1A4B07E2XdqT3kPFXzTOey+VQhI1IB7RL+Cc
         BcusAxwj9eICsMcMCcaoXcsqygLK5ucO6OUsfvUSTpRi++y6lTFhO8pWUyNLoM0HqJ98
         TB0+oT0Sx1if32jJVRxNo9Uy349HWfIjOfJIz9Urk6HKMsOxPPWZdJDEMqePiIwLSTWM
         P0JGBF/vwV8Qp2N0QWNq9+cWdUen70XCpBNQLkRHqLGJhccE+c72nb3b1XvvLS82qZA0
         7I2uNd7LdZTZwwHR3nMJIDrTaVcy5JBrHdgVA89q70pcYu/e0ty9it4US8ma75wA0LWe
         2tqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cQmpvWkdCL5dURdCNnNqPsWobiLHYtEL1D6/UW7sVOM=;
        b=KedhVVprynSNWvszvGPFEyxFPbmThj7//v2tkRE2JOXLSdxBBv++A6RxBmWcQRmxzJ
         rKDCqUWS6E861AUKewrlKfBEeotv93XTvaaF1Mau50KVfc+AN6faZk0mKagASrsDEh0z
         puEpd3rZ0NN3YBVylCYrHeJC+/LIk2KpoSU9wVRi7V+M3EskNAnl9XBWK6QjUlo5iEAj
         hym9ZD9zWJlvNSkYA5/tewsJQQTW3xYt9EAVlTzJFhmZY9fhRgSLvQmeGt9GF47Foyx6
         c91R7aqEapzZ/c4YwLfKI5i67LjSMKeQMWdD1cYd1ZgUB7MybD6Q2FG4cDVXvScBBlr6
         X3IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zs9xwqWrhwR3ohh5i5qU5XscPGP/DSGa5froAbK2ubN10w3o0
	tdj92Cjx1Iu5jsYRdsNCkW8=
X-Google-Smtp-Source: ABdhPJx9fEcNntgFhBGOG6olB2xnF1aGT6di/YXM9/q65EERwEZcN1ClKIr0lyN+HT2DA0+kR6UvZw==
X-Received: by 2002:a65:6790:: with SMTP id e16mr150526pgr.145.1589387623469;
        Wed, 13 May 2020 09:33:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4b5c:: with SMTP id k28ls759604pgl.0.gmail; Wed, 13 May
 2020 09:33:42 -0700 (PDT)
X-Received: by 2002:a63:5353:: with SMTP id t19mr122831pgl.391.1589387622808;
        Wed, 13 May 2020 09:33:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589387622; cv=none;
        d=google.com; s=arc-20160816;
        b=z2y77kK7H2q87PoIG0EtdsFapMb23nM7DS8A7clkywgu2y4V6nVfVyOELiy+3shFaz
         viGVnp2LEC4e86nW+JbNXubH8xEsu1keDLmK23gNdelmaqvc4NewSmgXK2fc0NXA5utB
         xZrdMiXmTFsOtN+3NVDajVzVacqLzoNY1VDCDr2qtq55H2L3mp+FIroeBuFnJoWOPG1U
         IrabcmhXCkazTpVlvXaC11WHt+97iOCW4nCVND6z20hmwdrygL9xKzUfGqvSfE9i9RCs
         lrmwWzIgMfS/SYx2ElBPlSxGiTBCG4gKLL8+EpRVYLqr5kRrjBxFY7JBvVa2ZTI1XtgT
         D9Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s1lBbWECS5IwE3IeUZjyhM1ZXxahSFoW3FrHXLj/HpU=;
        b=YZmsbGL1jQuhIpyjaZk62Rx84CQd/6ZxiPs3yJXDCyP3GS0G+iZdXAx85jHM3drsCB
         NkRejsX52+PlGsPFIetYMm5iRNi/h9Ei3sMljKPi54TcZVj66jNHYjMz+LhImrCLCIyh
         ovt8dk+rq4dsZicE8PTzsHMDpG5Y2/UfWDDPLQzKA+bc6n1u3UzTjzwBB06mxQnRuUGy
         9cm0LqbvaP0Oc7U73Yik0HkEvMMibLg26TvDo47b7/7cBLBiQaJWhFESj1PGFT1sKpVy
         2h9DT0fEb8603UzXX/18MgeLj9pLVYTHpFoIaaZO1+vy2sANNoGQaRfYNENKUrnRUfd6
         k2zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQuBIWh3;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id s5si5942plr.0.2020.05.13.09.33.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2020 09:33:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id r2so272321ilo.6
        for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 09:33:42 -0700 (PDT)
X-Received: by 2002:a92:3652:: with SMTP id d18mr304019ilf.212.1589387622176;
 Wed, 13 May 2020 09:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com> <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com> <CAK7LNATm2r9pH7i=pe3e7WvNmumGnivn05J+Mz10DzrzB8i=hw@mail.gmail.com>
In-Reply-To: <CAK7LNATm2r9pH7i=pe3e7WvNmumGnivn05J+Mz10DzrzB8i=hw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 13 May 2020 18:33:30 +0200
Message-ID: <CA+icZUUzLORp_TvDZiLO4WOdwEHTZF9vpi9BTHwQm-S3KDtMBw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pQuBIWh3;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
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

On Wed, May 13, 2020 at 4:52 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Nick,
>
> On Wed, May 13, 2020 at 4:23 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, May 11, 2020 at 10:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > > >On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> > > > ><nick.desaulniers@gmail.com> wrote:
> > > > >>
> > > > >> As debug information gets larger and larger, it helps significantly save
> > > > >> the size of vmlinux images to compress the information in the debug
> > > > >> information sections. Note: this debug info is typically split off from
> > > > >> the final compressed kernel image, which is why vmlinux is what's used
> > > > >> in conjunction with GDB. Minimizing the debug info size should have no
> > > > >> impact on boot times, or final compressed kernel image size.
> > > > >>
> > > Nick,
> > >
> > > I am OK with this patch.
> > >
> > > Fangrui provided the minimal requirement for
> > > --compress-debug-sections=zlib
> > >
> > >
> > > Is it worth recording in the help text?
> > > Do you want to send v2?
> >
> > Yes I'd like to record that information.  I can also record Sedat's
> > Tested-by tag.  Thank you for testing Sedat.
> >
> > I don't know what "linux-image-dbg file" are, or why they would be
> > bigger.  The size of the debug info is the primary concern with this
> > config.  It sounds like however that file is created might be
> > problematic.
>
>
>
> As Sedat explained, deb package data
> is compressed by xz, which is default.
>
> You can use another compression method,
> or disable compression if you desire.
>
>
>
> "man dpkg-deb" says as follows:
>
>  -Zcompress-type
>       Specify which compression type to use when building a package.
>       Allowed  values  are  gzip,  xz  (since  dpkg  1.15.6), and none
>       (default is xz).
>
>
>
> Kbuild supports KDEB_COMPRESS variable
> to change the compression method.
> See line 46 of scripts/package/builddeb.
>

Hi Masahiro,

thanks for the clarification and the informations.

With next RC I will add KDEB_COMPRESS=gzip to my build-script and report.

Regards,
- Sedat -

>
> If you are interested,
> try "make bindeb-pkg" with/without CONFIG_DEBUG_INFO_COMPRESSED,
> and compare the size of the generated debug package.
>
>
>
>
> As Sedat stated,
>
> (plain data) -> compress by gzip  ->  compress by xz
>
>    is often less efficient than
>
> (plain data) -> compress by xz
>
>
>
> I hope this is clearer.
>
>
>
>
>
>
>
>
> > Fangrui, I wasn't able to easily find what version of binutils first
> > added support.  Can you please teach me how to fish?
> >
> > Another question I had for Fangrui is, if the linker can compress
> > these sections, shouldn't we just have the linker do it, not the the
> > compiler and assembler?  IIUC the debug info can contain relocations,
> > so the linker would have to decompress these, perform relocations,
> > then recompress these?  I guess having the compiler and assembler
> > compress the debug info as well would minimize the size of the .o
> > files on disk.
> >
> > Otherwise I should add this flag to the assembler invocation, too, in
> > v2.  Thoughts?
> >
> > I have a patch series that enables dwarf5 support in the kernel that
> > I'm working up to.  I wanted to send this first.  Both roughly reduce
> > the debug info size by 20% each, though I haven't measured them
> > together, yet.  Requires ToT binutils because there have been many
> > fixes from reports of mine recently.
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUzLORp_TvDZiLO4WOdwEHTZF9vpi9BTHwQm-S3KDtMBw%40mail.gmail.com.
