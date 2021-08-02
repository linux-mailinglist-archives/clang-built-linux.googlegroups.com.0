Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXGAUGEAMGQEKLTTB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCB03DE148
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 23:15:09 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id 23-20020ac248370000b02903b63da2052asf5562306lft.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 14:15:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627938909; cv=pass;
        d=google.com; s=arc-20160816;
        b=vz5Hei8aqUv7yQ3xej3qRhVSA7yMRPi4wWCmBAGZ1/+dzwQzGtQisIu9DGJMglpOg5
         7GfFXbj+gtXX4vXxhKsY6NzWaHzCnUTsVuEMpuQwzZCTaGI9I632+qz1xo6MkwobWVYB
         CUhw9wbFhzBxPEH1rA1VNZYkYIx5uvygPNpTsUoDgLDe9J8cIv//vqwx/UUb0I2Rui0Y
         Km4DtQi8IafFasI0ZF8wAi0lU7GE0NY+jWMwmGgnojToaoeG/yauiWM4czih+efDz7IV
         bG13AOEiAmpzGFeJWwVcaWeSzOJsu5x95IZ6I0Vl7J3Ghm6f/8k5aMK0KONuHcH9jH6u
         klAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W5mN69HD029nG5nqkp/8k2l2vK5HLp6oiX/rhfQ5Wgk=;
        b=n0Ft+jlhIf6L6wvccd5lzF8mHCUraQT7O2HsbBC5tzHq4s5F0Mq7LR+hCxnl1qWLPH
         y914A7AS6NqgdDfI6YGg3SsAQ5NjO1PwYVoryIhhHvIGgjft7TTSFVtBGojP5G3n24xf
         +8x06a3fck9fc2wzhBEgt7ZIEiCR6fpWsD5DNZpgY789wCuuas7/QaKkM0nCGnd1ELUN
         VdiYfC6QKGfx+rEMBOH2CzYa0sD8tvqTe5puQ6ElljkK5kWmHg560LJIag7oJkTDqTGv
         0g14LAhAJCVXCpfZRn0ogeZ36vjlvuRPruWWNMJeg8kISOStRFfZ/DHkY4V7OjmFzbkL
         yphw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fQuUBXMn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=W5mN69HD029nG5nqkp/8k2l2vK5HLp6oiX/rhfQ5Wgk=;
        b=mrotQWhyO1YNR4IpCnz7LyhFSskYtPwmhlQ6q2zwHDIqxI2PtknWlH6xbVu3evQ4yM
         j52ugmM9+wj0nLWMSfYC0LXl8QBfT416vtjr8jXzULnr6NtkCKJWdOycDpSqTHNxyN8W
         +smG2XBlnFTka3olr4OIOaa2BfPwkEpM9/7lhzPoegnmWM2W6hkTDyI84m/7yOrfWUPS
         xiyn8LGOmignvCEvRWJfmKpN/+N/VLCMM2W+pV12RToEQjoAWcvbvTrkZcX3DDVDOaz4
         JyAnpbv8V1yQJydbEpmF5T3ltvaAWO5TcPBvOpsbl31Pjd5/PgFeVD2oBChzBlCqWAuN
         MnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W5mN69HD029nG5nqkp/8k2l2vK5HLp6oiX/rhfQ5Wgk=;
        b=j1LlwC7k5BIkWko66o8ixN9s3jNnBoWqHmoHOWn5xGg2CWUfEymPby5IeoY+4n8117
         xKlktfntNI4NIXiKmkJqG8+KGkCQPJQFPrJNlBKlwW15JlDgqG18fXs7qgQv+yZSx4ky
         ZYpeoabjKQSMoxsKJUq3lXvNSh8/B8AZUV8+UzRhra72ljeBwfDK4DdLySsQql/wisNx
         /X+pqb4zaRb32LGaZi4s97ftszWPVWt+DKdVO1oZJkHfYSoyfLFjZ+CTgaHtmZbRtXoN
         vwjZMMq27JI7wq4y2nhFNUCxrRtu/qRnJE1QWqkuM0XyvoDr0A3u8/N5au+zA8ffS6TE
         KHDQ==
X-Gm-Message-State: AOAM531lozXTtfIWkCiKk22AMDJneji6zCoWr8Rr9iXg3BkvLXWKUcgm
	0aDHCpqjM5X/6owUv2WmPnk=
X-Google-Smtp-Source: ABdhPJz6DKoVYr3m7bnCpDFI1gB8wZijOrriPmLAfuthR/TwNDx9MU98o3HJ39EBoXr+/7ZWPHrSgg==
X-Received: by 2002:a05:6512:3a8d:: with SMTP id q13mr13621061lfu.401.1627938908998;
        Mon, 02 Aug 2021 14:15:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b171:: with SMTP id a17ls1726537ljm.4.gmail; Mon, 02 Aug
 2021 14:15:08 -0700 (PDT)
