Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAEB4L6AKGQEP773RJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EE929CA04
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:18:09 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id n21sf612624vsm.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603829888; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpdKqX5kEGAVZAQ0PiGFfLyhJT3E4GdOGlSB3SkSeSZbBFJupIzmdc53bigR55Z/Su
         w4IcemwkpZq2ZBmZg/cGU5vALUbPKhhiKaEMiTC9oBRgKAzYOvci+jVbzqIEzK0H+VaA
         AYKOBXZ63xRF9VHVbAxYiAXoity77buMourv/D1aifM1c5cjybiTNVA/Zs9LcQlfQvey
         YMQn5CqXWua7V8nAvpZrN3OWqctDeRzAfgcX3X3DAjf6dSoHzKjlsyoCC7vyVVfPqjmM
         CYBnU0hMh6UvD7Ww+R+Rm6fKdf0JNlqhoH62eva26RxgWCGNg1WA9C2R3QaBKHOOd8O6
         VR2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Vw24uzQrlXjIT//tETbp+R3UppimVNdJGtYxyFNPK4U=;
        b=fWpg3N8Ztjgw246mA3RF9GIFSKo7GxOXPPbw7vQ86EXzrCKyfnqZ21nSUPmwGpGiHP
         BiMncOSqQC+KaT7iugFjVgiw2b89OsE941NRry83ZKk+QxB04m0vZh3j0hitYhvTV76R
         fWaA3K3Nk77y4EDbfBVM3Q97sDiXNXNeJ4vN+GkGu5a/RYYedZYeadjbTaHadO2sCHL5
         3+zz61sG771s4D4wuoJDfRqZmvJhH0c+96A0xDo659J3+7tygEmd7xBwT69Z/CzEtC0k
         3ZYSWbUlNWzcVsIR1guhQY6elPRkGcfeAMs9srNcWaBQ3V7PSkn0z8YgIMEZDpEpOHSV
         tFWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YWQRdPDO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vw24uzQrlXjIT//tETbp+R3UppimVNdJGtYxyFNPK4U=;
        b=slw63KYKMBPrhSVvJUAJmRI+po9zh/p2dilQAOXQAwuhHItKmFqTUV32lxSvVFY1/p
         ITXfq8cZWeKGowxh7taGMe/gmM4B0BJP6YTmF4dwEMdMvQVTxbEVJM+0omdDqkS8t2hI
         VGHLI09Hm4E73BQsvOKL2JqWrPWpD48/uvA7p0yCKLnUxhVAK4dr7M4twS90TaODdWdi
         53BVLQYMyQEYkKF/FHfNsxwt7X/ILTq7WUs+pvV0UfZMRKgWNR0/kcQvkmc3qr2mGz9J
         AAoOG3wCtt8U1ycBkajwt51CI19fZRKaybZwguRfbSAO78YARHM5zYDmgDt1bSN4wICb
         ITUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vw24uzQrlXjIT//tETbp+R3UppimVNdJGtYxyFNPK4U=;
        b=EdowMn1U4eCRt514G1ivum/03q7m0ttT7zXPxt077M9LQXUbEDqjd64mVM6nUZdBui
         R+xSUZZFqAFTH923eVfMTYVGK1FFvdf7+3e5feMDYgW0we+77QLtpzKl6CRPO1+bYHfa
         XOQW1ashzacQvW19bj73CVgnjqnMTkv4kLSORzZRXmHHwbkjZk82cLtY7cLqyfrv/a5m
         gC4YkmsleEPY5CQB+AqvKjaTOLGKmEiMe1JQyRujr9hPbmROwC75qWGAIqE26Bgow4So
         4W/yd+QQP1+HnuaDOQwS6gGA326uKzAq0ZFGSSAPQLEohCJqWUdWlEpFMgrWkz55Y70g
         k+ww==
X-Gm-Message-State: AOAM5334tKY+7pan0GXdrBAyx3764p23SjC+xpCAHBuHrc33/Qm39ODw
	1Pw+eoldxDmFrj4RoB7aJcA=
X-Google-Smtp-Source: ABdhPJwUVc/TWPPwuXcDA2EYn8NHnUPn4qReT1OQFeszYITKRDJMl6PmlPKGFvnephYBbGR7URk/2Q==
X-Received: by 2002:a67:7951:: with SMTP id u78mr3197664vsc.5.1603829888327;
        Tue, 27 Oct 2020 13:18:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:45c9:: with SMTP id u67ls191106uau.4.gmail; Tue, 27 Oct
 2020 13:18:07 -0700 (PDT)
