Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIWBXXVQKGQEEPX3NQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B3BA7C2B
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 08:58:42 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id ca13sf8317688edb.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 23:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567580322; cv=pass;
        d=google.com; s=arc-20160816;
        b=M1STDfeqMnWPbsUqILNPUolknCLusbclfRWiWUTI3/Q7j+Nx10t48kqXZAqIGYzXW/
         nckOeakoEVXKBi/g0w2Iing5rU6XeC+RaBptwbtAmYthSnRhyRZwSc1LGJwOxBE3QMZG
         XQe1aZy6IxhTjtAjFe3cigQok1bmqbhjnTxYO9EA4lY0uPFmeBtApZJxXl7HhS5yGMA9
         vLxdZl6eWecux7DoI9Zvw8O6h3dfdmu32FrOXDTpUeDnBzhV9skt4kyUcpZiNRLfDd+b
         Q3drTCHKLpE1BFLboU2zsxWljJR5aYpMy9m5jvLD6vsCI9T8TwPqU6zgEDzW4TU1+BZh
         9CRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=A/hjrBWduDtNBN64m0OPGXBv0fn+myw7g353RRUhRjs=;
        b=mKgAtb1HPnB6Dwm9kJo7u4T5BXq7lAfi69huWqLAm0xf/Z3TPCJRVACfM8+8V5knVy
         bfn/XHp4P/GqO3ior4DN8M2UiWarALn6lGO9QthE/iA7mdoht2+PZyEVYSmCQAi1Mx38
         nKsZVwmn+qzcl4i7utyG0f55hyZmycDIrCGpnSb2FS6XQ0Rc7hUPrRjRIOobi306DC5x
         ovSFAWgPxLHPGaLppQT55fTcIsQZGgrcEjtdbT40qDXVWV6zli1kkOQcjSvVXHzsBnMd
         FNuNoatCQ7+6WX/oyjMnCAo9VtKV+QeSwahtbW9JcpBTd616Mf9zDwbAb7p20eP440qu
         HJxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bEvfwzRj;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A/hjrBWduDtNBN64m0OPGXBv0fn+myw7g353RRUhRjs=;
        b=Hu25I0S7xFVY3FS7yHV8JlK1FjH7MPvuyzvkhYHyQds1vV1cn3ceIBkXe9hRg5DRY+
         V/mvdkqmzH8HVULT9c4UnFJMbwFAl5gQP8LYhD+zZf6Zxi0RE32N8S+dihSB1JOxfT02
         EFNreQ0/RH75i4Z41XwUZjZurtYfA5Ovqq54CF1uoestbLgN2ve5F3F1kDADtd2yLbCv
         zkUnoauYVafPA4vbuYF7vo93eQqmdpLHR0H+dmVgEEsUwVz7WiTKOPwGcX3c5tvtAO75
         8cjEKMsOYU2jOkZJou4xmgax3ND0xsnEfhx/1rC3szzbLj7NxpIBwgvFXc/2tcGInBVP
         2FrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/hjrBWduDtNBN64m0OPGXBv0fn+myw7g353RRUhRjs=;
        b=rM1g1fxIHjKeETHXMjNzaHd446YKjyZWRhP/q7VPe9/AhdIDTEwOOnkSFHz4/w1QY5
         8ct8zavrCoNqXRkpimhoA9BnaFidF3LUezjEoUPK8ebyjLd1VEFwMAQEL66iFEQndQ4k
         oqbGhsWbEJddYpnUrggcIO6Qujs1RkfYqNPfmlwKpBLTP4aS68oMgsKZ6KA11x3Exdeu
         aRWiEyJXr9PK4yPOAZEqrmEvmNeBEZlGjMbH0g2NStbbE8jbinRcjPLjuw3cCIiFaCKH
         OC1q1EseUn8NPteVdp/1EYzWBpB3+/jipN/J/mg64+BcfL5CU+mEsyci0mK9PYNMKKwy
         Ya7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/hjrBWduDtNBN64m0OPGXBv0fn+myw7g353RRUhRjs=;
        b=XrfZJsXpQEsK8aGfv1GRm2L1TjkfYbQb/E3ljKBXnwdBNkNDLITwM85xsUL48mqLzR
         sLId1wPba1HWp3+C6ucFosTz9xN8LvyB/H9/LdmOvbTbqJKk8sV4eqlm5Ux7AMlebU/5
         0Ro2Zq+8Rse4hq5awkr39QB40qdDwxIvzDI0g29hS3Tq/V/G7MPPGVGfgkXacMlGDDpp
         5Z5NiKs2ZtTiqcxX3fjXUL7koFIN1eFOn3uhB33Zv97P3KRlKaxrz/yIM3xBgN8My8ik
         eOW1jPikmmd7ENpKcGK+ATHB6VSzBYUE7TgQLNYo3rOJkENfNqgGl39KZzJeAhKkb+9t
         l6GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkoIw31DU3A+VYW4EZgMC18hFXiRTmJTIkdVViUio/V/qe9aTn
	3a4ROyiXPr1XWAkTZvNgaTY=
