Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2GKTH5AKGQEORYFV3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB2A253009
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 15:36:41 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id w11sf2778000ybi.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 06:36:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598449001; cv=pass;
        d=google.com; s=arc-20160816;
        b=K9fJa+U0++08aQOhu3lwy8+77lB1RynyoR8TfOsXlrnZL5fB6x5bt1bc2qND73JKez
         sCQhAvPMcUDM7SRfaV4+/etHCHSB2cJAJfAJGal2Kryh9QQ/FENsLzXlAPkM4Vk91pwY
         ZGrMxCcxlbznbYeGpqW/Anss5Y50AjE4MQtXVgekMdrETHkaVc/jRjqdbMCbi+axKcme
         qP1wThLYxWmG34Vw/FCASxN8A0KR7/6UcJJO4NDJF9roZttyV6GHdz/SbVrkNoNNoKSz
         ldu0La3dbZGz0R4XBtj96d+kSeeId+Wwk6M3/yn0DvnJ89rKkCXioINz9UvTh/Yleh2h
         KTVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=11fh538VFCRzCGLYlMwz+tZ4G13SIOrBEJ9YTQA+gwY=;
        b=dTdge7oP89B5IpD8PVMH1WHBlLxU0Bj/apaq2MnIXo2qw1Yi3CGTBXUPUWaUvwH8Bu
         CsZyy7alZOvxrH5MO3ExXDDWznrwOVGdXdS0LhLGZMSlpgUWUR2CWcKHcrD/dW6Aly8z
         6jjIk73jI57TsJv3PTRQ3cbHMPlNZZUOzQ/HgiWuPTEeWBOiw7a+JFWnKSqGY47i/yCi
         0hvMsTbkEC2u1UCI+3i+nyvOcXhpE2xmiUZoQaxDkNNIBNSkZD3UdQSfIA38PGfL65Tx
         Hbwxbw8zDI0YsyZmMjvAmmqkBDo+atBePMl8w2wfICsAuXALYUk5gFNIjg6RaV/ubdI4
         jdcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FUwcXI8S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=11fh538VFCRzCGLYlMwz+tZ4G13SIOrBEJ9YTQA+gwY=;
        b=gaE9tq9cQq8mUO6b8hOZ5OzYkYxrnCkAOptNtw031jX/7XYaDHzFq0VNYsvmhZpkrD
         a5edSx4CCU9jTC6+m/gvZEG/xGFIkwBQVe+LgiJyEsaw1tuxkelXFK+1JbyG7Zoh6dqk
         prWp9JxnIzcy4TR/kh1a0PC1Y+JCtRDFRwY1MJoAQ4w0udhAWBirpi5rL6B/Ww6Hd0VE
         eyQBQE44blNJ9gSs/DjqdQOooItY2Zmof6rs+Z+LzNc9AdOPZBs4BmpTSbJK194n8jrE
         LB9rcUrQCZ58h44QmoTEi31coVmrLwg2b+lMOn3dr9KMlM0fe4QuVZp4CxUUrk4kWPnQ
         sdsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=11fh538VFCRzCGLYlMwz+tZ4G13SIOrBEJ9YTQA+gwY=;
        b=mN4fTQ79lPXn8a4yLdX//Mc3gX71wi5UUJohs9R75xm0KM4IUFUCjjfGG27QpWlTxy
         THV5pRGBODKdrMSQqtNQK8PIt4gYqB8RIUFdq3UJoS+jsezL2/6XVqv1O2jK9CUOgtPA
         sNqNJ82jcEACZE/xdlw/BoSplGdXBFX9VSNLbQci+yPF0Q5lVRzetQ4mbROhp9f9lvrC
         0qBXDvPOLDCF1B9RHRv3s54OprBVXCEQBxcoDtFJpawbif1BoOqhlN1RWPRj6BxK2aQo
         I4VUyRj6InOPF+ijek80oj9HD9jawmn+MYy4hOZHW//XSiky8mS4kiUkMSgkXq/BxIDS
         o4Ew==
X-Gm-Message-State: AOAM530SvHhKQBWcneEZ0AWkNTqTEGFBWCP3H1X6Y+9AjyxaPRUL3MG+
	qXLlr0G5c9t2o9Po0ksxXs4=
X-Google-Smtp-Source: ABdhPJyynXSIAM4hWIqBM8iTEs1PV1O6R6aCoFm17qveHNLYcicPpQDGkPeSo8vngT9X/V43Kw2d/Q==
X-Received: by 2002:a25:8290:: with SMTP id r16mr21048742ybk.122.1598449000920;
        Wed, 26 Aug 2020 06:36:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:40c:: with SMTP id 12ls915502ybe.7.gmail; Wed, 26 Aug
 2020 06:36:40 -0700 (PDT)
