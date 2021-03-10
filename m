Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7MDUWBAMGQEVB6FBTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0D8334A4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:02:37 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id i5sf8590792wrp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:02:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615413757; cv=pass;
        d=google.com; s=arc-20160816;
        b=sr8QMS7e+xdoAFB4Geqd0mcWl/N2KNzcvS+Fv3Hgf63CvjiUhvw73HGLOlm1JaXJ/5
         lS93WJQoLtnQ/wQXo4H+72oWmCajf/EeNFMJihdCBhP5GSFvJxN64/qeZluZdPyqqZwb
         hAFoj2djY1oknGEml373FBaZbb+goLFtP05/b8IGU6ZwHgRJS3CM+ngWb+eq6LVBuxzT
         w8zi68CpB4W/H9l1Hi50FMPJ5WSx+2OIfBa+lBj0ygzELU90vvTR161OpzXBNr+O6xIW
         awQWYR2U6Ev4GZFmYBvNOtHvAxjv5mjPW5B/AOYU2tbOWzJFiqRA+sjx21MtDupbIrqX
         Pl3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6SmDKDn2fPuJC5G9jMNsl45w6Pyk6r2SGy8KN74eb+Q=;
        b=E8vFvHzYG97Hwb7IYFjeT3LJUWKfBS8OJga/FJ+nuXtgGAVYEukcj+EgmWBn1wKLEm
         EJSv99ammHWMTm9b60elu2ulYk01VSOvl/FO/Yxap7m/w+40JSIar9ltPSvgR7j5rL/S
         ua2g+04wSAaXViKzkEOjgkK+5C1NB4Vu7YKQMX8U1F2iWxoYUlg2yKpKzqekMgF+c5DI
         b+B1UaegULVy3+KWDGPTl+tLA8DyxpOKK5wvOLvIKblVEqJifZdmGXemARZktni/yLUm
         qGC2LCjZnpHK8qa4C9Np1J/hmM955NgedF/uxsZIq7tElq1IBUl+q1o+oNCyVzJmfDwG
         6z+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dbU4ABpt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6SmDKDn2fPuJC5G9jMNsl45w6Pyk6r2SGy8KN74eb+Q=;
        b=fxc8YRd9Lzmi3Jd4y3U+GPJnZv+HeeD+iwKcub9GwiOkiv1gf8h/ZR5GBykHEIuxjL
         WhvDPX8zqhkhxOenq6MXE+0j0UjjSe6MapulLR7o7lE55gz96uDbdsBQpgxZtGZNkRgz
         t8AK50nHZuAwX50fUR7rFHz9lGj3SVb9AJSkHeKhWbf5Wo9zXc9ZrnI4Oj4KMuhWGw7+
         DjmMceOx4XvYxdJYy0VY84cCP4BlIeUn/n/Q1vEsZRjTrQ3KRhdtjrpVhVFFwJUzDhqo
         zXGDbOH9je6j4e3zPLIki0B3fm9Kk8uOWdp+EGKI+4/WTaYQOe3JY9JWmtCM3hU6W74s
         GHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6SmDKDn2fPuJC5G9jMNsl45w6Pyk6r2SGy8KN74eb+Q=;
        b=fcr+4WL1oUslzawJX+0gWMF4x65EBSCbpZ6hSpSisj/jErQ+I4CUiQ79gF9hLW2Cef
         Nhou2TaEqMXZwB+Z2eCXE7y9tul9a+FpcJ4crAigRW76wO0XADELFXWQsNN7b7c4K92i
         N7AtYGpT46TYrOJ+JvzTqeKcE4pTxlHjeKmnEXj+ZOeVD6Vq+vaBgn2HJGjuzlqq6S8u
         CcwQmmxb9RHXCMF/H0KFHWEzLUg6vOSHzCutkKhDqL+xbM5pqMYxKvn0BtiTgeJs/xy7
         YUObCZTW1bCPFoaZzCDnf+UfiqV7ELzqZ3c58NMNsiIPYEQ+R+H1qPU0v5Xdl8ZuTNVh
         Pk6A==
X-Gm-Message-State: AOAM530F/hoGqcZgb/UL0aNNt416n2SgRhRUkMi+mlBjJoXfYnUX7mHh
	glntHU57CQeX0DZTpckuXyo=
X-Google-Smtp-Source: ABdhPJwe9nZ6ZUGuJApU9cdJlXFHVbzJN3s3OG48UY7xKKPg0c/yPYDMa4RbwPGMilWvK3ZifVK61A==
X-Received: by 2002:a5d:5104:: with SMTP id s4mr5838595wrt.62.1615413757776;
        Wed, 10 Mar 2021 14:02:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1981:: with SMTP id 123ls1796324wmz.3.gmail; Wed, 10 Mar
 2021 14:02:36 -0800 (PST)
