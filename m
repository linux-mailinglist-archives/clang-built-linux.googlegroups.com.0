Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTXSZ3YAKGQEL3ZZQRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2E6131BCE
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:48:47 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id w6sf43358197ill.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:48:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578350926; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxV3gD0fLGRhN9ZfsUSwPlTCd4+iFwqc9Y0tP2Jre9BomXviSFak/mcygog1nx2HDJ
         gKWISV5Vkgjw/zn+lEdcG7WMz5xkSyPr30FkcILjeZMKHxXhA9BM8N0WXYXWn0vaHbrK
         IL7raJSL1ZwKVJORv0PCwFQPhyNxV+mhSQA7Yj6y/llHIvESfQcaQu8+BqrYpFmluwz3
         IHM2RYmIwVfx3o4mm2ZSbeAGXSLguBEiTngUOA941NFjAS8as1QKHNMwPG3p4T4snR24
         IDmT/VVApRkUquAZwr0nbUn+BEYhZqf+Yxh2S+fEzgfsc6JA5SgJvkVaMWUQ8Eoxi+bH
         km1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8IJbiZZC4Xrdzj0W10sD7BPm/PNDnWgVzjN7dPoEAUk=;
        b=XwUsv7zNu7NY5bQgbQW/jlJ2A8nLONQGRAEUYPrg68MsaqzUPMoji4hcxGZHRODsV4
         XzWPz38atsapvvBOLDJQX/LBGobVCyX1Vu7uZiEqdjGpa/BIhxM0g4iajUCEDZgX9/Ac
         LfGK/z6dGA7pGoPMTm5Uw+YptfuIawtvixFm6KlH+Fj56qXLpN18q6tgYUS9RLBxvDYC
         r25/6vbcEdH+B/TWcvan8ir+EHgfbh9/xYmb9iELxS14rWIu00YPlTUFEtv4zBrFpZI9
         NUyAbKIWuq7A+wjV115tdCID6tyuiDVfRAWjGn7xrENAi/+H+CX9H7iul2NROctsO+hg
         S12g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hz1wMM3r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8IJbiZZC4Xrdzj0W10sD7BPm/PNDnWgVzjN7dPoEAUk=;
        b=lxvK8cfz0DpU+2TGpU01+nRDNN10JA3MZm8T2y4n4gaokPpMub5iosbWEki2qjNo4W
         hU5jno0cJrkY+2TLDplFOLdagzSP9FWfgJ0Oydh020wp2YkOByEz8FDjNxiaUhf5s1uI
         3sO0FeNjNT/hQg5kxK/8v6g+ju289dd/yxEx8/76N3gi5nC8TW63zNZVm+HM8qwSQTP/
         lN/SJqn1qLiX2S78379wgKE7OdYuUCjz9sOtE3nFI2bUj9wEKV7s2ZZeacQt9UmRTCN+
         tu4kWO/ByRq27tQLJNVNfkh1aGZBm4W1AqU5oatLclxjwmfuAZDcADom1azVZggzeilf
         8a9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8IJbiZZC4Xrdzj0W10sD7BPm/PNDnWgVzjN7dPoEAUk=;
        b=D7pU9JouFI7dYeMcYkObcTlT3UY/5ngL1Uuopktq7o5lprG8PyhqJ8uVzeXaBsmBxY
         z2lddcKPZ+HM4E328KSSLFFnNJBk/q+wpnoGRae6qpJxm2bMvUfQufYWX7J1jFgvJRlh
         yV6WaNJmzM++bS4AyhpR6ILl/jt85ZyJq0ruX8Y/g789S/tS54AXXs645yJIbAJRgN+O
         S7pODSpgAzepo0tMk8KWm2iffurh3VHCBPdAnn43/dP8HM1OQea6KrkqjJzK+M4DxrC6
         8eZgdbY+Uk3r064QRjBhGMII7lZmZwTNMmgNaoidiYP7xWVzDoqNPv+DSHPgRPoUHuIj
         FnAA==
X-Gm-Message-State: APjAAAXTYcJv9ka/zNytsJX6NY1v60kvoEHcdrrb8sCYYLq2SoEIUd56
	wlBFN9Pv+gv5eVZ+cijMfPQ=
X-Google-Smtp-Source: APXvYqx9QU1xEA+0qoBzWj7TNUEv3citElWfwvv4MDNiUXYllEyW3gxIXeroj9+3B92V6BaiufwjHA==
X-Received: by 2002:a92:601:: with SMTP id x1mr81479179ilg.35.1578350926604;
        Mon, 06 Jan 2020 14:48:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b047:: with SMTP id q7ls3499437jah.15.gmail; Mon, 06 Jan
 2020 14:48:46 -0800 (PST)
