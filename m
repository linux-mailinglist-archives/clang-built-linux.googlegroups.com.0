Return-Path: <clang-built-linux+bncBAABBDHNQ7YQKGQEEY5KOHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D9914105E
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 19:01:49 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id t26sf4049436ual.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 10:01:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579284108; cv=pass;
        d=google.com; s=arc-20160816;
        b=O9jRZDY4uFAUCasPuk/NZQIIkLmXNQGGaVtsDxv9/MTUyteI85adA5dY4SCobqw0CC
         EL0lej08szh1XswKyAefbLCQRcLQO5CB54JWgE0j4qNkACVEGRN2R2fTd9hJjuqLBhRP
         OcDJrqr7S9g3Cc8gslNvQFQp7eLBdIb8ADU9nTvQRd4xUgcqYM2LsNr8nLE0CnIqDadC
         cjRCuxxM4/J39s7aozd7YDSsfuk+vPpRITMfz6miOgYyCZSN/Qmrw6kY5pPqaFCJLbG4
         l+VbDvCDNf7+rjB8tCMYe1mxvy8ugDGE4366LX7HXjBazs+bmEDZAV8r7Cyy23PnLvep
         KqXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=2S/gs56FIUDkqREaZ/RNNoG+RD4vkX6+e+lhj64vOMU=;
        b=v7eVKmEnrckQ9C2/AC8WoYmgcyXFHnEsGMa96DHG79U57zO9VfAWUjYOrBOn18C74u
         NCWF30pbk2SRaXWrZZ9Pq8UO9BpZTLu/2oKTTskiJc2KnaVnVxBjjWJlg0M/oj0pjNJo
         ScxOrOqd55xfe7uafUDtT5c8jZ6X3fDbWSTF2RJrIuDKZeFhWOMVAtunQ9muHAMmnsQk
         PNOiyrooV/0OnhfZN+imyv2DVMg8qIi5deoT1BEH5fXV5BGLthaL2CT3CkqW06e0EOfX
         6++u9wOVnN+8DN7oUcYHptVOyQoZONbAdt4bJLc4QY/G8pgY/fKpUbxVUy3YFg94SfB8
         rNfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZctB2BeS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2S/gs56FIUDkqREaZ/RNNoG+RD4vkX6+e+lhj64vOMU=;
        b=KU4pfA6dx7EwNIM9bRvNijr4RlXTjMwLPRjKZ//+gXVVhQN1QXEyxxNrXyAbdclJmv
         M8TwarosrmtZk0k9hMBBpcbRI0bzVmYJk9SVAqU5dCq/rQWFlHa7lnb0ysqKGG+rs5Cn
         PxB5WMj/mZjsj69QgclmBqrmD1D62rtXxkAvrLjRy9yEo0XkjMoYDxCOO1GiA/08J1kn
         zkj+/CSoJHP5SxyxSXzslgMSDpQ3apstz99dQzbDyW7yXEqiaabMGS0oe9XlTI+WaIff
         MVr7QSPQ6Q+hTQnR8GloNnCwwrm4cpYEV51sxt5jxWF8Emm/syDAKfV6TZCcsiuFRU1s
         3bBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2S/gs56FIUDkqREaZ/RNNoG+RD4vkX6+e+lhj64vOMU=;
        b=rl4UQX8iuTJNQwxWZjrh3I869IDW8EqpGq/RIuou9wbbhvizV3TqEou6a1Am3Bu2fC
         NfIulHg5VSPJQ+iGzzaaU196vkObDz47mo0e778nv3XnKjTL3mqZ3r7ERpVKHunBk9gG
         vTpY6HUIa+Uj7al7xMnFlE4p5kIbTswtvZZmNBt0uel3psM9Z7EKawof8Vp6SFctdZaZ
         UrPS4krUYvgmOvoRfwNQJlf+WRlRq/y4pIIBXEzbaVy2AgBWNHt3YG+YW41xU92Gkc3Y
         U2xKxrtjLAN24UPobhXUZDQDqemK0vlskC4J2xL6sYmt2vNF2ySWpocLlFSvLwZsHUas
         Af+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXY8GjsuFl6qMhIGKWUeGOhXYJmzNG+FKZ/kuaDGjb2DIetCtZE
	tQOtdJ7xcjGzrhbahj6zQfQ=
X-Google-Smtp-Source: APXvYqymabi4uadmrjAQb/G/j8HrV2MurGMNe2yaRWRJmJqe5J6y7aE0vVDbkX2K+l4BQVoNrUmh2g==
X-Received: by 2002:ab0:69c9:: with SMTP id u9mr2935383uaq.80.1579284108589;
        Fri, 17 Jan 2020 10:01:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c20c:: with SMTP id i12ls2297143vsj.14.gmail; Fri, 17
 Jan 2020 10:01:48 -0800 (PST)
