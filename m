Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBXW4XGDQMGQEPPDLTGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 945113C7DB7
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 06:55:59 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id v27-20020a67c89b0000b02902227f70aa8fsf514118vsk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 21:55:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626238558; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2ISWHTpvPxO60dHpLTtOxroiT8R7/SSk8ErD3HB6rt4q1kjuFrp9pateQ9zKlMLZO
         /90UAESwlOBJTjRVbhYujlorqsDk4C/ORoFCbJzGbVhxnu/ODdfj9tGd0oku8hYM1t5m
         GukFmqWibKo1YPd0/7nJS91TuFYzE1MghG0JIue7SoIro9ALZuMMDS+/HJDk4wFlXnps
         mAWU1z+S6/NcrXOx058BcnadYXerWwg0Kwu2X2EK4OO6cgkZQ7tdsUhYQ22UiwTj/GEd
         MpL4MBHv9up+ldAWsG50Sq/WlU4s4UawzbBL4wF2oUvaFS0sFCqBaWdS1obReMn6IFFE
         wmPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=AtMyU6j200G4lel30uXwYiqwt05CdBOqvuwXVXNbjwU=;
        b=C4cvb4cmYg92T+T5IU9L4UwPYOzyUJ9ahmQJO6k4fHDNtySJ/6mWp0ouloH55upBfT
         doHoKNdz1MWPyudFsGWwf5ugXhpfYVKomlURd8F5pdIMFDe2XsDDR9FBvwbPMxYVo8Y3
         uiX+gaAVrJVOBi5gPgu/iXTYE+ssAt+OlSmcJSukDavq9hbPW37tYuBauoi7P5WSi4op
         8mt1LcsNy5Rbm5s5MRJCtnj2srq0NtCf2EJcA9/AzBkKdjBjQJHe0hLsXs39WqHX1rns
         K0m0UEKeVEIzsFvC2EwSoYS/ynpKvR0/+KEng1MrvDHdY5ZY5Jw2hbHH20u1XxUIHyB6
         cpEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KX6SCE+7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AtMyU6j200G4lel30uXwYiqwt05CdBOqvuwXVXNbjwU=;
        b=TS41oZp9gKNm/1MzHJYfHzrCRyS8XpnQiQ7mXABEWdwJSLaGT7KmSJO7IrC4se6nHu
         K31C7mbi2grz6ctMRG1ozAcgrIV3Au+UGV0ehmhlntjtT6tE2R/vTVRcjzxcirzIPnwL
         uqqgMwZ5ShvTUSxwuRzevjTt20ZUiklfyOg/BBmB2nb5eG3z2vz++7cEHRl7ZiJD2JsE
         zk3c0L3QRYa7svE7DQ+TRs+q8mnT4HJGC7oCTNQAm0AAUYwY9xoxTyEkUYJtowcsAgCZ
         Zxe0/EzUnj2jtwrid/g3360mSNEyoWdbZYdfWFbUySPTl3D0vE7R+n45Gqjb27ad4nOY
         4L3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AtMyU6j200G4lel30uXwYiqwt05CdBOqvuwXVXNbjwU=;
        b=G0a+pwhdR3X87CaOCdA/p3BBavivGABgHsd2d6TOZQVtf5+N7iQzdOQthW0c4kL302
         +M8f3aWI4Ske7nXSOv2zMKlhT5Q2W5AV2c51470T42weVl/FQ8WKLYqrJWu7fScWMP/t
         NO3bsdL/wU1NxVlS0HAsxSLq5BapHEWac2fBM7T73STF/kWlArRfS+Kr78lNPWAXoMXo
         Zz16hopCJ5dfYoWGoNSNh45+6xr/9LT9E4sA7hLUDD/ZklY5kTsMiL9Qm9w6BosrqP/k
         xA72/odKT3JtMh6Ilo3LKSlJtaUTfdoefezuYs0JxAJvshKJDT4NpEfY157K1QypLtgh
         DAww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EEXJ8hvOHYkri2kfOaSL04sGi8Y+50oVUCKsQZFpCoE51+ixh
	B8zuXJFByBYzrE7uNljHeSk=
X-Google-Smtp-Source: ABdhPJxMPv0te6cUxbWwRqpxK6Q8zWlOikn24rwod31uagfKUONAnrQ5+Eq7N5K6vgRdL0lrpPd1wg==
X-Received: by 2002:ab0:3b18:: with SMTP id n24mr11250975uaw.95.1626238558628;
        Tue, 13 Jul 2021 21:55:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6996:: with SMTP id e144ls391041vsc.6.gmail; Tue, 13 Jul
 2021 21:55:58 -0700 (PDT)
