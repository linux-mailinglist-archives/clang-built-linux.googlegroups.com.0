Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEWM6PZQKGQED4BGQUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id DA713194570
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 18:27:47 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id y1sf5472691qke.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:27:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585243667; cv=pass;
        d=google.com; s=arc-20160816;
        b=kFr8QDsF9i3YEWiztrZTmGZfwzU0wZ9HWFuBnTmSKGv9R4h8tVMTTXqeEromJl+fUq
         gLDTW7KCMv+KF0H8L/3fAlW1EoD5bnx02MrTf02V/lwyh99OHZP3wmP5AorgwMXcyAJz
         vKaxSGR3JuGjDPHgYow/VCcG7EvARzBoVYCeJ9z/qZUL9U2WxFoC9epyTvPBOe3Y5U4x
         IGxxOFpXtUEXPepWRdUsi4xZ+MDEoEK55SFJbmzKpoyGZZ7UIgFK/7QRHtOAkWOzvog8
         8X+fic/vQGOW+gowsK0DTBcCVhJUrqg108xF7uTnZrdGXjlLkVZVr+xt/aI0bbUH6CvY
         4hzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Fbv2ugHsqtAoHQHQ0x8uUkFjXw3hFOuqVFnHR8YFYOc=;
        b=v9z6cuppV/aFn9Q7KmexpFvPMW5cwazpJvQTwuUvQRUbUElvHpcTeasBy0zncy4e6I
         atIKWKTuMOqdtcuLAxzLrdeY8W68ZxDlbXbz5jiYTK+bm+P/dJDmPDDn/+cLMdaFdnP0
         Xb7tP+JVjA9eJ8Bzig8oioCOoFUaXYJHnLhbEu5LvreTWcV/bgrc10acL78Gn4Br5I13
         ec+1dLqLYhjmGBvwaJBL5Gf4xA5syrWtEGMJWwbzwWUcaGhszG/oeKH5j74rs7uexM+5
         Q6UU7FgTsIOlkplzj1ilw4qG1oXu9DFx+bEi4QfJenpyOaATkwANdDw26tDYm0NzHFY7
         2VEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vk5A2110;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fbv2ugHsqtAoHQHQ0x8uUkFjXw3hFOuqVFnHR8YFYOc=;
        b=RIFuVdHH5EYyGT/veabR1WwKg8bfK30/RRDmNZbaUPMCGhfXFUMqjRXKzf0oblvn44
         YBfiNCFk9SDXcZzcM+feZEaiwIn8i/wuUIZbLM4hVqjJsiAlLQJyXMCYvgS6BjfqJrAt
         2Gxl+6rM4GPrnnW4pOnhMdZnN4m1ncxslZ627Gb25ijhi5UtZ/5UXhbYCv9cxJL0GxZt
         kteB//mSiswowpafxcPW3mlJC79uX1L7VlO+whZv8tiaw87dVhe4V30eayfsVL2hpWmI
         F8IFJ99qjR+iL71Vel4aciqzXJDrZrY4a1FBnI1xufHAollQUbZA2BAJGtTPBpOAwhmE
         zCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fbv2ugHsqtAoHQHQ0x8uUkFjXw3hFOuqVFnHR8YFYOc=;
        b=Mo5iSUOPm15+dhD0wh6P8EFEbVd32D4A0+8ozWixYgTgKB79g+9I4l/beFBCTTCTXb
         47LSHmbPgNgboTcO3VbOZMPToSA7F4f+aIWssCd8ZkYn/nsXA8BNcWJ68TRScC/TkxwM
         KKEd1aQuLNOXRHms19hdvyyu7/YI68g0yXPlDLoi46wH8FLRreuoqrE52+WCBbz0KB6H
         LnsCKNsl2nXkHvSsv9FN3J8WgTwu7mRn4oSYMwDCKm2hHF9kms9It6Hu3xj7YmXxFsOg
         N07pp7To6G4MUKSXGe0tVBlth2eAPwQ7YTYtW4XefEU5Eg5HHAXwnwPkmz8vDHdRp58D
         btrA==
X-Gm-Message-State: ANhLgQ3H6Y9QDe7zg0Gm2X/U7mYe5TSzLWdT+2L78ZS2mH/REJTEtLAw
	Ie6Su9ry+EKn53aiXLMkWag=
X-Google-Smtp-Source: ADFU+vsWUUg0fSJ0XUQbkx9UK/2mqp3LQqvY9JPNSJzbbMiARzU5ga2L/tCwtvkuFZ5jJ/Pr+nxqNw==
X-Received: by 2002:aed:3221:: with SMTP id y30mr2723832qtd.199.1585243666914;
        Thu, 26 Mar 2020 10:27:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3284:: with SMTP id z4ls2462967qta.11.gmail; Thu, 26 Mar
 2020 10:27:46 -0700 (PDT)
