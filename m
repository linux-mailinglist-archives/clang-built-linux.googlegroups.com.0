Return-Path: <clang-built-linux+bncBCQJP74GSUDRBQ7B72DQMGQECLWQDIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id DE85F3D6FFC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:07:48 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id j8-20020a9d3a080000b02904d1a21b3fbcsf6952001otc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:07:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627369668; cv=pass;
        d=google.com; s=arc-20160816;
        b=BADZsPf+AubDyDqUdMht0kxlJ8r0way+gqzwS6szyflX9dM4dWuRSKdvVtUUMRVeCq
         S6ySdc/gCi9y6PSHuf9dKXsPnjlv3zIxjUmOayjsqNa6/+lK6uDspC/+tekTc6iaWtgV
         9PmGWBFkVBo1JlaphLXmaU9vYh243VaPgzGBHW33dhsE+Dg93I+4g+6cGOm9SJtXS/Zo
         1EHs8U39RgRVodbxVnlf0GfKn5bZk1Ogvm/y7k4ghec5B9jkitPSUw/pMxeq9WDq2lcT
         tJudxhOT0k08u8uD2oxaFkHkULscE+u0TrgpWTEI8q53ql8dgebUhXJJ8rv/mrXukrHY
         DdDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WlSBClHAVaF2sVGckWhZUSZeFggQhDvDg8x2hduZNCw=;
        b=xIxBmSsS7v4yoNTXi08ZTSLauNdv9W5GskStYIXmA2gGekh3nrFivAaSfUYXRj4b6y
         eSymo716U5XYkLdnU8lEN4TtpHgci5jevuYU+4GWNBlGj3wUkXsZuRzI9V5vwdXETmIx
         PFV3kNAB40flLRBl3LhdMI4h3XPU/xKhhQKRKcsPXalzZ+xI6A4ZnVKg+R9UIBFRt+ie
         x5+Evb2x23xrmS/Sw8h3UTg2u6fS/wzrwGrQlVMo+K93fpMJuSa7fNBIZjZ2d/0y6y3a
         sJBkXJSRNEcW2pmASgV1vNGVB1t8x4ehcyWrK/72hbGIZWPAGPlC2wgq+JJjUfquJYlU
         bBpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.44 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WlSBClHAVaF2sVGckWhZUSZeFggQhDvDg8x2hduZNCw=;
        b=T5jgTBxuOf0MQCzjU7KZrvAtr40eqKHbfjPhwXRA2c8FqBDHYkq6TtRo2p31kYhELQ
         oKwrluwlNLOLPQpXsWtz2zs5KLrDGkfsUR4DMQd8etXz0Fltzb+Xs0f5/6zqv6YoJwAp
         ZG/KTEY/IhNYUxPMNkC/HjkSWpW3u9JcugKqUEj8IgrGJy6ObKe6K9orJ+IqC15cBssH
         9Zn/cnGFryop52jJ0oDWawPXH2ywl5tyqpGSpVHqv4OwyOtl01R8fNrMrlv7y2TXW+90
         eMg4g1F0QrU7y2+ZU0KOH0FVlmr5FpqN49GC5k/xBBuP0EBU0HYjkc8/nfmT8QhBSUHb
         x5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WlSBClHAVaF2sVGckWhZUSZeFggQhDvDg8x2hduZNCw=;
        b=lRlbLMU/YhjnJGCflqbqIz/iPrjhzZZwl6AFHdkWx9DiBDOvkJTpWQFHa8r2ZgefjV
         8WHV2eRTOobXiyb6jahF+0+5MyM2F5+LmvRCuOZA5lwAjIPn+v99+xllySpHfluHLbKE
         PfAI2z6RoYZP6tUeWFyXCseCuR/9vILsF1BCDkA136aueI9IiHmWdu8pBf2b/7P5lqPy
         8cUnMZDgGyJWDgBiDbtP/36wRevB+MWpz2NLWu3e2uf9czZ4cMfVyU0whXwXvcjj9avn
         U3efnPHQSv5/t1yzS1VgvV0ZesekjgSsVzCh4tzh9WRWlgw+UrPE2+thb9WjQnfnh9j4
         6aKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wdY+SwzpvyBruYAYWLkUtHdrl7WAieRWuM1iW366sKkWWZFAH
	sLwkOxc0a9kFsJmJ6KV6wJw=
