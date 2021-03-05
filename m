Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCEVQ6BAMGQED3WXFUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1683932E1FC
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 07:07:06 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id x63sf693598pfb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 22:07:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614924425; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2KN6XUZdKPyZBCt1BRMlFRvPEaFW06YFcz9OB0KBS3KlRXtDLndof5pf1c77eAKiP
         y0baG3cPZUw7fB7BHfCAQKLg548IdNH7KfFXg9BhN6fDJnTNRWN6ZdOm3yh9872NmIol
         OU4pODOblKLYEcP+GGV2YiQAKvP+Cig1OlKKD3O2J2+q8KiwQ5cSDc7yB8tgiTi+QKQd
         N+/4CSbrSQeWVqBmthjObFH65cI1A6Fng0baLulZ3wgWNSpe7qMyj3ggzwtLsJPwEvbs
         fXkJZaFkfAAPCR2H7eZ8f3awgO6WRTfTJ9xXObjSQKudWQGQXxLCFv99t6geEZd0K/wI
         TaYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=UXG6hmRGgwJzVDijekOdVZH7GZx5KeOZ9tB4tQHc+TQ=;
        b=naJvuPejum1bHd0EUGwr7ZWM0Un58NKdphG6eiabvrE4ZAZO9WJ+4ssMb1sGAmijeD
         vkn9PNGd1e8RhNlqJk0PHrBCqNaDdaH4p9HR5TDsV0Ti408KIxJJoV9X0+aYEZBkH5xt
         jrlEm8UIBelC/UskhsXn4zB5NDiT4I9dBx9Qqnra5rc4NeyDvx8qLNxqetLAyCqqjKGT
         XE1ktA+m//r7XqJAogezeyCzXT/+z5/4st2W/Ff2NqPWqVZNFYeZ9ZDyogcMmkFODKbY
         3o79YT0ok/T0xvkWlXEQ6ZNC40qK8ZgC8+WSK9ISSqv9fnXskc1wa4Y/9/PnSJcCGPRI
         COZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UnkXThtI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UXG6hmRGgwJzVDijekOdVZH7GZx5KeOZ9tB4tQHc+TQ=;
        b=lpv24H8iEgBlw9tP4Qt+lSqfcGXX5XzNVDEnGEaoYCPg1mn9idA4rz9/jxhH5GGS0J
         DG3/TDcqpAwkqjhjB3jPsj4136oAMzOpbrsxq0+qoxqJCKesO+fjYZarqjvIo/fJc0rT
         jodP1uIKlvDuUVFmlG+DBaQfxNcS6vZoGaYPejH7rY7yRv82HrNC2rhDTjmy6pD+Afu2
         WYz++u08jgHhGCjwHWxOXMDbQD2OMABBGHShAUuqPQkcaJ6YlDDFf5aT6qheYapif0tF
         3gECG+8ILjGCoc1ICh+PqulaFf0pYaDCdqBjfUItOzWBMP/4bxUfUiop474FG+NCg70W
         ZAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UXG6hmRGgwJzVDijekOdVZH7GZx5KeOZ9tB4tQHc+TQ=;
        b=giELSBa69R38fl4Ev8JBPWNd11cp62oX4ZHteoFQ1yKxWA/M0+n6U4zxhwqdR7IvxW
         6SVypHEoP0OYX2raQLouy4s1HvQ7FZsWcsVi9nKI/mp3tCSyM2BlZ1DtRtq8fqm45Ag6
         ygM6+1B50IcI58O5GPZNnMk1kfWPd1I/T8VUasKoUHT1YMGdBtHRlqmtO+vxffZJHKBF
         3PePihu+bSxJLC4NQWSimEIBmi2y9AMmUoBPGm1c6IMZEEWGgzfaScj7v2oMI2ioHxgE
         KFzQ33lBlZDWgBACZrXrfPnrP+6sKbaAA0NR84FKAoZx7VjjBzmX44+DE/5nD5z1cMyv
         3VhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qHLKEe+CUIHh0KNXyKCjC6xqv2yeAFW2eIPCgZ1R78yQyvL3T
	pkBaQyNIfuwsUELmIPFnVfs=
X-Google-Smtp-Source: ABdhPJxF5ufavQsuD/sElQtlSFiSQFcep9J+/WpG0BDBkZFTDS+u+DGaIDvBSXMUlxkWqTYuFcoWbg==
X-Received: by 2002:a17:90a:7e81:: with SMTP id j1mr8769508pjl.127.1614924424828;
        Thu, 04 Mar 2021 22:07:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6bcb:: with SMTP id m11ls333225plt.6.gmail; Thu, 04
 Mar 2021 22:07:04 -0800 (PST)
