Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBL6T46EQMGQEDGV3PHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 787BC4048D5
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:02:08 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id c11-20020ab0484b000000b002b273dcd61bsf296782uad.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:02:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631185327; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+y74r+KjdGn/5teXyqbGFXHaSyHGvaiBQ2zewCZfITRHUOY8OJHPrHOtrxNRwwGoJ
         VYIUBBA3V2jukEsJ9LBUxGoA1Ss6iWRAtkYRC4+pZhK4cHG79ycEnX4AefJXCy2scaZb
         /NkCeldNcBOVany34JZPDtVo3bBFE9hIf3v5j+YubrKVeB+F02hfk6Dpiu5sQfIRfzF1
         ZuRjSt93K/yhJrJWSMHTy6Kybbl/0+eRxwn3joW3j4DtG9/mDypWnYv/6hAz2xT6pq5z
         6ZlwTyc0XYpy6CSptOHROpA3rcsMzFPOnLfubmpw8idesActzQuohZ4vNoCOvb8Oa/Xq
         2kqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Iym+TRw2uDxwYauLqaU9n2vagaXJXq96BWM9AQu/By4=;
        b=x9gF6t516FA6BGB6l2Yv7AOH6qYe5QhnfE0EP/181426Syqn5Xv62t5G5tYxEKFsmN
         zhFg/tSnpB46NSDS9cVY2bAEQcdoHotHS8WgzhfOct5HIyLXDyVocq5kL0ZEEDRbBW00
         NzdZ3BrBlZJfRfAik8lOjdH376ghB06jGO38GOO28GhQBmQGGxzAn9Q/hcWeWsBCsFOk
         5giiAnauGnNWtFejDlTlrTbejIJokQdEHLkNR6namfA/wZxkK1eFq77GC61h+hUcF+pi
         da1PmuJIw2CyppsH4sHm2YEb3imMPPCf74xwzppY3DnSQNWIHzbkunEcaSwQSZ0mf5Jy
         Ac5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kkCHZDv1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iym+TRw2uDxwYauLqaU9n2vagaXJXq96BWM9AQu/By4=;
        b=L1Boa0qOX9iId4FksnHZjT2kb/9MisYCeMMkIEra0eKlrTFo+jve7pkb4DFSLVXHr4
         oUnRhNGAY+2LKB4ICu7OpJLVUXApdRWAAVLHZVPXpRBNwqyU7ABQQEfXiDi+WuzuhrqN
         Ybk2E0kllaBN11IiP+mBcILUSlXNeGzG6Rwzo1M92CYU9vvYh20Bl4p9ct5VlfPJlil2
         F8dQIZ9MQsJJsh9EpFGllRFM5XtkVfRUctxTti+WPRf51envxqZNkHy3DjNhwgrGaFad
         veyHdBC2bLY1pX4XEhZamMdhoud7pfPaetSeM4VIm9nDL6mP3VwKlRDMOrYkLOTWv6Km
         NF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iym+TRw2uDxwYauLqaU9n2vagaXJXq96BWM9AQu/By4=;
        b=rqXKSaRZX3Uu7AITw3eLFYe6e3jmkMZ3OoUJULgXBpTKRTeEFDs1PDE1tmZaJCy2C4
         37EXNGZgJ+p23QlyMhWNwEn54KMQuHZz3vqrw9PQef7aBbT/K2OX5z7zcIP3y5nqjtoG
         pMum32qOuffxHgFkymsBP3XpUPzl2bP4S/mWXakOCP7fM3w1zGvOMjInK99mJmpSu3nk
         ivul6fA2OFEuMNjCIrzZkl/gMzszGnKSuYgkSdcsGo1khGc6UBLlEXwZ3tpI3DYZbvXn
         H4m0hLoitoEDkbCOzanPCyo3kBvh92qJsN1EZOEgQRGiqnXoalM2u2vU1Ac4U6VL68KV
         i9Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sSExXCpMk5JpBqnCfNZWQ+DvuBWwxZ09IHOHFCmZ43jfW5+/L
	LNbUfX3UlPXTagj7r0+ZNhs=
X-Google-Smtp-Source: ABdhPJzQP4BEmkSF1XDLlYkRwQCVjFOz+bweBiHoB9Ut6QIiLLLwSEwaH6W1bPOPMrmVQrm+RA63bw==
X-Received: by 2002:a67:f793:: with SMTP id j19mr938531vso.28.1631185327203;
        Thu, 09 Sep 2021 04:02:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls125877uaq.10.gmail; Thu, 09 Sep
 2021 04:02:06 -0700 (PDT)