X-Google-Smtp-Source: ABdhPJxGjUFU3PrvaqTjTJzltCMhB+dHeAQtXzlEpQBsbpbzyrdDH3nMwaAFcNFCcsu1wCi5Y0+REg==
X-Received: by 2002:a54:440f:: with SMTP id k15mr1930831oiw.169.1627369667915;
        Tue, 27 Jul 2021 00:07:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a01:: with SMTP id v1ls6509243oth.3.gmail; Tue, 27 Jul
 2021 00:07:47 -0700 (PDT)
X-Received: by 2002:a9d:8d3:: with SMTP id 77mr14385424otf.6.1627369667334;
        Tue, 27 Jul 2021 00:07:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627369667; cv=none;
        d=google.com; s=arc-20160816;
        b=WpnbFg2r7OycRzN8IQ69wNwE2K7+8mRY6E1cizkI3lkGWaM8+KK0nWHVj7m82GUOPa
         j4eX9UAkZA0Qbo7z2eTBaM9vO1ALkpjiTL7tyFZ4IUOtxdeCoXlejIXXsowyNw3C2KXS
         J/8FsG2kcooE138CYK89XYP0NNfQmCkpvpPeVTaRsNid6sFm0KVL/5wlYbyVNtIjAPsc
         wVXfGlIB0mCgzdSfoByxroBzvPqxTXBiRpaHlgE/Yij6amQby3Ha6toBFJfmjwBk9ZCW
         bVVFxOjpW1IIW4+dLJWIfpsH0WlO+4i6ljAhP3DZGMLv//VHRKnej7PE0YdA2EIH3/OT
         Tctg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OWWpSAtCNA4RpYoScDMo7iZfNSeN3Kj8E95aS29aW0c=;
        b=NOSxSLVeIKlftlgNmLhKahu9AbrhbH8XrWl6JP5zoQp2MsKoMedWOzojtZMiK3KodG
         CZJ+dR+MQxEwwnTU09jkoqMpxZhF19SMQM/926PPSC1jEU1cIfEHN7WCUhu72UN8jySA
         Fq4ljRgcdSOTX4hYMQrSifG5EOpShcYTLXL7BU8HC/73FkD6OHsdlDfphvcAi4lL8LnM
         HLHoj063nkjzo09u2DZiLCqx6BiC7Jz+9QVefJYhf5XX2aYk0UfdvLApWGrVXl+JKbNf
         agDMTC96Nw8PQgeVuJcxoB8NmCMK5FulSB+TbUXt/0TJ4V6RyPt16/nh1Ue+740xLJe1
         TkIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.44 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by gmr-mx.google.com with ESMTPS id q1si262096oij.1.2021.07.27.00.07.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:07:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.44 as permitted sender) client-ip=209.85.217.44;
Received: by mail-vs1-f44.google.com with SMTP id o8so6630130vss.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 00:07:47 -0700 (PDT)
X-Received: by 2002:a67:7789:: with SMTP id s131mr12340280vsc.40.1627369666722;
 Tue, 27 Jul 2021 00:07:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com> <87r1fkizxl.fsf@disp2133>
In-Reply-To: <87r1fkizxl.fsf@disp2133>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Jul 2021 09:07:35 +0200
Message-ID: <CAMuHMdVzNFqAdxK+QTp7ub7LyhDL_3GbVMoAah_s3nGuJ5JN_Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000e7813405c815864b"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.44
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

--000000000000e7813405c815864b
Content-Type: text/plain; charset="UTF-8"

Hi Eric,

