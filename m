Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBE4NT6AAMGQEF4C7Z4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE22FCADC
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 06:58:45 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id u184sf5254134oif.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 21:58:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611122324; cv=pass;
        d=google.com; s=arc-20160816;
        b=rKsFGuZqZNtgJBu7lCurqc5uU84FBHWbMQ+CeEdbWsTvH6ueVKqYDJG8iYqtxmpe0k
         9j5QM1XeLyDQp/o97FHpalwPWvPl2vcklKuU9m3cpWYgAe4lm85JpZOvwuyRY9OkSFui
         rN51R9GsDwND//muTHzSfIw1QOFLaPV5yGx4SfZWlu+g8jlnapjRLvNBZxRfotVH2dmO
         PWPFLjiIZgDW8wOD7ROOSXEJ4XHXCbQfQHFhXydJa2RVnc7Lq/l5TQ7HZWbaxP9b2YdW
         De1EOBe1yzNorZyFZZsjU4VKkjdCvPENnTl6GCpI6rRPwOP5ntQlO1JFlvC6SPFYtMmm
         pG4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=53XPtx+SAuxFYrvICtIfL3Wv9dk7usJZrXCl28Ymjsw=;
        b=wrZ3pMcmvfo6PGOiNlvdN+yO/IQu+76mC9MeHK266ImVQAREATIm4TZ0xnMgpx0GvK
         FwQpXEqngAN6LZYa74YHvzmc2VJfUoriDZ16i2U5mhvhcg2+PQyhUZvnnW6nKFA+YoIf
         lmyN5fHHrxZWWmhaju9h8v3GO9Y5o7ajPw6B353LjWDd03MoX1YgqjTyEPWFbSEBdLxc
         x4zG1CTbchu+/S/43ZNg8aGUYqzjpto5oECDqcAMCC3ul+TresZ3N3Tq3D5LNF4M43gK
         DW2EaVtgOvre1JEWyOdFGaSEYuERdQ0Bde+r9xaW/h3TnjdIq/MX7xR/zFNdeFUmLYJZ
         xPuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ulTaCuOn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=53XPtx+SAuxFYrvICtIfL3Wv9dk7usJZrXCl28Ymjsw=;
        b=hGvUbIrTzwFVUUmr96rrdJSgjru10vSoOn4+KgHSa0CEQvvdt6U12AZZs7DFd17dTb
         AcE4aYK+NnxdqW8JzRsOMNO8XtkXR8Dt95PazcK067p18TnQXwt4lhyE9EbKe6KXSO+I
         PcZqyZLeE6iueJxp6uiPf09l3UdH1TN+ADcesaYg6fGalmP9V6kxII49FImX9hvY1Dkr
         b3Uok5AgICY2Vfegv3R7Vz7F2FVQ0OpLl0WE941C+CfCsMIkRb7CPBQi9M0YzIndzcgp
         POBDRSwz/0t0VMgVI7k6q7xAsYYJGxnta6jw/AqVPnl6a0iPpr1YLAv1b5mvSaRrLw52
         D8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=53XPtx+SAuxFYrvICtIfL3Wv9dk7usJZrXCl28Ymjsw=;
        b=GI/AeExVk4r+EMPgZBGx3AOvsekC36lVS8rClCxd6h3of8U7893+IWA+wXjUPpt1Fw
         1JOfS0NoQtcd/dRCfl8Gx65QYEGlwksxsxw0bXM2LylD38GJeGzGXQVOJjKLS/b0L1qf
         EKm4nbARbsFiBHKK0MIoTj3MFayxBvdyPAwW7P78qLy8CXicU7kVm4zOibTKkOA2/UMl
         5hJKfoIWEMdvUbxtdA1YNmlPkDdDot1ARF5hhxDaLXIPy1Wv1aFtWjrfUJVcJLB3pSd5
         DSKlzcKcQtuAyvFQx9Kzj+aAxHV34MaA2sLwFdvs2L96Dptk6lB4I8D55TghUKiAiJkX
         Rv4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EiZEtTGdj0HN7xsNlglUqg5ejYeurKKsHrnrN8PA2BQkfDH0E
	+RYtwKey33+hD9P7mgmfDu0=
X-Google-Smtp-Source: ABdhPJxI4wCHJr122JDszVdshNZCKb55f0BX8pV42rTMFmnajvHP/R342/pSkDRt41abRp2ec3XihQ==
X-Received: by 2002:a05:6830:10:: with SMTP id c16mr5847362otp.162.1611122324043;
        Tue, 19 Jan 2021 21:58:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2413:: with SMTP id n19ls6038978oic.7.gmail; Tue, 19 Jan
 2021 21:58:43 -0800 (PST)
