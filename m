Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRFT3H3QKGQE53LUD4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D9420BA47
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:25:41 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id y16sf6940313pfp.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:25:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593203140; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Fy+McRR281fyggpPb5VAEMvVKZzJO+WSv+LPP5X2muAD9RiZhZONKvT+QE2sOiYi4
         yE+7Yv4Gr2RyMg4e9XuZAmnmLlUSJKPmn//Wwn2JIyOhwUNsHe4VxXpgmXn9kXcL5yKk
         4YMyuQ36dkcIQe5HtXK2EN4Xb3BFbf13OljGNHTgOx875Iocotg3hQpstxZH2uERDsGg
         llhths8MrkElnKoE85Ufz4YETjZZMw4Xh4qRJSkQXJY7o45z8F9pKvMbxFOul5jHrK1q
         SH1SNLAB/9IHabSiDSRPaJAttENooRfEU3c+p6wEF13VvXlw76dfunrwRXhbSxC/KtMH
         Cmfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MzlviZkNrhOJv+Xysq+ksRbe+hUoFzVOVeWoUmKkkS8=;
        b=LdCmn4ScMLtPvmHOdj538/376N1Rvp84ji/PJsFsG0egoWJi9Eav2XXfoTSsImZcko
         gGF0pym+sMC+R3D7+Wg+mKTv7+vKzbNYHsXOUDiJyVPW/JQdNvbXHarUFIzTkwN8IKn7
         BZD75qfnUjE5VZZhS0NgaC+r/iaA99fIsfn9IcnH5BqGzmoenFf4AIVwtRG+r1sLl9AG
         z9d5rMR9MOpxLYfij5ny6ktbcYjjxyuFGnErQWv4G90KyZZ+Kiw1148OA9e2hbS1+Fa2
         TI3jaDqv/ZOPPaZVyPgI5PwWehtbe0IXrFPm+KE4iSzW8gBtMpcdb5KyLQmpObb002lP
         PIpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BtJtUAQP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MzlviZkNrhOJv+Xysq+ksRbe+hUoFzVOVeWoUmKkkS8=;
        b=iKIEdfFK4U2McnBgvpdCP2ICwGFvj6XEXJIK+w/+L7UyOON29A0trhHXJkMDXRfQ/4
         bJfhRpRfCXn6baMl7Nihk+lOSLJ20rHbZC5YhAXoZ6fn5Pd3HSbdz8FFM3IODAT2ti2r
         6zWC5bblyJM3UgqmQyVvHvb2R98qymGzNLS+VAN5lEPB0PDtgYFzUvKQOcc8RfxfhJ3A
         RlJT3o0zOYkk+D8ASePL9ULuBgQP5FtA/Vzl4eo5X6zhAR1TSGcOVQPhA4jYNYAZC6Tb
         rqUkA6pstzrO3HYNkUCsjluiFty+hkOXeWtAZMvt1LF+dA7lDJgBRHT4QRO9eJgqVyHw
         xcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MzlviZkNrhOJv+Xysq+ksRbe+hUoFzVOVeWoUmKkkS8=;
        b=jAyBS6TIIKMnOWzBGtXrxele0V6lXqi1WpdaCtNEBontba+V4Q85dPZbct89OYUJBZ
         FeLaz8nqi/BVWZ97INcvjVFl2qn8vik2dwrpB3B4ooYyuoVCvPZ55/+D+rZ7irRL5soH
         pfmp5trenB3tnjVoBafCIYTfIy5SP38cUt/P1xcoiPWAkUGQARKFA2xCI5/X7FhOgbB6
         USIhIEvZYXn+i5z4gYzJEmUke1yWdTA1fZ8HQWdZgc1hC4JO30F7HXFY026ZrdZ5iVha
         utZRvqC5tBw76f/3pd9TNo5SP9IvCO2ABKYdHE66gVxaxc+ltoH7AF8dZXH+zRb6m+2s
         /qeQ==
X-Gm-Message-State: AOAM531eTgQfeFdVYGUbGlHKse5HauCwQUaT+FFJzRJnMoSgoAQlzynD
	k0+BN8/sDxxq/HgxdX90OQE=
X-Google-Smtp-Source: ABdhPJyeFijy9KdZbjDvPa3TefQx4leiwNOqRpfGWDmRBGrHfaU/VUwd7QKcxvannnmvK8nbC9LARw==
X-Received: by 2002:a17:90b:b15:: with SMTP id bf21mr583057pjb.53.1593203140272;
        Fri, 26 Jun 2020 13:25:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b288:: with SMTP id u8ls1834586plr.4.gmail; Fri, 26
 Jun 2020 13:25:40 -0700 (PDT)