X-Received: by 2002:a67:ea98:: with SMTP id f24mr2157314vso.19.1626238558115;
        Tue, 13 Jul 2021 21:55:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626238558; cv=none;
        d=google.com; s=arc-20160816;
        b=0DxE0QtK8LUQt0EfvOhmma8rmB7uXkte86gz6V5O0MP+ct/lYBJYNzlQaNn+7LlWJF
         BiKrhlxl/sJK1M+faHlGBshp+ZTJzbcTz8KvLPXa3ljD3leoCtYgX2kG32qhqVGelHni
         bod0i59nYvBQgJICuSI3Qfmj86RF5EadVc8n1KZgkxv5+LlvGy2NHP3Kj2aPzh9Y09/y
         dNNjhNZjaa5mQhLiXHQNfZn0N7W5ojkXuuLS9mMX1V1L7tDHzQU4HlNmjM5xFjHaCyZr
         7hCN8Oa6btU1/Z1iYX9IvR0xpbZalTeu7HO4iv8n9QOtiD7mdBOXEG5N1R4yvmWwwU1L
         sI/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=RG3mFTWRkOy23j6Tuz6mqRZldb0E49OGrpWqNp//4bE=;
        b=VduoYcsBnRuF1dSBY9GpKB5Q+TKCncKPrVLdewiCrmZZ6lqVYWdq8AqFgLbCX3tHfE
         6Ki1OWZiwO3H97y/ClvFae0VIJ2kbKdIaIb8VvncTBwYeE9dbPgk6uX6BLxd+fGF1rin
         PFNVmAgbHzSqnslc0KzkX2ykMWRq+eM/wO8n4B7ILY5s0Vk9xnxKRM8aHw0t0HMDKLlL
         t+mmWAxr1/ncUnw+wVpnUTK/7zKJvrxM6Bu5OcMJipKYWFu9YD8G5zo+gk99bsF0OMwX
         DJLjGNS7UC5jIPjKHnclhdb9ioSaahGQG/SL3y6PJXdVwL3/c2n5Xcz85wHevDjNoaQR
         ssHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KX6SCE+7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id f4si146306uap.1.2021.07.13.21.55.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 21:55:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 16E4tb6B000914
	for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 13:55:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 16E4tb6B000914
X-Nifty-SrcIP: [209.85.216.43]
Received: by mail-pj1-f43.google.com with SMTP id bt15so840005pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 21:55:37 -0700 (PDT)
X-Received: by 2002:a17:902:8ec7:b029:11b:acb4:ac43 with SMTP id
 x7-20020a1709028ec7b029011bacb4ac43mr6217143plo.1.1626238536711; Tue, 13 Jul
 2021 21:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <YO3txvw87MjKfdpq@localhost.localdomain>
In-Reply-To: <YO3txvw87MjKfdpq@localhost.localdomain>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 14 Jul 2021 13:54:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNATVysAEkcq86AD75njoXis67M4i+QVEfg5LawWzfC1h9g@mail.gmail.com>
Message-ID: <CAK7LNATVysAEkcq86AD75njoXis67M4i+QVEfg5LawWzfC1h9g@mail.gmail.com>
Subject: Re: [PATCH] Decouple build from userspace headers
To: Alexey Dobriyan <adobriyan@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=KX6SCE+7;       spf=softfail
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

On Wed, Jul 14, 2021 at 4:47 AM Alexey Dobriyan <adobriyan@gmail.com> wrote:
>
> In theory, userspace headers can be under incompatible license.
>
> Linux by virtue of being OS kernel is fully independent piece of code
> and should not require anything from userspace.

As far as I know,
<stdarg.h> was the only exception,
which was borrowed from the compiler.


I like this as long as:
  - license is clear (please add SPDX tag to the new header)
  - it works for both gcc and clang (I guess the answer is yes)


I think removing <stdbool.h> and <stddef.h> are non-controversial.
Mayby, you can split it into 1/2.




>
> For this:
>
> * ship minimal <stdarg.h>
>         2 types, 4 macros
>
> * delete "-isystem"
>         This is what enables leakage.
>
> * fixup compilation where necessary.
>
> Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
> ---
>
>  Makefile                                                               |    2 +-
>  arch/um/include/shared/irq_user.h                                      |    1 -
>  arch/um/os-Linux/signal.c                                              |    2 +-
>  crypto/aegis128-neon-inner.c                                           |    2 --
>  drivers/net/wwan/iosm/iosm_ipc_imem.h                                  |    1 -
>  drivers/pinctrl/aspeed/pinmux-aspeed.h                                 |    1 -
>  drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h |    2 --
>  include/stdarg.h                                                       |    9 +++++++++
>  sound/aoa/codecs/onyx.h                                                |    1 -
>  sound/aoa/codecs/tas.c                                                 |    1 -
>  10 files changed, 11 insertions(+), 11 deletions(-)
>

> new file mode 100644
> --- /dev/null
> +++ b/include/stdarg.h
> @@ -0,0 +1,9 @@


This is a new file, so please add the SPDX tag.
What project did you copy the code from?

  If gcc, is it GPL v3 (but not compatible for GPL v2) ?
  If clang, is it
   SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

Or, can we license this small portion of code
as GPL v2?



> +#ifndef _LINUX_STDARG_H
> +#define _LINUX_STDARG_H
> +typedef __builtin_va_list __gnuc_va_list;

Where is __gnuc_va_list needed?




BTW, once this is accepted, I'd like to
change all <stdarg.h>  to <linux/stdarg.h>.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATVysAEkcq86AD75njoXis67M4i%2BQVEfg5LawWzfC1h9g%40mail.gmail.com.