X-Received: by 2002:a05:6808:d3:: with SMTP id t19mr1989076oic.104.1611122323608;
        Tue, 19 Jan 2021 21:58:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611122323; cv=none;
        d=google.com; s=arc-20160816;
        b=t6Qj7DaUfEbnjLiS/q5cofDBUi1/a1hfVZkXXHGVanFr6+fCT3A52fFJRW4N1gu6gh
         giw7p72JCYofoDOxsjSG1ib2iQw8AL3SyBCdECXD6uBsf2gWdnYHv8KhloymKQ5z7sca
         TyuQdlrBDK65DLqd1MfOZq47cIrcdX5LUO/G5xHaNGScMFtwwyT6aFhmZe7gRtDLWswF
         4CAVnjmJ0neiZcxud0tiFA4OBtssegamU0wI/IY4IAtMsB4oIZOFrSEZ1VM7Q8jpwKUV
         tlmaavOlB06TJG5GV9Hbsqb+6GDLvIKL72uGldFaGjm1vfsz1QaBAOVdVWdnHN2Sblww
         4EDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=KzN9Ryj1GGQwDPkR8jROwhO9v+XE5tP9xjOAU8GcS3k=;
        b=gs2SAnJ2foSl9pf7wp7RvvPUBZp2mf7Jst3DkrRMZF5ungTvpILnt9fsmk7DFmNV7S
         MIDHJmUA6tI0HXABISUd2C90chDq5dkSHucXcWGYFNtnRxA2LbN5WPYjGUDuZ9kw7ci/
         /Sd5EnDVCRdl9MefA/YgHOlu20es8gicZ9KaTBkDM0ceEfh9lSRC0nJZ/KKgGNhmqC9t
         YC9O8e1IZbb85e0q2JjOkMqLUYkdpzgRSS6Xy0Nq0zfrJ3PNOm45+BlDN86ykPkKUb9N
         kwfhVKdXpRXpv0KqY/uFAVWuK6i16wvKIl81fp/xBiKgp9u1QelhVqe6FJKyVsOcFPme
         xD2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ulTaCuOn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id b124si28560oii.4.2021.01.19.21.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 21:58:43 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 10K5wQ9Z016966
	for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 14:58:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 10K5wQ9Z016966
X-Nifty-SrcIP: [209.85.214.169]
Received: by mail-pl1-f169.google.com with SMTP id x12so11909784plr.10
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 21:58:26 -0800 (PST)
X-Received: by 2002:a17:90b:1b50:: with SMTP id nv16mr3678277pjb.153.1611122305635;
 Tue, 19 Jan 2021 21:58:25 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-2-ndesaulniers@google.com> <CA+icZUVtodEz=E+TG0Pt_OUDgW5-0x2WzVOhzQDbyuVR1igU6Q@mail.gmail.com>
 <CAKwvOd==3r8HNe8P5SuoumRtQ3w7iZkGhhVNhAEyh=rSFDNtKw@mail.gmail.com> <CAK7LNATAAZ_LH_q8x9A7FwBy=kqMd8Z0rVm-wuC1QqxpgsnBQg@mail.gmail.com>
In-Reply-To: <CAK7LNATAAZ_LH_q8x9A7FwBy=kqMd8Z0rVm-wuC1QqxpgsnBQg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 20 Jan 2021 14:57:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQW70HzjQqbwHui7PiNBbEtHEpgv+v7xDEgpFArNaFTng@mail.gmail.com>
Message-ID: <CAK7LNAQW70HzjQqbwHui7PiNBbEtHEpgv+v7xDEgpFArNaFTng@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ulTaCuOn;       spf=softfail
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

On Sat, Jan 16, 2021 at 8:54 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sat, Jan 16, 2021 at 6:51 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 15, 2021 at 1:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > From: Masahiro Yamada <masahiroy@kernel.org>
> > > >
> > > > The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
> > > >
> > > > You can see it at https://godbolt.org/z/6ed1oW
> > > >
> > > >   For gcc 4.5.3 pane,    line 37:    .value 0x4
> > > >   For clang 10.0.1 pane, line 117:   .short 4
> > > >
> > > > Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> > > > version, this cc-option is unneeded.
> > > >
> > > > Note
> > > > ----
> > > >
> > > > CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
> > > >
> > > > As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
> > > >
> > > >   ifdef CONFIG_DEBUG_INFO_DWARF4
> > > >   DEBUG_CFLAGS    += -gdwarf-4
> > > >   endif
> > > >
> > > > This flag is used when compiling *.c files.
> > > >
> > > > On the other hand, the assembler is always given -gdwarf-2.
> > > >
> > > >   KBUILD_AFLAGS   += -Wa,-gdwarf-2
> > > >
> > > > Hence, the debug info that comes from *.S files is always DWARF v2.
> > > > This is simply because GAS supported only -gdwarf-2 for a long time.
> > > >
> > > > Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> > > > And, also we have Clang integrated assembler. So, the debug info
> > > > for *.S files might be improved if we want.
> > > >
> > > > In my understanding, the current code is intentional, not a bug.
> > > >
> > > > [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
> > > >
> > > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > >
> > > Subject misses a "kbuild:" label like in all other patches.
> > > You have:
> > > "Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4"
> >
> > Ack, I wonder how that happened? Ah well, will fix in v6; thanks for
> > the feedback.
>
>
>
> I will apply this in my tree,
> adding "kbuild:" and fixing the typo pointed out by Fangrui.
>
> You do not need to resend this one.
>



Applied to linux-kbuild.


>
>
>
>
>
>
> > >
> > > - Sedat -
> > >
> > > > ---
> > > >  lib/Kconfig.debug | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > >
> > > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > > index 78361f0abe3a..dd7d8d35b2a5 100644
> > > > --- a/lib/Kconfig.debug
> > > > +++ b/lib/Kconfig.debug
> > > > @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
> > > >
> > > >  config DEBUG_INFO_DWARF4
> > > >         bool "Generate dwarf4 debuginfo"
> > > > -       depends on $(cc-option,-gdwarf-4)
> > > >         help
> > > >           Generate dwarf4 debug info. This requires recent versions
> > > >           of gcc and gdb. It makes the debug information larger.
> > > > --
> > > > 2.30.0.284.gd98b1dd5eaa7-goog
> > > >
> >
> >
> >
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
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQW70HzjQqbwHui7PiNBbEtHEpgv%2Bv7xDEgpFArNaFTng%40mail.gmail.com.
