Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMFBXD4AKGQEYEJPMSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DE021FE34
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:08:18 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id u12sf97196ybj.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:08:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594757297; cv=pass;
        d=google.com; s=arc-20160816;
        b=JI/ZfSVwYaIKS0/eHeL+si7E3g+pQzhEEDC/BU+W4cEE33WyJH14DxptUZDje5YrO4
         EjVyXM/TqaWKzfNUDPqiUKo48M578tQwGVO793lDGdrUhIoQZUZkQ2C2htxSRdPCIb6g
         w16Ex+L4SrLCUwwOROr6g7WCC/CZPS2PAkKDBFsZRit2xq5y+aCMs0MnwbWlVa8o9eXP
         sx2YjpI0dRmeg0qfhmUuuUBk3MzAdzlvVMXEmLYA90VnGTnz+RiJRlA7L6RvWyFRrB2d
         ED9o+tWqufJMh5kSlkdRxO1U2Z203pB+xPWjDzIUKhP7T+0yKhhCYgzxaiJlBRy9ljom
         gmyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KkPjsMcUjzwCQrewk5MQ6QN3lHr1Y37G7hDw6BhIKuY=;
        b=aiPXbmnuUwyZwt+yd/OwUYiy+eLjnrftl74B+DboolPUhoduwjI1l2+sJ0b2ng7bfC
         OsnGRyMV/zUSX+EaSrmSGBufa3bxZ6G/epiLC40WR5rk48w4P7Lxn5Fv+BiX4BNJ+Fa2
         dS0noWErV3o9B++TFXQkk+52dRAaeAhXqzyVXhjhFKUeU9lyuWHmYsTvnXh0xnxt08yU
         XXD/w+Bc/nwtLB2npFGIihqNjtPQFZZm19KoySgrxGfNWwgOQOu3xYUgbK/tyCYTCuLe
         1qpXxB7DGJysWKlNA6RlxQomRqX6vdGUDDhzZbLnwvGMmBO55Ik7JXWnZzWPtmlCy1//
         AWQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qa5xbbgS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KkPjsMcUjzwCQrewk5MQ6QN3lHr1Y37G7hDw6BhIKuY=;
        b=M5ft1IhtqoGaCxACMfxpDZpsIpuJZMd+ov7qa8lFBo/mnUkNDTkWAom+f7JxkIShZy
         vnsRy9fJh/IfdcmRiH7ZVyRq6MN4l7ItT/+PyXoRgnJFtEFx0HQt8E3Kuswv2WI9IXyz
         FtUu0vssstLk2uOOgbt0rKYUKtFyYmBoi2ipKsaSiOohl81g0V/0FBI9WbACkoNVhS90
         xte90/USQvNW0BU2wIaCtOTSYgBq2eW9ritxBB4dT2pCbyZIepEXDmp48S0zDGwbDqrA
         gVHxklchn8mygymC6sPOkzGRV+lUhswL9XtwrDepOPTgmjDHyIdHi8A6GEkLkgIi00vn
         W6xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KkPjsMcUjzwCQrewk5MQ6QN3lHr1Y37G7hDw6BhIKuY=;
        b=fkVMkE7nAM7MOiS0gPGuYm/p41ICIbDXyzpzBpOj83jbGHicaYOkfpv/MqxFrH7Dsv
         vWaXOVs2yJFjoKhQnT0MIyoN9eOSp/qq2HifCYLIxDjRQdz1Gl7jLjIki1XNUP5f8AT4
         pX0I9QDr9RvAv3ltuEd4q0guK14oL7Y2fpntLWoF8HcjTYGDxhU9reSRmsDoGkCARASr
         hll4oyl3t1gpGTaRJUlhQjfbhy5I7IYIL0fx97YuidzkiFmU5N2K3il5ukW3Cf+2umKZ
         IazqtHOK2qFJT1JJG6t8kaPYqea/G82XgwWPRoVCbghi0dnlG+6tCxnu/4dlI6Org75m
         o17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KkPjsMcUjzwCQrewk5MQ6QN3lHr1Y37G7hDw6BhIKuY=;
        b=NVevilATSgIcilxBzY9lfkDi4sRjakQwPeLiH2DIR7GQwwz4vXB7VoHW5GupgqPRtG
         dyeRQmLE8/EhdqcEhAlVtyXEVqAQp9aTpu31qKU4wWbPHJRZHbRJVuS+rKD6nsXlmbGL
         zfOUob2UeJ4209bK6syG9A1UJ9c9qPlyxTcIBmGYzI5q4rXAvOHEdxhK5S99b96QbOUm
         BOxMoPvO873URNqknv77koa3LE+gsYAI7kf0JFSpOlB1l7uCt0OxcWABGr6ZDBLY/V4g
         U++3qe1VHh3xk7kdNhjQgQEwuQJ3WA7y8I7zWPmUQjCJA3mZ5tFuhI8ii/SKR/OxaR7d
         ESUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mf18n6k1yDvi0LXgG1soz8y9/6W9FyM2jxKxbVOlWHK24frCB
	4/iL6Jkpgaci/9TbPerZaLw=
