Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUPD32DQMGQEGCDOJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0ED3D0855
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 07:34:10 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id j15-20020ac84c8f0000b0290257b7db4a28sf942244qtv.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 22:34:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626845650; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqC6EjcNyZWA8kzORZdycZyrzNxpUEy/TpxCJjGnNuhEsAeUuCqzMe2g3Um8Ep1Tc+
         mp3ksM4U7/R0qP4WIADPAjT6dmoEBEOx8jqzjmVhpJTFqfaQz2nyF9XrpDzhPTQ2urd9
         C3crvpdcaW3HHgiXsCAPv6oZrVBtCTj9sDpKplRqA1qqeX1Cv6NFRoyrjjC0FAH7zYeC
         gdsYGxLHxenls/JnawTMXrhZmDf9HlUHBmgiUHKWPsAfz/tcdVseJ6l19PtqMK3pRqOm
         2JzZfuuqYjvg92KXEMfRpGWe980CDE5pj9O+nGO7SyTZFG74FQ1fs36wXH5XqkIdiWSO
         nwzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ddYKhQYsToeybPWTdDbyVF9vEzNb2gwAb1Xeo3DFCpQ=;
        b=qegBl+tBSZG9PHxaJO0gqVJKO9IHLi+KLGBJUzKG01vVlJVdYqhbix1cliBer0hhO+
         XfY+ZSGsN9KEIu2r+Csm+zxQNhPeihgE2B/acq9loXlfV8vIC5X5etDftYshzZFSFNtH
         IkibnqcVzysn7jrJF27yZfI9iLXkY3YiinSRkxfkHGNP1sdQt98S4pC3SWWX+4NWzJGr
         4jOLEMgbqLWX0Ka1pnR6HGn5UmVfInPRF2pjbuhGReQ1IPDMk+heBaWcQhMktP1KeJPb
         CbwybmQWJwNBDAtCbVcUKoCzL7b5aOtp1PV9EvJ7HsrcvNqvu/766Myrevy16t8TrblJ
         IRIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Gmi62dIo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ddYKhQYsToeybPWTdDbyVF9vEzNb2gwAb1Xeo3DFCpQ=;
        b=HxsC0Q0ibFoQI5NEbe4LWQmGmwQASxOSzMuMztGKvHljjpY1+qGjss9Rc2Z1coSvNp
         4XmrObs/LjAfbrF38kICJ5x9sg4IWU8KyXuBjNLlZ5hvFVABLsyO0ubHxUECT3nQNL3j
         hZF2MuH+n0csK4XmFcTOQM4PRDSWdo1LFV3P/sjAcCHGTKgo8OthPmz6/d2kSNT5UIpx
         o5Vt2oJDXmoeMOtyqXNqs0yRsUsYcWXtjxMvZxMsc1RUKPgpNjcEwclUq+ei9S9OCPqa
         3BIWwdBxl3PJEc5E10HigKqMm99NzcwLNZmT52wPINYpBQEqQG2ziFZZWLGiWWK+S+sX
         qbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddYKhQYsToeybPWTdDbyVF9vEzNb2gwAb1Xeo3DFCpQ=;
        b=qUAVcUDIAcxp+np6qjiPSOYsNNh/yajpb92yE+2v7tVi5DW+pP9jvVXJgJxRf3FOqo
         r0hAPy9ay69TiA27U4sRb+R/VC6sy5MuDqdosX4AbbdacAat6aTU2ig57T98Hm0G0Zur
         vu1YZ0jfzsFY6PxIdZ9F1tc8yXZKvL7i/u6r2TwIQQ73Y74GpRf03WA64Hr85baaMjNF
         t6NLqyhC0Emfzx36dCUKteH+flrSXczquXVOEVrmulqKfOEOqoaX/hRrp/uKlq0+IMPC
         MWBjAjURgCtHeK5m11LPVyBg8dVZQTuEUsJn7Nxnmri5tOIo0Tk6Nl7xDqjuDgfvPVX8
         YPbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XnKdn1QFgwOvuH1rdP9nKgpqx/pzCE+oOvsbrdRZPcPT08AL7
	COY9ySnlNxloY9Euxu/mg7U=
X-Google-Smtp-Source: ABdhPJycZu344TBsZhyZWw0RtDz3srelEpYfK24gVXeaAognBqyqCk+ZuIWBmkH/igzVCJHw2PDGeA==
X-Received: by 2002:a05:622a:60c:: with SMTP id z12mr29582183qta.295.1626845649899;
        Tue, 20 Jul 2021 22:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5c42:: with SMTP id a2ls555880qva.0.gmail; Tue, 20 Jul
 2021 22:34:09 -0700 (PDT)
