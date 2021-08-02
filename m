Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNWCUGEAMGQEGIVJDCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E85E3DE153
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 23:18:47 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id b12-20020a2e858c0000b02901990f5ca735sf3540004lji.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 14:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627939126; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFtUem4iC3EDZNEeXbUap5xGLjFw1yV2ScMokwIXHsAr9ZzcOckKJSPzcj4sAvWukN
         pu8TYYxPBSWW1INWLQHBfS7xRQUccqnnrYou5QRxDVWI6GeqERDfWczLT0w3/PhgyDBx
         Se4H7Y3gEgFpNhyFSL3QAvEeyNAeXx0r+qr9+SJv8975dnA4YfH8DYhAc6N8bwwZqXYo
         UYrz4at+PUZ/o0i8eP2Pm9DhD2V3BaNB6KHcu6tHye+LkKWe97RrA+TtDHJ1MzatkBGW
         6f93YQ6qIPumHUSIX9UDExHD6xAjXE/boyx0oCSq+a3j6Ch6/BDHAJo+smb9et2XbeYt
         s7zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bb0b5U9e5sSk4UojKw7bTIiCrzPRVLRQK6pxcqCyROw=;
        b=WR6jR70iZ79S65PnEpnr9SULha/OuNt4t3WkJuYZJoGWDJjkW2nLsc6Rvts/dT2YC8
         2C4uxVh7j+6etrKP0ATVUZ5iILd8NgNQBk1S0Nq5LC37m4gjTtcRlNNTQIiKdzoLaFqv
         K4mMEpWpuHA3xZyqlnPlMID2dlJUS8oDYqGC8TK8RYEogjNW/lLiOVq/C5LVVJHEnX+T
         YBqBYYJR8Ye4OzXDI0MeSuSAJ8Bl9omLotKvy4Xv8i92cqn65QUy6hINZP3sContuR9P
         L7SGGlCn2FXH3gzcJcdQKk8+jfBeS/zcyb6tTpLblsfUi1YQkcwW6veKOGW7jZ62DYXA
         AYAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kXYzxNBo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bb0b5U9e5sSk4UojKw7bTIiCrzPRVLRQK6pxcqCyROw=;
        b=WzWO6S//53yzsQAOy+njrX18pH4gNSht8G/ERBFh3XSRVs9omU4KY8w33YFJrbnoSI
         GyOSmXyQpkPGjjbv5rhIFyGZhIp73R66UMN8O5FRprRVVGLA9lpTrX9pidl8+82pkSMm
         nYuxGJEaJb68RyXz76KGDuZy4NaqyR4+1e1aIKc+ISYw3A08OEmh+Coy5/GW0bSahX+6
         goWklvp9ni47WUfiNvOloLJKYt8JBb5AEolYNqnyW17inIX1R6acrDy5PT2rKE+gAJkW
         NQuxD/EKjIFNrcnmf7XepIQPzoqSAT+kwbMnZk0LlP11zxrRXF1ZBK+o14lWlzx0tt8f
         ufng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bb0b5U9e5sSk4UojKw7bTIiCrzPRVLRQK6pxcqCyROw=;
        b=dgcc8tZp06ojXrsOjtYUGlN0NItkuKBZ9PlFsTeQ/bsiJLgJcVewKF2s7ggETDv9wa
         tnR3KLBk7XKDqNrJpq+A7W59iKoNYyJb4OVuYrjkTCDdE/cDZ2r4p4mlVmGgR5XwWRK/
         SiACq5VBdQqDou1Ab3X6zUQDJ09J8aZpAc0lWn581bDOHU5/UTi7a3IP+9FMx4gN9PB8
         JsKk4NzHcfrcqQJdcGJ2R09+1Qe293d3sDetAeMmjVeYIw+gmdPHyh+87H4AbJhiSI6b
         6+P1508t87m/dVsb657nV2y0OeDZhqePThlUiBsa6G6ymj2ddwuNlFR/PtM3oj+kzlPA
         cwxg==
