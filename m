Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCMSUT5AKGQEO4QK7SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 766A9255B4C
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 15:39:23 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id s22sf551688oot.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 06:39:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598621962; cv=pass;
        d=google.com; s=arc-20160816;
        b=PHXXimUCp7fakJgT8H4hHoTOJN80CZB51m8PVqJdKgN6QaDJnIjZOTguh21GOGhjfq
         oyRvA2upoa+Z4Y0t6Z7gHB9024tzZewEOvipvwGW3RKP2hkHWVi9Og+79VJ9pIsxo+yp
         PLRW+9+VgwwD4ZLQh22OEz78zbjSlhOCfp+harHwGCTFEcj77OBHhARhhMO3XCLMjkUO
         5aN/Pp81G+jgEq325rz04veA9yQhXVWlAuUxSBANdoXQ/bUZn/Wy1v8LWecMul3ibA4q
         dj4OcmXa68BBll61KD+p3b+YNEx44CiHKw0IQUqCZjSHYzuQu2sZQM7skl54HDHeYK0Z
         hN3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=yZ8FQFQZsqeaLE/QyY5CUyFcfC//Uz+qyMbe1Va5Z2s=;
        b=ZeUl1/p4MRHZbGT3hGWqmXP4/BlzfAQxCXg+EFUmbD55vWIUgvMojVBxsfUqRuj2Nf
         4L7BxMSnxtoTQDolm+evaQghleMjCYW3wQ0a2NaQNwnfh/PC2ffBb7LJr1Fub1+3Z9SE
         yZ4PFM6vDGmKjTFh2GAAoAdBk2dcUaoxxS7aNi7pskJHUM9FHxopuUtFtlkh3/v8El/S
         41zN/TljQvJQB83Ut0FgxAAlFgAzg0mvnEed89aDuEzpkpG/m5kKn2G/GWahOiMX5vxL
         ss1jjJxussdAUYIYBmO8MI6qsFDT7Lw4ccO9vZRwM13fKgDwdkFoB49ARhBp+GuMIFr5
         hZ9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=t9eyrQX+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yZ8FQFQZsqeaLE/QyY5CUyFcfC//Uz+qyMbe1Va5Z2s=;
        b=r7toJsQZyI+Kg8yfrgkGP7wMGnIVEqqGCYzGL/DxD9mH5oN6ldrKfBiDuCDt0CIiuC
         otITLS/g3H8aM6V+yEtWgqyRtXoHPvnFuZg1ke/0YvPAo5MbYaxg9F67KLz8n69UDa+k
         R/DWSHfPhN4REmNwW2BOlh1q+tEuYEIDq6huGDtuUKaZwHVmHb5BXIJU1rj9w7a7QMWM
         Ef3fQrDJSqn3cyjVV1koFoG3jW/2wUCQglWKBYtfUDyFCtT+HtsZnMtyTNxmdli32ndj
         wTcyor1Mhw/mZLWYdQlZ+s1YaEO1LC4iCAHXp0EcN4/wHXhlER560TZqk5O2aCAtFD4j
         1Thw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yZ8FQFQZsqeaLE/QyY5CUyFcfC//Uz+qyMbe1Va5Z2s=;
        b=cfpQGol7sExjCqNRAflsWEXZGAKoINMskKizvP1kKxgfdmKoO+dtqcdTeEfXsPeqqy
         kqAksRdBMEsBZmn/0cbjAzUPkdPAv+c/DKcudMoeRyjb24KFFYXkOSRFkxdGogZVXPvv
         jcCLUPiAHCZuhDKDFuLMLKj1zh7K21a7bp94YO4V792cSktlqYl2s5dXvb9RdyHMZhfv
         mQ6CTUwf1N2sEBjaalHplGRcOYQnRn6W9StQyrx03VkWoIcd6XQLIQbGZtD3uf1Ih0Lx
         COB+ycofnqhTCVdGDEj1K13/v9VFoEUqrr2s6O9TVR7g/Np5auyxlJTCyUMVdAc7H207
         yMRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vIr7x5qnJSD8Ez+GsTMx6n1egZN4gNfu22qh2zeBYTpUCHqny
	YEn+w2m0fL7Lf7hiH8kPQa8=
X-Google-Smtp-Source: ABdhPJysI/LxZ4FB7ZPBquYRjuHlHB1U3NbIq9792Dhk9POQ2P8MK265ul5mKGoNZkQSywQHQpD0Uw==
X-Received: by 2002:a4a:d6c3:: with SMTP id j3mr1321733oot.30.1598621962043;
        Fri, 28 Aug 2020 06:39:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2231:: with SMTP id o46ls387009ota.11.gmail; Fri, 28 Aug
 2020 06:39:21 -0700 (PDT)
