Return-Path: <clang-built-linux+bncBAABBBME76DQMGQEWQLPNRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3063D7112
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:21:26 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id u4-20020a170902e804b029012c4b467095sf528699plg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 01:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627374085; cv=pass;
        d=google.com; s=arc-20160816;
        b=r+gRmwH1X89U2MyjsbG52w0pBktEQskewRRtIAg7SOL20vPPpZi056pNhGZHRvnKn2
         FOSITXY5u1S9DaEFCqTvrKYewKaYSjYYN18GSQ6Tkg5Se1I598st84huH/feTVjV0Nuo
         Y+D4zVkyYl7otWa4HRRnLCN+mnpavLTV/HyTXbG3OeXbLo0Wmvc715/4V0yTpJk+pEcy
         jyjz28eyBQ1Ft77ELinCoC6y88PrgiCCnjZ4lyyoYTkc292cCI80MxDQOQSuS/LdGC4H
         L03PWqLwzbHbeRikT+5BqzW5Dw5xQIm1O1rf0A0sX+fVsxAvcpSndzyixjj8pIp0SuUi
         1aLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CdAGtxJaEcUSYQUXMsUIMObawLPFSGXijoAVCLluK5M=;
        b=v0KBO52mWs4dcBC5ej/9jvLYm5hmFzv9B1mKH6zFABGHui+1UnHC3nNdYQIA8KPWj3
         VYkwD2Qao+WwoacWOtguXXLg9h6mpT29kWneLWka2LcIhj6bSGRpN/GB0fuHm6KxJrN0
         g8HAggr7KK4dXXF1jShKN2/xhX/1BLCTGyuhHsVassi1pa6YhCi8thNfDe2MH7UFBHMy
         S9DN68/YyO+Zw3BYCUtwF4r5T2VQomSr1ajv4R6z3wieGfk4fnltnWii8ZOMCxKr05RE
         4w+WchLxII3UCjP412d8MhU7yrDRJo+6p+hWb4tnf2we1NdfYv/55ovuaQ3WFvM9FIfL
         ylVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PoFu9gDS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CdAGtxJaEcUSYQUXMsUIMObawLPFSGXijoAVCLluK5M=;
        b=ZKmkMwna9vKS5TT03HnFe8onxG0VjCNpIkDE+tg51tSXb5U+H1FMLPXE0WyUZODTI/
         oi9nWUw3mRwHaXuj99CTQ6Tfdy7sO9chABq6JrA6LcI0+5le508uVkC71phBHnC6KPZ0
         qdyFjxvoD1fsw74GKNeV4mi852xEy76J+Z5+8DsvqobyQmJRzfs+iP4IrAEBQS1AMuOu
         9SWKXJin6c4tsbbwwgDMwfnUHQ8pJU+1F0OU+kczMbrHfMFPyQOAi3UK5bq5sVsXhG4G
         6ra5xIJ+nvlcRCwDIV4ohScikMAMGsWbTv446jbi+GI9pCWRC/d+Qxw/bJlA8ovk+PiD
         ifzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CdAGtxJaEcUSYQUXMsUIMObawLPFSGXijoAVCLluK5M=;
        b=DkskgAE9zmxIznR1SGB/gGP3V2sFcehr0Qi17QvJoLS2F6Io8hvqVzJip4bVj6RWM2
         fZqvUb3Vt+gWTg52yTsGII4npLKYIvZ4z6Gt7kI6c+o6WDvaU6a1rRUtzwRA/ntdKdst
         dfMqqwE4yCwrhPCXJRa03dkG8M+85fVgU+d5JyOfhjVhCFh+QCOU0n4ci7lGT5Mejxvm
         SL6kePyn5ggrzE8b24JHl8WgZMpJScUe1L9WsjgLjmNmt7EuyQ4dt6mLeEQ3wvaD6zqt
         DpWNPcfWuddjwyMpbM/Q5C+XDSi87PIEz1ibLSBSL+xA5nhRIdAy0evBzJ16DZ6vsUj1
         l5jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VmXOMrksjE0mvY1WSlYOviXVICPtAAcNQckJc28dfm+gnA4Tq
	1fTjiTwm7RI2OoghmEQBa9w=