X-Received: by 2002:a2e:7c03:: with SMTP id x3mr12360824ljc.281.1627938907965;
        Mon, 02 Aug 2021 14:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627938907; cv=none;
        d=google.com; s=arc-20160816;
        b=mRdP8/pQEXJKou5QCW6MGTcTNmzEZHxfKrbvPcr7lAYpNUetqeEMftqYSGNQjRT2em
         +wMr/kZBmnmKdqul05IAuMNm7wifJKAnIlo67jVDs/dkAEkUMnhdnCZl54fbNS+06vf/
         OfC1tzNsazTy2ZBLLJJ7SA5DftH80IFev0VoqXQ1C1hNUcqrCb1FnTB76QsQMAj2+9JQ
         l1w7MGUIcaD+mUoT3A/QUYPesXwjL4wdk8hhiekjbYPkGSoOG0RjXl13ohH8lkl0o/hu
         DvB/vKukFmz4yPXYAbr7c6wdrAMStFVaBudrvsJB/2Ru4UeuVeX7EGqVMAx+QFGGwO8f
         ELJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GKUZPtIuouVJE0jwShWzFKLTFn+mFU5OXAbT55ufFlc=;
        b=m2pDoTCU/eMQNgNvRLhDR6cz29t3dYddhm4WCurcP+N+zQ3JAmWbUCMSRgjJcNnC2/
         OnnAri1CePhyeh3iP0+0BnY118AV/VruZzz1ARIeFhPGxJ74yxw2vIz2z5JTK3T1xIR+
         aw1cYQb71eyAHKwkkQu74F9dNfoXnBcAr1BsT6ZC8WyNolxDtKkhPlzb0GEACw8s8gtx
         gvdIpXm/Tyn7hQHuDoUOjxv3GWDH5HDXz83Dp80gWTdWYVK/ch0uS+Izq1aDiep1Alw0
         ufS6YOtl4a6ie3RfIkZmXBXq1DEcctrJIoHFgaXv9enTNfkQy/ye/MVjXhTcRHkNSncm
         yf1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fQuUBXMn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id j7si718582ljc.1.2021.08.02.14.15.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 14:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id h2so36198331lfu.4
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 14:15:07 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr1255638lfb.122.1627938907382;
 Mon, 02 Aug 2021 14:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
 <20210802183910.1802120-2-ndesaulniers@google.com> <CAFP8O3Jc=iwzAQojgBZZzdT8iVBY9TO6GLTq+0vkXoo6L5JJ-A@mail.gmail.com>
In-Reply-To: <CAFP8O3Jc=iwzAQojgBZZzdT8iVBY9TO6GLTq+0vkXoo6L5JJ-A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Aug 2021 14:14:55 -0700
Message-ID: <CAKwvOdkSzuMpjwP=_vPfs0QFAytA9=fZ00Aw4dn8fk7=P5WhLA@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] Makefile: move initial clang flag handling into scripts/Makefile.clang
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fQuUBXMn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Mon, Aug 2, 2021 at 2:06 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google=
.com> wrote:
>
> On Mon, Aug 2, 2021 at 11:39 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> > new file mode 100644
> > index 000000000000..297932e973d4
> > --- /dev/null
> > +++ b/scripts/Makefile.clang
> > @@ -0,0 +1,14 @@
> > +ifneq ($(CROSS_COMPILE),)
> > +CLANG_FLAGS    +=3D --target=3D$(notdir $(CROSS_COMPILE:%-=3D%))
> > +endif
> > +ifeq ($(LLVM_IAS),1)
> > +CLANG_FLAGS    +=3D -integrated-as
>
> -i* options are for includes. -fintegrated-as is the canonical spelling.
> Since -fintegrated-as is the default (for most llvm/lib/Target/
> targets and the ones clang builds actually support),
> it can even be deleted.

It was made explicit by Masahiro in
git.kernel.org/linus/ba64beb17493a4bfec563100c86a462a15926f24
So I don't think we need to go back to the implicit default.

It's definitely nicer to use groupings rather than these raw prefixed
flags IMO.  If you sent a patch for that I would approve of it.
Otherwise we don't really need to change this as this is how it's
worked in LLVM for as long as we've been able to build the kernel with
LLVM.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkSzuMpjwP%3D_vPfs0QFAytA9%3DfZ00Aw4dn8fk7%3DP5WhLA=
%40mail.gmail.com.
