Return-Path: <clang-built-linux+bncBDTI55WH24IRBUW3S7VQKGQEIIJYVNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4479F87B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 04:58:27 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id d19sf783694pgh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 19:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566961106; cv=pass;
        d=google.com; s=arc-20160816;
        b=URJbrQJWYF1AwM0Xik0VTNwnZIjmFNhs17dgXfygw26x/Pj7IEAVYN/bj5tHoYWJ1r
         AURbJvATScJW+zPZgOUtyIuwAA7d+KHZe6mPKG54VzlMZVxpIIf0+dDc1zwjtTSWnvX7
         hiR9OcX9kyQm7kxEz9TAM+YXKkqwu5E6K/epfxegffZBl7m5TfKZbUG4VpXJLz/BxEZl
         RhBBSJlJehrOo6BIBpJre/BDupyA8F4u9ecVpyHsRiTgBjTsSuSoTniyF65EFoZTDdWb
         O1eYPeQcs3pKruQe4/Tmyz6JHJuFRftkTeS5C/9WH4wz+LjlF+U00+G1+9sI/kHUqAWb
         XglQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=fvsbS3zD/o7xo/drtMAV/Nwsad5NWYPCn/Dp9gs5orY=;
        b=x7y3UOjjX/BE8UbEhw/TUzGHLrBjE+8okFKTpMSYlck/YFQMXS7EyQrNMQcvtg6cIz
         ITiuRNRn7KFnmSO2FR/aYeroS9wfkcgYI8r+eZLhkkPFGfnNk1GhNesA3c0ezmOQRUCJ
         zVl3RGWMOk1dzqIRZlshXOnO9+cCSy3Fxg14p+WGhRYUNmxrunvsFDNBA7wiDnzAx3R6
         2w/aIi6BVYz3+2n8F/gxKL8m1xZx5x3D8zAKtkXDMRjqu8/kRvfexN3g9N0YHl5ozF39
         /XLppRoo1ZggSoeh/b4WmUxmRC8cZ+dryJPv3+HUul9gFT7MXrEZRlp4+tb6BGuiSqhm
         dsRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=J7wcNIqR;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fvsbS3zD/o7xo/drtMAV/Nwsad5NWYPCn/Dp9gs5orY=;
        b=PrMg6fnsdCYXbRyqcHcu+tFBl7hP30wc4NaMZre5tIPj47xV8ipR3WAAZNMZl3OrIo
         RZySvu93odmt6bBCRLlAj3FhYE+/Hhs9x3Biy9t3Vs2NZmG2OnhWR9XplLFXHwQ4ZDGz
         10fm0zIjPWPefQrOqiVnlMG8HkMv1mf5IhsDiCuXx3cQ/3VlAV7Brb1UQri/kSKGbI+f
         sO2PdUSvlxja4QDAJLBligheuJJOPiYUaK1efzO5vNo8voxQvw9/2QnhsTU+C9uQ4Vhv
         XRqkjgG+ykI1DnRnpLF2VYRghawingZlcvf09Fr7tKpl80u+QE6xnTJPOHst64ZkMYFz
         OD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fvsbS3zD/o7xo/drtMAV/Nwsad5NWYPCn/Dp9gs5orY=;
        b=Yamtr64P9nY2u4MpLPzay3/4kFMgqUsY29JpkVZ4JzuhQLStkhQ2kTjM2+cedqeahO
         vePF1Xye4hFt8OZHiP/tY+i8pNBU5fNt9Ly3/PILWgSkdxjTA2Rz4H8NwQaog/XoeW4g
         oPU9pcpjwlJ1ijbAhI35k6zbdFt2x5aVltphusbaivuJRcXcEN/NK9TWB/LP16LOfUea
         AYvjmW4Q5rd2bI7MJHacTZfPIxmbMal6uoVPfhXCeuSntjei/U7b+qkrBDpYEIFwVR7h
         QJsJTqs3Fr0RUmq9Ism1LqXhgTEPfaRRxM81MFxLvXMlpxkInsIrzsMTJYCYFUsqRYaZ
         35Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU++o8pzpSK3Bc2BMwu4Y4ktAfofke/m78WnpWVEm9h1MdexflL
	h+ZslZ2Ici4YI4EMGZ/Yl+s=