X-Google-Smtp-Source: APXvYqyUeZDhsSoT3k2xE9SO+5P/JZtYLCbN5CF7ug9c1Klz8MgI3ea/4U3brXmL3N7dQLcHpEQPzg==
X-Received: by 2002:a50:f30c:: with SMTP id p12mr15961467edm.299.1567580322432;
        Tue, 03 Sep 2019 23:58:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:da85:: with SMTP id q5ls4633932eds.15.gmail; Tue, 03 Sep
 2019 23:58:41 -0700 (PDT)
X-Received: by 2002:aa7:cd73:: with SMTP id ca19mr2737736edb.266.1567580321874;
        Tue, 03 Sep 2019 23:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567580321; cv=none;
        d=google.com; s=arc-20160816;
        b=lPH2qWVl+Au8r0actXcL/m8V4+F+NdQnRnTK4rVaKO6DfLia9z6Bi+1okjPSatyg+3
         WpbvqsZwx4LvmN7mYkW9ZvOa+cCNC4sGQS4E539wGWV/IeNvnaRj/pkOQchgXyqFV5/Z
         XDdIJMnImzgENA68HCS50CCMPInsmMrF6I6i4O9bPQHGrkPU/dLETpTAVjaIGvRB++NS
         Sa12tPBiEUoMNlXgxOBAq/W+aQ7ul9huTrTytTruRT/6l2dM7F+IaGBy+hx10NwBEsei
         uRhJPSLeGyjoEIJIw9RpeHo+kWv20vfO6NgdAYmpHvTZVyrtJEz32vsMHCuDSXPkHkJN
         aVwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KWmW+oWQFGKi51bkdJL4MPU5H1s+9PExDQrlcRepgRE=;
        b=eWszR5rfbO+p/hlM4r1WeK24Xn6neX2XpijYHq2Ji8FJ4MY0gO7SZI3QKQcKi4k+fZ
         ft0WBFgeOOuJb3U9E9BrSwgRceuW0HjAk7eDAEyXryFacLsyt/cbbpBkJbGu3VpqMcji
         jYa935DVLbUETNUCYykXoXATkaT1mlKccPHsl9dh3LXFg0xszH1SfZns6Q945aehqObh
         zBrNla8HuHnIqh07lZ14bem2trpNV8MkLyEtTJJ5RlNgilgHMUudGHsQ7IYyMwF91Erk
         9XEcOA6lIYB0RJ/1ZoqSPkuskYe1iG9dpBfOBP2yqNEwLVARs3MK0r+dhLSyK/uF9UUn
         32Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bEvfwzRj;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z31si676146edc.2.2019.09.03.23.58.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2019 23:58:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id t9so2179452wmi.5
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 23:58:41 -0700 (PDT)
X-Received: by 2002:a7b:c8ca:: with SMTP id f10mr2847649wml.36.1567580321590;
 Tue, 03 Sep 2019 23:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <20190831162555.31887-2-yamada.masahiro@socionext.com> <CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN=6qZoPLvnoJC1ammog@mail.gmail.com>