X-Received: by 2002:ab0:1c11:: with SMTP id a17mr2770564uaj.91.1603829887810;
        Tue, 27 Oct 2020 13:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603829887; cv=none;
        d=google.com; s=arc-20160816;
        b=WDB9Y0nkpn+pB+PZG9GJcahxtbQKK0hj+WJBnA8YaXH7xsM/yYVEDgrKGsapZiAAj1
         taG+w1H5zOXveNMCRS6pByGk7G9+TGBO3CEoxqZwqJoAW1BzpdMoyhzPEULBhxuzR+3m
         gZJ3w4aGCNdo1l0uY3PqAtXxsbuOZlP7zgkr7o1fKpG2RnN6X5zHrAbi4ZaHUmfzLxyd
         U5sO7FQwGOqe4wfhazdK2/XwdUbKXqhTtvDkib6NuWsA99Z6QxmqQ9Pqe8pW3BnORTIm
         ExJWu530Qc9rNxIuQzgD/Xx7D63CdtljOOJKKiTqbu/ULV3WoRPEZ6cMHr45XyeO4QiQ
         Yuig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i1Sa4pOklTVSBDn1gBaNdBfK+3lXBzX6RjisxK7EZK0=;
        b=SYKO11dKIB1MS3PnjUJWYSi0y3kPYKicZipz0i0Jg5w79b3gLyQ31NvAIg9elYj72g
         Xx1caFl9z2J3mvY5XU3IdIena3VBGuW3d9V56LTD5DBrOSKjwgyuGzBioNIePjNx/5WK
         NIOqqS4lsHUGQCXqx1f5Qw022B+88HUYvBlLxy/CElPIfCod3uJ9Jr4FzXtjMPWYBA/E
         k33d8aBBjK573LLVU/NCwH8axXnq1hxtofyB15teH+5ozM5jn1MTuHhkAsMiprUJ8QmF
         yF+P7texrDj1gzW6fJG1kPzPkairhAMpQ9HybOZognA3fuMoQ3eNOarAN3xNcLrnhIB1
         cksg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YWQRdPDO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v18si125883uat.1.2020.10.27.13.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t22so1355856plr.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:18:07 -0700 (PDT)
X-Received: by 2002:a17:902:8a8b:b029:d5:f871:92bd with SMTP id
 p11-20020a1709028a8bb02900d5f87192bdmr4163850plo.10.1603829886728; Tue, 27
 Oct 2020 13:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com> <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
In-Reply-To: <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 13:17:55 -0700
Message-ID: <CAKwvOd=8YO3Vm0DuaWpDigMiwni+fVdrpagZtsROGziinjLvig@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	kernel-toolchains@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YWQRdPDO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Oct 27, 2020 at 1:15 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 27 Oct 2020 at 21:12, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Oct 27, 2020 at 12:25 PM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > >
> > > Hi Nick,
> > >
> > > CC Josh
> > >
> > > On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > > > <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > > > placement"), which is another red herring.
> > > > > > > >
> > > > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > > > causing the warning.
> > > >
> > > > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > > > missing from someone's KBUILD_CFLAGS.
> > > > But I don't see anything curious in kernel/bpf/Makefile, unless
> > > > cc-disable-warning is somehow broken.
> > >
> > > I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> > > with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
> > >
> > > Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> > > is generated.  Removing the __no_fgcse tag fixes that.
> >
> > That's weird.  I feel pretty strongly that unless we're working around
> > a well understood compiler bug with a comment that links to a
> > submitted bug report, turning off rando compiler optimizations is a
> > terrible hack for which one must proceed straight to jail; do not pass
> > go; do not collect $200.  But maybe I'd feel differently for this case
> > given the context of the change that added it.  (Ard mentions
> > retpolines+orc+objtool; can someone share the relevant SHA if you have
> > it handy so I don't have to go digging?)
>
> commit 3193c0836f203a91bef96d88c64cccf0be090d9c
> Author: Josh Poimboeuf <jpoimboe@redhat.com>
> Date:   Wed Jul 17 20:36:45 2019 -0500
>
>     bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()
>
> has
>
> Fixes: e55a73251da3 ("bpf: Fix ORC unwinding in non-JIT BPF code")
>
> and mentions objtool and CONFIG_RETPOLINE.
>
> >  (I feel the same about there
> > being an empty asm(); statement in the definition of asm_volatile_goto
> > for compiler-gcc.h).  Might be time to "fix the compiler."
> >
> > (It sounds like Arvind is both in agreement with my sentiment, and has
> > the root cause).
> >
>
> I agree that the __no_fgcse hack is terrible. Does Clang support the
> following pragmas?
>
> #pragma GCC push_options
> #pragma GCC optimize ("-fno-gcse")
> #pragma GCC pop_options
>
> ?

Put it in godbolt.org.  Pretty sure it's `#pragma clang` though.
`#pragma GCC` might be supported in clang or silently ignored, but
IIRC pragmas were a bit of a compat nightmare.  I think Arnd wrote
some macros to set pragmas based on toolchain.  (Uses _Pragma, for
pragmas in macros, IIRC).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8YO3Vm0DuaWpDigMiwni%2BfVdrpagZtsROGziinjLvig%40mail.gmail.com.