On Mon, Jul 26, 2021 at 10:27 PM Eric W. Biederman
<ebiederm@xmission.com> wrote:
> Masahiro Yamada <masahiroy@kernel.org> writes:
> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> >> <torvalds@linux-foundation.org> wrote:
> >> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> >
> >> > We do most of the other heavy lifting in this area in Kconfig anyway,
> >> > why not add that compiler choice?
> >> >
> >> > Obviously it would be gated by the tests to see which compilers are
> >> > _installed_ (and that they are valid versions), so that it doesn't ask
> >> > stupid things ("do you want gcc or clang" when only one of them is
> >> > installed and/or viable).
> >>
> >> I don't see a good way of making Kconfig options both select the
> >> compiler and defining variables based on the compiler, since that
> >> would mean teaching Kconfig about re-evaluating all compiler
> >> dependent settings whenever the first option changes.
> >>
> >> I do have another idea that I think would work though.
> >>
> >> > Hmm? So then any "LLVM=1" thing would be about the "make config"
> >> > stage, not the actual build stage.
> >> >
> >> > (It has annoyed me for years that if you want to cross-compile, you
> >> > first have to do "make ARCH=xyz config" and then remember to do "make
> >> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> >> > never really cared).
> >>
> >> The best thing that I have come up with is a pre-configure step, where
> >> an object tree gets seeded with a makefile fragment that gets included
> >> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> >> 'CC=' and possibly any other option that gets passed to 'make' as
> >> a variable and has to exist before calling 'make *config'.
> >
> >
> > There is no need to add a hook to include such makefile fragment(s).
> >
> > Quite opposite, you can put your Makefile (in a different filename)
> > that includes the top Makefile.
> >
> >
> > I think this is what people are already doing:
> >
> >
> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> > in this order.
> >
> >
> > So, you can put 'GNUmakefile' with your favorite setups.
> >
> >
> > $ cat GNUmakefile
> > ARCH=arm64
> > CROSS_COMPILE=aarch64-linux-gnu-
> > CC=clang
> > include Makefile
>
> Very weird.
>
> I just tested this and it does not work.
> I did this:
>
> $ cat GNUmakefile
> ARCH = alpha
> CROSS_COMPILE = $(arch-prefix alpha)
> include Makefile
>
> In one of my build directories and the main makefile simply does not see
> the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
> GNUmakefile is being read, because everything breaks if I remove the
> include line.
>
> Does anyone have any ideas?
>
> Something so we don't have to specify all of these variables on the make
> command line would be nice.

Just including the main Makefile does not work.
That's why I went with the more convoluted solution in
https://lore.kernel.org/linux-kbuild/CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g@mail.gmail.com/

Please try the attached, which combines everything above in a single
file, and which works for me. Note that "$(arch-prefix alpha)" didn't
work for me (it resolved to "gcc"?), so I used "alpha-linux-gnu-"
instead.

Good luck!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdVzNFqAdxK%2BQTp7ub7LyhDL_3GbVMoAah_s3nGuJ5JN_Q%40mail.gmail.com.

--000000000000e7813405c815864b
Content-Type: application/octet-stream; name=GNUmakefile
Content-Disposition: attachment; filename=GNUmakefile
Content-Transfer-Encoding: base64
Content-ID: <f_krlpouog0>
X-Attachment-Id: f_krlpouog0

TUFLRUFSR1MgPSBBUkNIPWFscGhhIENST1NTX0NPTVBJTEU9YWxwaGEtbGludXgtZ251LQoKTUFL
RUZMQUdTICs9IC0tbm8tcHJpbnQtZGlyZWN0b3J5CgouUEhPTlk6IGFsbCAkKE1BS0VDTURHT0FM
UykKCmFsbAk6PSAkKGZpbHRlci1vdXQgYWxsIE1ha2VmaWxlLCQoTUFLRUNNREdPQUxTKSkKCmFs
bDoKCUAkKE1BS0UpICQoTUFLRUFSR1MpICQoYWxsKSAtZiBNYWtlZmlsZQoKTWFrZWZpbGU6OwoK
JChhbGwpOiBhbGwKCUA6CgolLzogYWxsCglAOgo=
--000000000000e7813405c815864b--
