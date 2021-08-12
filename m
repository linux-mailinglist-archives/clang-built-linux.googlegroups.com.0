Return-Path: <clang-built-linux+bncBC2ORX645YPRBZUL22EAMGQEZ5POWTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E15CD3EABD6
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:34:47 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id p22-20020a5d8d160000b02905a150b13b20sf4034791ioj.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:34:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628800486; cv=pass;
        d=google.com; s=arc-20160816;
        b=xjZpBhRLN248T9W8y/vVTr5f6IArVztDEftG6M597r+J+XkrZEuvb6BI5xnO2+7gvO
         QW0yRmhfMU9IK0nuY0VBGwcIZ/RBGfrSL+gVAwwt1RBzsEA8wyGGvQKiAc0cXNd5TTK9
         QPdS6+HK3TJmLQn+cqx7Aj/XqIGKkfLC4f0YaU09Lcjyx+rf9xhru6RC+BxqgJju0vMe
         HfCZ21QWXZKoa2+GOuxfhIEs3dyn1BE65JLlCtXKSmI7YTrnqsJitcz/rnZl5Qaoa4fW
         SGCQLnvUjmD6r8MHnojRW8yORNyxD1b3BIw1o/IlN3IMZYrVW5SAet121Ij1zKkkgpPK
         lA3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kp3+/TtiE9YPoGP1tZlO34YwyxT3M6JBRxh9oJKdluE=;
        b=g5TqbJReaui0l75q4tL1psj/mvpNbLcqBazQ60N7R4xNRYmXtrTR6wiqRj0jzqwwms
         FyQM3tepMF7rakFfb1OO81mr0W30kWKfObGofU+I3LtuJWOB2qujNCQ5/VMWlZAPt/ud
         qFf30rbRCQiuS1+2KofmMtv1FPn9H8rcnhiUMRa3uZ6sua3HtAI9JiSyQB53TkHTOt0C
         QBSxrTNMVXA4Af+fwsv0VSwiMDfctiHUtqFhsxOLne2HAgdENafcRqFcTvHRrFa8WmsI
         9p/lUp7k/ri6XnChNkyVgIj+/VBvaXLkxkL5TiZSnC50M+HHYxsqUIAqBKXqBASlgZ5k
         90nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FhizRNLC;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kp3+/TtiE9YPoGP1tZlO34YwyxT3M6JBRxh9oJKdluE=;
        b=hBuAFXEqFcNuOUEBjxkmP+EDKOd4QI5P/gzEws4UwxDjcgQKzSf4cUC4rjts16bRK5
         nwvS8/e7iA7wAahbb2xEqQegjtygD6vyWtyHYkdLUEgo/BOjSDPUltQQf+lXJC+KTyc8
         GlEqyvolyykQzhqz1YLux+ZIY3IKffQsX72ByDCqN6vZUNe11pTcPv1pRCrvs0UKjxYz
         mIsHKoQrzhHGYaKOY2o9R1KLjzUeS0n/nR9zSF2QuQRmmZ/DXA8VkBhOjHgAHGAAnD6U
         +lEerL8gwF2Y5JdvPn3dwDQ3249HoZYGmmrgwcFcHK+4vpD22k3n51HN2k7a+KGL6595
         8Jyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kp3+/TtiE9YPoGP1tZlO34YwyxT3M6JBRxh9oJKdluE=;
        b=mMwaflSqKPpmSw751+fF3iErsdTgwkXwjfHDHFQMzQ5U/41XR/gfVOzfBoorUNkEKX
         mO9IRGLmK8L8U0QUJuqsz/aElJw4PNoCg/BLasY5m2KQkZg4ONSgYgeY0WkS7Plng13R
         p8BQF2Qj36Znw7aT/rpsGEQNyQ4vB6x5gX8H2INou092PfQy27OjLR6pTW5Uw7pVMh3d
         GAK4R+voNmmJMV8ImtGB8vHNym65siQSCpkmGVoys4dKYJaNpAIvIlfOtVt6Ip77xrt4
         fsLFqYDm9tz3uU2QVk/MXnekPeFVOT4J3TqhDRNnZjIAxaiAoh6KUYuvMbQh1jgxUorl
         1HAg==
X-Gm-Message-State: AOAM533IR2TYkeI7vzwUmlUDt2XaTmZakXaMn+SKiiQcEm5fDBM2UUT/
	UwcA/U+lk0WaGntxOFIXR2Y=
