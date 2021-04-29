Return-Path: <clang-built-linux+bncBCGJJRPK5EBBB2NWVGCAMGQEYH5FPKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C66C36E595
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 09:08:27 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id x6-20020acae0060000b02901e5030d8682sf4529249oig.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 00:08:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619680106; cv=pass;
        d=google.com; s=arc-20160816;
        b=j1PYXGqiVDXsK0VFfWHi9zUiwHa76dM0H29X6hXUefcxj9+7S2kxh6LlCAY3WpD56m
         iHhm3ZUeBwI5Tnc4VC4J2Gx1Hv17KrNxzh77m+4SYPrD4YeEcI1r/h+Em4USHAnUR00f
         G38JaEsvONpML+F2tQ7PQje1kQvp9bfAA6+Aap9ucpXWdkoD1jzJ+IsRYbrNs6kpiaum
         FoUXR4TugAVZP8RZPYNCnqYgdNNJawNP6KRmwfH+ooQLjQdm/vdsi9P609m9Z2NvphiT
         MZLXaYvB2Fg/0wKZRbP4CJXXISjt9OdSkOzERDlKHTEBDfT6qdzNa1dC9zDgftCkbZMG
         I5BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=uEHd5jmlVzP/laP1eovt0PCJV8u7Y+Z/0LwB1AU8QAI=;
        b=YWFbAPKRw1u51pVEOBB4annxhRBmCrjIb0YvC5p99AL+BVZZKqEonrVghStj2/q8L5
         b/AV35aYQ0E7GDsQxQ7xprufSJfogSwrAULoXy2lY2+RmIUyBQJJjsdp4XIsFmv9g7Ro
         PY0AYCpAWRhrv9C3qtPoVjajVz6Y8IB7R8vM9FLcakkKJzoXRJR/jmPPZ5v6dGDe5VmF
         HDqYD5OwHt3epkMrYFt8067raP8c5D4jonB/tI4wBfrl4w2ztsdhF0BAJplt0EaeWRCK
         yVw3PIogbNa4WFtCXENYUEswuq5uXZn3Eefl811zAVojE5JMKGmBXCVHte/m7uc4piQE
         4qNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623 header.b=FABwoLqf;
       spf=neutral (google.com: 2607:f8b0:4864:20::72a is neither permitted nor denied by best guess record for domain of mw@semihalf.com) smtp.mailfrom=mw@semihalf.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uEHd5jmlVzP/laP1eovt0PCJV8u7Y+Z/0LwB1AU8QAI=;
        b=QvL9sAcndbDAjN4ApzMCGyAVq6EBJTFoUVTEQrtIMRkCQVcXIAGFlJWMGjLPgboAPV
         h3HTekNM41e6UdOR5xBMsZHAjQrSk9ePwtQ572UAQyvh+z8hSzYGjx1o+vPhTJfCcls7
         QdRzoVUR2VkrZrNC1hCFOgzXsL/FjFdoslnqAYZJCeD4jdONq6ZSz1k8Td7VJACB9ImM
         c9hXG+pKJIu44q5yqdXM+qVy3EUt5YBmmxk0I2dl4nmWKQfH+5Dw+h+mNBXMeqM7Ib5S
         Fg35P8Xlm3DfnBvFYkIyslxwl4GHYUeS1rTys5gHWuiZMFOaZ//2lPve2lhQbRbXs1jv
         CaCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uEHd5jmlVzP/laP1eovt0PCJV8u7Y+Z/0LwB1AU8QAI=;
        b=DOM4jfpvKe+SFJtoTBATHgXvOqIiOZOuviBNTaFYluDdeWD+bcJTuNpPGYeU8EipBQ
         8jehICH7bhjrTdKD3W+embi9N0dHNEN4wHVlTzDTu/C1LenebeqaN3qlxhSVBJIbcr1e
         G6TaurzKlA30Hd5N3iiXR3rlqrpKVAz9ut3B6MDp4mdiNfITXMCoopms+zblQCSqSNFr
         uJbkdNs5sijcLN+xtJkQwEzqMXgWVgoOl0wJX80zTEkvBYZahWNoj7w5G2YgNVDO8oWK
         A1k9owbBcot7ruGruL0ichpyJ25gkiQNTgIT+OqzMkOnC+Caq6VQykEE3O0R0xq33sYX
         dYbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qr4gJNTSD2yTBOq7ItAaSbZw/3L61Jy9UT8V6WzdEP6iN4LAQ
	joXOqRgu5xm9vd/wcRWot+A=
