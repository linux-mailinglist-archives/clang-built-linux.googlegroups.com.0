Return-Path: <clang-built-linux+bncBCIO53XE7YHBBN4PXD4AKGQERHFK2MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BEF21FD5C
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 21:30:00 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id m18sf10312924qvt.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 12:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594754999; cv=pass;
        d=google.com; s=arc-20160816;
        b=tpgbnbfjAPDWfeD6lCWAp9DZe+OEyVM9l4bMtp3hIXR2UCA8gVMkgruZd34pWF9P83
         uk2bH9GvVzsR/kWhjEF9SmjFvr9MaEFMjc227OVB5ESKws9L8Fjz7UhTcSsjoid7J0+d
         zR6Bgd7qpfQSPNmKimMFXymbaoC0f0NtWgdUUAVYYvv0fm5x9rj7OOxCIdEfB38dj/PY
         rHFjJSgXSGMJfpG5ScXcWSKu6yfwOph/3eJtOTF0pjb3La2B8i7lreRdKV3DGfXDUwZJ
         WLGSpXCmzVAVxUg/v5rAWvd/75WE+5h7w1AUp3qSbfLAsjpO4SLdayKlbXsMcFsbkd3L
         TMiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Rny+C6+QaiGPRErsDs+Bn7hTx/dKUtL+uWmy48L6cpI=;
        b=y5dMnMy8Hf49sLgt67XNmxEw7dZHPrmh32TT5i/d97LJkIuj+SxPa5lYtSNUPWTAER
         HRugB5BWgJZ+erMo2311gwMSeXfSSKi/hzHypEOEu0ZmUQ/Gr0K+SOK2KsflrjwzPRgb
         A7NthVGBV/7zyoIdDEClwwVdgZjnHRrjtuxGHD4CLZR3HrEXH4ZlkCs+JakQ8E/UiqQC
         8lH2kAkVITfGlTZ4MztCGP4bjyqKizbSKE5IpoBusW01GbF5kbNa4bPaQrJkfvCrnlCj
         bQL4uyVsyxZlkuFjDzzERk5yO1Slzo52kZ2UWskouH6IpIxJYqkm8sT49Oy7Kf/1+JMk
         RckA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BCZcMlRn;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rny+C6+QaiGPRErsDs+Bn7hTx/dKUtL+uWmy48L6cpI=;
        b=Vwpk0Bu+WNchXm0oPuGaITyZgnZgwJHl+0W3R8SQlxN6dtredaWp696JzBsaPG+Wqc
         E9KwpnYGUWbAKG0bDAXFxN05uKrw43kJfzGKF5Qu+lWWOBA9w16NN5LySFDHoFgQBLYK
         5df8pn5YfCWX0MFq8oDa16fUkxi3OonsQTgBok/CLPyOmxSUBftd/XLy0X2XzyhW7sFW
         HSUrlYQN8DOtQOvUi8fen5ugfwV52+ocm9EBksrs9caOoEXR1WNbKG5ItRCgGL+GGmo5
         Z+StwDd32bdc4E9npem1p/mKJfCx+Oso22XF/xNiP5vwz8iFmsOqSBiixwiedrXWE990
         3/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rny+C6+QaiGPRErsDs+Bn7hTx/dKUtL+uWmy48L6cpI=;
        b=Kmb1iDdi8hAq+gOsXARoELembMqgHCM5ngRvCv8G45CGCaCbq+c8BaKCsZeh0UkdMo
         tSe/YbK4VhwVZILFOgRhsUqln0eeqT9R1rnFEzqybBcLm//I/mA6NKzHbDKuPMLqbRYd
         h3LHFq/oWU7QBxc4P/y17raM3W9jWleTEzvkoOM1MsN8OLk/Y1re8/DH7fPfXXZzqR+o
         U37V9tZZ75gpIkOPGMF0xWgilalMZUQIImqan/dQzKEaYThvXQerzi6OK2H09rC/ZMDj
         cwkUvM36qaAMrFuMr7qjlmlbiKC3W0TA+I3ylQD84eKnWK/Sad6NcInAUZA/PwC0k5uD
         jdxg==
X-Gm-Message-State: AOAM533uCNDj47Zo5cdJYOrTLQTUsJpyC27R8zQivVXiW5b7rQuZ/n4q
	gSswybxHC5wFsQwEMG0poXU=
