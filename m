Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBD65V6EAMGQEYXVZSGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id A56C53E1625
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 15:58:40 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id o23-20020a17090a4217b02901774c248202sf26532pjg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 06:58:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628171919; cv=pass;
        d=google.com; s=arc-20160816;
        b=cW6mtGNDygjOZerc3peEzImyeUl+mmydKF76/T6LL5aMikiH0BdoMQDDB9h9Pi8VV0
         mn6MaG12Wq/3YId+yBiMyxfS6DXbgYsYh/mMRe0hhgGxi28nvU8NmBWUfdozWc5kCghp
         XnajuT36l8RQupvZtsygcIKiigQPLD+IS7Q+nPazXgUy5LlzI+tVrX8oxkfRapT3J6u0
         zQU+/9kWrX4v22iri/ugFnPaAJGzqwL/VrkmFn1nszt6I+wG90sYN7PzaPuwuBbTAe/4
         ZnJQl6Q8E1pyjtv8/D6USBwK2pRNFCLACpoV6WtspNVwor6gt4jZpHYEKs1G+ydIVnFL
         l87Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=lto4ES5n8DOrz3EXCBzbF8uPkEUy73O+lkfaIrBZIfw=;
        b=J3CW/0jufkmB0zVzB7UQjNGcchS94LqVrVZJx7E+xi4/ZRyAwx08aGMzqVXQ/PtC75
         n7qHe9ugiTDVuQSHJl2OBfL3CJvc21pDWDU7wJNqlofs+82/b1Kq77yjFJii2oC4yCb6
         8gV6nhfhnb3UigbQI4v99JPll+zeoHLmz8O65snzUXZjyj07W6FzvkyHaGVSAARkezfN
         TrYMZXyN73Fcc1gJLXUt4W0O0PG2or4fSZ/FRwZQOOyJRPMCed35ERxSvrSzAwcizsgr
         /DBhLLVtdN0F4unLAkciSE1anOO9Ntn/7gNUTyk3GwyJcZ2ipQc55EKecAzx1f4XWqXc
         tdYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ua05HcSe;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lto4ES5n8DOrz3EXCBzbF8uPkEUy73O+lkfaIrBZIfw=;
        b=kp72yj1xfP7kB+VSmtgcVov16xPUgWunNsRN8qiZq16nDkatOpxUeTbqZfPqMiIsp7
         Crhbj6OBJLIcy5JrPe8ApPf/qz9ED54/7KV11ZLaxE2AEJgjQ52ubkZEGS+UnNdC0XnH
         ZCMFgCJezZo30FipZBLrvU4G3I3lFBj99Jnts3yOHOSmBVHx7DlQOsQ5d8mFb3TQKz47
         fZqERPxu6QLkCSbE7OYIjJZsnkoBXsfWIqAk3nQS4cxNhVyMl+BxGxbCldp7V+GQTKfj
         lciIPqd3Om36i0deOkZlySJ2Z3qnnTVquCIirP7JkRgeFOVf5qvbKBrAFE9W50iphLuR
         5G6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lto4ES5n8DOrz3EXCBzbF8uPkEUy73O+lkfaIrBZIfw=;
        b=kvMKGuWDNK0CsiTlSegyEF52pLV3Po6EP0CXLnfpPWH3u5PMRCwuFw5PqW31vsJf1Z
         FlZADj4kABgnB39FeVSqA21Oiz9f3/f2fmGWSqz4GIg1TYpxYqtnMAQ/+8ZUQqTP0lqj
         CSSjGKTiW5uBb5SBa7FWLCzmiVlOdFcN07YRtbiKfDwwACbnJoQtx/67Ff21S1KKsJ4/
         ymUy1x88WRsaS9I4LK9eTqW4tH0BY58dAheLZcsNPUQYYLwxh9Zfdvj3zMMdfJ+MwK9o
         yJQrm+ZBXhYHKcyqSTzu8+HrqkZ5w6Fpdjo8DaB3wHZP7MMreI7C5fT+TQ8bZYdeT83C
         dGeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NKwLtuqQ/ZsuK2GDwlJSP4KLFetU1uvCVvuL7U6x1bUipwOlC
	6GOlau5DKrPOfFJMkd/N9H4=
X-Google-Smtp-Source: ABdhPJxdBvpLAowbbi/XhDaODhP4TwT3tmFfbnm0BrvqbQ6QF3PuSx097pPiAM40LgS3csF/7N8SHA==
X-Received: by 2002:a17:90a:5201:: with SMTP id v1mr4760791pjh.46.1628171919389;
        Thu, 05 Aug 2021 06:58:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:41c9:: with SMTP id b9ls2756153pgq.8.gmail; Thu, 05 Aug
 2021 06:58:38 -0700 (PDT)