X-Received: by 2002:a17:90b:33c4:: with SMTP id lk4mr8997568pjb.157.1614924424270;
        Thu, 04 Mar 2021 22:07:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614924424; cv=none;
        d=google.com; s=arc-20160816;
        b=B8zPsb9ziiDOz2eU3XyHHZLWO7bOe8vocn0Clk3qfTxJtbQ66DtzFb/7FVRwU8SiQ8
         oALbl4NAv9DDYQJCcIO06vveSZqo2dkAYPZmVWzipwahoGzw/FvORDosVjbhWxMpRizh
         HkRnnrFo7qLK2dXaspYNi+9rnRpfQeiW3HJc6eDEwm6A8b53tIZ33rSJgTl1BWUI7bXQ
         W3mOjgVR2N4EPUOPms2Wp3KgN0is82C4QxJYBHb54sKCuaDrhjF3wYtMwYtbr8RNdVcQ
         ABut/cBKvKwVP1nTExEElApAR4+jDguhsRmhXQPFld+JauENRZ5o3E7ZUfhnJcNL5oqQ
         1hiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=axtBVNcIKru8BTiupCH9xPKdR4trfvDzg7QV+dWIl84=;
        b=Wa+FilcJY0W3AcXAEhiY5FUaRjihACOBZODzSMTHpj0WHSWIHOxKaYBgzf5n3MAnM6
         X1zGyXc0MLhIVwy3wucXFCC/hiMFG2ndUBLLm9DtBb3RrnbAwXqQUd127KkOdrwiqjfE
         6BjxRMLiHTflqYpo//+6Cdj6xdYK5z178uEnYeKiSB9Ctc5xr6aol8jPXVpM7RqNj6eL
         ggbYlpkD3een5j38fRzf9lYbAXZpW6bg4pCcPgVXF6aXHAB0eFtd4aKBqN65HS6E2AXF
         kcHhywypLJIjnSdwuooRJZV/PcTmgOTrMtvP8FG3fSJkZ9y+FU3OA9DCBAc8QKQTrPzO
         9jgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UnkXThtI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id e200si100711pfh.3.2021.03.04.22.07.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 22:07:04 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 12566fLN027082
	for <clang-built-linux@googlegroups.com>; Fri, 5 Mar 2021 15:06:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 12566fLN027082
X-Nifty-SrcIP: [209.85.214.172]
Received: by mail-pl1-f172.google.com with SMTP id u11so831514plg.13
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 22:06:41 -0800 (PST)
X-Received: by 2002:a17:90a:dc08:: with SMTP id i8mr8206973pjv.153.1614924401138;
 Thu, 04 Mar 2021 22:06:41 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E+GL3SyOk-jQ0kdXtMzg@mail.gmail.com>
In-Reply-To: <CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E+GL3SyOk-jQ0kdXtMzg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 5 Mar 2021 15:06:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ4SibwSONO8io5_b1d-ELmfTYTpwfwJk=ABcfsNhEU3g@mail.gmail.com>
Message-ID: <CAK7LNAQ4SibwSONO8io5_b1d-ELmfTYTpwfwJk=ABcfsNhEU3g@mail.gmail.com>
Subject: Re: [PATCH 1/4] kbuild: remove LLVM=1 test from HAS_LTO_CLANG
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <nathan@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UnkXThtI;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Mar 4, 2021 at 5:47 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> + Sami
>
> On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > This guarding is wrong. As Documentation/kbuild/llvm.rst notes, LLVM=1
> > switches the default of tools, but you can still override CC, LD, etc.
> > individually.
> >
> > BTW, LLVM is not 1/0 flag. If LLVM is not passed in, it is empty.
>
> Do we have the same problem with LLVM_IAS?  LGTM otherwise, but wanted
> to check that before signing off.

3/4 will replace this LLVM_IAS check with AS_IS_LLVM.

We do not need to add a noise change.




>
> (Also, the rest of the patches in this series seem more related to
> DWARFv5 cleanups; this patch seems orthogonal while those are a
> visible progression).

Kind of orthogonal, but I am touching the same code hunk,
which would cause a merge conflict.


> >
> > Non-zero return code is all treated as failure anyway.
> >
> > So, $(success,test $(LLVM) -eq 1) and $(success,test "$(LLVM)" = 1)
> > works equivalently in the sense that both are expanded to 'n' if LLVM
> > is not given. The difference is that the former internally fails due
> > to syntax error.
> >
> >   $ test ${LLVM} -eq 1
> >   bash: test: -eq: unary operator expected
> >   $ echo $?
> >   2
> >
> >   $ test "${LLVM}" -eq 1
> >   bash: test: : integer expression expected
> >   $ echo $?
> >   2
> >
> >   $ test "${LLVM}" = 1
> >   echo $?
> >   1
> >
> >   $ test -n "${LLVM}"
> >   $ echo $?
> >   1
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  arch/Kconfig | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 2bb30673d8e6..2af10ebe5ed0 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -632,7 +632,6 @@ config HAS_LTO_CLANG
> >         def_bool y
> >         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> >         depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> > -       depends on $(success,test $(LLVM) -eq 1)
>
> IIRC, we needed some other LLVM utilities like llvm-nm and llvm-ar,
> which are checked below. So I guess we can still support CC=clang
> AR=llvm-ar NM=llvm-nm, and this check is redundant.

Yes, I think so.


>
> >         depends on $(success,test $(LLVM_IAS) -eq 1)
> >         depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> >         depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> > --
> > 2.27.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E%2BGL3SyOk-jQ0kdXtMzg%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ4SibwSONO8io5_b1d-ELmfTYTpwfwJk%3DABcfsNhEU3g%40mail.gmail.com.