X-Google-Smtp-Source: ABdhPJwUsz5oxJqNeL/C127faV71ExLS5/9Nsc9I34DuG/nNexfMLhyNWtNOicu+J1nPR9AC8bJX8g==
X-Received: by 2002:a25:a226:: with SMTP id b35mr10726893ybi.356.1594757297034;
        Tue, 14 Jul 2020 13:08:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6087:: with SMTP id u129ls8176390ybb.10.gmail; Tue, 14
 Jul 2020 13:08:16 -0700 (PDT)
X-Received: by 2002:a25:3f81:: with SMTP id m123mr11421670yba.476.1594757296686;
        Tue, 14 Jul 2020 13:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594757296; cv=none;
        d=google.com; s=arc-20160816;
        b=y/2fy2qi62qF36s/+A5gsuAx0QqITnD2UNriz1z1NP+0NQyXgnsZQkxlqtQJAcRM+/
         njdvLsGq+FO1ibPTExDO01YEJXdTlO2yED0MsWmcyT536gHt6NcaNL37ciIczDmylRxR
         +cUaP+Wg4L2+vE4q8QhK2PhLg4Usv1AU2IrQSghMYlNJXAfMi9Fo7DX6bPoq1mw+Axzf
         r3dO0R34W+AjBmsHTlxw0yidnBA2tDYoU0WzoTcySnXF/DNHYwAmwHbcQmnFh7SLRz2y
         NPqLUjLC8zF/OgpfIl7NP1ze7AWt5paKxn+oZeYU/rQstF90Cr83oM+OK0YOVyeShI4w
         rOlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7R3dCXqsSoyh387FNpg7of+Vy2Uow0OshGTXM3A59Lo=;
        b=ODH/HmTLXSpMTV0j3o8gVxzHkLB/GEBHHYEL4bRvCM4ojFb5FyzwSP3TNDdp6MvDNz
         essyTDBVlJYSBZ/bsgT1UQ7ar+YVYYS10Xx/e5G2w0tXFlCtqWvyO39dJOfwpKw2wri+
         Y+3g+ZJD6f7magnmEd98FD1dXgUyePVTcZN+/soUq4vTpv3V1f6kQaomDt6f8aHukPk1
         nVuCZAHGeAWLZPzDnhVmvQzBqD7+OrkxN4z4F8LClLvH+KZxK/8UUX0RrOWF5jnHausb
         fDXZkjYzVGNV7fPHwqz9ZNutO79ES6TvVxyappFjE1DN8Wcec0T1oB76iHisx8O7IKro
         tBrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qa5xbbgS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id l126si2475ybf.4.2020.07.14.13.08.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:08:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id y2so18675580ioy.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:08:16 -0700 (PDT)
X-Received: by 2002:a05:6638:2591:: with SMTP id s17mr7925053jat.23.1594757296233;
 Tue, 14 Jul 2020 13:08:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
In-Reply-To: <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 22:08:04 +0200
Message-ID: <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qa5xbbgS;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Tue, Jul 14, 2020 at 9:53 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Jul 14, 2020 at 9:29 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jul 14, 2020 at 08:30:14PM +0200, Sedat Dilek wrote:
> > > > I did a full new build...
> > > >
> > > > ...and it fails with ld.lld-11 as linker:
> > > >
> > > > ld.lld-11 -m elf_x86_64 -pie  --no-dynamic-linker -r -o
> > > > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o
> > > > -T arch/x86/boot/compressed/.tmp_misc.ver; mv -f
> > > > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o;
> > > > rm -f arch/x86/boot/compressed/.tmp_misc.ver; fi
> > > > *** ld.lld-11: error: -r and -pie may not be used together ***
> > > > make[5]: *** [scripts/Makefile.build:281:
> > > > arch/x86/boot/compressed/misc.o] Error 1
> > > >
> > > > It's annoying to fail on the last minutes of a build.
> > > > Sorry for being very honest.
> > > >
> > >
> > > I applied this diff...
> > >
> > > $ git diff arch/x86/boot/compressed/Makefile
> > > diff --git a/arch/x86/boot/compressed/Makefile
> > > b/arch/x86/boot/compressed/Makefile
> > > index 789d5d14d8b0..9ba52a656838 100644
> > > --- a/arch/x86/boot/compressed/Makefile
> > > +++ b/arch/x86/boot/compressed/Makefile
> > > @@ -51,7 +51,10 @@ UBSAN_SANITIZE :=n
> > >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> > >  # Compressed kernel should be built as PIE since it may be loaded at any
> > >  # address by the bootloader.
> > > +# LLD linker does not allow -r and -pie options to be used together.
> > > +ifndef CONFIG_LD_IS_LLD
> > >  KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> > > +endif
> > >  LDFLAGS_vmlinux := -T
> > >
> > >  hostprogs      := mkpiggy
> > >
> > > ...and was able to build, assemble, link arch/x86/boot/compressed/*.
> > >
> > > - Sedat -
> >
> > Thanks for the test.
> >
> > Can you share your .config? The error messages look like they're coming
> > from running modversions on misc.o, which is unexpected as it shouldn't
> > have any exported symbols, and it doesn't in my builds.
> >
> > In any case, I think the right fix here would be to add -pie and
> > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
>
> Hmm, you might be right with moving to LDFLAGS_vmlinux.
>

We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
used together.
Is that the or not the fact when moving to LDFLAGS_vmlinux?

I cannot test as I modified my local Git and re-invoking my
build-script is doing a whole new build-dance.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ%40mail.gmail.com.
