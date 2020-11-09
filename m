Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUEUU36QKGQESSIUREA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id F17922AC3D0
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 19:28:33 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id l8sf1562205ilf.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 10:28:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604946512; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwh/OLy/Noh35XUPaPw8+E83PK+he+1n5QHtMWSR86A7K+lJ/kDVIH0/o5m127jjYZ
         xZlw2Cco7kuxnT/ioGzg8lnLtgeeGglifDYLie6iMwGIhCyCM+mwRB7noSDvDXukjlec
         sG2YH3DIAzo0w1m8oP/2wvGg7dV2/moK/W0Ix/cht2G8sqkfB+rnNByzzg3lFwPut52P
         6VcoRmQhb0/CzJEQwQAr2LF9LJrV+PeXgyEu+9JKS06vrwloAu2jT/MSal3F1+kH9arJ
         /f57Np+OU/lR9uSHrYGN4Wt/C/aifTeDT4W+H5t7lxVbnP2s/LqWJLWlc/SM00HdhcMs
         KQLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l0hah2NUdosGvk9kef1CrgppY8aiY8zV9RMGUU6ezms=;
        b=YP8QcA1gT5PCslf3mEp2BYw8jhOrMQRgAdftBE6iACehlIXBchu420uurIyt32lzXn
         1LPrdJdAIn+1nSS+3l8g/33kr7+36bDvRSNVybw1ddQx3BRC64T134hyA4hFvc6hiXM0
         5aZyMwj4f4hYnLaMvvxE3xIFXVeuTbuRwv6Q//sDoW0P907j+LB50g2+wJNIq+FYziQw
         vT0lH3WMVZJ8bPjQCL+npOXEbqlBms3d8VG4kEmHERNMk9aLWhmWgXsH2x/DjPLBgwnm
         6g7w67EJXRjx/igh5hfpxXx2GzMfZXfOnJ5fP+pmUKajHQtDBSfF5o0tUylCfchgMWNL
         U3Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C1w6G7M3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0hah2NUdosGvk9kef1CrgppY8aiY8zV9RMGUU6ezms=;
        b=WCS52HoLG9lSTUUZOkblfbex9fuwq7zXhh+959Qcnu0oGhgYszlW2vF1U7ZOBUFK/s
         yL0o3/Gzz08MyFgx/QmD/5gZwBHsRbsHoEzmORH/jZQi5zMLI6Pcm76SaWwpBvlLfcZz
         x60QU8f8nzXnNXivnHn/MVyja95MN8ol0Cy97mj3/hqkS9oX8SYMryEXYhau2np4Rf7h
         Lq7NHsPkHDET7G7NXEUNIPmQBa4E/fR/KsapEDic2UM/3+Gqdo9hmeONeUSXhivsajGk
         su9BLy3O2aDrrWquEQvl4TLoLuCp4cVwo3p+RhTju6FoKQEOs5Qqt/Mc1+wVzPf/WZTz
         x1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0hah2NUdosGvk9kef1CrgppY8aiY8zV9RMGUU6ezms=;
        b=iZr90omkY5hcIaZRVUZL55rFFkX2ps6lDOXvIdDIPyB+mayVwtGxKC9iQL4/lqnj0h
         59TXRTmKAIyE6OwcPG1RuCAlepAWQtkyneZPh3+BrU14sZHylzZ6eDaXNMegM+HUMT/E
         /pzRBPsZsUX9yf6uURRVpxIJgbusY3N7DRpFh6O3TuwOSLsscvwFNwPd2oErSpFyHKQb
         pvitiPjmi6oI8i4IZgMrbZspazWzHRIItTcKJy0UiSP2FHCotIf10ij7typlkTVm041t
         SO5j/dGNXAbhc3XMVwjUf+firt2I84+hpeDb4soBY7xgg2hkoYy9IJNhvqDrG6r+6oXQ
         mDGQ==
X-Gm-Message-State: AOAM5339zprkgVQu+/eL3dF6VDaxQ9JPxLSR67mEwRJ7woGkP7wIebhF
	BFIDjNQvcI7rTTwihfblYYM=
X-Google-Smtp-Source: ABdhPJxQZjmn0rq+Eq344mU6bpHScYMyctQ5YAvcf53wpftQQg3WM2GcyyzOT7q+2JWE5FzGULCByA==
X-Received: by 2002:a6b:5809:: with SMTP id m9mr10955709iob.186.1604946512715;
        Mon, 09 Nov 2020 10:28:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a07:: with SMTP id t7ls1977016ili.8.gmail; Mon, 09 Nov
 2020 10:28:32 -0800 (PST)
