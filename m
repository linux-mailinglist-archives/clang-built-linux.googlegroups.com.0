Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLGORKDAMGQE6YPQM5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FEA3A3827
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 01:58:37 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf1889503ljc.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 16:58:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623369516; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWD548IkDTBJArZImvvip0ZSMfOqAUSV29GX7757Jicr20xDH1az+VHWsYWTbrHU9B
         9/qGtVWPf1yYnBtF9yM8XSlDzXTR5fYKnedvFZJ4qxol599ajNH+3PGsUbKfoMTo5TPy
         ZsCIrmwTrcJZL046OX25106TvBjkwgybXoVDPhQVxKNYPrjKO7B2IZz0Aw6D+IgdojD4
         Zn1n4/cXxVYFA8ifFDizA29Hdc1/8hMovEuO56BxZfcHRj1TOvn18aFjt8y063GIcujk
         /4jeTgtWpnMrGspGcykIlfLUYEf/35x5iB4QZycQarVmZBzRCGFOnPXvWpyUf018b0pi
         nGbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QCaYWgsuoHY4PKcS04/RfAVT82KiWKZU3JJElUma/kY=;
        b=rtuLB2lT+d2oFBOWhj5CpL0k3oDd+LfbruKv5JKRmSOy2DDzUJ1ab7mJRJBDoeCrDh
         Cj7+xXUkNivngnSPP2GvLsCRI+g/ZsfjfUSf7WTHmEZknmcXohjLDOmBOpdTDzYL5IXu
         x/LKBsYOvUdVi52F4wbQ49cKVtgTtGE7TYZAO6qHGytNeH1a9Xt+vzCFWl/iaiLsBV/I
         a8too03BaghJ9a7UwdfRoRjHXC6HhqaW+i3L6U/KlK5UJ1wUTItqvzlPL1OGVZ+6YFf5
         RITzLYDxEXccP7dAQQ14FWMUPtjtH4lEeSxW6nag6IKYbm58lsI/sveV2lJMPFaeuLk1
         1eBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gEehPI7l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QCaYWgsuoHY4PKcS04/RfAVT82KiWKZU3JJElUma/kY=;
        b=JTAKMme6otzehq6XLh84TzAI3lWuNYq7kgm1AduQdkel2S8Asz/6KMDs0kVX9UEUby
         XrfXi7WabaAfANfQEu3gSqNxWiKfbjKiK8pRh/IZGXxa3XMFFadBjPEiTI/Ml3YaEP1W
         X8NHFvlORM7i5SiX6Uu0FE9Kow2IeTrISVws4CGY26xOOcvZZ5wqAyKh7q4p2CCJlcD7
         r4wrSqhFhkays5t9cqq5wgjGuQ14jBzRSu1OZ6cRIaN8tT/H4uqs6TZzVrYTsmNnk7ae
         HO4Px2q/LUrfj1muIMjGNZTrOh7NjDoWsr85gZpr7U4rWJJxLZsxhh6ufEL6iypVeu1C
         SUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QCaYWgsuoHY4PKcS04/RfAVT82KiWKZU3JJElUma/kY=;
        b=fJntqGqt2sTwFRmhuxHj4uAavJHwnvImokR5qpHL4IaM5qkfjvEQT+xIcaAd4io42+
         s1R0EzQ6b8C/bAokmT5JltY9Pa/cGJeypE/v+080Z/IQ4DuaiNWS5h0o+S4STfGN+HfV
         HmkeCzLPukUb/yPJ+uUD8mrdoCQ4it/7K8oHsBa2r8PYxa7BvcfCrue4oIGO6RlijbLP
         kHeQYLJtEFNn+QnkMn49pXUi2Ci+3cog6Dfrg/11nzRO0dlHw0HXX2o3fxypj+poyKzH
         DHlNzpBYrcyrVi6yminpzlbJ8lR0efn5SIj6T9aU22d+IJY7DdTROzzMtYcuUCG+94yS
         xM5A==
X-Gm-Message-State: AOAM531+unvnxwbvXs/Eox8JI2MS+5Fq9FV4QdnCqjG7WqE93IGwKQxi
	GfxFspaRf1uimODMY2ryBis=
X-Google-Smtp-Source: ABdhPJxHmcQIGJHvpL0XUX2KvlZ9wwnWnmLhkSSKQRfxrDEsD6sh37kkiZMwMqiZI3gFU6mxjF3TFA==
X-Received: by 2002:a05:6512:3694:: with SMTP id d20mr852446lfs.184.1623369516858;
        Thu, 10 Jun 2021 16:58:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls5488643lfv.3.gmail; Thu,
 10 Jun 2021 16:58:35 -0700 (PDT)