X-Received: by 2002:a05:6102:662:: with SMTP id z2mr5827564vsf.233.1579284108246;
        Fri, 17 Jan 2020 10:01:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579284108; cv=none;
        d=google.com; s=arc-20160816;
        b=BiYd1gNEE5/ug2iytnRW3OzBqlVoVlx08FR6GRg9z419XqrI1Mw2ztOzGBEV9z4h6i
         kKw77zkqb22s6I/0PQ+zRnm3YdoAqf8vvg8rcW2RNQDoZk4352CtHHhi7teJAKT3jiNZ
         7bvfvGEH5RSV77aG8Ff1653CgCq9SKmpC1Q5cG6E0Ida1s9yA19xuKWWDOyT+WtALmQm
         CzSelVptux4tYFM3x7QUVA7LKA/cA06/IuUmi4CN5muh3qM1MGD6wvnige0Hl/TksFLt
         YhDStSRd8H1BNDgy5X1ZBTPfYGXBKzPhUPDViNSVIwrGZCgb0NkHKKPFZsofaiBtB20F
         o93w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ecjXaI7QeyvByIxO4lFFZF516lo++S3ClxUq0a6KQMo=;
        b=J0iIf/Atrfsl1SB355Ne1cflQSky38wWGqfapOWQ8CvzxAJYs//A6hgbr2mxyHDFS2
         1fwJlL5iXtSIGgiEpsyA34UVnqtXO+tMTQ67eNfbcRwMtSYtXtI0wRaM3ctK8o46R+jv
         wp9UM1v2qEE0L+W1GoquRWOiqB4dY7TH4GOyxrQOjOJErxP+123WKQcoKZea5dyIMuzz
         jTahAFQpwYSCfYCQcUZ9CVhlaJ+GgtkTLN2xG0CQ7AOItneGRWerioCDE7tpXYq8x/v/
         xVx0BE4v7eukJr6/Vt0pcrgPC5kamx2Z36fQn7U4ktt3gCNnI2qrVNMTZqM2rinZiMBb
         iN5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZctB2BeS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id t76si1134698vkb.1.2020.01.17.10.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 10:01:48 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 00HI1LFH018201
	for <clang-built-linux@googlegroups.com>; Sat, 18 Jan 2020 03:01:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 00HI1LFH018201
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id s16so15350106vsc.10
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 10:01:21 -0800 (PST)
X-Received: by 2002:a05:6102:2334:: with SMTP id b20mr5578692vsa.155.1579284080541;
 Fri, 17 Jan 2020 10:01:20 -0800 (PST)
MIME-Version: 1.0
References: <20200115115249.27774-1-ilie.halip@gmail.com> <CAKwvOdkdD9VF1k==G4vMeo4bBLarYz8gPvWfv6+N2kejeoXfjA@mail.gmail.com>
In-Reply-To: <CAKwvOdkdD9VF1k==G4vMeo4bBLarYz8gPvWfv6+N2kejeoXfjA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 18 Jan 2020 03:00:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ1pS0nK7JoUbgOn0aMtaYH69XukjNELZNxTtV_iMmR1Q@mail.gmail.com>
Message-ID: <CAK7LNAQ1pS0nK7JoUbgOn0aMtaYH69XukjNELZNxTtV_iMmR1Q@mail.gmail.com>
Subject: Re: [RFC PATCH] lib: move memcat_p.o to obj-y
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ilie Halip <ilie.halip@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ZctB2BeS;       spf=softfail
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

On Fri, Jan 17, 2020 at 7:30 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jan 15, 2020 at 3:53 AM Ilie Halip <ilie.halip@gmail.com> wrote:
> >
> > The semantics of `--undefined` differ between ld.bfd and ld.lld:
> >     $ echo | gcc -x c -c - -o a.o
> >     $ echo "EXTERN(test)" > a.lds
> >     $ ld.bfd a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
> >     0000000000000000         *UND*      0000000000000000 test
> >     $ ld.lld a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
> >     $
> >
> > When building with CONFIG_STM=m, there are no in-kernel users of memcat_p()
> > and ld.lld discards this symbol because it's linked in via --no-whole-archive.
> > It's marked as undefined by a linker script but ld.lld discards it anyway (as
> > seen in the above snippet).
> >
> > Work around the ld.lld behavior by moving the object file to obj-y.
> >
> > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/515
>
> Thanks for the patch.  This solves the observed linkage failure.
> Maybe Masahiro has more input based on the discussion in the above
> Link?

Sorry, I did not notice that thread until now.
I will take a look at it when I have time.


This patch does not seem to be a proper fix.

If this fix-up were acceptable, theoretically,
all objects that contain EXPORTED_SYMBOL
would need to be turned into obj-y from lib-y ?







> Tested-by: Nick Desaulniers <ndesaulniers@google.com>







-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ1pS0nK7JoUbgOn0aMtaYH69XukjNELZNxTtV_iMmR1Q%40mail.gmail.com.
