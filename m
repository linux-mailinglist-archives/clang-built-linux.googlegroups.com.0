Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCHZXD5QKGQEXXDMDYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4F4279124
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 20:52:57 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id a13sf2325373qvl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 11:52:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601059976; cv=pass;
        d=google.com; s=arc-20160816;
        b=vKc5daaS6V7TFoGEQ2lOOqneQ1ssZ/nPqQf6BYWIxC4a9YKW8ZKxF8I3PQTCgISbud
         j08zZZU3yvQ/LQRefOmUZ9O42MWkeAQeeXctuse6Shv772vx0+G/YKbvJ4GXG3cVC4ZX
         hDZx2b5Mj3XZs/mZdA1Pos2qZg3y05mf9yG9+jP325wKyYU7k1hnIdcg3o5lGAfYDarX
         rFVtG2a5Gv8arsWW4xAuUwA8+Rvv4flFy5h5f0Fp0gjU660SCgUvlqRVpIfd83Q+yHpA
         vjbDWs4UehOvlb7DA5mu5MTxApvBW+0OFV3Ko9+Jly1fxk+0nMLoiAQFfq7+6b1PlMqA
         wSug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6WvRhSFPny2Dnsj0Lvs8Fw1Ib4WLHw4fmKdzeWvSBwU=;
        b=Jjv6/0YdBLwYrsTL1yn6Lo3cDcIgdfUwsY64AGTW2i0880/VaQzF26tdmEt9gp/8FJ
         Q7KdJkn6jim4nmiARo6kAVCYwP64iIaSuMHQmMMp26x0ZYAjUnoKq+TDc2sbFnXu7RQx
         YzJe8Y0ENRO4kxu87FKCbauMqjsN6N4VmdNzWWdjHS6mmY6cE2u0XuAHzHfSuEo7DFH/
         0NyAusRKrdKGJG5EqCHxiOauSBZBoLOLf70wWEr/PRTmwPOSxHNuXkhjlV/8BQmuZ6LF
         DnS8r+RO/MawzD2yvRc84Yjf1vgNBkPIYqqZL1jSlQ0xf/c9EUswR3kJkIhucatN2+Zx
         Xtog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i45TaUrx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6WvRhSFPny2Dnsj0Lvs8Fw1Ib4WLHw4fmKdzeWvSBwU=;
        b=SmzfQil3Igw8Hf50FyRgnlkfpXr7R4qwb9uXJCAUsoAtcDt8JtiVJfxDpyGtIBW7qt
         G8Q8/wTcvZJEzjkB8U+rDUX363tV4Woxrlgx6V+qeREW8ojvaEkqd5pkhwcqptKAGE+h
         NaJbndyTre5YoRNalcQ0vax1hjyrhC0g8wgCfQO2j/sPlve3kfATj9i8FS2CibVm9h2v
         P1A8NE/By5gZdwf5tNLQuqVBBwbMvX/UKOXEvigDozSdpAr7tbHfKNdPw4V27OrGjp/7
         iHEdM5+sRVkJiYNIrgEdlxgB7J3AR3VwaheJAVwxEppibzX9ev6dSFAd5EnkXMtITYVw
         SE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6WvRhSFPny2Dnsj0Lvs8Fw1Ib4WLHw4fmKdzeWvSBwU=;
        b=IN0NzvcZWbhR4XQwNsNpBFK5bGL2H4M+i6OONH/CMQ96pqtQV2pMmaIeX9wpwhH1Pv
         fH+6ikqgFetimelI3NfuRlnwf7kbhrF/mJ5CsA0QfeSxHrsVauK9e6MWn69phoGFPgjg
         qPzwg2MHW7mVaHE5pi8fttsVR+nFDNpEpPOtuGOdtrkrkluGcJYJu1Y/YOkKdBFM/l6L
         QRx+eJMJL92bOTxzMaanNVhT8axJ9JqVDSXnQSrfqw1P4QcheONd6/nnAXHFrm7E+YIk
         vdUKD7mf9ZyY/6lT5Z6D3pZlENNs0cGwQA/Yq0rrer58pukrNUKp+MviCraGB2jSDb/6
         iBxg==
X-Gm-Message-State: AOAM5333Nuxgbt9zAneSwfm3z3kNjoEupysbSdIUBdwRn1zRD53++nyp
	hGUNaSnGcV5ovoMSs23x64g=