X-Received: by 2002:a17:902:7204:: with SMTP id ba4mr3861446plb.250.1593203139905;
        Fri, 26 Jun 2020 13:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593203139; cv=none;
        d=google.com; s=arc-20160816;
        b=XuB3twA0XffJShiXfRbAvjFON1lQ+B0uzJhcjH7Tt3/QfwI80Lnp0gwm6/iZwTa1kZ
         ZKfnUnEB89Oik1Wl1gKAXv0RpDLvcFgweN3nVBkB7xZ1YzKatiKK/Wr4MptquUlRTevI
         L8JdOVrsuUKT5B2eQEw3OmKpqg0STSRRxAPXKARiZCCF4o/PLchSCcowta2aa6ZoEwpI
         Cg3BKyfsjyqC/H+Aq0Sh+Hpblc5rmB+fOHCq39yOXdfnK5Wdd1ty+aJBxmISzVfP0jJ2
         adt6jTudAaMVYXgAhmN6ftfPz9u5SZaeaqDANAlvlbQdtUfS32SHUc4OYgZLmPIcTejs
         SlLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lj8Vexb+6K2EkvRLDIIMa04+QiE5YATPbQS9XSZnShM=;
        b=qW0I9iDLktpTm8zZn+pZTl3C5yqz2Bwo5Nz0WUDCRWBThWdN4/ZiJcuxthaAUaqujU
         qUNxlaDip8cvxT2v92QMI5afx4CsQgXVz4lVKMnqq6mKevg9nJURFZTVUeq3zp09Ozop
         J6qcZqBlHBcknNYSdMVjuWBnxh83TO6AQyUVYyGrwZVZrHCKyC4hBZnzalLrt867Ow12
         NpP6pR5AsqMoPTPiS0g4ikZZa23t+skxtuFpELinkf8EvC49Jw2RR5NT/qiFFKAjNC0K
         YFXwuHjZCu3EYZjqKrmTJ5HIsMYNQH/w2SyWDYwR30YeUKtLQSiOpTDaxVrLoDzg/1lq
         jQZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BtJtUAQP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 89si1157531pla.5.2020.06.26.13.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id k71so1930540pje.0
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:25:39 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr5337521pjb.32.1593203139352;
 Fri, 26 Jun 2020 13:25:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
 <202006261319.F130204@keescook>
In-Reply-To: <202006261319.F130204@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Jun 2020 13:25:27 -0700
Message-ID: <CAKwvOdmFpgSGow3X4AhEC1B-xWNORTgAFBXgYPQHLGyhgefddw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BtJtUAQP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Fri, Jun 26, 2020 at 1:21 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Jun 26, 2020 at 01:13:20PM -0700, Nick Desaulniers wrote:
> > On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > +++ b/Makefile
> > > @@ -762,7 +762,7 @@ ifneq ($(CONFIG_FRAME_WARN),0)
> > >  KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
> > >  endif
> > >
> > > -stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> > > +stackp-flags-y                                    := -fno-stack-protector
> > >  stackp-flags-$(CONFIG_STACKPROTECTOR)             := -fstack-protector
> > >  stackp-flags-$(CONFIG_STACKPROTECTOR_STRONG)      := -fstack-protector-strong
> >
> > So it looks like the previous behavior always added
> > `-fno-stack-protector` (since CONFIG_CC_HAS_STACKPROTECTOR_NONE was
> > always true), but then we append either `-fstack-protector` or
> > `-fstack-protector-strong` based on configs.  While that's ok, and you
> > patch doesn't change that behavior, and it's good to be explicit to
> > set the stack protector or not...it seems weird to have
> > `-fno-stack-protector -fstack-protector` in the command line flags.  I
> > would prefer if we checked for not having CONFIG_STACKPROTECTOR or
> > CONFIG_STACKPROTECTOR_STRONG before adding `-fno-stack-protector`.
> > That doesn't have to be done in this patch, per se.
>
> No, it would add only what was latest and most selected. (They're all
> ":=" assignments.) If CONFIG_STACKPROTECTOR_STRONG, only
> -fstack-protector-strong is set. If only CONFIG_STACKPROTECTOR, only
> -fstack-protector is set. Otherwise -fno-stack-protector.

Ah, right. Thanks for pointing that out.  I'm still curious if the
CFLAGS_<file>.o rules get appended or overwrite all flags for that
translation unit?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFpgSGow3X4AhEC1B-xWNORTgAFBXgYPQHLGyhgefddw%40mail.gmail.com.
