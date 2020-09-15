Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBZM7QX5QKGQETGRXTGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A5526B50D
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:36:07 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id i16sf2802962pfk.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:36:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600212965; cv=pass;
        d=google.com; s=arc-20160816;
        b=BPcPg/vSdwawomkUhNQItk34UYxqvYIFZf3XtMwjFY/IWKlFDRExUP3cx781n+jUz3
         /6RlDHqMrzvZOmPm65AoZKvCPlPJ6QcmDLtyB/WUlMsykHW4a2/DOgMP3Q2J4ATGUIIL
         J7SlzjHHyfgqru/M7GeKIEo3GSguoAR5QjtopV2G8GQOqXfldAL1z0v1fGS/q/hR6hGK
         QIzG3iNRj9bqZydmqAmcq+44QHGjod7lJMMQ98+sdANrl9luvLdhglZ+vZs1XzHSnwTj
         UXDtvArsQKawi7VonS7v/JMEnFiwBwke9Dp2h2F6gOKAmiwWJK/FACbmk+CBIvqj/1Q1
         EHMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o0F3R4TLhhiFOR4cdyQ9Xm7gs4OO3sKlnueXsnUPNfU=;
        b=SrpS556wUOhfMXOUk1D42kKuD9wMEMjJNvN0RYBMx8e2OlOoUpa33LSuNks5kQvME4
         JQj5C3yQZsbpvUv6cteV7/+2/SuG1BuwdlbLU0aQUpTLIoBcY03K11FAU0Dvzuk705x/
         LtK6lbegdKad+tOif/XL/ZXIxyIh3VHcjLU/6vAMqIw40WnS/FkH70VlOBGrRklzv0ny
         x0wYs+TlttxhZ3O209t8eUqcR5FrzF466zEp4t3/vDKa8Z/XThTbuUIWPL/ED8DklLLi
         IAaoXE2ctbJtvznU9qwV9VTR3EpNpCmuPHs4F65NV2rmsfCVU0g7NmNonaTGQMJZcFnV
         D1ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n4d86YrH;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o0F3R4TLhhiFOR4cdyQ9Xm7gs4OO3sKlnueXsnUPNfU=;
        b=kmEvfrETqNRaHH5rfwAQW/K6MBuTmnL7Ag5UjXNOo8PAXOrOUVbfxTO1r1+zhEMR/E
         cs/01S05v3T5wIliNt5UhldPUmoTMJqRB9Ns1pcE4yfZJ+FYiMgQiyY1uq+aZkViS/P9
         cQxPXsovWJDwsGB2CVRe/V2JHrm6CnGo4qcVXBZqByl9DNBGzNjjgV2j+nS4BUp2EtSP
         pTOcTh7+cLW8We7ELbBmdpwyZub2pG5YhKgMn3mJ+XZFkzy9K9kDarw/YB9YxwD8EXo9
         IWM6o70q6x0d5+KSOBMFUfZKQoMu+lGaEl5QrvWDPXTG2lSsd8Q2spY9gaZ0Zj9/iHLk
         Gn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o0F3R4TLhhiFOR4cdyQ9Xm7gs4OO3sKlnueXsnUPNfU=;
        b=ed0xADAQQtQpAejiojTCb58NW77ghH5rTsUe7EcnbgxdR1YOhl71kuYGwDnuWHpWTZ
         1jojYW1RkiwTCuyJ5oXqaSz4EyeVmg125HQFseTsV5nufRZlQ7+vuM/w0S7L57YRFBMK
         J1oCS3xGxFujnUPTsoDBlqnF3pr8RYUA1p3IgELYSQjHjNg5mIqS6s6y3EnGGXzqlPDD
         ePkEcFKWFxta09msc8QituzOmho8t8eHbvGAU6lhbS8hn9/fIVSPVyaWmX1/k3pWVGEh
         VO4p9Rw6ZGNmHnUn8hl1qnVM5v+8q3dDXxyOdiCUn1UVv/gqA+mkEDILE7BgYUhLvjYg
         dwPA==
X-Gm-Message-State: AOAM530afdo/yXkbJrAXi238eIIm5OCkPQsW4qkMjZx0LzbzWZhcYXEp
	SQF7o0ol8GX0ezdNjqpcHuI=