X-Google-Smtp-Source: ABdhPJyd7yj5KV7CwVlllfVLW/bQty6enz6li/6nGd4ES2rDriTGZw6etochJ0AFZeyzHPPdIFZ/Cw==
X-Received: by 2002:a05:6830:1048:: with SMTP id b8mr11040646otp.1.1619680106108;
        Thu, 29 Apr 2021 00:08:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6154:: with SMTP id c20ls587103otk.1.gmail; Thu, 29 Apr
 2021 00:08:25 -0700 (PDT)
X-Received: by 2002:a05:6830:195:: with SMTP id q21mr16618793ota.64.1619680105627;
        Thu, 29 Apr 2021 00:08:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619680105; cv=none;
        d=google.com; s=arc-20160816;
        b=tCjllUgQsUf6Hbx8TslwTBk5JBxxUncZFzaeM7/3PmQxUYA8Iz/34xUahu/j28JAX+
         8MzJ2hs/kf4NpaNK6fF7zEvrsIHg61Rm8BgfaBB7GAdLA8PJv0ecTQo+MWK2M14dWJnu
         /BpOjqn4JgwAHjXsAxDmXdfDqlXJS/qBmlnRX++2HDYv+Jmz7Uam0PPH/B22M5X2ipfN
         WspDPN7VPfIVqWn7twXPwvF4it0uVPp7oNC4JW5mbF1u9tZwb3jDLGboUgduYduQY0pV
         C/Nm3MnParLbfX1xEhZ1kGNXnJvUyhORxz11lv3QwmDren9C09YwLrx9uIURQL3t0v1q
         qfZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WoQazlo32EMfyVfFXbSdibosb/wnX4jkFYop7JuM2ng=;
        b=R76oJcqZQsOgD2tDaEM4nQUzAtMo+M7slbgEhTKkrF7bzZHv0Fbnxp05VV7DHLXtNk
         7YGjoWH8cAbadie+wJA9XJZ8oun+H2+gxqm6dgkyuen1iJOlvfD50ZWossAgFsgKgmj1
         nc2GC877x4h1AmqfwOMHCGBumW6+gvejYk5nmr8P9JrOtJd7NC1ytl2YSsncShuTX+Ht
         kRDQOaniccc9Lsxe5S3bWcIXqGQwicfK2KlhLIBODcF7eU1pVfl0Tp67P8ISrjAX/6YK
         1d2a78/EYNh4yLKKk8IoK9r8ohOZ39Vtb222Ssw6hXoC9hEEwT9l0Nkvk1CS18mJ3cqm
         Dg0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623 header.b=FABwoLqf;
       spf=neutral (google.com: 2607:f8b0:4864:20::72a is neither permitted nor denied by best guess record for domain of mw@semihalf.com) smtp.mailfrom=mw@semihalf.com
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id w4si120494oiv.4.2021.04.29.00.08.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 00:08:25 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::72a is neither permitted nor denied by best guess record for domain of mw@semihalf.com) client-ip=2607:f8b0:4864:20::72a;
Received: by mail-qk1-x72a.google.com with SMTP id z2so29268459qkb.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 00:08:25 -0700 (PDT)
X-Received: by 2002:a37:7d84:: with SMTP id y126mr32096792qkc.155.1619680104996;
 Thu, 29 Apr 2021 00:08:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200417004120.GA18080@ubuntu-s3-xlarge-x86> <YImjw3eypUdhkp88@archlinux-ax161>
