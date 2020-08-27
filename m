Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJHVT75AKGQEWRQ6SGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F102254CFC
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:25:42 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id g7sf4779506pja.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:25:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598552740; cv=pass;
        d=google.com; s=arc-20160816;
        b=VZmGnkcLhaXHWqKaKKRfD9X+qMWqtVRSnDGbPOPsLwR9GDLXaTf0NLaCOfKzWwrPel
         LytA3Y8deT690zjkZt/bZTcOykrWKi99RpgWlZLt962FgZ9c5TTXG9ASYf16Nw1tc37g
         hPNI9orQOFmX2uionOJoOJ/Cg5UlMQ24tpNeprdO+Mw3kbTQg+tFOA3Rv0RFcd0ROFnC
         rnWhXeUbA5/swILOc5XNgcUPksSHazcVayQHw78mBxKB1w44TS/amHJ+dujuSaRBQWos
         45oG8hERTb43kOe0mPIrrjtjGXak6smE+O0t1LywgI65BbFpDMclpt4jHw4K9Rt+ZFX9
         NwXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=GGrpDFVbyldsXia0RQ2yWJkG3b98zDqmvtbT7oXHEL4=;
        b=ms9UqZkZHiLXVTkhi04ZOu+zCcA3rrHQ7aDfCXp4sE0xexWeZcsINg3LIWJhQwr/HM
         ffNEUtDqM33BqrXTMGQxZ8U3U066VPsaL76T3KKGD76pIUFNhxLLwm5GIuKcR8bNzmAY
         Y/fy+Jb/gSLK+vAbGtcQr1B3WrtPTFtjwvqUv2WTEFdQgpZxXSuVVhzkA2rWOx0/ZcHR
         SPmrH4cQxdX1uPwS1bCR+FfJnxRMFpzdFHnVmlUjyZOhRxNzITY0KGjGt0iPQueWfmPl
         kkLCbjefquTbb6/7eKUo4YwGYjcLrostA89MXVnk9Wf4j7YcYoC8hNaLhST/jWB3R2Bm
         VLgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xTkHOyq3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GGrpDFVbyldsXia0RQ2yWJkG3b98zDqmvtbT7oXHEL4=;
        b=DnLmiNb1WDHcmA16XQpjognSnaVEaF4VmG5QqfmDoJAdrS6gCCKTXZul8dLHNkpjaB
         uRuEkaZ15uxhRD90NNpf7uF2XJnesW/luk3lnEtfHRRiOihudG909iGEsQcwx1gwMJb/
         q/WC1r/UrLesUEVTRXxQgpcgVeYydVgCjkYcu4tdVgEwnd/6TNfWD8ZnDSuXZ0AGiL4j
         LQ2XICO2mMZe3lp8gu8LgC+30hxUSNZ3J33DVaEh66om/KpreeSgIwqFyH+5MeIxGpRq
         P1Qh+SN8VZ8x6iU3NT0DJZuiSVOFquyJ33ulP7FQ+oxxtZMKsoG8DfPj0SS/P30suDCZ
         Yz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GGrpDFVbyldsXia0RQ2yWJkG3b98zDqmvtbT7oXHEL4=;
        b=KDBt+cKuZRMAUzlhKa1wt7X2CVTliiJlfq5VNApzp1S3ULfVUUyIKhOo12+7q3WLhP
         IBQVBrPSu8MuJ+wXHIgGXAJDKfYXRjYaE0DiEq6GStjpNtK+6XtMpmK7E6juk+jWy3r1
         lZ8WlgvJBry0clWQH3UKOblv+T7DoBiWu7XWtU+t0Z46V3eZGM9E9tms72+my+94dtwX
         s3v6Uo49WwaqVhAgy1ksumxXIReoWdL0JJa/iKvvqLYGle6/ScCqrJ10Qh2RokIcuaby
         +C+rN0bGvtFrE3cCkq5d6fb8giZEdnPE4prlDie8JCSQD9rAFjY0LX32SMjhRH9rUbAz
         locw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xHxa67VNXZFJcnteTudjGIDwxrDMCO6ssmkizqTCOK7Wicb/8
	h5qydCa3mQji9mG3YpPw9K0=
X-Google-Smtp-Source: ABdhPJz59/FpKqXfwNA7fMTQWdx7A1M5eKko4JyzyNJE9HluOtbexMTxCNq3M1Y+VplOugca8XmvQg==
X-Received: by 2002:a65:6a55:: with SMTP id o21mr15948025pgu.64.1598552740642;
        Thu, 27 Aug 2020 11:25:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls1623003plb.0.gmail; Thu,
 27 Aug 2020 11:25:40 -0700 (PDT)