X-Google-Smtp-Source: APXvYqz0WMBMy22CYbAc8Ot7o+x6aoH3Muzv910GZmlICtpMK/5+pvSf3Q5XgwXYX6MjtEPlo+e03A==
X-Received: by 2002:aa7:96dc:: with SMTP id h28mr2103343pfq.86.1566961106249;
        Tue, 27 Aug 2019 19:58:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:874f:: with SMTP id g15ls460476pfo.14.gmail; Tue, 27 Aug
 2019 19:58:26 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr1490956pgb.263.1566961105921;
        Tue, 27 Aug 2019 19:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566961105; cv=none;
        d=google.com; s=arc-20160816;
        b=WDynQMy1nFtc8LrFuL8R/vzVuqbbpLkVjEVG7q0rXsjlnsXOGhCEdwCSRef9eGi7Hl
         FvAKCHVYwXHy/LvuwQLVlSel9DuOIHj/YIlo4Heyv9tZz9WGlit4yFgIDsUeYXrBZRZP
         ZxwbhnJer42xhOC9YrpjjQx+DlNwNbnYGDSJ6vE5YEdSTYkv2OCocMWKUtNheRmZjxaR
         ceT2fupEVIR2ts1sscfE9sQhLkktgAAE84I1/qhqjJw7vfAqzELxoQp2igb2ltq2Fbjq
         dZjnarMeBLG07VTt8p9Zz6CXAz5te3rSDycOrT3EaALMveyr21s/W//StV+OP7w5269/
         D31Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=mFHsEzwB4oWOXBHmgeLVqODXLT7BOd0irzx8s7TXEyg=;
        b=AaxsGuIs+CW3v/wO8cAjaTgWdmfwC7RoCdzvGP1flWTrUsoC6vhq8mcytDXfZqbOMH
         ln83vhROk6wp3TEFRFcFIkKplDXIK+L8Gi7t8F3D0efFmWQMCouhlzOjQHinbBENv5GF
         y63u5/qpzzsI07f6Roq3Tjn1PLhoZtx2yLELFTCPEVyEz4a1Iw9xkHuPwTLJn/5Bhl+N
         fh87te/DmsrrMpvxopB1vFFLoCfYttBOI3f5Q6ln0fIdvBCMRdE9EMXH8CJa6LZ3pFhF
         MLhmiHuBOlB5ZmyZAHLZiyXbsGyBeQH1GdFsEkYQedLA4TWmTtqPv86hLf6f9qbG6B48
         BNyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=J7wcNIqR;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id h136si60772pfe.3.2019.08.27.19.58.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 19:58:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x7S2wA4m020082
	for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:58:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x7S2wA4m020082
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id j25so850405vsq.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 19:58:11 -0700 (PDT)
X-Received: by 2002:a05:6102:20c3:: with SMTP id i3mr1099865vsr.155.1566961090274;
 Tue, 27 Aug 2019 19:58:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190827103621.1073-1-yamada.masahiro@socionext.com>
 <20190827192811.GA24626@archlinux-threadripper> <CAKwvOd=7Jf13PDC9Q1FMhZUJQsq7Ggn=wRz5xpRY0YrU6tP9Kw@mail.gmail.com>
 <20190827213447.GA26954@archlinux-threadripper> <CAKwvOd=pQm7ytZSJeRzXoWwzouDADOYkO8S_+zSPtXOAO3Jc5g@mail.gmail.com>
In-Reply-To: <CAKwvOd=pQm7ytZSJeRzXoWwzouDADOYkO8S_+zSPtXOAO3Jc5g@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 28 Aug 2019 11:57:33 +0900
X-Gmail-Original-Message-ID: <CAK7LNARduZNvwQ2AJbP3NNDojM+1AACx=wRqdRz+DRSCuVMK2w@mail.gmail.com>
Message-ID: <CAK7LNARduZNvwQ2AJbP3NNDojM+1AACx=wRqdRz+DRSCuVMK2w@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: enable unused-function warnings for W= build
 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=J7wcNIqR;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

Hi Nick, Nathan,