X-Gm-Message-State: AOAM533HaYA5OPaYRtfXoQlLDp6vJ6V2uw3glJKbAUg6aZIQf1mxCt+Q
	J60RoSd7GfACBwC86TkI6ck=
X-Google-Smtp-Source: ABdhPJz0F15kix/TcjjyfsgwzoNpJnNIEp8dXHiwVEnv0VyERU8zT4lltURYwXS8S80ezLFmSHJw2A==
X-Received: by 2002:a2e:95cc:: with SMTP id y12mr12221752ljh.387.1627939126681;
        Mon, 02 Aug 2021 14:18:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1783:: with SMTP id bn3ls1726652ljb.10.gmail; Mon,
 02 Aug 2021 14:18:45 -0700 (PDT)
X-Received: by 2002:a2e:80da:: with SMTP id r26mr1087503ljg.77.1627939125399;
        Mon, 02 Aug 2021 14:18:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627939125; cv=none;
        d=google.com; s=arc-20160816;
        b=bYS6KqkLYrDaDZvUFINAMfKD5irRVI6oYDCgIooqtvI2LqKpp1uZ+gcuSdI1yo8cyD
         p5IU4auIZN8ATxHCFk/V0BVncpXeaNa0rbBPvGEOvChJCcwYTrpCI876hqvwpXEqY0Gz
         eIxYd7zwoN2/dW2WUuPga4Kqwswp55qOY5SbcchlMD7eumwEXW9LWGQK7HqFdHFdZnOz
         uFU68hjM4Vgr1PzQB2UL+hVKDZgZxl8KLjE83eAv4RdJ+GO/IP7OqNdJfIwabcOKlrRS
         1XrszF430qeOgmbNIjdM3ffVXHTVe6jcsKPqVGqtFFimpZOQg594jg6uww7llB7a6qN9
         n2jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1Z9yRMRPvPvhNhspEK5nK4+ikbIcB7z17ForMSSXLIM=;
        b=jzfcnV7B87w0QV8hX0tjMcmByluzeYNOeTmWpGnArQdvuSwiV1hc6gWqwQu1o1Oozv
         N4EIQYqB0pK8yHZ5nb9dQWHWptaaLzO6QGJceP4seZU1hWA8ol+KD6cHgf7fJLTF+1ka
         LjxpCosT8lti7iKldkj5HZjUclVoRTgqy1PMBBIGbYgDzg8BVqNzh01dsonWyic4z//G
         qORoUl0OCK9q4clSIOjrDh7SHjv/zDuWU+HMZXNbIBdeazqWOG+O+BiejNdYN1uFSxkL
         Dnf24mr37MptCkXNoOY87g200e9YY6wilKzZg+S6dEWdSG0vZkbA1OlWlyxW8ipBWpzV
         C+WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kXYzxNBo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id q4si623242lji.2.2021.08.02.14.18.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 14:18:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id m9so25621929ljp.7
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 14:18:45 -0700 (PDT)
X-Received: by 2002:a2e:9304:: with SMTP id e4mr12467173ljh.244.1627939124801;
 Mon, 02 Aug 2021 14:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210802210307.3202472-1-nathan@kernel.org>