X-Google-Smtp-Source: ABdhPJzHg9rgKK9pQ3T3ugHP8yE42k8W5sE569eWg74BZGOtEWHVs03uPjo8WkFq+Au1B7vZ5rj+Hg==
X-Received: by 2002:a17:902:fe94:b029:d1:e5e7:bddd with SMTP id x20-20020a170902fe94b02900d1e5e7bdddmr3725161plm.61.1600212965650;
        Tue, 15 Sep 2020 16:36:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b90:: with SMTP id w16ls99857pll.5.gmail; Tue, 15
 Sep 2020 16:36:05 -0700 (PDT)
X-Received: by 2002:a17:90b:f09:: with SMTP id br9mr1584529pjb.102.1600212964892;
        Tue, 15 Sep 2020 16:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600212964; cv=none;
        d=google.com; s=arc-20160816;
        b=UE0TlTRkXCPwUwn013YDYztIL/1NSkXQHNdmJbUptRpdEF0cxr8M3HgNvGn9CzDhfh
         jSQM8aW2+XVoJgynq2Sp6yOmYZTrSGWFUmBpYsR+IAgRjC/NY8pY4+CeO7NduFqjWL/M
         jnJ68prHv0r5wxpcEZQIEemcrQ3+4SqJ7FYn2J0S1VDA3+H8jr09fchTEaYPOwkYU9VH
         2Ja75nJppiLlqf4w5hBWjw7UUYDcB4Nf9CgxJ/ajhuux+YEAf3w6lAquasw4IP9iuc58
         FnPl4smBZnkFjalF2vrDW3Re9wPW5dOeGLS1LnVfkgdr58746czdIh+0RhUDTDeMQnNw
         GXZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LPIBIQbbpXb5b+E+3fSEaQzi61gRepS0Kzj7VhcTRxw=;
        b=LPhVE2shzU4MYlbtk4eW4KSrQDedrFi/oGkUdzaJezt+wElk/cNgFmrSSDNQ+scqxh
         vGrAGOGudRY21FMcmYNOgxICzStNl11RbquGfMmKdcXr0QpC+bKc0ckFo7Exl/9zQLHo
         mM1T+FzoKWYXVwE4kc1WVb1NCMk+yPXUzVP438V1pIPUNBy3xGz8P1PTQUavevD/yvPW
         TYyhbA58lfUf3UAAn7Tcc3uV7fBj/NwNuG7RfxeowG2uT57yMWIEpYCQWkiOuINi+Ja4
         BivNLobbFfRDRXlmCKZxx1s1kNhYXN7P0D+xVYOcEr2XQjhDVJ1snclQ68kuY7c7tyhX
         L0qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n4d86YrH;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id mm16si89903pjb.2.2020.09.15.16.36.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id o6so4992481ota.2
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 16:36:04 -0700 (PDT)
X-Received: by 2002:a9d:758b:: with SMTP id s11mr13757374otk.251.1600212964087;
 Tue, 15 Sep 2020 16:36:04 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <CAKwvOdmNzapwEo26m0soAR2OLFxOoERPKbKgvQ0bfoqjNkEVCg@mail.gmail.com> <20200915212804.vvm7ovffqynkvi5a@treble>
In-Reply-To: <20200915212804.vvm7ovffqynkvi5a@treble>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 01:35:52 +0200
Message-ID: <CANpmjNMWtZCUv-yB5eRBXaB=FLZESmtruq56Q3dS7hu2zDr9kQ@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@alien8.de>, 
	Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n4d86YrH;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 15 Sep 2020 at 23:28, Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> On Tue, Sep 15, 2020 at 02:13:01PM -0700, Nick Desaulniers wrote:
> > Triple checking what I wrote above; it looks like the randconfig had
> > BOTH CONFIG_KASAN=y and CONFIG_UBSAN=y enabled.  Aren't the sanitizers
> > supposed to be mutually exclusive?  If so, we should ensure that via
> > kconfig these can't be selected together via randconfig.
>
> No idea...

They are not mutually exclusive. The big ones like KASAN/KCSAN/KMSAN
are mutually exclusive (compiler complains if you mix the flags), but
UBSAN can be enabled with other sanitizers (and fsanitize-coverage,
although not strictly a "sanitizer" it's still instrumentation based).
In general, we shouldn't artificially disallow mixing them if it's
supported by the compiler and our runtime can handle it.

I'll have a look at the rest tomorrow (UBSAN_TRAP stuff, which
coincidentally also came up in some other patch).

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMWtZCUv-yB5eRBXaB%3DFLZESmtruq56Q3dS7hu2zDr9kQ%40mail.gmail.com.
