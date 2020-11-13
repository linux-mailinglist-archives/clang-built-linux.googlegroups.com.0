Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUNXW76QKGQEPXGKYWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 285152B13A4
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 02:05:23 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id b20sf4960085pgh.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 17:05:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605229522; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZaIJAnjxQJ1bwL19lMUWa3KXVoqWoTiEdAoCt6yTlFyHIinGdenZQmASCDTqlntYX1
         nQ6mmJOMQXIISwEsaaNtg8LlUEQ6HDWGlM4nvXcLjfW+XLRyiUTgE4mmUP/Q4uK+iQPY
         eLQjJjbKjCC43eaRaUDMEf0SZseR/PHX+ZaIPpX7xKQzbeaNAWOYcR0dfx1FnntxP4Gw
         P2I6TlI+i3P2EjO6BNKpTxSvfV/22xZaCyeLNdM6q7F2dQUS+5FMOhgjxVTpzTO70SLi
         9ASFKw9cichQBlnxV3pKDLkCoAEsLo3u8dwdG8Tfx/qXO/v5NoCHjAYJtaNkostMx3kl
         JtEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V+JOy5+zRvuKM09d+MIYvUk+mEGxxMmNnQq19qr8LOw=;
        b=KeXCHccdEGJiV8twhJiSY++ASAUPpS/11wK+tVeG5cWca+unI6g+mjbU5miOTALh74
         MesM226OkKEbCUZiY6yWRwOQ54MQZCTUiaPwf8S78InTHL/DcsIRfhTj43O0UeXPfnXp
         obcE8+mDg3OWTi1Hr3hUt7S24j1kUYSnNpnoA31D5h6NpisGdWGM7cjmZCs/4zMFv8N6
         f4PgbZJBRIv0ik8gOxpjVQddqx+mQFf4lo6oBmHamKySZHLud9xOyLlbNo9wdl4DvMo5
         jpyLATXPC/HdOD/VRIbKn9h31N17GRJ+ftt7ijAWv8+ORp4/JfYaZCmb6tEiVjLCotKH
         lzYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LIWg6Jh7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+JOy5+zRvuKM09d+MIYvUk+mEGxxMmNnQq19qr8LOw=;
        b=kd3nhMc+1rnoDuUkdthspikSgblXDSkRFGD0k9fLTPxI0ILdHz8nUtXA2OU40R+hrV
         oZjlPnuW/1KlxIVk3UfKk6MHNCzq/DUxhpOvBotPyQ64WixliDJeWc7SsoF/Drb3QLqe
         Tl10UZ/HIEGhP//89fdv94c4zDzPuoqQC50F+8Hcgpxxu+Zz1a+Gf1iwcMpzgNU3a8md
         N7Cac2vIQAL6j7b1DIJ3DYHmZrkiPf6uXitk3KIPzW3U5lse2QBmOGV+CdWbc3H3eyAa
         vaOum+G//BXIYk+10EvF0QUgbbDxoszPns9M412TB0ThjgNC4UeV8ItZmiMLnFaqmK5C
         HqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+JOy5+zRvuKM09d+MIYvUk+mEGxxMmNnQq19qr8LOw=;
        b=Hrcczf66JpeOYFnSFXDeYAEmFgA2mqR5dI6QYb3srjEozL8k3R6AD56vhchEY6YkQM
         K8RVqd23LsxKs9EmoP9wC6CqKd+1t2gx4r9H87EFv4+XnQbVqaDd5bjGCWcdKgm6WkuN
         AFKtZQDKbLO/8/k17KLeaRqsou5M3LYLY8CkuQ3NK+LzzphO631jojtf/svVD68HH4Cc
         GDNQRyTZjl6nw81oGqFcAQj+QdArbiy5KYPNO5vqphxPd9xP6xCnq6oYA/CYCFFenGZ4
         Y4QlH5reSdCTEthqM2u089Wsf8Vf4HtRM8/8F4n4aCxroBkYzy59iD/CRxMho2QoZYEn
         p3bA==
X-Gm-Message-State: AOAM533G5IEdE9QleGWCptoK83NpdZO5GRu99S5Oq5krqnJkACPnUSFl
	I9UKfSDid+2LYKt9v4emL/I=
X-Google-Smtp-Source: ABdhPJwq4+tbM4I6uzKvClCST7/6alAJV1NpFKnWAZNT7rimSzC4O8Nsglrgtji88POtNu1wn5EGmw==
X-Received: by 2002:a17:902:8c90:b029:d6:d3b4:7da8 with SMTP id t16-20020a1709028c90b02900d6d3b47da8mr1859341plo.34.1605229521863;
        Thu, 12 Nov 2020 17:05:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:34b:: with SMTP id fh11ls2629770pjb.1.gmail; Thu, 12
 Nov 2020 17:05:21 -0800 (PST)