X-Received: by 2002:a02:ba91:: with SMTP id g17mr83621779jao.106.1578350926218;
        Mon, 06 Jan 2020 14:48:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578350926; cv=none;
        d=google.com; s=arc-20160816;
        b=Pzuh7JCeWuhbvgfCgGj2wjAGOEsEUqKEXTXDVcMB9jSUJxUXGWRWCasZ+ASAgktSCB
         EJcSkd4EmHpbe9k81J254HKDWet7QS2LQ/2rvS75udPiV0UKnaXjpGzOX5qiyiww9zSm
         BAlo212SY4zkxIGC7Ldn+OeFLSh6Jdx/aZrUrOVQBWBj0AehZ2HUA7ORtX8BbAv5q/ZI
         UqVqAfCeYJNDG6IH5LnoERlacuwue2ZS8JFQR4eDPAYI4Q3fqWJCzRo/gOTHa8+IM7ZX
         47mkDdHBYjFtI31zeQzVKMktJM8hfSi7LU6X//EJXoU3moInteCDKMmmJbXrQW1A4L0g
         cUag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J3VCQG630kXuHpZ9mrDZsgukdedrSkZVoDwQfmfxO1A=;
        b=c8JctRv0YP/7VP8gJ3vtQzQq90HLySgMt9WomBVoP/St1Lk4Gj/ZZigRU9K/BDQCTf
         CNYTrkMUp0FpuAMmB859u8KMeF+B2FMXnDuk2ddT+VVQc7Pq2LaXb68rVT0TecSO9A9B
         Uy/x/v/JbKnJCIY+xBGr7QbeiCY/CT6/gOw0wscnaVB5KpFNteUD5o9dzRSR5PjTKDVo
         a1jcCxB1pTjsAw6Ijqbzn94QZZgno/eb0/J6ecm2H6uzUwn83SLYAbprBuqYOW/OVUz4
         oVuximlhXNTaT3cftD5/A3CjBLZH2Yc2F0Q8Q0WBLF4J/QPiqF+Mx8B8VDamP+plnJq2
         chHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hz1wMM3r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id z7si2926517ilz.1.2020.01.06.14.48.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:48:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id bg7so8362360pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:48:46 -0800 (PST)
X-Received: by 2002:a17:90b:30c8:: with SMTP id hi8mr45735177pjb.73.1578350925382;
 Mon, 06 Jan 2020 14:48:45 -0800 (PST)
MIME-Version: 1.0
References: <201912250754.lp9WgzoI%lkp@intel.com>
In-Reply-To: <201912250754.lp9WgzoI%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 14:48:34 -0800
Message-ID: <CAKwvOdnCPxMbgG7S0Ou6YHvYhVFk0wcDyCQDDzHcwGn9MYou9w@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] regulator: mpq7920: add mpq7920 regulator driver
To: sravanhome@gmail.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Hz1wMM3r;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

Hi Saravanan, can you please take a look at the below report?

On Tue, Dec 24, 2019 at 3:38 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191222204507.32413-4-sravanhome@gmail.com>
> References: <20191222204507.32413-4-sravanhome@gmail.com>
> TO: Saravanan Sekar <sravanhome@gmail.com>
> CC: sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, robh+d=
t@kernel.org, mark.rutland@arm.com, mripard@kernel.org, shawnguo@kernel.org=
, heiko@sntech.de, sam@ravnborg.org, icenowy@aosc.io, laurent.pinchart@idea=
sonboard.com, gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com, dave=
m@davemloft.net, mchehab+samsung@kernel.org
> CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
>
> Hi Saravanan,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on regulator/for-next]
> [also build test ERROR on robh/for-next linus/master v5.5-rc3 next-201912=
20]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>
> url:    https://github.com/0day-ci/linux/commits/Saravanan-Sekar/Add-regu=
lator-support-for-mpq7920/20191225-005026
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator=
.git for-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project e5a743c4f6e3=
639ba3bee778c894a996ef96391a)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/regulator/mpq7920.c:317:7: error: assigning to 'struct regulat=
or_ops *' from 'const struct regulator_ops *' discards qualifiers [-Werror,=
-Wincompatible-pointer-types-discards-qualifiers]
>                    ops =3D rdesc->ops;
>                        ^ ~~~~~~~~~~
>    1 error generated.
>
> vim +317 drivers/regulator/mpq7920.c
>
>    306
>    307  static inline int mpq7920_regulator_register(
>    308                                  struct mpq7920_regulator_info *in=
fo,
>    309                                  struct regulator_config *config)
>    310  {
>    311          int i;
>    312          struct regulator_desc *rdesc;
>    313          struct regulator_ops *ops;
>    314
>    315          for (i =3D 0; i < MPQ7920_MAX_REGULATORS; i++) {
>    316                  rdesc =3D &info->rdesc[i];
>  > 317                  ops =3D rdesc->ops;
>    318                  if (rdesc->curr_table) {
>    319                          ops->get_current_limit =3D
>    320                                  regulator_get_current_limit_regma=
p;
>    321                          ops->set_current_limit =3D
>    322                                  regulator_set_current_limit_regma=
p;
>    323                  }
>    324
>    325                  info->rdev[i] =3D devm_regulator_register(info->d=
ev, rdesc,
>    326                                           config);
>    327                  if (IS_ERR(info->rdev))
>    328                          return PTR_ERR(info->rdev);
>    329          }
>    330
>    331          return 0;
>    332  }
>    333
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology C=
enter
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corpor=
ation



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnCPxMbgG7S0Ou6YHvYhVFk0wcDyCQDDzHcwGn9MYou9w%40mai=
l.gmail.com.
