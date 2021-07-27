Return-Path: <clang-built-linux+bncBAABBCHV72DQMGQE6YVVWUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F413C3D7093
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:49:29 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id x7-20020a0569021027b029055b9b68cd3esf17596647ybt.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:49:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627372169; cv=pass;
        d=google.com; s=arc-20160816;
        b=P91T8ienwIyARSi/I69oosZbSfZuEX4pbgpw07YMmVC8Yzvg9KIolipaVvRM/KNYpL
         bF9nf1/lra3xt0OfyAy/asQiCcDkbm1uUUIuqUEswfuUqKZ+bxJhduS7nj3yEKlpzFH6
         QMS2GvDQVrBMrgtp8XgNXKq571WqsbPXsHO5vOCZzmrAD5ZoQriHSZXt9ScbOy/TlMc1
         r9B7gS3C7v/Poe35C/PX3OvPUn7kU0YBtltxls6lEngYu0t/gVI7Y0Jxsys9aEtldz9q
         2aOm5Av6/7zwLhodYsxygVRT1HpGXEowY9M82gAm9s/GjREKEe5/NMgmIs3rL8lBxw6u
         /bQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ln4bd4npLg3vJLtt7zxV1miALP/PVCaS24l9JGDMU9E=;
        b=y9f2RoagVz6UqVUDx/lFaj130puVE5+aK/6F0MQoWvKJDYhMzvOmx2jQvAAxr3Uxa4
         h2mr5k32Y8WB+XRZPWgXCSVOMsa7WA7Wv2Zsw2d5avSnvrRdZ0h4bhK1nJixK17owp+g
         gW5up7xBGVXLtoYcQlS+1l7emPxArXXed+VYWUHzhYa7uUtPNiNWNRAI9ApoCxfnTKDz
         SBEsQGOa8dle3SXmViBQqLRBe28dj5iM65ISwS07vkOHnlPpin7pFqlm78sz6SaI+NIl
         eOCopUhrvoTwUy1Ub9nD7S0wo0AVLTdDXw3dhjbWZGdr2ExhH12edwKDPU6+7xGFEcCo
         gwWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KQG8FJrS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ln4bd4npLg3vJLtt7zxV1miALP/PVCaS24l9JGDMU9E=;
        b=GFjU+OUQWBoUEfbzRxrLXHwkVn1Hd09140xnaRyN2Sqihjdlathb9bGdOoV5j2HIBw
         fqF8df+9xMKSGrtYnwbQCwmDJjq7HwHjWZsOs/0oUEBJRkSpB8kH5zo1oMv321QcsNoi
         7GO3BZ6DHLHx82jJhMRmy6dEj1hhbHMHFgqjdTzC3Pg64Ku38Fb4cpcnBq/OoefiZYwh
         rI3YaEhEh9FSP/bNcAoOOyCHJUvZQ/l3SCX3cE2kb2STXYa9G4xvPpCIyql0wUE2Q2gQ
         Wy3iPJB3fTXZ3YPiZdbPPGmZE+CGAe5mW3X/ZKef4TIkpNqu13Q0G5MSTHZPrKicaRlJ
         70Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ln4bd4npLg3vJLtt7zxV1miALP/PVCaS24l9JGDMU9E=;
        b=j4Y9+zxVfGVz21pDXhbkfTnGK33bN/rlP+EOqb099O5drohVRr9z6BK/8zb1g+pLSt
         L3PDFej/OPtF2MlFYWApUEEivao/13MvnkECGJ+7qsP7se5W2g0cl5I+QIUSY3t48iu3
         4nrlVfcypH/Njk10ZQIvusdRQ3H5Pnya2ZWrKiXT2sCAY+0a6vsFsmrIMRcEmaPvQp3l
         XasoA3Vbc5BJ9XiE9NxE+6rDDtSNXwHrWiwP4pJlF8/NdbRS2DRZi1tISLMX8UClXSHB
         xUvlveLeiBWHhFBcmY2pjlXKDUbgb/pezEiVXCbc2P2KlwfLtm3TZISjKjx/Id4ds/SE
         URow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532C1ErAe2eh2OkD1IT565x9peoQlxPKQ7XZG+jpquG/uXKW10G3
	ACX+m5JeQ37Ot5E+de/oLOw=
X-Google-Smtp-Source: ABdhPJy8VrzGfOtbgn37nazJUnatbDXP0Ux6XAsIcqxxwLONFtg8U0pGEC0O7qrCSWE2TCQF8NJEvg==
X-Received: by 2002:a25:3615:: with SMTP id d21mr25553703yba.163.1627372168872;
        Tue, 27 Jul 2021 00:49:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:add4:: with SMTP id d20ls2516670ybe.5.gmail; Tue, 27 Jul
 2021 00:49:28 -0700 (PDT)