X-Google-Smtp-Source: ABdhPJzzpCBP4IuMrcpJU6tuE8nS0IgV4pKHkDxJnAZlNTopI5LB37TNZS/WVvCrrN5iZ7f3QlzFXw==
X-Received: by 2002:a63:411:: with SMTP id 17mr22016171pge.125.1627374085510;
        Tue, 27 Jul 2021 01:21:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e643:: with SMTP id p3ls10786242pgj.6.gmail; Tue, 27 Jul
 2021 01:21:25 -0700 (PDT)
X-Received: by 2002:aa7:8154:0:b029:310:70d:a516 with SMTP id d20-20020aa781540000b0290310070da516mr22435896pfn.63.1627374085052;
        Tue, 27 Jul 2021 01:21:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627374085; cv=none;
        d=google.com; s=arc-20160816;
        b=NAg60tpgCI0c6vqD+aM+B8Fn5gC6saNnaz3lYpO6ZzoARgaQVLmXKljrwbuoHXYnNM
         iJVqVPnQNBokUbJZmyoRMW6G7CFDPffITqPQxRb8WQTaGO+Kc1AHblpLn6V1nMLuDAhh
         uAR65wh3Zz3NGm1XaXA0Zq0wbx5/HpLO/WFl/13jJX0cApsJruF7CG3sEWoRg5aaC+mg
         0qhvQKamtyEpMht76EmpeUlyKbiALjBXz4qYKkBWr6NqxPLuKerA4u7t6RTbuE7iYb0Y
         afstk2lLEMDqRSdS+9B8Jj1LiXNOFwflZg4y45U/wPcphwlXNvDO5PPQOsESJqTgmLn0
         s42A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RLlaum6pi/77ayt/goV4RgRC7WO0Z43iEm215tih/IU=;
        b=A796i2vnZW6xJCOS123s3gDCzgz6Ic7hvJKjLF+VVbVFMWMmDRdfUxB8c3OJP2GeCm
         zl5s6+Von69aWoCU6II4ItaZEXQoiO9ZapjHIG2gBtIbQruas/voF4RdHyrNuShYOYvt
         ZZf38I67HOHFwvSZ+5v00b9z8TTtpDHf58htKlqEoryZJwOdQpmpRzY0wPPNMZLjNK/O
         Roimw0/Yra7O1QfM6AavhObWH1hmTe4N6CeZCwz4CGmSKhl81c1bgYd6Tg/GNkrvkW8S
         yglYImmzAwI+z3NqNrMQJYrpXCbrGX6lNzDNEmmuJsLOD89QyuaTzqEzVZAoS9JOLl+H
         cYTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PoFu9gDS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cp24si180559pjb.3.2021.07.27.01.21.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 01:21:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BFC7F61052
	for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 08:21:24 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id n12so10567609wrr.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 01:21:24 -0700 (PDT)
X-Received: by 2002:adf:f7c5:: with SMTP id a5mr4588576wrq.99.1627374083332;
 Tue, 27 Jul 2021 01:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
 <87r1fkizxl.fsf@disp2133> <CAMuHMdVzNFqAdxK+QTp7ub7LyhDL_3GbVMoAah_s3nGuJ5JN_Q@mail.gmail.com>
 <CAK8P3a2kb2Zzgd1wvi4m2fJeHWA9aONXUriEVfnsOfYTquJ3eA@mail.gmail.com> <CAMuHMdWDDM5pugT8KkP7cRQ4jOGJ43aUO1mic16Bsiv5eN7+Tg@mail.gmail.com>
In-Reply-To: <CAMuHMdWDDM5pugT8KkP7cRQ4jOGJ43aUO1mic16Bsiv5eN7+Tg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Jul 2021 10:21:07 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1G4pFR+R2=DiMALLpCn=24=KDfBBeycf_THLk_GoPnbQ@mail.gmail.com>
Message-ID: <CAK8P3a1G4pFR+R2=DiMALLpCn=24=KDfBBeycf_THLk_GoPnbQ@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=PoFu9gDS;       spf=pass
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

On Tue, Jul 27, 2021 at 9:55 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, Jul 27, 2021 at 9:49 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > make -skj30 kernel/ mm/ init/
> >
> > works with the normal Makefile, but fails spectacularly with my nested
> > GNUmakefile because it starts multiple sub-processes that each try to
> > build the same preparation files (I did not try your version).
>
> Seems to work fine with mine...
>

Ok, nevermind. I tried your version and it works for me too. The next
time I get annoyed by this, I'll figure out what I did wrong then;-)

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1G4pFR%2BR2%3DDiMALLpCn%3D24%3DKDfBBeycf_THLk_GoPnbQ%40mail.gmail.com.