In-Reply-To: <YImjw3eypUdhkp88@archlinux-ax161>
From: Marcin Wojtas <mw@semihalf.com>
Date: Thu, 29 Apr 2021 09:08:13 +0200
Message-ID: <CAPv3WKeHcq+viBHR=ok+AytrNWLFudWJ8qHoShs3r4LOj7qD0w@mail.gmail.com>
Subject: Re: -Wconstant-conversion in drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
To: Nathan Chancellor <nathan@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, netdev <netdev@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mw@semihalf.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623
 header.b=FABwoLqf;       spf=neutral (google.com: 2607:f8b0:4864:20::72a is
 neither permitted nor denied by best guess record for domain of
 mw@semihalf.com) smtp.mailfrom=mw@semihalf.com
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

Hi Nathan,


=C5=9Br., 28 kwi 2021 o 20:04 Nathan Chancellor <nathan@kernel.org> napisa=
=C5=82(a):
>
> On Thu, Apr 16, 2020 at 05:41:20PM -0700, Nathan Chancellor wrote:
> > Hi all,
> >
> > I was building s390 allyesconfig with clang and came across a curious
> > warning:
> >
> > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:580:41: warning:
> > implicit conversion from 'unsigned long' to 'int' changes value from
> > 18446744073709551584 to -32 [-Wconstant-conversion]
> >         mvpp2_pools[MVPP2_BM_SHORT].pkt_size =3D MVPP2_BM_SHORT_PKT_SIZ=
E;
> >                                              ~ ^~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/marvell/mvpp2/mvpp2.h:699:33: note: expanded from
> > macro 'MVPP2_BM_SHORT_PKT_SIZE'
> > #define MVPP2_BM_SHORT_PKT_SIZE MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_FR=
AME_SIZE)
> >                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~
> > drivers/net/ethernet/marvell/mvpp2/mvpp2.h:634:30: note: expanded from
> > macro 'MVPP2_RX_MAX_PKT_SIZE'
> >         ((total_size) - NET_SKB_PAD - MVPP2_SKB_SHINFO_SIZE)
> >                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
> > 1 warning generated.
> >
> > As far as I understand it, the warning comes from the fact that
> > MVPP2_BM_SHORT_FRAME_SIZE is treated as size_t because
> > MVPP2_SKB_SHINFO_SIZE ultimately calls ALIGN with sizeof(struct
> > skb_shared_info), which has typeof called on it.
> >
> > The implicit conversion probably is fine but it would be nice to take
> > care of the warning. I am not sure what would be the best way to do tha=
t
> > would be though. An explicit cast would take care of it, maybe in
> > MVPP2_SKB_SHINFO_SIZE since the actual value I see is 320, which is abl=
e
> > to be fit into type int easily.
> >
> > Any comments would be appreciated, there does not appear to be a
> > dedicated maintainer of this driver according to get_maintainer.pl.
>
> Sorry for the necrobump, I am doing a bug scrub and it seems like this
> driver now has maintainers so keying them in in case they have any
> comments/suggestions.
>

Thank you for your interest. Are you still reproducing the issue? With
clang 10.0.0 the compilation passes in my setup:
$ ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- make CC=3Dclang
drivers/net/ethernet/marvell/mvpp2/
  SYNC    include/config/auto.conf.cmd
  CC      scripts/mod/empty.o
  MKELF   scripts/mod/elfconfig.h
  HOSTCC  scripts/mod/modpost.o
  CC      scripts/mod/devicetable-offsets.s
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
  CC      kernel/bounds.s
  CC      arch/arm64/kernel/asm-offsets.s
  UPD     include/generated/asm-offsets.h
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  LDS     arch/arm64/kernel/vdso/vdso.lds
  CC      arch/arm64/kernel/vdso/vgettimeofday.o
  AS      arch/arm64/kernel/vdso/note.o
  AS      arch/arm64/kernel/vdso/sigreturn.o
  LD      arch/arm64/kernel/vdso/vdso.so.dbg
  VDSOSYM include/generated/vdso-offsets.h
  OBJCOPY arch/arm64/kernel/vdso/vdso.so
  CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_main.o
  CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_prs.o
  CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.o
  CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.o
  AR      drivers/net/ethernet/marvell/mvpp2/built-in.a

Best regards,
Marcin

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAPv3WKeHcq%2BviBHR%3Dok%2BAytrNWLFudWJ8qHoShs3r4LOj7qD0w=
%40mail.gmail.com.