X-Received: by 2002:a17:902:708b:: with SMTP id z11mr3044796plk.326.1598552740184;
        Thu, 27 Aug 2020 11:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598552740; cv=none;
        d=google.com; s=arc-20160816;
        b=y/LIU7930S1cyIL65/jgW2NNtiN4GQm2Pm5daRzHYZN2qVhyPJ9PLL9an/2a8giOxq
         +pwfcP1zYVFJsk52ckY/hasV8J9U6qj8/Kl/LlIb+9zc4DBxDTUHqd1ao9zUqItLX8RG
         Kegeu20fwM6a28uDwuEJSN3H/OYqLh/UTacZHXeTkE6S9D2QnhAPhnoBdUd7nAHKN9mR
         Jd2XR6Un9R9+XDu/12TmMDFyUgskj0YDhKj8PNLt55DSlJe6udSIEpen4YB02nnk3siP
         tiU5LYIVtnjlXHLQpF2WWo6K3JwLeSfQUHWNwsyFU8kMLbSuVvbcOdMPvQ6tWjuxQFmo
         ey+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=L2QfmaAwnwA4hoiO89ZgINUlMqkWy7n6tRHAxYPu1fM=;
        b=MEHSEeMJAzhoCKLEnmKD90LwQ/B+Y2GuZArosy43qQCwyljA/OV1f5HWPcclQndeVm
         xMEh9dAFJYnbIrM4GmVJS1LyU0yQj5QdgzB9IzM9VlM7s+CuakuG+NrbDC4Ja7vkUbix
         2ReyKlm6tg5WuQlYewCDXPU0mhiAqRGIiHp3iIChimGaSOmR7FlHUucC8oWDh7ti49bG
         Gi1MfZmfYjyeU1DI9uG8z3xuXaupz3sdX0bFifKooTo8EZj2vRWZZw66hdkOs3GuDAXQ
         tOslgoOu9vUPS/WA0sbQGARsem2cQ9KWLfShGjSKr7djzPbkWCMAZvb3HzHDyYMlfmnV
         WdQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xTkHOyq3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id bg1si169223plb.5.2020.08.27.11.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:25:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 07RIPR8U003719
	for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 03:25:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 07RIPR8U003719
X-Nifty-SrcIP: [209.85.210.178]
Received: by mail-pf1-f178.google.com with SMTP id k15so4140201pfc.12
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 11:25:27 -0700 (PDT)
X-Received: by 2002:a63:e018:: with SMTP id e24mr15142537pgh.175.1598552726619;
 Thu, 27 Aug 2020 11:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200826191555.3350406-1-ndesaulniers@google.com>
In-Reply-To: <20200826191555.3350406-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 28 Aug 2020 03:24:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNATqUV48aNW2NGN7gz_oMo_3kZ+mbbiq2nGsfnQR=oEHAg@mail.gmail.com>
Message-ID: <CAK7LNATqUV48aNW2NGN7gz_oMo_3kZ+mbbiq2nGsfnQR=oEHAg@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation: add minimum clang/llvm version
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        "Gustavo A . R . Silva" <gustavoars@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
        "Theodore Ts'o" <tytso@mit.edu>, Borislav Petkov <bp@suse.de>,
        "Alexander A. Klimov" <grandmaster@al2klimov.de>,
        Will Deacon <will@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xTkHOyq3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Aug 27, 2020 at 4:16 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
>
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * fix typo, as per Will.
> * add link to getting LLVM, as per Nathan.
> * collect tags.
>
>  Documentation/kbuild/llvm.rst     |  4 ++++
>  Documentation/process/changes.rst | 15 +++++++++++++++
>  2 files changed, 19 insertions(+)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 2aac50b97921..3f10a9c47551 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -1,3 +1,5 @@
> +.. _kbuild_llvm:
> +
>  ==============================
>  Building Linux with Clang/LLVM
>  ==============================
> @@ -73,6 +75,8 @@ Getting Help
>  - `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
>  - `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
>
> +.. _getting_llvm:
> +
>  Getting LLVM
>  -------------
>
> diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
> index ee741763a3fc..dac17711dc11 100644
> --- a/Documentation/process/changes.rst
> +++ b/Documentation/process/changes.rst
> @@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
>          Program        Minimal version       Command to check the version
>  ====================== ===============  ========================================
>  GNU C                  4.9              gcc --version
> +Clang/LLVM (optional)  10.0.1           clang --version


Just playing a nitpick:
Supporting Clang makes GCC optional, so now
"GNU C (optional)"

:-)


Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATqUV48aNW2NGN7gz_oMo_3kZ%2Bmbbiq2nGsfnQR%3DoEHAg%40mail.gmail.com.