X-Google-Smtp-Source: ABdhPJwFhGKKJmMByVfQagXPsSSSc1NYmeuIVS5FJxxzjItwMRVzBsLyecydXzDgQZV+U2tu4Mvc/A==
X-Received: by 2002:a92:1e0b:: with SMTP id e11mr314708ile.35.1628800486537;
        Thu, 12 Aug 2021 13:34:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1582:: with SMTP id m2ls1394769ilu.11.gmail; Thu,
 12 Aug 2021 13:34:46 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d8d:: with SMTP id h13mr329027ila.40.1628800486137;
        Thu, 12 Aug 2021 13:34:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628800486; cv=none;
        d=google.com; s=arc-20160816;
        b=pD/1HWWfm/C09ZGBqKM7s4Y9QVxh0U0c0ICw8DDm6xzGLDFMsaYXlrqg28QSLIFIaC
         3k8yNX7CW5Aa9EzthMf8EuWtd/E1cSJiSexZJGnj1iBMCwR06gNYGlSpe2JEiPZ62HKN
         nXroAAPuWVIEfNzhbhxtBp9CWTQ0ERGCcnTB3HVzT1mOtpYXuJzz6bRTySdA2cDjVqNx
         2dft2UyNOrPfRptYdKgDYyM558qFqHtiHkIukT3jW7aOSnCDPyzD5Wc1eqwZ1+dUONBk
         IVDzDjwOBWznVmDqoQuS+w4V74WU5Et9JLkhyeJchU8/hfOlvNfwN/et7HoFPKG2vWqN
         JuKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4PJufOzjLBDCxdq/byxiVCZ51RzAASfRORWxOimYCxM=;
        b=US1bjubWpoiI6emeVwmME8DjO1K+ZHMNcoZ6w+66unw4QKK+mAr1NSWYlk2NO8Bigt
         wcxyW6M3DI0N9PyP5RBbB0/KgHQH+t22M+O/K5jR3+ygBInareoREejf1bpxWZRBTKm6
         TGc+RW4BqskJslOXtsNC6TEVXqOTMS7VDesHr+M/vdxmhKe1sBMpc1HKvnWtK3Wq3WOc
         ySPalxXxlHwC5ymLAp/smR0nxeXBA/afa7+SEBi1DcnS7IC/hl+/FVlN7SbXdTDzCUZv
         9G8UOUPB4QI7iShakAAby9CEupGh+4Si9IxerHlukFa8/ad9CKc18XGNuWknduGFxyq7
         QdyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FhizRNLC;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id l7si231051iol.0.2021.08.12.13.34.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:34:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id w17so14280007ybl.11
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 13:34:46 -0700 (PDT)
X-Received: by 2002:a25:24cd:: with SMTP id k196mr6831305ybk.459.1628800485582;
 Thu, 12 Aug 2021 13:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210811203035.2463343-1-samitolvanen@google.com> <CAK7LNAS7Hf19wxebY70jK0TsebmfUpdh5AMo5W21PEjEXOERTw@mail.gmail.com>
In-Reply-To: <CAK7LNAS7Hf19wxebY70jK0TsebmfUpdh5AMo5W21PEjEXOERTw@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Aug 2021 13:34:34 -0700
Message-ID: <CABCJKuevfeizkWN7uafPwb7S5uQ2_jZaUbPOttrwJJTuzTwVDw@mail.gmail.com>
Subject: Re: [PATCH RESEND v2] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>, 
	Alexander Lobakin <alobakin@pm.me>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FhizRNLC;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Aug 12, 2021 at 1:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Aug 12, 2021 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > With CONFIG_LTO_CLANG, we currently link modules into native
> > code just before modpost, which means with TRIM_UNUSED_KSYMS
> > enabled, we still look at the LLVM bitcode in the .o files when
> > generating the list of used symbols. As the bitcode doesn't
> > yet have calls to compiler intrinsics and llvm-nm doesn't see
> > function references that only exist in function-level inline
> > assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> > work with LTO.
> >
> > This change moves module LTO linking to happen earlier, and
> > thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> > entirely, allowing us to also drop the whitelist from
> > gen_autoksyms.sh.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> > Tested-by: Alexander Lobakin <alobakin@pm.me>
> > ---
> > Changes in v2:
> > - Fixed a couple of typos.
> > - Fixed objtool arguments for .lto.o to always include --module.
> >
> > ---
> >  scripts/Makefile.build    | 24 +++++++++++++++++++++++-
> >  scripts/Makefile.lib      |  7 +++++++
> >  scripts/Makefile.modfinal | 21 ++-------------------
> >  scripts/Makefile.modpost  | 22 +++-------------------
> >  scripts/gen_autoksyms.sh  | 12 ------------
> >  5 files changed, 35 insertions(+), 51 deletions(-)
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 02197cb8e3a7..778dabea3a89 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -271,12 +271,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
> >         $(call if_changed_rule,cc_o_c)
> >         $(call cmd,force_checksrc)
> >
> > +ifdef CONFIG_LTO_CLANG
> > +# Module .o files may contain LLVM bitcode, compile them into native code
> > +# before ELF processing
> > +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> > +cmd_cc_lto_link_modules =                                              \
> > +       $(LD) $(ld_flags) -r -o $@                                      \
> > +               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> > +                       echo -T $(@:.lto.o=.o.symversions))             \
> > +               --whole-archive $^
> > +
> > +ifdef CONFIG_STACK_VALIDATION
> > +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> > +# modules into native code
> > +cmd_cc_lto_link_modules += ;                                           \
> > +       $(objtree)/tools/objtool/objtool $(objtool_args) --module       \
> > +               $(@:.ko=$(mod-prelink-ext).o)
> > +endif
> > +
> > +$(obj)/%.lto.o: $(obj)/%.o
> > +       $(call if_changed,cc_lto_link_modules)
>
>
>
>
> Documentation/kbuild/makefiles.rst says:
>
>           Note: It is a typical mistake to forget the FORCE prerequisite.
>
>
> The current code in scripts/Makefile.modpost is also wrong, though.

Thanks for taking a look, Masahiro. I'll fix that in v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuevfeizkWN7uafPwb7S5uQ2_jZaUbPOttrwJJTuzTwVDw%40mail.gmail.com.