X-Received: by 2002:ad4:536a:: with SMTP id e10mr34559876qvv.9.1626845649503;
        Tue, 20 Jul 2021 22:34:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626845649; cv=none;
        d=google.com; s=arc-20160816;
        b=qguaqYZCgq+DslqX3vByI4xsMndVq/u4rxHJZwn7qmt9yOovaZ4Ox4Y5Uz18ap7SoK
         3wHtvlDt1x5MhZvzEXUJQdb/yERyWC3xy2kz8dxt8EG9YZ5rsPCx2TsC/s3mX1Yx9emk
         v2K7XD2+TcH9dhDnP9twZoAn8dPKEFzHBt2nlGUQM8NEBDLAXYOxO3fhgDw767ZdTqab
         thRKUUfAIfNU7aHesjnDRZNe8DuPiM2ybDiiEdsxa6h1TFpti1DX23/WkQxiDo/ZrdD7
         AGMc+tEVFrkOWrl+eyl050jj1YDx/mhB39UEAxWlbVv3shL9uAe/tjWlkh+8yYrWU131
         MDrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=z652dcQglMhDrSggn6HZsaONlg0ssZKb/LMa5k913sA=;
        b=C/iQKrsZK7HeJa+TiWBhjSM3dAlLEEOXLqTfrNMGa4YhsTCRYb2Kxdsi5T6SScElIS
         Gs4gZz6XGDfcR2g/7bAuKAJ0mwbjNrpIcpZyaSkb9ttYqy3aIj+jPIZB4Gb9/aYTFVgE
         q3+8X/ElD/z9By4GpmZqe8JHMUCYz0igqb/xvxIGaTDhprOMUQg8d7slXAleR4AMsBx9
         nRsBnBpOB2yyE+llaVaC3LXw9axc7PudlV8v8FeQAq8tI7fi2w72eHXjaz6uIBMCLQq2
         7h0ImGuV4Ppoj7qoa5H8EAb2VYoKRV/jDQs8hNV4Rb1esoPb0De/Y/8JLUZtY068Lt0o
         9LXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Gmi62dIo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id 12si440758qtp.2.2021.07.20.22.34.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 22:34:09 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 16L5XoKF027211
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 14:33:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 16L5XoKF027211
X-Nifty-SrcIP: [209.85.215.172]
Received: by mail-pg1-f172.google.com with SMTP id i16so826600pgi.9
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 22:33:50 -0700 (PDT)
X-Received: by 2002:a65:498a:: with SMTP id r10mr34611970pgs.7.1626845629877;
 Tue, 20 Jul 2021 22:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
 <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com> <YPeoGucPDzFcmJ7p@infradead.org>
In-Reply-To: <YPeoGucPDzFcmJ7p@infradead.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 21 Jul 2021 14:33:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ0eopgjVi7UTJdnLBpL0T=vOi4UZtsUaFh8zaX0-Oiig@mail.gmail.com>
Message-ID: <CAK7LNAQ0eopgjVi7UTJdnLBpL0T=vOi4UZtsUaFh8zaX0-Oiig@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Christoph Hellwig <hch@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Gmi62dIo;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Jul 21, 2021 at 1:53 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Tue, Jul 20, 2021 at 02:54:35PM -0700, Linus Torvalds wrote:
> > But there are other things that stick around. In particular, I have
> > considered simply using git config variables for that.
> >
> > Something like this in the main Makefile:
> >
> >     ARCH=$(shell git config build.arch)
> >     CC=$(shell git config --default=gcc build.cc)
> >
> > would actually be optimal for what _I_ do. Then for my clang build tree, I'd do
> >
> >     git config build.cc clang
> >
> > and it would stick in that tree. If you don't set the option, it would use gcc.
> >
> > Maybe that would be an acceptable model these days? We've used git
> > long enough that non-git worries aren't a big deal any more, and I
> > guess people could use the old-fashioned
>
> I still this only papers around the fact that the architecture is
> fundamentally part of the kernel config


In fact, I am the person who did it in U-boot several years ago.

In U-Boot Kconfig, the architecture is selected by a Kconfig choice:

https://github.com/u-boot/u-boot/blob/v2021.07/arch/Kconfig#L22

(but, if you look at Makefiles and Kconfigs of U-Boot,
you will notice they are uglier than the kernel's ones.)



Theoretically, yes, it is possible to make ARCH as part of the .config
in the kernel as well, but we need careful consideration to make
it robust, clean, and efficient.

In the current model, the Kconfig stage would be even slower
because Kconfig would end up with a bunch of unrelated cc-option
from other architectures.

For example, arch/s390/Kconfig has so many cc-option.
If we allow Kconfig to choose "ARCH', all Kconfig files
of all architectures must be parsed.
If you intend to build the x86 kernel, you might think that
parsing the expensive arch/s390/Kconfig is pointless.





> and should come from .config,
> and the toolchain probably as well.
>
> I for one do have a few different tree for different projects, but
> need to try cross compiles in each of them.  And unfortunately sometimes
> with clang (nothing against clang itself [1], just that having to deal
> with multiple toolchains is a pain)
>
> [1] well, except for the sometimes idiotic diagnostics..


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ0eopgjVi7UTJdnLBpL0T%3DvOi4UZtsUaFh8zaX0-Oiig%40mail.gmail.com.