X-Received: by 2002:a17:902:c10c:b029:d8:c028:5ceb with SMTP id 12-20020a170902c10cb02900d8c0285cebmr1827161pli.36.1605229521267;
        Thu, 12 Nov 2020 17:05:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605229521; cv=none;
        d=google.com; s=arc-20160816;
        b=nMTPEywaStqFLB0oGpzIHl25q5P8AmE2NeqiR13kIHj5+WZ+/tHyYKZ0yQIzJ4zNDs
         jaG97kZXogQizT45wpvBYBEOrhzOX2gDSlyLQ2tpvK6ErdRLIjya1+ODOhl8dPqsk3Jw
         9hr4VpKk6lRJ6Aeqxi2vLwMp7QYMDzwHC0mTfALAg6m1QNCqcSX0Ii6ur4NVZI2FKNeX
         RsliwS7ejEiDbs2BE5RdTu+Y9cu4Ji1n++egURKWp5/DfZVknFY1Vh61eoarSGQpSbgX
         k/gsZEKyygxlpnpKRgsws/LnG5chQtvj1NbSYIlZAG9dBpbbK0OmVkriUTdKjurUfnCM
         8U+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KIfDUcpgQLukCTUlGGpYpdoSftsRK2kFhecxA1sd1hE=;
        b=WCR5RL03PbiylvLB3BCS/H8rfhM2Y6Uw2fK8CB+l8Di/3Yio+m83AMYIMj6gICyEar
         lThL+3YIIFlpP6WeDmRTT7rLcNCFL0IGmVAm3lEwdd6aRuVvK+6np/TqYEmsesgP68su
         dhzrY2ZVY0bNvrM7/Afqs0wSeszfvZRUk6UZdfGiJlT9LJkfkjhSkzEyoqDAykRA0tFH
         XvPENMPaPhHaW3QtSRm4ECK5LnpHqUVddtvDmPaUxTu7MRRnHPsOr3xHdg9U/QAaNeOS
         j8ruDeEKSjxtlJNgmIt57Tprt78O7BdFZSLGFuw+AFoVpp+dXynMSevkv+v1/i8UAgvO
         b2gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LIWg6Jh7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 38si435964pgq.3.2020.11.12.17.05.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 17:05:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id r186so5751508pgr.0
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 17:05:21 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr17459pgo.381.1605229520588;
 Thu, 12 Nov 2020 17:05:20 -0800 (PST)
MIME-Version: 1.0
References: <20201108203737.94270-1-natechancellor@gmail.com>
 <CAKwvOd=P2yFxkAXh9TUpJ=D5=jNnxnx7O5Nr3iTDeqV40UA19A@mail.gmail.com> <CAGG=3QVQTQsHhsb5cSEejZ=D4Gq60cz7kMfD8moXWeVU1odTdQ@mail.gmail.com>
In-Reply-To: <CAGG=3QVQTQsHhsb5cSEejZ=D4Gq60cz7kMfD8moXWeVU1odTdQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 17:05:09 -0800
Message-ID: <CAKwvOdm-weMaWyAK-O80aC+Y21TTeKKvgXe4kLoD2Fq1forYcQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: Explicitly specify the build id style in vDSO
 Makefile again
To: Bill Wendling <morbo@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Palmer Dabbelt <palmerdabbelt@google.com>, 
	linux-riscv@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LIWg6Jh7;       spf=pass
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

On Thu, Nov 12, 2020 at 5:03 PM Bill Wendling <morbo@google.com> wrote:
>
> On Thu, Nov 12, 2020 at 4:53 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Sun, Nov 8, 2020 at 12:37 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Commit a96843372331 ("kbuild: explicitly specify the build id style")
> > > explicitly set the build ID style to SHA1. Commit c2c81bb2f691 ("RISC-V:
> > > Fix the VDSO symbol generaton for binutils-2.35+") undid this change,
> > > likely unintentionally.
> > >
> > > Restore it so that the build ID style stays consistent across the tree
> > > regardless of linker.
> > >
> > > Fixes: c2c81bb2f691 ("RISC-V: Fix the VDSO symbol generaton for binutils-2.35+")
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > Thanks for the fixup!
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > (I'm curious what --build-id linker flag does, and what kind of spooky
> > bugs that led to a96843372331?)
> >
> --build-id generates a unique "build id" for the build. It can use
> several different algorithms to do this. The BFD linker uses sha1 by
> default while LLD uses a "fast" algorithm. The difference is that the
> fast algorithm generates a shorter build id. This shouldn't matter in
> general, but there are some tools out there that expect the build id
> to be of a certain length, i.e. the BFD style's length, because BFD is
> more prevalent. The obvious response "well, why don't they just change
> the expected length?" is difficult in all situations. (Once an
> assumption is made, it's hard to backtrack.)
>
> You can add this if you like:
>
> Reviewed-by: Bill Wendling <morbo@google.com>

Cool, thanks for the context, and the review!

>
> > > ---
> > >  arch/riscv/kernel/vdso/Makefile | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> > > index cb8f9e4cfcbf..0cfd6da784f8 100644
> > > --- a/arch/riscv/kernel/vdso/Makefile
> > > +++ b/arch/riscv/kernel/vdso/Makefile
> > > @@ -44,7 +44,7 @@ SYSCFLAGS_vdso.so.dbg = $(c_flags)
> > >  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
> > >         $(call if_changed,vdsold)
> > >  SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> > > -       -Wl,--build-id -Wl,--hash-style=both
> > > +       -Wl,--build-id=sha1 -Wl,--hash-style=both
> > >
> > >  # We also create a special relocatable object that should mirror the symbol
> > >  # table and layout of the linked DSO. With ld --just-symbols we can then
> > >
> > > base-commit: c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c
> > > --
> > > 2.29.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108203737.94270-1-natechancellor%40gmail.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm-weMaWyAK-O80aC%2BY21TTeKKvgXe4kLoD2Fq1forYcQ%40mail.gmail.com.