X-Received: by 2002:a05:600c:4ca9:: with SMTP id g41mr5313449wmp.150.1615413756882;
        Wed, 10 Mar 2021 14:02:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615413756; cv=none;
        d=google.com; s=arc-20160816;
        b=iVKsfg6dFPVojcLRTcG7749KJUwf8pTn/PNRYtixTsXMzgFE9R0adfERlz1MhvYYSr
         QDpfwj+WIxGHWBU1kS08Sdxz06Fx7KUv0OvVK5REa51j2RBwk0FfOYRWc8GO7/h9JnCY
         XGw0BpOz3yFla036PzXbi5qsSd4OeYttAWx+FJvQMtxYphYg3YyWuZdWzXE6NaLmbfcC
         s3LIuFVE7bbKseEzNT4Sns2vRs0tqY2Hs7zKpB3+805JeuYaLqFqnzgiKFshmLkAdyUQ
         3DTHCjbXyNLp80P7YQRuuPB0t4z2XEiw9535R1WlRgDwr6clLHzywkpTzxkbzNHU6O57
         rNDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sXKxf2WheKTyVYrbgS1oaunkjJtfisdRmZ807RF1ULg=;
        b=vDlnt8pJQKq2ZEiV9jOKgjg7dlOsUhiIX5nwCkgkI9Myanjl5F6NfDuI8hKlDsHWvw
         R8AG61pVgb/NQUHRvK+YEFvegsa7sLK08GeFVsi5J+CvkLfmMFnBjUQO6I7ovEAIxBeJ
         yt1oiIFUG+udi7uOPiH+3jtqZUBedFyQabl18ZPQqviVV6z9FpBIav+YUXz2iFydkCzH
         uxmDnkNhpPXlGa2o71j6wCMfoXE0F9nZmnfVl8X+y2xAebtOALVHczCREAKrVu6ORJzc
         7MpIZKBnn/u1qjWtR5PF2DGzsc7YSIBWtw7rGrbUMXmfMzEycoQpeo/ShW08yvQs48rF
         6zZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dbU4ABpt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id k83si23130wma.0.2021.03.10.14.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 14:02:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id k12so27646185ljg.9
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 14:02:36 -0800 (PST)
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr2941721ljp.495.1615413756356;
 Wed, 10 Mar 2021 14:02:36 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none> <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
 <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
In-Reply-To: <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Mar 2021 14:02:24 -0800
Message-ID: <CAKwvOdk4y3Ekc_TiWuk6D2KNbH_6YHZLRK9TtAnOP=cLP6E0Rw@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: kernel-toolchains@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nicholas Piggin <npiggin@gmail.com>, 
	Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>, Andrew Scull <ascull@google.com>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Kees Cook <keescook@chromium.org>, Kristina Martsenko <kristina.martsenko@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>, 
	Nicolas Pitre <nico@fluxnic.net>, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dbU4ABpt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Wed, Mar 10, 2021 at 1:08 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Wed, Mar 10, 2021 at 9:50 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrote:
> > > Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
>
> >
> > masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
> > >>  kernel/cpu.c
> > masahiro@oscar:~/ref/linux$ export
> > CROSS_COMPILE=/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
> > masahiro@oscar:~/ref/linux$ make ARCH=powerpc  defconfig
> > masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
> > masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMINATION
> > masahiro@oscar:~/ref/linux$
> > ~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
> > this_func
> > c000000000170560 T .this_func_is_unused
> > c000000001d8d560 D this_func_is_unused
> > masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
> > CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
> > CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y
> >
> >
> > If I remember correctly,
> > LD_DEAD_CODE_DATA_ELIMINATION dropped unused functions
> > when I tried it last time.
> >
> >
> > I also tried arm64 with a HAVE_LD_DEAD_CODE_DATA_ELIMINATION hack.
> > The result was the same.
> >
> >
> >
> > Am I missing something?
>
> It's possible that it only works in combination with CLANG_LTO now
> because something broke. I definitely saw a reduction in kernel
> size when both options are enabled, but did not try a simple test
> case like you did.
>
> Maybe some other reference gets created that prevents the function
> from being garbage-collected unless that other option is removed
> as well?

I wish the linker had a debug flag that could let developers discover
the decisions it made during --gc-sections as to why certain symbols
were retained/kept or not.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4y3Ekc_TiWuk6D2KNbH_6YHZLRK9TtAnOP%3DcLP6E0Rw%40mail.gmail.com.
