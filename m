Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB4H42WEAMGQE3V3ZDWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC7E3EAB73
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:02:58 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id gc3-20020a17090b3103b0290178c33479a3sf4972135pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:02:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628798576; cv=pass;
        d=google.com; s=arc-20160816;
        b=pSZFiMDuFMZ7g6iNLH+2OlVp5t3cnPxsx49gUZWWtd4qUpTSFCrKzxkJQa35/E+QEw
         wHeL2TF4BCHFU/1bmRrEBcmhdCUxOJNgGTJdSKGvP0Q6WoxEgJcO451pqthpY5CnBNM5
         joy+LtGlK7fujmLkAf29OgSN0u3CsnKGhbkq0b1XeJFUUQvwiVQlgGw5R9ajBxNNfRJX
         supkV3n84/h98zORusM88yoAGjNjs+f9feqEyLEytSMX/8pRmtrXDjiK8CsSFabDam0C
         9phvK70gyqsv/g0265H4FVTwKSujGg8Yk+y63DiJT0iTq4qWy8ZUbICJjI3jv/he47A2
         q38A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ikP47k9cFNjVe+1D180fo0XngOwrYxW81cDKyKIjPLI=;
        b=r+tRM1hN21LKPOV+SXv46DtBqwAx8XJ5EwlghkBBnqJeredQEXjQBWYXghEYTU44By
         qyhElf6BU6X2/0iQGRoZjZCiNelkv0p7oosmNRcGvDDiQC9o7hkERh+YeTDcvKKu6Wty
         UF2JluVZCGlT0n3fRGuRon+tPnRupTUvY2pnGth9i86pg+fmFt5F7Int746+14aYp+qp
         sXilyBH4Q8sS/awJekLaaVJIv101hFvyB9XFtv9TXJxj+20mIvJD2C3w69qJzDgNjT3t
         Gwm1GOYQbbagGX9G8WLK1EBjNmZaNwW9pl83EAT0syl4iFhEWR19aAt0K+T92pi1kXql
         njew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vF7+DlT5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ikP47k9cFNjVe+1D180fo0XngOwrYxW81cDKyKIjPLI=;
        b=jWqDF37EFLYvuVm9RKY0u5iTwVn+TJ7CbqsYASoLQ9pR/1enedZhg51bcSiQOVEm1y
         0iQids85fQN6gBx4/U5VNwSYrXFlMPEe8gufY+UMJD3CYS8rSu8DAFOOMONXf5/vWNMF
         DVe1jXE0bLU3o+9NZb9sYa4qKP5VnwcAZrrW3rwhBbnHcuqowS8hHfWRceQxCkvOUQSU
         3ogxqNpVhmfGyauRkmRhdeyogcXGmRooslV/Tn2ewM/FbNQemUeIt0bHDZn/XcGIPl4W
         8e03S4AAV6U0DHTh0JAuQTuvQHdL6bs6Mk6E0fNuqc6kHCS5hq9WDmtkcxLF7R+qRX9b
         QIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ikP47k9cFNjVe+1D180fo0XngOwrYxW81cDKyKIjPLI=;
        b=jR3PhMKgy8DNvA85QpILuw5G3rcrpGJhbWuvBz3+nDUbtIN6UrEhUFOw2v9A5mubZa
         vSGLxqQWE+irx7MFlPcc4Xt6AUXNHXND75bqhMGWi/9LYDc7fEGM4D/HylSrwp+L5cpJ
         5V24X+E1l98hXbRjYhint2j7cqtUnt6aLpqnpNtG3S0ySk7+kqcaj08WKEBymquCOKUZ
         Zw1Age3MVLfuP3LrSASyTjktB74N93AWsYPjNxZWncqU/1kdP4BJB/yG2ZOY4VtmCtiZ
         5/RNsKLA7t2H0yiII4iKoUnELvHzYlNQeo+e9Hca/1uV4IwvuZnLax22OiQceFKYTxXC
         /TUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531haYM2mseT9ClGqL13+su2yxyE5woLWmm8jNr0HojZ4MEbJkS0
	vX+ni8XdLAwBQ9qqzUwO0jI=
X-Google-Smtp-Source: ABdhPJxlrc7/kl13dMvGxPayxpEhbc91W6FC1HvWvMuv3yPjA3ulUJr/wf3Zqew1ep7Xcy0UbP44/w==
X-Received: by 2002:a65:6441:: with SMTP id s1mr5274432pgv.214.1628798576639;
        Thu, 12 Aug 2021 13:02:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2341:: with SMTP id j1ls2410270pfj.0.gmail; Thu, 12
 Aug 2021 13:02:56 -0700 (PDT)