X-Received: by 2002:a92:d84a:: with SMTP id h10mr11997677ilq.39.1604946512297;
        Mon, 09 Nov 2020 10:28:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604946512; cv=none;
        d=google.com; s=arc-20160816;
        b=gmmmxs7yfvY3njNxmuy7J3NwRvuqmFDi0QKEofGbGAOVBHFJGcXo+HandCWd6JmnG3
         GAa+zt/WmmdOufYMUo0+5TvFR6K05Q6qxU56tsanHiID+g85oyFSCaPHTQKw5D1ex4TI
         pLEQc56WaNrz4qHlDAqvIJ0hXR0X4hEXd4Jx4MoeYy+fJc2v6kkmMJ+Dvwuzpu8G/6R2
         rbG4mjiwXHsuOBNY7Zg+LGLjpwafRD2zy0AzR1Yc/xN2PK3v+C0RmTdubpP2Abu9J5nb
         Xu34okltbRWrzjKZ9H7IrsFTK1yIWrtn6hcLl4shXerANY4KktA5ua3VylidKLjUXqKy
         0mTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AESt3W/kjM4jiN20NLWIgosAY6GP/k+vLstE0r9o34Q=;
        b=VR2p6gGLg9S6rF0p5mJGE5QPYX6fF0nz/3GHBW7uyW66q5PhDpozHLBANx2ghdVUNs
         Q9wTkFLMoZdCUW8OF36hIHvjIilnbU2v0ksLDkrXLd/nUUD76LmVjjT5cPhuHBKznHYB
         vP+viYPKLbXKIAQ+ypbgypHNV+m0/BpD/gYlwPwll+Y+t/BjsB24RIVbueB7HPiTL1AT
         wFkundB4vgmY7DGDgcGK1jDGI8hNrwyTISTslNyYTbRkAIzpNvL3APilNRSEMzH3eeyR
         C6vbNXgqqz/64XvxPWdjEOCzEp8mF6CN+LkoG8slKralJQ0LeWq8XtFp53O/yP2XhNG4
         XyEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C1w6G7M3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l1si566523ili.0.2020.11.09.10.28.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 10:28:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i13so3076985pgm.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 10:28:32 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr14317420pgq.263.1604946511533;
 Mon, 09 Nov 2020 10:28:31 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-3-ndesaulniers@google.com>
 <20201105065844.GA3243074@ubuntu-m3-large-x86>
In-Reply-To: <20201105065844.GA3243074@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 10:28:21 -0800
Message-ID: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>, 
	Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C1w6G7M3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Wed, Nov 4, 2020 at 10:58 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Nov 03, 2020 at 04:53:41PM -0800, Nick Desaulniers wrote:
> > Clang's integrated assembler produces the warning for assembly files:
> >
> > warning: DWARF2 only supports one section per compilation unit
> >
> > If -Wa,-gdwarf-* is unspecified, then debug info is not emitted.  This
>
> Is this something that should be called out somewhere? If I understand
> this correctly, LLVM_IAS=1 + CONFIG_DEBUG_INFO=y won't work? Maybe this
> should be handled in Kconfig?

Specifically, debug info will not be emitted, for assembler source
files. It will still be emitted for C source files (via -gdwarf-*).
-Wa,-gdwarf-* only affects assembler file sources.

>
> > will be re-enabled for new DWARF versions in a follow up patch.
> >
> > Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
> > LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
> >
> > Cc: <stable@vger.kernel.org>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/716
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Suggested-by: Dmitry Golovin <dima@golovin.in>
>
> If you happen to respin, Dmitry deserves a Reported-by tag too :)

Sure.

>
> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Regardless of the other two comments, this is fine as is as a fix for
> stable to unblock Android + CrOS since we have been running something
> similar to it in CI:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > ---
> >  Makefile | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index f353886dbf44..75b1a3dcbf30 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -826,7 +826,9 @@ else
> >  DEBUG_CFLAGS += -g
> >  endif
> >
> > +ifndef LLVM_IAS
>
> Nit: this should probably match the existing LLVM_IAS check

Sure, will send a v3.  Going to just send this for now, as it's
blocking some downstream work I'm trying to get done in Android.

>
> ifneq ($(LLVM_IAS),1)
>
> >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
> > +endif
> >
> >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >  DEBUG_CFLAGS += -gdwarf-4
> > --
> > 2.29.1.341.ge80a0c044ae-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D9iqLgdtAWe2h-9n%3DKUWm_rjCCJJYeop8PS6F%2BAA0VtA%40mail.gmail.com.