X-Received: by 2002:a19:7604:: with SMTP id c4mr872192lff.398.1623369515800;
        Thu, 10 Jun 2021 16:58:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623369515; cv=none;
        d=google.com; s=arc-20160816;
        b=IWvVVfbGF5PFXvdQSMnRDOh11nzfRdr1zSidV7RQ9DDiGTvltXyyXneeTCtESsatzT
         y145wWIQlxO28i9aL6uPWjQbIvwERV8mqw59bIrE5hzQOyRlyeCqekdXVpI0KpaqmKXQ
         LsSdSLZfP/lQaGMsaCHplae8j38eiCCh/d8vrv3utAqolDTOYF1w78DOv1CNjeg1PmNT
         fHeKJff8IhmApIy7bQqDGtp2xVUxh8vsmzB/40MxJ50pLudvTw8jE+HWTlnYopbgyxCQ
         cSI5SVwwM7W+CSIafWmrMCrkTXaAZfamGJaZOHD4tNCX6tZrVdA27S4jBqVkbb0r9wm6
         kILg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jdzmpvxIHQS1W3CohDEjykDRb5EPbprGAP1bkcs3yG0=;
        b=kpZ2k4zXAvhTfuKQ4rApd3fMawphXQr9GVQtFXyjQD002I9aaEejklAMAOjE26RyZj
         hQUBY9vmpNVGvXK+wlBPkwM1BIsqBaHrBB1MefhfTArNRClXFrHLPTY5fF6FK7wkLhDp
         UgvrbkaZ28QgQJkxdI29lQ7Vj9QFOIiHWTlofdG8GWf0ly9fFsAk14FH99Zw9HRY0eeq
         s0yqNfCPvkF1Pv1JLNUulZqfSrf3/oQIVdtqG16/a5FKVAr25IR/YNRPg6YbPr/ZRCYR
         nExDpaguj7MRO5IrVaFoNwSCdLHo7P5XCwMS4YNxWQuJ1B3w3QbaFSiCgUWR4iMbW0bL
         VSzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gEehPI7l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id g11si171836lfv.12.2021.06.10.16.58.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 16:58:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id p7so5880466lfg.4
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 16:58:35 -0700 (PDT)
X-Received: by 2002:a19:f706:: with SMTP id z6mr806137lfe.122.1623369515416;
 Thu, 10 Jun 2021 16:58:35 -0700 (PDT)
MIME-Version: 1.0
References: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
 <162336538453.1311648.12615336165738957417.b4-ty@chromium.org>
 <CAKwvOdmYVH-YpEVqdoBfvgNfcbzx71jU_27cuhuzTJ6_Emzi-g@mail.gmail.com> <202106101601.248F797@keescook>
In-Reply-To: <202106101601.248F797@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 16:58:24 -0700
Message-ID: <CAKwvOdntX7iKNZWr1gfnR-N=11sg0CH7+EjzyaQg5t+Erc6qrA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional on
 LLD < 13.0.0
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>, 
	Tor Vic <torvic9@mailbox.org>, "mingo@redhat.com" <mingo@redhat.com>, 
	"x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gEehPI7l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Thu, Jun 10, 2021 at 4:47 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 10, 2021 at 03:58:57PM -0700, Nick Desaulniers wrote:
> > On Thu, Jun 10, 2021 at 3:50 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Thu, 10 Jun 2021 20:58:06 +0000, Tor Vic wrote:
> > > > Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
> > > > [1], leading to the following error message when building a LTO kernel
> > > > with Clang-13 and LLD-13:
> > > >
> > > >     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
> > > >     '-stack-alignment=8'.  Try 'ld.lld --help'
> > > >     ld.lld: Did you mean '--stackrealign=8'?
> > > >
> > > > [...]
> > >
> > > Applied to for-next/clang/features, thanks!
> > >
> > > [1/1] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
> > >       https://git.kernel.org/kees/c/e6c00f0b33ad
> >
> > Can we get this into 5.13?
>
> What's the ETA on LLVM 13.0? I was going to put this in -next, marked
> for stable, but we're about 3 weeks from 5.14 merge window.

Not soon; CI is red over this currently:
mainline:
https://github.com/ClangBuiltLinux/continuous-integration2/runs/2796736763?check_suite_focus=true
https://github.com/ClangBuiltLinux/continuous-integration2/runs/2796736978?check_suite_focus=true
linux-next:
https://github.com/ClangBuiltLinux/continuous-integration2/runs/2791754316?check_suite_focus=true
https://github.com/ClangBuiltLinux/continuous-integration2/runs/2791754426?check_suite_focus=true
https://github.com/ClangBuiltLinux/continuous-integration2/runs/2792796551?check_suite_focus=true
etc
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdntX7iKNZWr1gfnR-N%3D11sg0CH7%2BEjzyaQg5t%2BErc6qrA%40mail.gmail.com.