X-Received: by 2002:a63:5024:: with SMTP id e36mr5406126pgb.66.1628798575962;
        Thu, 12 Aug 2021 13:02:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628798575; cv=none;
        d=google.com; s=arc-20160816;
        b=vEf/n1JABrQcXcguiIOZfyM7GNVVR+axUVIWVB9+vSBw/RRNNBmVibNapQFUDdz7IS
         JxZO1VXvzG94mPwEnZJkyZgfZGkAJ1ZovdZxLLaQ9+gc0mT/4Qwn8/JZpG5VYG6ZFpSF
         ZGAItOq6J+Bos4o8xKaB6oxwDOjrD+biKgs1P+X2DY8RiAq3KKo8EQI72pUK9Pw2QU7h
         A1BQ5apv8BrGPRo6xBEU2CO0HL/CkHr3gomPNiMpvOD2IYdcJaSdtkk2PQxbBpK74Z6v
         PwpVCpOnUGHLO0Xrz80W8qe54KYiNA8jqZUhj3iSgy8vxpjeXJX61ztXkv/PCt8PMlHU
         Xfhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=B2s6IPDU0ZhP9PTPZ+IHCIeZhp+kPml77B3svXFqvxs=;
        b=DnB7FVDQTg6///BwizbeEH10f22lXFrK5dXI2dKlWyYSV41dFfSw4dkyBIrWn75HRQ
         ib0mJqKpWcSjs846Vnkwza5xLUocKeCVu86y5nkrRoMJ5e8MTxDvhjzjaL/Sr7ZMvMp1
         Leeu4M0njq5nZCZpA9bzImFnNZ0Zv3veAwXYhR2K+2OKxQb6hyuw8Ms8hIp2iC0/F2I8
         Iz64uiSrwrqFlRaONU0cUncy4WiPtUaIv7vyA09enHSO0PYIlj19Lvi6zHxPPRKQDOQn
         66PfcX/utXRTDIV4yziWL0tFHBK3om629X574CkAH2K4FuCoqDrC61sSd/I+6dA37AlZ
         BIiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vF7+DlT5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id o20si282935pgv.1.2021.08.12.13.02.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:02:55 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 17CK2Qrb029549
	for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 05:02:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 17CK2Qrb029549
X-Nifty-SrcIP: [209.85.214.178]
Received: by mail-pl1-f178.google.com with SMTP id l11so8752912plk.6
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 13:02:26 -0700 (PDT)
X-Received: by 2002:a65:6459:: with SMTP id s25mr5400881pgv.7.1628798545805;
 Thu, 12 Aug 2021 13:02:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210811203035.2463343-1-samitolvanen@google.com>
In-Reply-To: <20210811203035.2463343-1-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 13 Aug 2021 05:01:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS7Hf19wxebY70jK0TsebmfUpdh5AMo5W21PEjEXOERTw@mail.gmail.com>
Message-ID: <CAK7LNAS7Hf19wxebY70jK0TsebmfUpdh5AMo5W21PEjEXOERTw@mail.gmail.com>
Subject: Re: [PATCH RESEND v2] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Alexander Lobakin <alobakin@pm.me>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vF7+DlT5;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 12, 2021 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With CONFIG_LTO_CLANG, we currently link modules into native
> code just before modpost, which means with TRIM_UNUSED_KSYMS
> enabled, we still look at the LLVM bitcode in the .o files when
> generating the list of used symbols. As the bitcode doesn't
> yet have calls to compiler intrinsics and llvm-nm doesn't see
> function references that only exist in function-level inline
> assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> work with LTO.
>
> This change moves module LTO linking to happen earlier, and
> thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> entirely, allowing us to also drop the whitelist from
> gen_autoksyms.sh.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> Tested-by: Alexander Lobakin <alobakin@pm.me>
> ---
> Changes in v2:
> - Fixed a couple of typos.
> - Fixed objtool arguments for .lto.o to always include --module.
>
> ---
>  scripts/Makefile.build    | 24 +++++++++++++++++++++++-
>  scripts/Makefile.lib      |  7 +++++++
>  scripts/Makefile.modfinal | 21 ++-------------------
>  scripts/Makefile.modpost  | 22 +++-------------------
>  scripts/gen_autoksyms.sh  | 12 ------------
>  5 files changed, 35 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 02197cb8e3a7..778dabea3a89 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -271,12 +271,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
>         $(call if_changed_rule,cc_o_c)
>         $(call cmd,force_checksrc)
>
> +ifdef CONFIG_LTO_CLANG
> +# Module .o files may contain LLVM bitcode, compile them into native code
> +# before ELF processing
> +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> +cmd_cc_lto_link_modules =                                              \
> +       $(LD) $(ld_flags) -r -o $@                                      \
> +               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> +                       echo -T $(@:.lto.o=.o.symversions))             \
> +               --whole-archive $^
> +
> +ifdef CONFIG_STACK_VALIDATION
> +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> +# modules into native code
> +cmd_cc_lto_link_modules += ;                                           \
> +       $(objtree)/tools/objtool/objtool $(objtool_args) --module       \
> +               $(@:.ko=$(mod-prelink-ext).o)
> +endif
> +
> +$(obj)/%.lto.o: $(obj)/%.o
> +       $(call if_changed,cc_lto_link_modules)




Documentation/kbuild/makefiles.rst says:

          Note: It is a typical mistake to forget the FORCE prerequisite.


The current code in scripts/Makefile.modpost is also wrong, though.








-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS7Hf19wxebY70jK0TsebmfUpdh5AMo5W21PEjEXOERTw%40mail.gmail.com.