X-Google-Smtp-Source: ABdhPJyoC22KKx83eFWqrxFJ7FrVzB7fAbviXj5B8TigIlu/p9Ncj/1XhZ1/c2feAH3/ddEuYFE50w==
X-Received: by 2002:a37:9fcc:: with SMTP id i195mr6304806qke.415.1594754999501;
        Tue, 14 Jul 2020 12:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f307:: with SMTP id j7ls4846912qvl.2.gmail; Tue, 14 Jul
 2020 12:29:59 -0700 (PDT)
X-Received: by 2002:a05:6214:18f:: with SMTP id q15mr6344679qvr.23.1594754999007;
        Tue, 14 Jul 2020 12:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594754999; cv=none;
        d=google.com; s=arc-20160816;
        b=ddG3gB5T3b2JWeFAEsTr+/TYzxyqMKc/9Ia+4TETdO1WkISisY4S9xU//3AftpNu/n
         ceB/Y0ry25GICjvumoJVlu3TvlMeLkPd+aJqn/t2ZMTSn8CpXtuQVkbVRyy+sc5o2QQ7
         QFeRUzMJHiOFCk+VPgvQDfJB0zOjpY3joAvWJNlpwQ/hfa/7cT6MAVAzRjl3Xu1YVjXX
         feJx+FEBJWB9ygupebzJc7QwIrrX1ssl/jcdSqjvc2abi3s1M/1ak7F7a1J2th8fO3Fe
         KGELpX4lrztmrHuAipvGTQT+xIfjUfX8+8Rj2UVmC75uBX+YYkB7WqrV7rjbxLPpls8y
         iHcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=BGNvPJrHn1Rri9TOnWUH5zEtUJcHDoODobxdHdGDsPM=;
        b=VJ5C3YBq+lNPNVmIf1cwrNrmMDhEHiUKLjzDh3RSbepkEbgKTLUePjxZ6eJSp3EGU4
         UvY4Q7mxKBWeVovNHAxEfy/h5T+C7fccnBeSqh2whyzk5zgZIW/aRA5sGkac8nLUN7xK
         D8rnbvY1WrujttpBrNUGnPN0eDgzU4Dx9Oy2J+6+f+fTLdbkITE9XTmEX6J1eyjwlJ0L
         tzQk7L5aMNRlLyT8na875AszvHA9A7qrt8zTtlXHsF8d6lGKs+IWHdW86CqIAwO8kQ2p
         r/cHBoGVd7r32b0++/zaw2S9Yis8IqqRUoJuRpXy6yb7ZkfNiBThpiu1sar2viTCVyZt
         EGig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BCZcMlRn;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id q22si17744qtp.0.2020.07.14.12.29.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 12:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id g13so13759228qtv.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 12:29:58 -0700 (PDT)
X-Received: by 2002:ac8:178b:: with SMTP id o11mr6187972qtj.320.1594754998616;
        Tue, 14 Jul 2020 12:29:58 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm22591590qko.24.2020.07.14.12.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 12:29:58 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 15:29:56 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714192956.GA689174@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
 <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BCZcMlRn;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jul 14, 2020 at 08:30:14PM +0200, Sedat Dilek wrote:
> > I did a full new build...
> >
> > ...and it fails with ld.lld-11 as linker:
> >
> > ld.lld-11 -m elf_x86_64 -pie  --no-dynamic-linker -r -o
> > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o
> > -T arch/x86/boot/compressed/.tmp_misc.ver; mv -f
> > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o;
> > rm -f arch/x86/boot/compressed/.tmp_misc.ver; fi
> > *** ld.lld-11: error: -r and -pie may not be used together ***
> > make[5]: *** [scripts/Makefile.build:281:
> > arch/x86/boot/compressed/misc.o] Error 1
> >
> > It's annoying to fail on the last minutes of a build.
> > Sorry for being very honest.
> >
> 
> I applied this diff...
> 
> $ git diff arch/x86/boot/compressed/Makefile
> diff --git a/arch/x86/boot/compressed/Makefile
> b/arch/x86/boot/compressed/Makefile
> index 789d5d14d8b0..9ba52a656838 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,7 +51,10 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> +# LLD linker does not allow -r and -pie options to be used together.
> +ifndef CONFIG_LD_IS_LLD
>  KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> +endif
>  LDFLAGS_vmlinux := -T
> 
>  hostprogs      := mkpiggy
> 
> ...and was able to build, assemble, link arch/x86/boot/compressed/*.
> 
> - Sedat -

Thanks for the test.

Can you share your .config? The error messages look like they're coming
from running modversions on misc.o, which is unexpected as it shouldn't
have any exported symbols, and it doesn't in my builds.

In any case, I think the right fix here would be to add -pie and
--no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714192956.GA689174%40rani.riverdale.lan.