X-Received: by 2002:a05:6830:1b75:: with SMTP id d21mr1160416ote.98.1598621961738;
        Fri, 28 Aug 2020 06:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598621961; cv=none;
        d=google.com; s=arc-20160816;
        b=TracnRsJLveelNPsA9Z6h2f93F168jr5YhOSVtLCOzWS1ZwC2+Vb7TVwzQSfcmEX1y
         6abbjU6aOnDoC5jY0PuKWHk1RVfUh5d/yPYI3OdTiAPUa7V4Isl5elfvVyJgXTvWQF7f
         2niZ3aR79uIWzlBA7Voq6u8rxd3K5eu8m3z+y6rxrAbBTXE2R2QyYGshjz/dnSupt0eJ
         1mCKbG6T+7IIwNeAixG19aoIqSFv8V52IVND+MQDDETs9BSwEaFNeyBMasYFMe5+ehhk
         ZGSKyw1RtKBsRZXmOBdIomxt6H29U02/b6R/AXkFiDxRhm2skic3dS+jKOsccWKRgTQs
         fMKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YdLnD8kilQi6Qu8wKPy3myXSTQRUVPOWLWxsi5X2Fak=;
        b=E+rskeclgpnpueDp3aGN4w3by/5syxa5t5wTkOzrNS/zvy2uW1EAvPgMCme6s0VA/1
         D0VvWu5ign0fjIduyHztw2k98X0XbKbNw5QmA5seJzmn4L6G3Kih8YiJOvvtBbX5iXY0
         CbhztkEx9rpTr/ai6n4yyelyE4/2d35BXAxImLFJWZokb6PA4XcljZQqPjZR3wirbu5Y
         B9joVuYu0Bn6EoBjoE7nFMt69fcU6iawqO9Lj3+1nnE7ZF/KvH2hQR4zCpPh1c859MlX
         TEi+TZufTl9b+ikT9E2Pg3yJhodx1fzB6Pc+4X7hRRd9NjxenKKVRLMPkEZbblgu2eIl
         x2oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=t9eyrQX+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id t135si51781oih.0.2020.08.28.06.39.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 06:39:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 07SDd3KO014165
	for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 22:39:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 07SDd3KO014165
X-Nifty-SrcIP: [209.85.214.178]
Received: by mail-pl1-f178.google.com with SMTP id j11so467912plk.9
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 06:39:03 -0700 (PDT)
X-Received: by 2002:a17:90a:fb53:: with SMTP id iq19mr1274061pjb.153.1598621942482;
 Fri, 28 Aug 2020 06:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200825231438.15682-1-natechancellor@gmail.com> <CAKwvOdnCGoRHxgoV+qZNZQx04jwcttckCoxTpFKp9C=jRHw5+w@mail.gmail.com>
In-Reply-To: <CAKwvOdnCGoRHxgoV+qZNZQx04jwcttckCoxTpFKp9C=jRHw5+w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 28 Aug 2020 22:38:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR=Nr+kRoObN_FaGoHEBig404Ax3VU3=Qjt_o_yPR45OA@mail.gmail.com>
Message-ID: <CAK7LNAR=Nr+kRoObN_FaGoHEBig404Ax3VU3=Qjt_o_yPR45OA@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Improve formatting of commands,
 variables, and arguments
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=t9eyrQX+;       spf=softfail
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

On Wed, Aug 26, 2020 at 10:36 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 25, 2020 at 4:14 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > While reviewing a separate patch, I noticed that the formatting of the
> > commands, variables, and arguments was not in a monospaced font like the
> > rest of the Kbuild documentation (see kbuild/kconfig.rst for an
> > example). This is due to a lack of "::" before indented command blocks
> > and single backticks instead of double backticks for inline formatting.
> >
> > Add those so that the document looks nicer in an HTML format, while not
> > ruining the look in plain text.
> >
> > As a result of this, we can remove the escaped backslashes in the last
> > code block and move them to single backslashes.
> >
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Ah, yeah, I saw that. Thanks for the fix!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> >  Documentation/kbuild/llvm.rst | 26 +++++++++++++-------------
> >  1 file changed, 13 insertions(+), 13 deletions(-)
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index 2aac50b97921..334df758dce3 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -23,8 +23,8 @@ supports C and the GNU C extensions required by the kernel, and is pronounced
> >  Clang
> >  -----
> >
> > -The compiler used can be swapped out via `CC=` command line argument to `make`.
> > -`CC=` should be set when selecting a config and during a build.
> > +The compiler used can be swapped out via ``CC=`` command line argument to ``make``.
> > +``CC=`` should be set when selecting a config and during a build. ::
> >
> >         make CC=clang defconfig
> >
> > @@ -34,33 +34,33 @@ Cross Compiling
> >  ---------------
> >
> >  A single Clang compiler binary will typically contain all supported backends,
> > -which can help simplify cross compiling.
> > +which can help simplify cross compiling. ::
> >
> >         ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> >
> > -`CROSS_COMPILE` is not used to prefix the Clang compiler binary, instead
> > -`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
> > -example:
> > +``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
> > +``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
> > +example: ::
> >
> >         clang --target aarch64-linux-gnu foo.c
> >
> >  LLVM Utilities
> >  --------------
> >
> > -LLVM has substitutes for GNU binutils utilities. Kbuild supports `LLVM=1`
> > -to enable them.
> > +LLVM has substitutes for GNU binutils utilities. Kbuild supports ``LLVM=1``
> > +to enable them. ::
> >
> >         make LLVM=1
> >
> > -They can be enabled individually. The full list of the parameters:
> > +They can be enabled individually. The full list of the parameters: ::
> >
> > -       make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> > -         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
> > -         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> > +       make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> > +         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \
> > +         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
> >           HOSTLD=ld.lld
> >
> >  Currently, the integrated assembler is disabled by default. You can pass
> > -`LLVM_IAS=1` to enable it.
> > +``LLVM_IAS=1`` to enable it.
> >
> >  Getting Help
> >  ------------
> >
> > base-commit: abb3438d69fb6dd5baa4ae23eafbf5b87945eff1
> > --


Applied to linux-kbuild/fixes.
Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR%3DNr%2BkRoObN_FaGoHEBig404Ax3VU3%3DQjt_o_yPR45OA%40mail.gmail.com.
