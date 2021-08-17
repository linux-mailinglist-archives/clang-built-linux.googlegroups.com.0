Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBHGP6CEAMGQETZ4LAKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EDE3EF4C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:18:21 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id v3-20020a17090ac903b029017912733966sf3652349pjt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 14:18:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629235100; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnvLQJwNvoqscydbsexNTVynu3+9wUxIkG4/3kAKu5upDq4bdDENKliI4eTGoTo5pU
         XTaJIT9bo7YoOyqgwv1/VgxRckKKgUpOUE4ddwSbRmqXYqq7uOwNWCENmjFfGoWreQjY
         DCkNjG5W+vOXNB+UD673VzQjec5T/CrnjRSkxGC5nY1p3NwAn7s/+pAFpZyNrhXJmJUK
         3R4aRtnMNNWe+K9fpaE+zsV1egqK6uGzNue4IiNwLuPnql0C572XSwmUIuMz5RESmYHq
         4y+hPlXk8/AbLnWj5AVzRKLUdxknRJWnwQZFBvLNgeLq4hestGutwT8nNpa6mvnyDY7n
         pbGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=CdT3KZZ259NPTh0Fp94JRzxbKxaVCXLjiT/i2JvDNL0=;
        b=UcwFuTpyLuo0VCrkbqp51d89f5edeB3tQcYekyZYaglkYEeLAhsVFB8yY/6yuOwX6j
         UCPd2+EKE7HuO0sgFWOkViCZoItwzmKdwvnM2oWXjC33HF0BRvl2igXerEs5m+qN1v+5
         mUZMwNWnZciHfpZRE1QsP85iJ2xr8HNOwvzROQt5gfgHob7Wy1WKWwKrrPM1hM2/0lEr
         SryK6+0ZZjtbvecGv62sPcaBCz6KNA7WDcalkCXuh3M6vcI6HVNLm17Glct6rfp5OHMG
         NLZmZWcWPx/Rmg5NOZB1TVSIOt4hC4MOhgAJVAF+DcLV2wjndQDiFr2oao6Fsba4lgeE
         a3Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Ej+gNQWq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CdT3KZZ259NPTh0Fp94JRzxbKxaVCXLjiT/i2JvDNL0=;
        b=LY3CJUPnvL5pnsulZB4sXs1jtT/2YyvxTFQcRJFX04lY+ecfSapX/V3nnbkVhLyhBj
         IRBvrzWuzDmURUG5fe08Dz5M64Kmp9UDevJW1dB+mDb/uTqFhqM5ZaFOBOYzGX7U57N7
         cMZCy68IU5+57VFMbwKXfku3FVeEVhlFFzwaNJu4B6w06DE3+qMnu0Ei/IJpizI/w6DD
         uK1qKD6DfwvmCugsmKtkhH7y9JKtBkacPEpUDd2wNDgWhNn1HsEmJXgMztuu9ZJMYBav
         j6f7KX6w3tuBH7FNlSAXPa6eZrWnx9gF9OD7ZBN20EFci/Z343ljHlOYOv6qVAyHePAZ
         k0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CdT3KZZ259NPTh0Fp94JRzxbKxaVCXLjiT/i2JvDNL0=;
        b=uakJbB/8yUyrPjmFWpQsZbezPIjD0AQQRCfdP9q0W9q/7Iff1OKICtEtdgFsFMztsz
         63vNGFYoep7aKPg695TlLi9ihRGH1mpALQbqEVXhLPqcWvsfIP/Kbaw5NdZNXc5IfKn1
         KI8Egbb9aQi52cHSOQGe4HodxzOelwZAF/SKCqA91n4Xsd85RPGRXRNe1/tfT/iBlid4
         a+A+HgttSrpdCspD/Zkx+Nirr93LbNxFd8udXJeHDBlQPFMYw7fKk0yznoI7d8VlXI7v
         ZP2qf8VBNwSzF0ZYJ2DVlis5TIK/d1AObb7UE+uN2JknZaI6UM8yM/jplF0NFsVbtPHI
         9Olw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B5q8KKiLLlOruQ19Hy7+zDqgmgS+UqxfnboDYCshKRq90TW+Z
	wCvWW7FaWiM6GoZ6ldIzVNc=
X-Google-Smtp-Source: ABdhPJwPEmL5Eb4+Fcflfj8N+QAJ62uFVvwoqlEOzG9gTaiFqA+11L2rJb/+G9cOWyoUf6v+cOjd9A==
X-Received: by 2002:a63:1d5c:: with SMTP id d28mr5261679pgm.143.1629235100572;
        Tue, 17 Aug 2021 14:18:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls71779pgs.10.gmail; Tue, 17 Aug
 2021 14:18:20 -0700 (PDT)