In-Reply-To: <CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN=6qZoPLvnoJC1ammog@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 4 Sep 2019 08:58:30 +0200
Message-ID: <CA+icZUWzSsFXLmrO2G7ochE62e=kByEV6UKregcJqZrJN1WJxQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to KBUILD_EXTRA_WARN
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bEvfwzRj;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 3, 2019 at 11:50 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sat, Aug 31, 2019 at 9:26 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
> > options for GCC, but now it is a historical misnomer since we use it
> > also for Clang, DTC, and even kernel-doc.
>
> Thanks for the patch!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>

Thanks for the patch.
I like the backward compatibility and am OK with pointing to 'make
--help' for the documentation part (KISS - Keep It Simple and
Short/Stupid).

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> >
> > Rename it to more sensible, and shorter KBUILD_EXTRA_WARN.
> >
> > For the backward compatibility, KBUILD_ENABLE_EXTRA_GCC_CHECKS is still
> > supported (but not advertised in the documentation).
> >
> > I also fixed up 'make help', and updated the documentation.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> > Changes in v3:
> >   - new patch
> >
> > Changes in v2: None
> >
> >  Documentation/kbuild/kbuild.rst | 14 +++++++++-----
> >  Makefile                        |  2 +-
> >  scripts/Makefile.build          |  2 +-
> >  scripts/Makefile.extrawarn      | 13 +++++++++----
> >  scripts/Makefile.lib            |  4 ++--
> >  scripts/genksyms/Makefile       |  2 +-
> >  6 files changed, 23 insertions(+), 14 deletions(-)
> >
> > diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> > index 62f9d86c082c..f1e5dce86af7 100644
> > --- a/Documentation/kbuild/kbuild.rst
> > +++ b/Documentation/kbuild/kbuild.rst
> > @@ -105,6 +105,15 @@ The output directory can also be specified using "O=...".
> >
> >  Setting "O=..." takes precedence over KBUILD_OUTPUT.
> >
> > +KBUILD_EXTRA_WARN
> > +-----------------
> > +Specify the extra build checks. The same value can be assigned by passing
> > +W=... from the command line.
> > +
> > +See `make help` for the list of the supported values.
> > +
> > +Setting "W=..." takes precedence over KBUILD_EXTRA_WARN.
> > +
> >  KBUILD_DEBARCH
> >  --------------
> >  For the deb-pkg target, allows overriding the normal heuristics deployed by
> > @@ -241,11 +250,6 @@ To get all available archs you can also specify all. E.g.::
> >
> >      $ make ALLSOURCE_ARCHS=all tags
> >
> > -KBUILD_ENABLE_EXTRA_GCC_CHECKS
> > -------------------------------
> > -If enabled over the make command line with "W=1", it turns on additional
> > -gcc -W... options for more extensive build-time checking.
> > -
> >  KBUILD_BUILD_TIMESTAMP
> >  ----------------------
> >  Setting this to a date string overrides the timestamp used in the
> > diff --git a/Makefile b/Makefile
> > index 06e1e21c0f45..016d72eb3ddf 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1538,7 +1538,7 @@ help:
> >         @echo  '  make C=1   [targets] Check re-compiled c source with $$CHECK (sparse by default)'
> >         @echo  '  make C=2   [targets] Force check of all c source with $$CHECK'
> >         @echo  '  make RECORDMCOUNT_WARN=1 [targets] Warn about ignored mcount sections'
> > -       @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
> > +       @echo  '  make W=n   [targets] Enable extra checks, n=1,2,3 where'
> >         @echo  '                1: warnings which may be relevant and do not occur too often'
> >         @echo  '                2: warnings which occur quite often but may still be relevant'
> >         @echo  '                3: more obscure warnings, can most likely be ignored'
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 2a21ca86b720..f72aba64d611 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -85,7 +85,7 @@ else ifeq ($(KBUILD_CHECKSRC),2)
> >          cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
> >  endif
> >
> > -ifneq ($(KBUILD_ENABLE_EXTRA_GCC_CHECKS),)
> > +ifneq ($(KBUILD_EXTRA_WARN),)
> >    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
> >  endif
> >
> > diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> > index d226c5fb13e2..53eb7e0c6a5a 100644
> > --- a/scripts/Makefile.extrawarn
> > +++ b/scripts/Makefile.extrawarn
> > @@ -8,14 +8,19 @@
> >
> >  KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
> >
> > +# backward compatibility
> > +KBUILD_EXTRA_WARN ?= $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)
> > +
> >  ifeq ("$(origin W)", "command line")
> > -  export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
> > +  KBUILD_EXTRA_WARN := $(W)
> >  endif
> >
> > +export KBUILD_EXTRA_WARN
> > +
> >  #
> >  # W=1 - warnings which may be relevant and do not occur too often
> >  #
> > -ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
> >
> >  KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
> >  KBUILD_CFLAGS += -Wmissing-declarations
> > @@ -48,7 +53,7 @@ endif
> >  #
> >  # W=2 - warnings which occur quite often but may still be relevant
> >  #
> > -ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
> >
> >  KBUILD_CFLAGS += -Wcast-align
> >  KBUILD_CFLAGS += -Wdisabled-optimization
> > @@ -65,7 +70,7 @@ endif
> >  #
> >  # W=3 - more obscure warnings, can most likely be ignored
> >  #
> > -ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +ifneq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
> >
> >  KBUILD_CFLAGS += -Wbad-function-cast
> >  KBUILD_CFLAGS += -Wcast-qual
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 7ab17712ab24..df83967268ba 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -248,7 +248,7 @@ quiet_cmd_gzip = GZIP    $@
> >  DTC ?= $(objtree)/scripts/dtc/dtc
> >
> >  # Disable noisy checks by default
> > -ifeq ($(findstring 1,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +ifeq ($(findstring 1,$(KBUILD_EXTRA_WARN)),)
> >  DTC_FLAGS += -Wno-unit_address_vs_reg \
> >         -Wno-unit_address_format \
> >         -Wno-avoid_unnecessary_addr_size \
> > @@ -259,7 +259,7 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
> >         -Wno-pci_device_reg
> >  endif
> >
> > -ifneq ($(findstring 2,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +ifneq ($(findstring 2,$(KBUILD_EXTRA_WARN)),)
> >  DTC_FLAGS += -Wnode_name_chars_strict \
> >         -Wproperty_name_chars_strict
> >  endif
> > diff --git a/scripts/genksyms/Makefile b/scripts/genksyms/Makefile
> > index baf44ed0a93a..78629f515e78 100644
> > --- a/scripts/genksyms/Makefile
> > +++ b/scripts/genksyms/Makefile
> > @@ -12,7 +12,7 @@ genksyms-objs := genksyms.o parse.tab.o lex.lex.o
> >  #
> >  # Just in case, run "$(YACC) --version" without suppressing stderr
> >  # so that 'bison: not found' will be displayed if it is missing.
> > -ifeq ($(findstring 1,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +ifeq ($(findstring 1,$(KBUILD_EXTRA_WARN)),)
> >
> >  quiet_cmd_bison_no_warn = $(quiet_cmd_bison)
> >        cmd_bison_no_warn = $(YACC) --version >/dev/null; \
> > --
> > 2.17.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWzSsFXLmrO2G7ochE62e%3DkByEV6UKregcJqZrJN1WJxQ%40mail.gmail.com.