X-Received: by 2002:a25:7804:: with SMTP id t4mr31093998ybc.355.1627372168413;
        Tue, 27 Jul 2021 00:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627372168; cv=none;
        d=google.com; s=arc-20160816;
        b=X5Rq/wLUJ4laZNZQmDnmcgDs3cojQVN+3WctjAj12qaYN9mt7ntB/g9UnqQ+KWw481
         THuOYimMYEVZ1R/PlcxyDx1YRrV0M0RuOt47CHSoIvtO7eE/GIup2IHtOprHT+l6KNGk
         DImfCDH3PGG6tY/oXJldEtwypyqgyhM0ir18YJIOeeUJ+Y5pgHUWAIY2CaWNUmksnGSn
         Fa2fq+bKAbADWyudga9iFUrcaCa6n8Shu3G6s/ApesRbnSsSocCerkqO8YjJdVcHM5mv
         lgEyJcZctGqXNmde86eYe4ccW4x+FVZ2hKfSbO/qo7dmTNMz2Z0EbAAZWzpinp93lKkc
         43VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sCChZZowN53YjVCvNzx0Q/C60z6U0K1cUjPsSvZ8WJo=;
        b=0n44DAWlMPib+qERXbAodUVrvJTTlryPbb0PlrLPQ2o5C51AON/MkDxyxJ9N5Z3nk7
         HqeWeAx2jjNhWGlwx9mHWyeuSh8lxTZvS8oanBCBYjVmTOQk1MHQuEoval/qkwUInQrh
         VFnB+u/WpJuYhXV08WsBpy9LUTHUTKGiCbOYfavA/nUmlCfOhSaEpnqJAgwXQ13BnyGt
         NvAhS8InpIKMNcWLexkExdalrpeEP9spPT/RSqK/HmexsvHN6E3qI1jsdNMiFY+pXPDJ
         G5/B0rqAtcCIos4JYy5bqkTTNpR2zJBkPrGMYWgz6mQd5RlRtkVaUBNITfs177LR+l9T
         OXyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KQG8FJrS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si27698ybj.2.2021.07.27.00.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B617611F2
	for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 07:49:27 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id b9so13168813wrx.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 00:49:27 -0700 (PDT)
X-Received: by 2002:a5d:44c7:: with SMTP id z7mr14268753wrr.286.1627372166012;
 Tue, 27 Jul 2021 00:49:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
 <87r1fkizxl.fsf@disp2133> <CAMuHMdVzNFqAdxK+QTp7ub7LyhDL_3GbVMoAah_s3nGuJ5JN_Q@mail.gmail.com>
In-Reply-To: <CAMuHMdVzNFqAdxK+QTp7ub7LyhDL_3GbVMoAah_s3nGuJ5JN_Q@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Jul 2021 09:49:09 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2kb2Zzgd1wvi4m2fJeHWA9aONXUriEVfnsOfYTquJ3eA@mail.gmail.com>
Message-ID: <CAK8P3a2kb2Zzgd1wvi4m2fJeHWA9aONXUriEVfnsOfYTquJ3eA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "Eric W. Biederman" <ebiederm@xmission.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KQG8FJrS;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jul 27, 2021 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, Jul 26, 2021 at 10:27 PM Eric W. Biederman <ebiederm@xmission.com> wrote:
> > Masahiro Yamada <masahiroy@kernel.org> writes:
> > > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > Does anyone have any ideas?
> >
> > Something so we don't have to specify all of these variables on the make
> > command line would be nice.
>
> Just including the main Makefile does not work.
> That's why I went with the more convoluted solution in
> https://lore.kernel.org/linux-kbuild/CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g@mail.gmail.com/

This is roughly what I use as well, but it does have the downside that
it confuses
the inner 'make' when you build multiple targets in parallel, e.g.

make -skj30 kernel/ mm/ init/

works with the normal Makefile, but fails spectacularly with my nested
GNUmakefile because it starts multiple sub-processes that each try to
build the same preparation files (I did not try your version).

What I had in mind was to use something like (but not exactly)

-include $(O)/Makefile.cross

to conditionally include another file from the top-level Makefile before
doing anything else.

          Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2kb2Zzgd1wvi4m2fJeHWA9aONXUriEVfnsOfYTquJ3eA%40mail.gmail.com.