X-Google-Smtp-Source: ABdhPJwKNDlsQooWZkVZKUeKxpHBsZJ5Dn+sgOUacDrEvO2zPN6NpQWKNLAw2tTGCNZcgD1FDRFloQ==
X-Received: by 2002:ac8:545a:: with SMTP id d26mr1143534qtq.124.1601059976707;
        Fri, 25 Sep 2020 11:52:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e00e:: with SMTP id m14ls2039qkk.3.gmail; Fri, 25 Sep
 2020 11:52:56 -0700 (PDT)
X-Received: by 2002:a37:7104:: with SMTP id m4mr1403891qkc.252.1601059976198;
        Fri, 25 Sep 2020 11:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601059976; cv=none;
        d=google.com; s=arc-20160816;
        b=pmbq/J0BsvTE+eZ6mKz+gEN5m6BFSltqkr+wf5ywWS8xRIUNOtRJ7Lu8C8/RwQoDkJ
         gis8gOhIYOX14zreTTEdgLfiEehfEiuA0l808Lz6nuOeaH2cFdQezPW6GrBQbfkS/9Nd
         n7xENeEqeSteMVw6D1s9K/2k69r+tOQgsVGjMyqE2mtcR7nxpvHqZvOrQsz3udRLNhGJ
         1hYSIgTlrcJklNY68NEvp7DT/hHxLzRYbyAs3SrYKq0/ml1UtwSGRbnMCmkJjtCZovCO
         xQiPlnrtVs/FvmvliJfyvQMUClgobW24SPwYdYdibOPU36DpgMW8KHSzYtSqbUKbffoN
         IF9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZgS7XDEsT9SMTtkEmVVEM4fmyQz20jTcKbyopJIbVnw=;
        b=tR+iGPQiq/0bP5pxJJbkw9q+4ZoP0aXSQzmlNRzGeZGPTLCjIwj9R7jITBLMFGCwGl
         ldAByWfvS7azcCHr2BXNi8IsS1rkDoDTBiu/NOv82VrkYpCJ4WUxhI54CIK1Iw/16O9U
         zJzt66zToGKaSbYk31IFUurMHyIjEjdNpyZEAMV3QdLKgpRLGC1eES1WOITJD/T8kaWZ
         dn2YjQA3oS7e5xV6gmNiEQnvo82RaPd6ao55C8tuIU+lI4k/FhUdyxJpnJqpL7WVpULf
         3ng1ZUdFiJveuQR2UO0fxCrrkQ5Vox2zW83thnRtq2ub5Esb2bmE1vn1EY2Sb517z80+
         2pGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i45TaUrx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c40si287986qte.3.2020.09.25.11.52.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 11:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l71so3350438pge.4
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 11:52:56 -0700 (PDT)
X-Received: by 2002:a17:902:ed11:b029:d1:f385:f4e7 with SMTP id
 b17-20020a170902ed11b02900d1f385f4e7mr758865pld.56.1601059975629; Fri, 25 Sep
 2020 11:52:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200925152121.20527-1-f.fainelli@gmail.com>
In-Reply-To: <20200925152121.20527-1-f.fainelli@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Sep 2020 11:52:44 -0700
Message-ID: <CAKwvOdmxkwA7NPSj-bSarurjWc7Vs2vzuT3PnaCJhA00pRWyYA@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Fix clang target examples
To: Florian Fainelli <f.fainelli@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Kees Cook <keescook@chromium.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i45TaUrx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Sep 25, 2020 at 8:21 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> clang --target=<triple> is how we can specify a particular toolchain
> triple to be use, fix the two occurences in the documentation.

Ah right, my mistake.  It's either double dash+equals, or single
dash+space.  Thanks for the patch.  Masahiro, would you mind picking
this up?

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/kbuild/llvm.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 334df758dce3..dae90c21aed3 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -39,10 +39,10 @@ which can help simplify cross compiling. ::
>         ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
>
>  ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
> -``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
> +``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
>  example: ::
>
> -       clang --target aarch64-linux-gnu foo.c
> +       clang --target=aarch64-linux-gnu foo.c
>
>  LLVM Utilities
>  --------------
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmxkwA7NPSj-bSarurjWc7Vs2vzuT3PnaCJhA00pRWyYA%40mail.gmail.com.
