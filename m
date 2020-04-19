Return-Path: <clang-built-linux+bncBAABB56O6L2AKGQEIZKNNGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id A35711AFD8A
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 21:33:12 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id n36sf3840153uan.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 12:33:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587324791; cv=pass;
        d=google.com; s=arc-20160816;
        b=BFKle1a1G+jb+b6cGdYV6qB6wWEpadSq4ooKsUohyQMwvOR1ddBbf5BsW7qLOlYPtS
         4Q1UtEuEQdwVIvk3pDjDzLHZfPvQJTj4dpusOlpNsIk5tqMaSwuMnqnwclNnv7Vw0310
         ihIHC7yMovMSeB+6YdX0/D4ICMr0qzlvJUwXnbciV67QsI9o0bWflKHwf7G03vh1mpGI
         RoKiZ+RyAAWbAIqaUhuFWR3x/uW3/oWKZLk/kPmO4Zumj/h1+19WOf3xIGbNyHzDwifP
         YLIkN+cmJSvpZKdBp6mJSadTkApJCx6c2Tcs8y5W/yosA/8laaT7OX9b90aFjderhXD5
         2Dbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4/Jxm8grlC1Gyk74Uh0mxfQzTLfYkFMcEFtQseomfg4=;
        b=tF6VibD9zSGzznbxxyDOxM3cieqkybTbfVWVlqiwKZbzlO8quSmyDFPumU4q1dPc4n
         8WJ8fBkQb1DQZ5peZ+4l3CWFB5hUQvu1XzBvmWz32kn7W6cPYx0S+/qO3iO+hHfHUXRi
         FmFEL9PPKWkMno7R3nIsVXIbzixhLVkVvcTfjQrMZTvE1tAML0Q9AQ/MCpj7IdgpZbeV
         Zng8kvoxe0d0D4s3xOiSaeZ9V8gmsJydrVSkpYDuibiVguZs/+MR6sNq0K8PQRJWtXrP
         6ATYhlB48YONPpEPSJeiy2B/Bdw8oR+LMIDlUHdCYTFWvyx7CKRl0S2k8uDLY1n6VJ4D
         hvUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=chliN8+U;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4/Jxm8grlC1Gyk74Uh0mxfQzTLfYkFMcEFtQseomfg4=;
        b=niUw8UE78ai/ASHeCh54Ayc9dNZG9IJXqT30QYilRuUUGLJ+x3QpZEgF5Mr8oY0UsK
         jyD+zqt8IvIUTRHxNMPMLbg64xYC9RnYVFeAlp2rI4jfDl7+YuKh3u3/2+Muwcm6+4bA
         K968JjWwRmel57Bdzol6m1UYecWssNuM57gDghjC+iboqUE5gyNDqTpmooNwWRzjz5Fb
         bejMqd+E4nNxOkBSN+tKcsKHnnh0lecsVdSTgAfhXIzBkZP1Vykfnnb/Js+nroFG69H7
         d72lPnNEpQEjzTTxltrhK04hT4ooycb15AYb6ukd9gAZ43cZAtyf5UnxKG2e1lf2cc/o
         L8cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/Jxm8grlC1Gyk74Uh0mxfQzTLfYkFMcEFtQseomfg4=;
        b=R8H/oftwtz3SeHsrIYE1yjsCbWjM+65bx48robsX9J0xHZlfn8m4h6wUDiqz6KOEXy
         HWYvOc1h6fiMrl4Gy78swe45rbdJapMBzXEqJMgsqQd6YeyXZLPOxuzZ3a+Ag9x6dZ8L
         xOnChbfIQfLb2brARmSyBjz/GSDSWC9GNf7VicvBZk5zF7fdsTLoRuWKtUe1PuxZ2Q5b
         KCYFx03pe4aEMZEUlZlg4pInqa2gNJxB0h7NCi0LLwwVv3v9HQN7XzG9LugWmsJEp/qr
         m3KjawQgvLE0TRK4uRr7kyDXpPmK0t3YgGsdH7jXeLRFvLbBZvu3drRowkTlqheWZYKf
         5TWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ+SaLyAil2bI6Lzo+efFiC0q9v83C62B1dgCxc31nAJUZ0Xnmx
	6UN2jT+Hf/S/ZK1+s9PnAnk=
X-Google-Smtp-Source: APiQypL/s2/iT3JniE8f6xo+/oNJdYqQYLX1Ep7fum5dp0j3fX6fvxrNiMSd3Yqvb7dgOdfMoIuuUg==
X-Received: by 2002:a1f:9745:: with SMTP id z66mr8310051vkd.49.1587324791176;
        Sun, 19 Apr 2020 12:33:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ae95:: with SMTP id x143ls400041vke.3.gmail; Sun, 19 Apr
 2020 12:33:10 -0700 (PDT)
