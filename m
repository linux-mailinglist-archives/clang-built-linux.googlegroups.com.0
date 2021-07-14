Return-Path: <clang-built-linux+bncBDHLTRXOPEIIHR52Q4DBUBHNPW7PC@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B46DA3C8070
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 10:42:43 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id y10-20020a05651c154ab02901337d2c58f3sf791301ljp.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 01:42:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626252163; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1soDdpotIEurlqeJ5NywTXztnOQz2VS31u6UZwbaaRaObQNoA+Uaq4mcgNjBIyKeU
         VU6GFJTA3FjUNpUJIO4kjNDB43F4p6MbFmhAZsW7VRE0YZAfGouvukWLJrW6wWpTcJpq
         JO1nScdoTqQc7R3ApnlO5GP22Z5BGUlecY5PL8gRReqQXxmfWkhyxcwu1Kob/MhtOgpd
         6jgthOSOACJKuj+huY/zlIGP8Q3w4XW8cd9sJcC/mgW7UD9t/HCK5fYgBLIv00sonU22
         R+O2XcM5n6rQmoOLrhaxq1k5O+5/pVpICItTUNsmKJyOEMIca9e022yCyfJqovo9YUEx
         M7OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=chdpkgdFv+442N0ldTbBnwxp/zwzbuPkTFDTv7dz4KM=;
        b=Z1hfdqTWzhJQ2rS7eJvn/h5tfLRpKqDxinoPilX/ytAeFD5u4Z4sz5+t8x16kf1pVP
         CIjUdvodKzOQXFfX6v1hC35O27ANP7nXBZAtY2AvBcMe8Yt3gzfBmnlWpKLQBGO2x4o8
         ogIhukyCaNQ2y+pODlJffovR8ua7jTqFeUrbE0iITCjEpaQ2YkQ09pODbl0MKd+U57Cs
         n+PWxGvz0z1hWtKGBN/Md55k+B3w6fqyfLNaD4xLFuItTzHIx7sWnkKjyNW0/ek9lSLu
         MtwXzB9/eAZ/oAqH6jVp+6U0XDsL0QuLqvtw5D157cm9onCP5cFbCTahK6oVDlxMauWr
         meig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjAe5XbV;
       spf=pass (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=adobriyan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=chdpkgdFv+442N0ldTbBnwxp/zwzbuPkTFDTv7dz4KM=;
        b=iKJAExLbJs2zcB1wBhD13gnjXZiMQggJxzzjEs/3i3TcuS13j98A5Tfw00R2Xb0OFS
         Ie+7LVgJ5rODG1CGq76/a4MTmlE8XI2eI13nQYwvV9AO4I4cuTUm4LTgQPzt2JuuXJPF
         aWvP+/gAGw1v/vp6mjaQ8xYHadjUfhF48jDkziUSIGBtkVPbGo2BcN5kStEiBZFQ48Fz
         0ZZcIQmQZPQ7Ij2NJVd3LygCXP94YergTguviqeyENbiAsGzEkCPbAbgG3C7zlCBdPml
         Z2wCkupIlzn27+brK81+iyDUWtzED+hw9/kV17dJtZR4msO6w64B0/lVM2fAHczgq316
         kC2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=chdpkgdFv+442N0ldTbBnwxp/zwzbuPkTFDTv7dz4KM=;
        b=ByYdnMkpODHpp/l9KoQBr+oJtB20qQc3j6WYJ8B6VLISVvCtvTeLODKO8fbUyLYvN0
         Prdf+EYFnPs9MwsZiOOjDN5u8uNqaGjBCH7SXqlUiYI10In9eugQDvE5bkbAZzrfniA3
         0EfRk/9HQrifcOnLbyn6r/iYxTz3pUvCrqlTj6oDWCgE2kAJapvUvjwSRjw595us8+RG
         YkmQ3Iott2vS1mD2vb2lIsRLa9SLHWr6L3HManqGrnpAqCk39Pqi1MBehPyz+9vYZXP7
         9lQ88bIIxp0jIEAHCl4mvmW39kQQsTdm0X2ibU+3EkgAi7JBXX4XETJq89CVK/lVwYr+
         mjFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=chdpkgdFv+442N0ldTbBnwxp/zwzbuPkTFDTv7dz4KM=;
        b=VEFuSNdzHfrziNJWlG66rvsjVYPorQrXAySknatXrBjVZaGFzCVj9+nipGQrw0wcZB
         RPQ5aS14X8JWuK3uyrr8K6sJ2++WISAqcLt6LXgBI/GTi+P4OTwbhRf1kGBHIPF1tM3+
         HVawa4dt+uzk+3kNVS7wB7rjhVYV/VK7C6qcNKiP93ei+lBonG9Equw1rTT3aEDblZXD
         Wql//x0RB3aWIFbkerWrEALOgkUEsd/4lz0KbfyghROaPV4DOTecqDoRZLvxZO4MWQKn
         aBZrMNa6dd551hU8r8M/rQQXhYZow0/fLXZAQs2mCcxFqAxxiyk28JnLUKJe5AJzhHQ/
         M3tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j5J7UDEn5DuE3Eg3KOFXnnuO3/2jn8Gjz3PATTCYGU58m/KTl
	dbdVu1wELDAv9Jv44qvmoPk=
X-Google-Smtp-Source: ABdhPJyNgPU0QNYThV8X2WRhYzjNdhwAfM87TnqyXGVRfXm0erpErXzftxcJEyWgBrCvIqmCSa2uCQ==
X-Received: by 2002:a05:651c:2ce:: with SMTP id f14mr8169693ljo.450.1626252163240;
        Wed, 14 Jul 2021 01:42:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls1155656lfh.1.gmail; Wed, 14 Jul
 2021 01:42:41 -0700 (PDT)
X-Received: by 2002:ac2:5fa2:: with SMTP id s2mr7033309lfe.48.1626252161752;
        Wed, 14 Jul 2021 01:42:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626252161; cv=none;
        d=google.com; s=arc-20160816;
        b=SS6Duvfg3f/E6UTdX/RpXxnBd0vDmsRLsIDsuXWi2WoWpRx+SGJYn1P3WFDvSoYDJY
         GuYJf30blxORwM25umyvAedkOm+ZN41H7LwEJBjh4eCiDQ0UnPr/sy3kR3qWYMyYgCSF
         PpUtX9szw3VF8+pP7J1//poVyqCvlDg/R87qCHhYiTCjzkfxXQEuJvWY86S7bHG8mn2X
         O+/3jC/JGmaTrKclv14eN0nKlXB8KLdTwSPrw8GySOu3TaxY7xS6U7kBqSwt75pCJ4Ar
         G9VWu30VX2pLzcpIC0LELmiCLkDiWHjzlcs/nnufcWKOwhKcPayEcgTR/qHbbvnz5D7N
         YKFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=eRRBdAbPowYjIItlTV4onJeeQmdz/xOO5no/2s3eeNI=;
        b=Fv8kAPgI0eywbDOSvLV1bybnGbtstHIqwN5rxz3/80fyOb++ZeQkr9GXM8kOPIMAqB
         NFXEvwYmIjmeG00JMmz0Mg3gCJnZoNjzf5m0LUTXx2xS94oUKth0lzj54vQFXMudCUyO
         fElufpyYo6mTsFCvTOJEKvszyQsM8pYr8xBtcWsU3r1wEFC6wcQflxVRWPePJqf9kMvR
         uiz8s2n4mnaPYJ/0t+UlRxOJqdz6O8idsG6ICD24Y7/rxCmOufD7cKjuKRzSMQDCywQJ
         0YEno9oghgRw54mj0BkZZo1TMkGgqru/r5JAT3gICK8ig+SnGxzPpZvFfVbzy/PEtQff
         1Z8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjAe5XbV;
       spf=pass (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=adobriyan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id j7si70167ljc.1.2021.07.14.01.42.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 01:42:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id v20so2047974eji.10
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 01:42:41 -0700 (PDT)
X-Received: by 2002:a17:907:a04e:: with SMTP id gz14mr11266940ejc.24.1626252150392;
        Wed, 14 Jul 2021 01:42:30 -0700 (PDT)
Received: from localhost.localdomain ([46.53.251.125])
        by smtp.gmail.com with ESMTPSA id g8sm628248edv.84.2021.07.14.01.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 01:42:29 -0700 (PDT)
Date: Wed, 14 Jul 2021 11:42:28 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Decouple build from userspace headers
Message-ID: <YO6jdIlu5xy35nix@localhost.localdomain>
References: <YO3txvw87MjKfdpq@localhost.localdomain>
 <CAK7LNATVysAEkcq86AD75njoXis67M4i+QVEfg5LawWzfC1h9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK7LNATVysAEkcq86AD75njoXis67M4i+QVEfg5LawWzfC1h9g@mail.gmail.com>
X-Original-Sender: adobriyan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cjAe5XbV;       spf=pass
 (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::62e
 as permitted sender) smtp.mailfrom=adobriyan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 14, 2021 at 01:54:59PM +0900, Masahiro Yamada wrote:
> On Wed, Jul 14, 2021 at 4:47 AM Alexey Dobriyan <adobriyan@gmail.com> wro=
te:
> >
> > In theory, userspace headers can be under incompatible license.
> >
> > Linux by virtue of being OS kernel is fully independent piece of code
> > and should not require anything from userspace.
>=20
> As far as I know,
> <stdarg.h> was the only exception,
> which was borrowed from the compiler.
>=20
>=20
> I like this as long as:
>   - license is clear (please add SPDX tag to the new header)
>   - it works for both gcc and clang (I guess the answer is yes)

It should. clang version is essentially the same
(with less prehistoric macrology).

> I think removing <stdbool.h> and <stddef.h> are non-controversial.
> Mayby, you can split it into 1/2.
>=20
>=20
>=20
>=20
> >
> > For this:
> >
> > * ship minimal <stdarg.h>
> >         2 types, 4 macros
> >
> > * delete "-isystem"
> >         This is what enables leakage.
> >
> > * fixup compilation where necessary.
> >
> > Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
> > ---
> >
> >  Makefile                                                              =
 |    2 +-
> >  arch/um/include/shared/irq_user.h                                     =
 |    1 -
> >  arch/um/os-Linux/signal.c                                             =
 |    2 +-
> >  crypto/aegis128-neon-inner.c                                          =
 |    2 --
> >  drivers/net/wwan/iosm/iosm_ipc_imem.h                                 =
 |    1 -
> >  drivers/pinctrl/aspeed/pinmux-aspeed.h                                =
 |    1 -
> >  drivers/staging/media/atomisp/pci/hive_isp_css_common/host/isp_local.h=
 |    2 --
> >  include/stdarg.h                                                      =
 |    9 +++++++++
> >  sound/aoa/codecs/onyx.h                                               =
 |    1 -
> >  sound/aoa/codecs/tas.c                                                =
 |    1 -
> >  10 files changed, 11 insertions(+), 11 deletions(-)
> >
>=20
> > new file mode 100644
> > --- /dev/null
> > +++ b/include/stdarg.h
> > @@ -0,0 +1,9 @@
>=20
>=20
> This is a new file, so please add the SPDX tag.
> What project did you copy the code from?
>=20
>   If gcc, is it GPL v3 (but not compatible for GPL v2) ?

It is GPL 2, brought to you by Debian! I'll add a link.

	http://archive.debian.org/debian/pool/main/g/gcc-4.2/

>   If clang, is it
>    SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
>=20
> Or, can we license this small portion of code
> as GPL v2?
>=20
>=20
>=20
> > +#ifndef _LINUX_STDARG_H
> > +#define _LINUX_STDARG_H
> > +typedef __builtin_va_list __gnuc_va_list;
>=20
> Where is __gnuc_va_list needed?
>=20
> BTW, once this is accepted, I'd like to
> change all <stdarg.h>  to <linux/stdarg.h>.

Yes. I've just realised <stdarg.h> is the wrong place:

  gcc -Wp,-MMD,scripts/selinux/genheaders/.genheaders.d -Wall -Wmissing-pro=
totypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=3Dgnu89     -I/ho=
me/ad/linux/linux-1/include/uapi -I/home/ad/linux/linux-1/include -I/home/a=
d/linux/linux-1/security/selinux/include  -I ./scripts/selinux/genheaders  =
 -o scripts/selinux/genheaders/genheaders /home/ad/linux/linux-1/scripts/se=
linux/genheaders/genheaders.c
In file included from /home/ad/linux/linux-1/scripts/selinux/genheaders/gen=
headers.c:6:
/usr/include/stdio.h:52:9: error: unknown type name =E2=80=98__gnuc_va_list=
=E2=80=99
   52 | typedef __gnuc_va_list va_list;

Or maybe <stdarg.h> is the right place by passing all those include
directories to userspace helpers is the wrong thing to do.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YO6jdIlu5xy35nix%40localhost.localdomain.