X-Received: by 2002:ac8:2f15:: with SMTP id j21mr9748677qta.55.1585243666091;
        Thu, 26 Mar 2020 10:27:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585243666; cv=none;
        d=google.com; s=arc-20160816;
        b=q0VKXfsBs8Rx1mq4USh7fAPgqK23qfgNvMai3EjOWWuOgoIEmvFQKyPuZ7mhoYfSQG
         cBYB02XY6KQXNeCqnA6jPGJa+FpXBFrqLs1PUKn/iU7UDrMqFvbWmGKk4o31N5GrFrY5
         qq431RGFzVwTqTJZON+YVLtDfnX/lXieqB0+mD22jRGfy72rsjn1MZR1yWpKz4IAUtes
         Tj9xc4taXBCCczWWgK/7LmJdNvoytgTmceEYPThSwYmWyxc30m5KfCovoPdHrBGSCFti
         KPln4GEG1xYytqNc6JEE+zIzVXPeoPS4jwy25w+qyEdkmHxyt62Iq96g2nKueyGNjVMT
         ZpFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4NpphCo6vE9dSdPy5tXFH6AEvJXO9V2xgWr809lDT+E=;
        b=MjWIqfiNPSJRv8f74oWzaTXiVaJhiiM5FzCXp9PxxyjmLzRIeFWV/HGHdKipOKHFDP
         3RdMRaCe/502pLDIEWfBHFs2LkBQf6FvQFSsVd48sFPQhiC2kj9ApkQoQc7mI2rXuJau
         Nn8ET/nxRytFvFw7qwKRU4UX3HZCs0QGfz/xep/Qrd73qlu2DfZbxXSY0VX39EuALWMp
         T300epiVuFhPxR8Gy4A/+jxiSUb/vg5kzpwpgbOmtjZiV4z58GSTGHCGb+URKjwVBNk+
         AeG/8kzimOaJCsK8PEZFjYEWmCVXMMs8p+2Rtuo235h9/pq9o2OYoWVJajCzRrXVkvch
         Fx5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vk5A2110;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j56si290427qta.0.2020.03.26.10.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 10:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id f206so3104568pfa.10
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 10:27:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr9962966pfk.108.1585243664874;
 Thu, 26 Mar 2020 10:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-2-masahiroy@kernel.org>
 <CAKwvOd=AXnAjoa0iOhPc4S49ZpDDX9BYB-BZQc=6Z0dygVYLPA@mail.gmail.com> <CAK7LNATXz=x7M-HOfWLf1fc_km5qBYa5u1i3Bj30C7aoJPGjSA@mail.gmail.com>
In-Reply-To: <CAK7LNATXz=x7M-HOfWLf1fc_km5qBYa5u1i3Bj30C7aoJPGjSA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 10:27:33 -0700
Message-ID: <CAKwvOdmGLmbghDAguisUZFUvGiBQVnfEogAFCtXaDLPxOLVYmA@mail.gmail.com>
Subject: Re: [PATCH 01/16] lib/raid6/test: fix build on distros whose /bin/sh
 is not bash
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Jim Kukunas <james.t.kukunas@linux.intel.com>, NeilBrown <neilb@suse.de>, 
	Yuanhan Liu <yuanhan.liu@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vk5A2110;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Mar 25, 2020 at 11:49 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Mar 25, 2020 at 1:36 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > You can test raid6 library code from user-space, like this:
> > >
> > >   $ cd lib/raid6/test
> > >   $ make
> > >
> > > The command in $(shell ...) function is evaluated by /bin/sh by default.
> > > (or, you can change the default shell by setting 'SHELL' in Makefile)
> > >
> > > Currently '>&/dev/null' is used to sink both stdout and stderr. Because
> > > this code is bash-ism, it only works when /bin/sh is a symbolic link to
> > > bash (this is the case on RHEL etc.)
> > >
> > > This does not work on Ubuntu where /bin/sh is a symbolic link to dash.
> > >
> > > I see lots of
> > >
> > >   /bin/sh: 1: Syntax error: Bad fd number
> > >
> > > and
> > >
> > >   warning "your version of binutils lacks ... support"
> > >
> > > Replace it with portable '>/dev/null 2>&1'.
> > >
> > > Fixes: 4f8c55c5ad49 ("lib/raid6: build proper files on corresponding arch")
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
> > > ---
> > >
> > >  lib/raid6/test/Makefile | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
> > > index 3ab8720aa2f8..b9e6c3648be1 100644
> > > --- a/lib/raid6/test/Makefile
> > > +++ b/lib/raid6/test/Makefile
> > > @@ -35,13 +35,13 @@ endif
> > >  ifeq ($(IS_X86),yes)
> > >          OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
> > >          CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |         \
> > > -                    gcc -c -x assembler - >&/dev/null &&       \
> > > +                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
> > >                      rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
> > >          CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |   \
> > > -                    gcc -c -x assembler - >&/dev/null &&       \
> > > +                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
> > >                      rm ./-.o && echo -DCONFIG_AS_AVX2=1)
> > >         CFLAGS += $(shell echo "vpmovm2b %k1, %zmm5" |          \
> > > -                   gcc -c -x assembler - >&/dev/null &&        \
> > > +                   gcc -c -x assembler - >/dev/null 2>&1 &&    \
> >
> > These should all use $(CC) rather than hardcode gcc.
>
>
> Right, I had noticed this.
>
> We often fall between
> "let's fix this too while we are here"
> vs
> "do not do multiple things in a single patch"
>
>
> If we replace gcc -> $(CC),
> we also need to touch line 51 for consistency:
>
>        gcc -c -x c - >/dev/null && rm ./-.o && echo yes)
>
> ..., which is not our main interest now.
>
> So, I leave it to a follow-up patch
> if somebody has interest in it.

Haha, ok, no worries.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmGLmbghDAguisUZFUvGiBQVnfEogAFCtXaDLPxOLVYmA%40mail.gmail.com.