On Wed, Aug 28, 2019 at 6:56 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 27, 2019 at 2:34 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, Aug 27, 2019 at 01:58:05PM -0700, Nick Desaulniers wrote:
> > > On Tue, Aug 27, 2019 at 12:28 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > On Tue, Aug 27, 2019 at 07:36:21PM +0900, Masahiro Yamada wrote:
> > > > > GCC and Clang have different policy for -Wunused-function; GCC never
> > > > > reports unused-function warnings for 'static inline' functions whereas
> > > > > Clang reports them if they are defined in source files instead of
> > > > > included headers although it has been suppressed since commit
> > > > > abb2ea7dfd82 ("compiler, clang: suppress warning for unused static
> > > > > inline functions").
> > > > >
> > > > > We often miss to remove unused functions where 'static inline' is used
> > > > > in .c files since there is no tool to detect them. Unused code remains
> > > > > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > > > > core: remove unused rdev_get_supply()").
> > > > >
> > > > > Let's remove __maybe_unused from the inline macro to allow Clang to
> > > > > start finding unused static inline functions. As always, it is not a
> > > > > good idea to sprinkle warnings for the normal build, so I added
> > > > > -Wno-unsued-function for no W= build.
> > >
> > > s/unsued/unused/
> > >
> > > > >
> > > > > Per the documentation [1], -Wno-unused-function will also disable
> > > > > -Wunneeded-internal-declaration, which can help find bugs like
> > > > > commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> > > > > mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
> > > > > I added -Wunneeded-internal-declaration to address it.
> > > > >
> > > > > If you contribute to code clean-up, please run "make CC=clang W=1"
> > > > > and check -Wunused-function warnings. You will find lots of unused
> > > > > functions.
> > > > >
> > > > > Some of them are false-positives because the call-sites are disabled
> > > > > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > > > > unused-function warnings because it is intended to be a hint for the
> > > > > compiler's optimization. I prefer __maybe_unused or #ifdef around the
> > > > > definition.
> > >
> > > I'd say __maybe_unused for function parameters that are used depending
> > > of ifdefs in the body of the function, otherwise strictly ifdefs.
> > >
> > > > >
> > > > > [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function
> > > > >
> > > > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > >
> > > > I am still not a big fan of this as I think it weakens clang as a
> > > > standalone compiler but the change itself looks good so if it is going
> > > > in anyways:
> > > >
> > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > >
> > > > I'm sure Nick would like to weigh in as well before this gets merged.
> > >
> > > So right away for an x86_64 defconfig w/ this patch, clang points out:
> > >
> > > drivers/gpu/drm/i915/i915_sw_fence.c:84:20: warning: unused function
> > > 'debug_fence_init_onstack' [-Wunused-function]
> > > static inline void debug_fence_init_onstack(struct i915_sw_fence *fence)
> > >                    ^
> > > drivers/gpu/drm/i915/i915_sw_fence.c:105:20: warning: unused function
> > > 'debug_fence_free' [-Wunused-function]
> > > static inline void debug_fence_free(struct i915_sw_fence *fence)
> > >                    ^
> > >
> > > The first looks fishy (grep -r debug_fence_init_onstack), the second
> > > only has a callsite ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS.
> > >
> > > drivers/gpu/drm/i915/intel_guc_submission.c:1117:20: warning: unused
> > > function 'ctx_save_restore_disabled' [-Wunused-function]
> > > static inline bool ctx_save_restore_disabled(struct intel_context *ce)
> > >                    ^
> > > drivers/gpu/drm/i915/display/intel_hdmi.c:1696:26: warning: unused
> > > function 'intel_hdmi_hdcp2_protocol' [-Wunused-function]
> > > enum hdcp_wired_protocol intel_hdmi_hdcp2_protocol(void)
> > >                          ^
> > > arm64 defconfig builds cleanly, same with arm.  Things might get more
> > > hairy with all{yes|mod}config, but the existing things it finds don't
> > > look insurmountable to me.  In fact, I'll file bugs in our issue
> > > tracker (https://github.com/ClangBuiltLinux/linux/issues) for the
> > > above.
> > >
> > > So I'm not certain this patch weakens existing checks.
> >
> > Well, we no longer get -Wunused-function warnings without W=1.
> > Sometimes, that warning is just a result of missed clean up but there
> > have been instances where it was a real bug:
> >
> > https://lore.kernel.org/lkml/20190523010235.GA105588@archlinux-epyc/
> >
> > https://lore.kernel.org/lkml/1558574945-19275-1-git-send-email-skomatineni@nvidia.com/
> >
> > Having warnings not be equal between compilers out of the box causes
> > confusion and irritation: https://crbug.com/974884
> >
> > Is not the objective of ClangBuiltLinux to rely on GCC less?
> >
> > The only reason that we see the warnings crop up in i915 is because
> > they add -Wall after all of the warnings get disabled (i.e.
> > -Wno-unused-function -Wall so -Wunused-function gets enabled again).
> >
> > To get these warnings after this patch, W=1 has to be used and that
> > results in a lot of extra warnings. x86_64 defconfig has one objtool
> > warning right now, W=1 adds plenty more (from both -W flags and lack of
> > kerneldoc annotations):
> >
> > https://gist.github.com/175afbca29ead14bd039ad46f4ab0ded
> >
> > This is just food for thought though.
>
> So if we took just the hunk against include/linux/compiler_types.h
> from this patch, we'd be back in a situation pre-commit-abb2ea7dfd82
> ("compiler, clang: suppress warning for unused static inline
> functions").  Hmm...
>
> I would like to minimize the number of Clang specific warnings that
> are disabled in scripts/Makefile.extrawarn.

I agree.

I do not want to carry this forever.

After we clean up the warnings (it may take several development cycles),
I want to turn on Wunused-function for all the build mode.



> Masahiro, does your patch correctly make -Wunused-function work for
> clang at W=1?  It looks like -Wunused gets added to warning-1, but
> then -Wno-unused-function gets added to KBUILD_CFLAGS after `warning`
> does.  Will that work correctly?  I'd imagine that at W=1,
> KBUILD_CFLAGS for clang will look like:
> ... -Wunused -Wno-unused-function ...
> which is probably not what we want?

Hmm?

-Wunused is added only when W=1.

-Wno-unused-function is added only when W= was not passed.

They do not happen at the same time.









> --
> Thanks,
> ~Nick Desaulniers



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARduZNvwQ2AJbP3NNDojM%2B1AACx%3DwRqdRz%2BDRSCuVMK2w%40mail.gmail.com.