X-Received: by 2002:a63:8f4a:: with SMTP id r10mr3654053pgn.337.1629235099959;
        Tue, 17 Aug 2021 14:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629235099; cv=none;
        d=google.com; s=arc-20160816;
        b=raF66XTA0VRqXwXusiDfLjjotpn2Hp3JJcRcDq2R+tdvuzKDjx5qWh3d0Iw4l6arjy
         9wBHPNJSSkREYlbcjR8weWoZ1Ag2cQYJQyZ7rZWrLDAx6+1YQo+ok/Y1/3bJN/UINanx
         LqqOQrVDyUP0UQL9N9HF9H0xAnZDFolKZcFJdxIyvPAuXU8lHgzGINdKC/6fwfucuNS/
         d7FTg46XrPeyFV3A+YtHGzICrweX9W7YdcvXYGHYskH7eLdvShMiu3spf6LpK6grrPY3
         cd12Uhfl4EVUfVhBTMsE+S6auqhU0eqaaQqXzMLTT6BPx5zaYua+lGqK+I952+swwokt
         AC8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MSI1TD6DmtwAkIL5YhYjaZlAoHhedqI42UCC2a2qlt0=;
        b=VBj2OMLVV3BAVlNKIlaRy+dwjuRZuZaze4rsciDEp6miy16tQIOEg0rzZUCPaAdRwn
         cwUSTgD7hmbyoDOE0n8KrVmMDHDqY29C5j+1OafuQnHDrWkCiio8pXtEvLuRjMSNv/OX
         ydi+Y/YxnSMrLE5sWRTDtJAJ35nYMoN+wt8nseaSzqcn6GYMDAvq2qVNVPlkdc6P78W3
         9uXGKt1V8FGdtwNJxsnxKbDjq3T0kLE3WWod9+cGUzWoUs4sYCPPa7lr8iv8zHNlrJG8
         U4JQlkScd0sHQIymSrUr+jcB47Xf/WXcxeW1jRWGHDOo+URBv2P1JuBc1EB2zyP/R8yA
         fBbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Ej+gNQWq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id 136si276774pfz.2.2021.08.17.14.18.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 14:18:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 17HLI1Vj019323
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 06:18:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 17HLI1Vj019323
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so7446770pjn.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 14:18:02 -0700 (PDT)
X-Received: by 2002:a17:90a:7384:: with SMTP id j4mr5332691pjg.153.1629235081316;
 Tue, 17 Aug 2021 14:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210817005624.1455428-1-nathan@kernel.org> <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org> <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
In-Reply-To: <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Aug 2021 06:17:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
Message-ID: <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Ej+gNQWq;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/17/2021 11:03 AM, Kees Cook wrote:
> > On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
> >> If you/Gustavo would prefer, I can upgrade that check to
> >>
> >> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
> >>
> >> I was just trying to save a call to the compiler, as that is more expensive
> >> than a shell test call.
> >
> > I prefer the option test -- this means no changes are needed on the
> > kernel build side if it ever finds itself backported to earlier versions
> > (and it handles the current case of "14" not meaning "absolute latest").
> >
> > More specifically, I think you want this (untested):
>
> That should work but since -Wunreachable-code-fallthrough is off by
> default, I did not really see a reason to include it in KBUILD_CFLAGS. I
> do not have a strong opinion though, your version is smaller than mine
> is so we can just go with that. I'll defer to Gustavo on it since he has
> put in all of the work cleaning up the warnings.



https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8

   did two things:

 (1) Change the -Wimplicit-fallthrough behavior so that it fits
      to our use in the kernel

 (2) Add a new option -Wunreachable-code-fallthrough
      that works like the previous -Wimplicit-fallthrough of
      Clang <= 13.0.0


They are separate things.

Checking the presence of -Wunreachable-code-fallthrough
does not make sense since we are only interested in (1) here.



So, checking the Clang version is sensible and matches
the explanation in the comment block.


Moreover, using $(shell test ...) is less expensive than cc-option.


If you want to make it even faster, you can use only
built-in functions, like this:


# Warn about unmarked fall-throughs in switch statement.
# Clang prior to 14.0.0 warned on unreachable fallthroughs with
# -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
# https://bugs.llvm.org/show_bug.cgi?id=51094
ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
KBUILD_CFLAGS += -Wimplicit-fallthrough
endif



The $(sort ...) is alphabetical sort, not numeric sort.
It works for us because the minimum Clang version is 10.0.1
(that is CONFIG_CLANG_VERSION is always 6-digit)

It will break when Clang version 100.0.0 is released.

But, before that, we will raise the minimum supported clang version,
and this conditional will go away.




> Cheers,
> Nathan
>
> > diff --git a/Makefile b/Makefile
> > index b5fd51e68ae9..9845ea50a368 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -859,11 +859,11 @@ KBUILD_CFLAGS += -Wno-gnu
> >   # source of a reference will be _MergedGlobals and not on of the whitelisted names.
> >   # See modpost pattern 2
> >   KBUILD_CFLAGS += -mno-global-merge
> > +# Warn about unmarked fall-throughs in switch statement only if we can also
> > +# disable the bogus unreachable code warnings.
> > +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough -Wno-unreachable-code-fallthrough,)
> >   else
> > -
> >   # Warn about unmarked fall-throughs in switch statement.
> > -# Disabled for clang while comment to attribute conversion happens and
> > -# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
> >   KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=5,)
> >   endif
> >
> >



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ%40mail.gmail.com.