X-Received: by 2002:a25:1306:: with SMTP id 6mr2563129ybt.178.1598449000575;
        Wed, 26 Aug 2020 06:36:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598449000; cv=none;
        d=google.com; s=arc-20160816;
        b=CTxV5we9stHcY0Qvm++opcG4IfyPgO4H5as5tMrblX3zGo4yA0Hil7wtJl/3506TvL
         ICPJDz19cmwOzsY7kMr42MNlRmjWCh3xDlEQNKVvAmLsE+L3y+JzIxKIaxULSBHwgQDC
         Lq4ruDG0R0H53Z6ULOGDS0Pynlh+czoXUNKfqZDLOX/t4BEZYb5T5HMZL3LAgjJBxFE5
         pO97LsNjDhSToYo9p/OeknVj24yYZKMZvjRtJvZDmOozB3YuPOeTd7y+mucBIBQjnZ8t
         3rn725Ef8yHgNL+iX4yT5/Sxmo+XpnGrol7WtXOepgQtTHq576WjewxEczUxOq0/OWtZ
         NoRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SP5d3jG0vnXwMEQbip8bqbDIaxrDFT2DZzwmlreys9g=;
        b=aNSoHg/xpMusJL6l+A/zDBp6vcCY14uSPxID+P+0Ywc3oVGnCMceWKc3P7JMKdi4MW
         3C1Oc/3ik71cSpUi8CZvI75GOy1uek8Y/USVJUy30Wg0kT9ZLDNEy7BeH9WsOjeYJ/P8
         ydJ9TK5hcz5INa/9dHmwbzjA5XjK749NvEDlhezxj8hXtoMu68Zy6TZKEV7lsp0On8eM
         JXDKElUv91Ho/5ESkfu8hIMctmdRyeAbsopI5wyVRSoR3BDVagGWT34JghF8NYJG9cBq
         snVPWwCVCpU6tU9CaUkSbdt3TE6uy071OjpjYbAbo21iEnuoVm5WboZhQCYgOzE2wjDJ
         f0lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FUwcXI8S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p67si109865ybg.2.2020.08.26.06.36.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 06:36:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t11so900275plr.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 06:36:40 -0700 (PDT)
X-Received: by 2002:a17:902:fe01:: with SMTP id g1mr11873819plj.71.1598448999463;
 Wed, 26 Aug 2020 06:36:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200825231438.15682-1-natechancellor@gmail.com>
In-Reply-To: <20200825231438.15682-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Aug 2020 06:36:28 -0700
Message-ID: <CAKwvOdnCGoRHxgoV+qZNZQx04jwcttckCoxTpFKp9C=jRHw5+w@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Improve formatting of commands,
 variables, and arguments
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FUwcXI8S;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Aug 25, 2020 at 4:14 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> While reviewing a separate patch, I noticed that the formatting of the
> commands, variables, and arguments was not in a monospaced font like the
> rest of the Kbuild documentation (see kbuild/kconfig.rst for an
> example). This is due to a lack of "::" before indented command blocks
> and single backticks instead of double backticks for inline formatting.
>
> Add those so that the document looks nicer in an HTML format, while not
> ruining the look in plain text.
>
> As a result of this, we can remove the escaped backslashes in the last
> code block and move them to single backslashes.
>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Ah, yeah, I saw that. Thanks for the fix!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  Documentation/kbuild/llvm.rst | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 2aac50b97921..334df758dce3 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -23,8 +23,8 @@ supports C and the GNU C extensions required by the kernel, and is pronounced
>  Clang
>  -----
>
> -The compiler used can be swapped out via `CC=` command line argument to `make`.
> -`CC=` should be set when selecting a config and during a build.
> +The compiler used can be swapped out via ``CC=`` command line argument to ``make``.
> +``CC=`` should be set when selecting a config and during a build. ::
>
>         make CC=clang defconfig
>
> @@ -34,33 +34,33 @@ Cross Compiling
>  ---------------
>
>  A single Clang compiler binary will typically contain all supported backends,
> -which can help simplify cross compiling.
> +which can help simplify cross compiling. ::
>
>         ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
>
> -`CROSS_COMPILE` is not used to prefix the Clang compiler binary, instead
> -`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
> -example:
> +``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
> +``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
> +example: ::
>
>         clang --target aarch64-linux-gnu foo.c
>
>  LLVM Utilities
>  --------------
>
> -LLVM has substitutes for GNU binutils utilities. Kbuild supports `LLVM=1`
> -to enable them.
> +LLVM has substitutes for GNU binutils utilities. Kbuild supports ``LLVM=1``
> +to enable them. ::
>
>         make LLVM=1
>
> -They can be enabled individually. The full list of the parameters:
> +They can be enabled individually. The full list of the parameters: ::
>
> -       make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> -         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
> -         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> +       make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> +         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \
> +         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
>           HOSTLD=ld.lld
>
>  Currently, the integrated assembler is disabled by default. You can pass
> -`LLVM_IAS=1` to enable it.
> +``LLVM_IAS=1`` to enable it.
>
>  Getting Help
>  ------------
>
> base-commit: abb3438d69fb6dd5baa4ae23eafbf5b87945eff1
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825231438.15682-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnCGoRHxgoV%2BqZNZQx04jwcttckCoxTpFKp9C%3DjRHw5%2Bw%40mail.gmail.com.