In-Reply-To: <20210802210307.3202472-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Aug 2021 14:18:33 -0700
Message-ID: <CAKwvOdmG0Ahieq27y29zqqEfjDu4NiC8j1fDg8c6RPnWVhdSsA@mail.gmail.com>
Subject: Re: [PATCH] scripts/recordmcount.pl: Remove check_objcopy() and $can_use_local
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Steven Rostedt (VMware)" <rostedt@goodmis.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kXYzxNBo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Mon, Aug 2, 2021 at 2:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> When building ARCH=riscv allmodconfig with llvm-objcopy, the objcopy
> version warning from this script appears:
>
> WARNING: could not find objcopy version or version is less than 2.17.
>         Local function references are disabled.
>
> The check_objcopy() function in scripts/recordmcount.pl is set up to
> parse GNU objcopy's version string, not llvm-objcopy's, which triggers
> the warning.
>
> Commit 799c43415442 ("kbuild: thin archives make default for all archs")
> made binutils 2.20 mandatory and commit ba64beb17493 ("kbuild: check the
> minimum assembler version in Kconfig") enforces this at configuration
> time so just remove check_objcopy() and $can_use_local instead, assuming
> --globalize-symbol is always available.
>
> llvm-objcopy has supported --globalize-symbol since LLVM 7.0.0 in 2018
> and the minimum version for building the kernel with LLVM is 10.0.1 so
> there is no issue introduced:
>
> https://github.com/llvm/llvm-project/commit/ee5be798dae30d5f9414b01f76ff807edbc881aa

^ should this be a Link: tag?

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  Makefile                |  1 -
>  scripts/recordmcount.pl | 40 ----------------------------------------
>  2 files changed, 41 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 27a072cffcb9..b6ee64dd435e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -546,7 +546,6 @@ export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn \
>  PHONY += scripts_basic
>  scripts_basic:
>         $(Q)$(MAKE) $(build)=scripts/basic
> -       $(Q)rm -f .tmp_quiet_recordmcount
>
>  PHONY += outputmakefile
>  ifdef building_out_of_srctree
> diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
> index c17e48020ec3..8f6b13ae46bf 100755
> --- a/scripts/recordmcount.pl
> +++ b/scripts/recordmcount.pl
> @@ -173,39 +173,6 @@ my $mcount_regex;  # Find the call site to mcount (return offset)
>  my $mcount_adjust;     # Address adjustment to mcount offset
>  my $alignment;         # The .align value to use for $mcount_section
>  my $section_type;      # Section header plus possible alignment command
> -my $can_use_local = 0;         # If we can use local function references
> -
> -# Shut up recordmcount if user has older objcopy
> -my $quiet_recordmcount = ".tmp_quiet_recordmcount";
> -my $print_warning = 1;
> -$print_warning = 0 if ( -f $quiet_recordmcount);
> -
> -##
> -# check_objcopy - whether objcopy supports --globalize-symbols
> -#
> -#  --globalize-symbols came out in 2.17, we must test the version
> -#  of objcopy, and if it is less than 2.17, then we can not
> -#  record local functions.
> -sub check_objcopy
> -{
> -    open (IN, "$objcopy --version |") or die "error running $objcopy";
> -    while (<IN>) {
> -       if (/objcopy.*\s(\d+)\.(\d+)/) {
> -           $can_use_local = 1 if ($1 > 2 || ($1 == 2 && $2 >= 17));
> -           last;
> -       }
> -    }
> -    close (IN);
> -
> -    if (!$can_use_local && $print_warning) {
> -       print STDERR "WARNING: could not find objcopy version or version " .
> -           "is less than 2.17.\n" .
> -           "\tLocal function references are disabled.\n";
> -       open (QUIET, ">$quiet_recordmcount");
> -       printf QUIET "Disables the warning from recordmcount.pl\n";
> -       close QUIET;
> -    }
> -}
>
>  if ($arch =~ /(x86(_64)?)|(i386)/) {
>      if ($bits == 64) {
> @@ -434,8 +401,6 @@ if ($filename =~ m,^(.*)(\.\S),) {
>  my $mcount_s = $dirname . "/.tmp_mc_" . $prefix . ".s";
>  my $mcount_o = $dirname . "/.tmp_mc_" . $prefix . ".o";
>
> -check_objcopy();
> -
>  #
>  # Step 1: find all the local (static functions) and weak symbols.
>  #         't' is local, 'w/W' is weak
> @@ -473,11 +438,6 @@ sub update_funcs
>
>      # is this function static? If so, note this fact.
>      if (defined $locals{$ref_func}) {
> -
> -       # only use locals if objcopy supports globalize-symbols
> -       if (!$can_use_local) {
> -           return;
> -       }
>         $convert{$ref_func} = 1;
>      }
>
>
> base-commit: c500bee1c5b2f1d59b1081ac879d73268ab0ff17
> --
> 2.32.0.264.g75ae10bc75
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmG0Ahieq27y29zqqEfjDu4NiC8j1fDg8c6RPnWVhdSsA%40mail.gmail.com.