X-Received: by 2002:a65:4147:: with SMTP id x7mr1733248pgp.23.1628171918821;
        Thu, 05 Aug 2021 06:58:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628171918; cv=none;
        d=google.com; s=arc-20160816;
        b=Mr6a7Wn006ruhnY62vIeMRCBLFv6eqG2S34dGfhE8sJ7eumKL0lLEB59Mv4YENVg9B
         lBTM5PAD3LyJWcI1sqY8dm1mmmzWiAm69bsrY/LMQWCvZR7Ngu+yc6n24KiJgG/biu5t
         cGtuRbUcIeTGRegdr1Lax7dqduwod4NNF3uHTfqNVLcS+C2GcAzQ4IAFABCoJW0BsUIb
         M83w1csGU8Br5x7bYtxHxPX51iXy8qbM72iHMMclesfNwi3NNau1DmEc/zdXZh+Ysg84
         tquFPJBm2qHiU1lWWqFMNZkL+xANOAfKhW5GVtHmr/FCO1uPOAUlhnFSRzG+/dkWgFAg
         Rjkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=IkfSllG+SbN/b97YNpBIEYdvlpJTUqg6G4RBryizSqQ=;
        b=qvg1bWj4a3WQxKuWclJNw60q2+vBoMv0YyFeAezm9854L2MxOTXhaygztZ5M2k+U5+
         iFCA8GU6+xvkTpaxdt+WsHA7YyVFE8pulKo4zW3SDDsQr1i4pbLme/8JCo/lYoB8lVEe
         L9iKea2/dm0x0Rr1O+aIi+53WMVk5J6aRoOZwU72U8vOFXAnWv2IhopkNZZogCYhA8Hd
         yPRFF2WlCcFWerisMRANcNWys3yTFa1ouXebDtJI4+KT6Yc/QFpjuUbZyFnLqD5/cmpi
         SvAXAH9PborLtnZ5n8uDyzIVnqaY+aApY/1RWZJdVSkUGfe2fkwOrab8tyq/tJ2snzv4
         UrwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ua05HcSe;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id c9si324751pfr.5.2021.08.05.06.58.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 06:58:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 175DwLNY009549
	for <clang-built-linux@googlegroups.com>; Thu, 5 Aug 2021 22:58:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 175DwLNY009549
X-Nifty-SrcIP: [209.85.216.43]
Received: by mail-pj1-f43.google.com with SMTP id cl16-20020a17090af690b02901782c35c4ccso5884538pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 06:58:22 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr15434358pjt.198.1628171901401;
 Thu, 05 Aug 2021 06:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com> <20210802183910.1802120-4-ndesaulniers@google.com>
In-Reply-To: <20210802183910.1802120-4-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 5 Aug 2021 22:57:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH+sVHQ@mail.gmail.com>
Message-ID: <CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH+sVHQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ua05HcSe;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 3, 2021 at 3:39 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> As noted by Masahiro, document how we can generally infer CROSS_COMPILE
> (and the more specific details about --target and --prefix) based on
> ARCH.
>
> Change use of env vars to command line parameters.
>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v5 -> v6:
> * Pick up Fangrui's RB tag.
> * Change use of env vars to command line parameters for consistency.
>
>  Documentation/kbuild/llvm.rst | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index b18401d2ba82..f8a360958f4c 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -38,7 +38,7 @@ Cross Compiling
>  A single Clang compiler binary will typically contain all supported backends,
>  which can help simplify cross compiling. ::
>
> -       ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> +       make ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-gnu-
>
>  ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
>  ``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
> @@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
>  Currently, the integrated assembler is disabled by default. You can pass
>  ``LLVM_IAS=1`` to enable it.
>
> +Omitting CROSS_COMPILE
> +----------------------
> +
> +As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> +
> +Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> +``--prefix=<path>`` to search for the GNU assembler and linker.


Is there any place where we rely on --prefix
to search for the linker?

In general, the compiler stops after generating an object
since it is passed with the -c option.
The linking stage is separated.

In the old days, VDSO was an exceptional case
where $(CC) was used as the linker driver, but
commit fe00e50b2db8c60e4ec90befad1f5bab8ca2c800 fixed it.







> +
> +If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
> +from ``ARCH``.
> +
> +That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
> +
> +For example, to cross-compile the arm64 kernel::
> +
> +       make ARCH=arm64 LLVM=1 LLVM_IAS=1
> +
>  Supported Architectures
>  -----------------------
>
> --
> 2.32.0.554.ge1b32706d8-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802183910.1802120-4-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH%2BsVHQ%40mail.gmail.com.