X-Received: by 2002:ac5:c2ce:: with SMTP id i14mr9115583vkk.30.1587324790899;
        Sun, 19 Apr 2020 12:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587324790; cv=none;
        d=google.com; s=arc-20160816;
        b=DpZo3NhzebYpxsklV8sqr/fJDSK+2CXhLNjcu6G0hQi4MmCduleQW8ALqrum2C+PRW
         JHfYfyA07aYymUl9zouQzd/bhoLQFrjBWCHAb/tCUEgYy+HxQz+ElnalOLvmxOCQ0P/b
         g5IGUPq1auVyzqg3tdEYW7DL0FDJgrCfaugeUAvAeslMxUPRGY8wkHiGunVBrTKJ9Hf3
         x5TmYvN0+ppocqmxDbqsbwRpOMo9xjzFc9XlC9Mb445vi+JvdaASnUhL4JMMMIKkKlF3
         R7NtP8Xa/orOiS3+VLlAGaNHl64YljzuHj2T3saljeSBPEBpRb2lXL2LzpK+jlMakwXB
         PRcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=JC4v4U7ZXxpy8Dy/gfPJ3fIYiTG98CoBWO4VVpusmvk=;
        b=p/hkl4Jlc3/HJlu5V5fWXYANZp2kNcXKVkLPFoBt5BE4yeXkcM/6YMjNGx4tPT6AYK
         MmH9kA81WECPk3hkuhHj0lsbcTm4jfJlInsBEPyYplRHf1po2OUMRfpGRsg2RH3ux2lP
         laL+XcptZeogX7+dvbNVlO8kqp45N9DY99i8TlMNSlJtNsAgJhjTykHTQkuCBch+LO2Y
         +6lARRaBT/XLUk2qxWqIX/8shfmbSfv8dCHySWat/D1xJ8tWpGsg0287MDzNVLehALWE
         tnYEMU/mTdVKd3rTbRX5tG80sUMmF8hWL7d40jeQQ8OhFVzLT3Y0tQGrzf+wTVWXf23u
         QGkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=chliN8+U;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id y11si1427165vkc.3.2020.04.19.12.33.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:33:10 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 03JJWuF5016149
	for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 04:32:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 03JJWuF5016149
X-Nifty-SrcIP: [209.85.222.42]
Received: by mail-ua1-f42.google.com with SMTP id g10so2812884uae.5
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 12:32:57 -0700 (PDT)
X-Received: by 2002:ab0:cd:: with SMTP id 71mr4060816uaj.109.1587324775877;
 Sun, 19 Apr 2020 12:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419180445.26722-2-natechancellor@gmail.com> <20200419181715.GA36234@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200419181715.GA36234@ubuntu-s3-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Apr 2020 04:32:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS7QHB3GuBeLDh66OHbYRMzmNQNwiueU7jH1i7v0UTAAQ@mail.gmail.com>
Message-ID: <CAK7LNAS7QHB3GuBeLDh66OHbYRMzmNQNwiueU7jH1i7v0UTAAQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] MIPS: VDSO: Do not disable VDSO when linking with ld.lld
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=chliN8+U;       spf=softfail
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

On Mon, Apr 20, 2020 at 3:17 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Sun, Apr 19, 2020 at 11:04:45AM -0700, Nathan Chancellor wrote:
> > Currently, when linking with ld.lld, this warning pops up:
> >
> >     arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25
> >
> > ld-ifversion calls ld-version, which calls scripts/ld-version.sh, which
> > is specific to GNU ld. ld.lld has a completely different versioning
> > scheme (as it follows LLVM's versioning) and it does not have the issue
> > mentioned in the comment above this block so it should not be subjected
> > to this check.
> >
> > With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
> > vgettimeofday.o.
> >
> > $ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
> >                       00000024:  R_MIPS_PC32  _start
> >                       000000b0:  R_MIPS_PC32  _start
> >                       000002bc:  R_MIPS_PC32  _start
> >                       0000036c:  R_MIPS_PC32  _start
> >                       00000468:  R_MIPS_PC32  _start
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/785
> > Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
> > Reported-by: Dmitry Golovin <dima@golovin.in>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/mips/vdso/Makefile | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> > index d7fe8408603e..f99e583d14a1 100644
> > --- a/arch/mips/vdso/Makefile
> > +++ b/arch/mips/vdso/Makefile
> > @@ -65,9 +65,11 @@ DISABLE_VDSO := n
> >  # the comments on that file.
> >  #
> >  ifndef CONFIG_CPU_MIPSR6
> > -  ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
> > -    $(warning MIPS VDSO requires binutils >= 2.25)
> > -    DISABLE_VDSO := y
> > +  ifndef CONFIG_LD_IS_LLD
> > +    ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
> > +      $(warning MIPS VDSO requires binutils >= 2.25)
> > +      DISABLE_VDSO := y
> > +    endif
> >    endif
> >  endif
> >
> > --
> > 2.26.1
> >
>
> Hmmm, I still see this warning when first runing make <config>... I
> assume because this Makefile gets parsed before Kconfig runs.


I do not see the warning for 'make <config>'.

Could you tell me how to reproduce it?


For cleaning, indeed, i see the warning.


$ make ARCH=mips  LLVM=1 clean
arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25








>
> Perhaps it would be better to check if ld-version is 0 (since that means
> we are not using GNU ld):
>
> ifneq ($(call ld-ifversion, -eq, 0, y),y)
>
> I am open to suggestions though.
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419181715.GA36234%40ubuntu-s3-xlarge-x86.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS7QHB3GuBeLDh66OHbYRMzmNQNwiueU7jH1i7v0UTAAQ%40mail.gmail.com.