X-Received: by 2002:ab0:3d13:: with SMTP id f19mr975443uax.70.1631185326661;
        Thu, 09 Sep 2021 04:02:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631185326; cv=none;
        d=google.com; s=arc-20160816;
        b=lGGYHlpSFTfAs6FbgK4kQX2gOqKi9NX5Fb1rtuDuR/FaJrwXEoafa6oePFAAh0RpkS
         NdXlINOh2m2h5aV1O/qWBOd7UZNmlKsIEg6BdEvkhXf1rkkp79VA3KCW3CSYNW/ZOsTZ
         3d3786RfPoMtLpMe3K1pCb8BU04+4wx7/Bf/BtXemFyEJWfB+rZKRmxXdfoKxdN2CIjg
         u3fKC1XWd4bKsTawbqDFqM3KcjGpZ4TyD9eshZII/DSUPMjGV0iYO7gNcygKiZChNkNE
         jS3O0clY4r49yntmDxJHJXq6ct4PcMwhkYzW8nZw2R5OIgtqK05sxa7KRWRKJpZRxpuD
         ddFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nZfFg/JwDacjaTOLCboRuBQ6A+RYt6dHwDsyrC1BjG0=;
        b=TYbe4kL5w9hNla8I3Zc4iiuV2DGO67J7QLRAXU3cOqV/0SMg77TyUTqded7PPI9/fD
         02wTjXWIQeYFJAO3n5uNOTFwgZW7takd4BlkdhjDYZmRYop8xBK4n3nLcBLqFWRxo8JK
         8aFeZ7tCYWjLLf4ynG8HPZzTpd4clgJOQpNBD+55uCktD8GciRttfOTt+9qgJA5WtO9C
         k8s7VMfnWLzwRb8r7rrmUSlhNqUqtHcTF29Fecwb0Z5hrKTGf0kIR/jSn4sDQtAQaAA9
         mqbfy24L/KVGP2DvoDdfKDNm/eNQiheBxFd3VU+5ynOHA8rvNYM6ljZRxTgiaR/oSNbb
         7/0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kkCHZDv1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id q26si133471vkn.5.2021.09.09.04.02.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:02:06 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 189B1odK027120
	for <clang-built-linux@googlegroups.com>; Thu, 9 Sep 2021 20:01:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 189B1odK027120
X-Nifty-SrcIP: [209.85.215.182]
Received: by mail-pg1-f182.google.com with SMTP id s11so1380352pgr.11
        for <clang-built-linux@googlegroups.com>; Thu, 09 Sep 2021 04:01:50 -0700 (PDT)
X-Received: by 2002:aa7:9e8d:0:b0:406:be8:2413 with SMTP id
 p13-20020aa79e8d000000b004060be82413mr2637188pfq.66.1631185309107; Thu, 09
 Sep 2021 04:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210908032847.18683-1-kortanzh@gmail.com> <YTjt5C7xTqNLUSl/@archlinux-ax161>
In-Reply-To: <YTjt5C7xTqNLUSl/@archlinux-ax161>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 9 Sep 2021 20:01:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNATA2-4jSfOCmdtgQ+cuAyXhyLCBuVEZkZ3nONZFV8z3EA@mail.gmail.com>
Message-ID: <CAK7LNATA2-4jSfOCmdtgQ+cuAyXhyLCBuVEZkZ3nONZFV8z3EA@mail.gmail.com>
Subject: Re: [PATCH v2] gen_compile_commands: fix missing 'sys' package
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kortan <kortanzh@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        llvm@lists.linux.dev,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kkCHZDv1;       spf=softfail
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

On Thu, Sep 9, 2021 at 2:07 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Wed, Sep 08, 2021 at 11:28:48AM +0800, Kortan wrote:
> > We need to import the 'sys' package since the script has called
> > sys.exit() method.
> >
> > Signed-off-by: Kortan <kortanzh@gmail.com>
>
> Thank you for making those changes!
>
> I should have mentioned that this probably warrants a Fixes: tag, which
> can be generated by running:
>
> $ git show -s --format='Fixes: %h ("%s")' 6ad7cbc01527223f3f92baac9b122f15651cf76b
> Fixes: 6ad7cbc01527 ("Makefile: Add clang-tidy and static analyzer support to makefile")
>
> as that was the patch that introduced this issue. I personally have a
> git alias for this as it comes up enough.
>
> $ git config --get alias.fixes
> show -s --format="Fixes: %h (\"%s\")"
>
> I do not think this warrants a v3, just something to keep in mind for
> the future.
>
> Fixes: 6ad7cbc01527 ("Makefile: Add clang-tidy and static analyzer support to makefile")
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>


Applied to linux-kbuild
with Fixes and Nathan's Reviewed-by.
Thanks.



> > ---
> > Changes v1 -> v2:
> > * Fix commit title.
> > * Improve commit message.
> >
> >  scripts/clang-tools/gen_compile_commands.py | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> > index 0033eedce003..1d1bde1fd45e 100755
> > --- a/scripts/clang-tools/gen_compile_commands.py
> > +++ b/scripts/clang-tools/gen_compile_commands.py
> > @@ -13,6 +13,7 @@ import logging
> >  import os
> >  import re
> >  import subprocess
> > +import sys
> >
> >  _DEFAULT_OUTPUT = 'compile_commands.json'
> >  _DEFAULT_LOG_LEVEL = 'WARNING'
> > --
> > 2.33.0
> >
> >



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATA2-4jSfOCmdtgQ%2BcuAyXhyLCBuVEZkZ3nONZFV8z3EA%40mail.gmail.com.
