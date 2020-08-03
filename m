Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5V7UH4QKGQEVTK3TFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 6653B23ACB9
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 21:05:28 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id p6sf28230159plo.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 12:05:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596481527; cv=pass;
        d=google.com; s=arc-20160816;
        b=SiltsK2jtkG1Odmxkn2uazHVzRT3aKcawMheNGLXdR9TqCLxSrXejkyRseTQLvbpEk
         dqniEItD4e83TGb+/mvd8WMBc/ldR8aHCwmW7/I+DewXxYfkTj3G7RibYCqpdRrHDd32
         5L543LEgjHTkPsgWmwOo/TLr5e8gbI7Zq41BgfCsedGIhIEF9QCBeimaxEGyfgHJ3LBE
         e0PLyrpHA6z5ih5LufxeGWyhWzkyuiIhvzBM6xHiB5LsV3Uo3K2OiDKbr2Ay4icqXGz2
         Uo5Xo+hNrrewdZbbB8/vLMAR2CV2YW+5eYlKbmqcm7V69u1ghE7a9sTbJ/1ooRf2KO/1
         qw6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=byK1I2fFe32m8jnzrke2gsyAwTIKADu1ZBhxrHpb2pY=;
        b=smTrd9ujCPIYWQisbhGLIGxNQiK3PIuu6C0SHvAS/5VILY39eEACcj+l2ExweHAv81
         swTFmCxZ9LTf8OTTWS6rT6wp+Pei7+tp7mXr4LGGASLWEfrXrX4kIdqYmNbS3ZfqkOBa
         DAw0rtJ2HntObKHB/Z6dpBCfvZfIGKt8+hdhzQl477B274maVHm5AH8I4GvqH+I7PMnO
         S0ygDmD3OI55LfQ5FXr31r5LB9YM9mzNLU8mdkVxlYsbO0xKSguJxefII1U6etRgMVWR
         p8hGCjKYAPvhppaPRRFB77AicwZuNw46Rl9oN1IGdW6ffCa2dRLVuv0X/NMNXmdfhbPf
         d4hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iJLYGstW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=byK1I2fFe32m8jnzrke2gsyAwTIKADu1ZBhxrHpb2pY=;
        b=hXzd+Dn0WSJO21e686JGrbNT4R5tXLdnEMJ+jrYsoTG5qxZPrkTLpVKCeSzx/wpYr6
         535TI/d7BILO4M/8HdTrMEmqajYjG7Pl0oCmXvK+W5zMAPvY4skkHRjsrSzuUq2etSQ1
         GThh8/UtEm3PU2bNMINmmd46zTOQPZWiUx7T6D8KOPhk/QTQqB3gARbO0Pxd+qca0aXY
         cIeYLbETx3UP2vF8MNeyt/qkpi5ox2bDtzNS3UU7mMiFnqcJ82EieAyaYXVpjshDRoJe
         Vr6LWUpnPIZMStVCqwL6gOGoUMNL35TsjSklNLLqBpnRhvru/BcqaX9Qy8NpDRLV4hfB
         W2Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=byK1I2fFe32m8jnzrke2gsyAwTIKADu1ZBhxrHpb2pY=;
        b=R+8H3Ruy9QlwG5x9WVYFIMkPIk/tMDggYdlb/REoFPi+2I3WgdftogHCXalsGHyHNW
         N4VAObcL4Vm/r5g3mYaN0KN419RVmMH6v1thKekEYtF38NWZlwgDIZYgZgezCJMD1USZ
         42/e3d/KHYhO4QwVwdQ7hM490XXXyTz3IbLcx5Em3cRcuFXjVivM/Ae4zMXef/oWVffT
         dByPKmoYnoc4V/WeA0GhGxO+dL2PnagUy3vseeHl8QDtVhbWK0+SiwbuEv8JBC08Q9vB
         /nrN6hnQEUe4ZrwOfK6WWl3mClL0iWaZw7kTAvjAtv5B1Ly4uOHyhV/8TLj5rbmvOk7g
         PmOg==
X-Gm-Message-State: AOAM533Aesu3VfIFBXkgWwKbpU9bGfKFAJLNjRmR47QTVO29D3/qx3B9
	An4vXDdmNhbJ9uj8YrRF4HI=
X-Google-Smtp-Source: ABdhPJzSSbhNeUBbx+JJkx5pk2BUx321YMMdPrOJOG05w25oceSbXD6hcc6bYeu3F7p8U4WPO6jfFw==
X-Received: by 2002:a63:ce15:: with SMTP id y21mr16389869pgf.163.1596481527025;
        Mon, 03 Aug 2020 12:05:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ee14:: with SMTP id e20ls1549836pfi.2.gmail; Mon, 03 Aug
 2020 12:05:26 -0700 (PDT)
X-Received: by 2002:a63:6dc2:: with SMTP id i185mr14825292pgc.104.1596481526627;
        Mon, 03 Aug 2020 12:05:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596481526; cv=none;
        d=google.com; s=arc-20160816;
        b=vEgP17tUql4+c+JiAISVl8/dsZOn2/Z19HegWtKzpqd+0niuoZs6p4JvJVTGoRbSfh
         OGia2JWYyN+NKuOL1s/5IENLR4S2shfD2SIJiPtRWDmBnnx1RoQ46sufXDJoMidTaAQo
         dSseUWEOLDhzFjj0t/T99u2avd43MXpLx2AyDF7sqsfyKzlJSR96Hsw9AcS54M5/mq5B
         6t2Rs2ApvfYpnPklBaRq1X+4rsLw8acN3QK7+F0fNu7ILT0reYsSNywoy2jucSagxvC/
         RD5fF3+QDiUuXVcn/pNyKacREUlBweUZQI96YZnjGfcJZS09UMr2VGKYDOZ/EEY1RfXm
         IceQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Lx96crK8yR3QNZMXdWXnOuSX+WFvQQBYh0GZx039+bk=;
        b=XSWVT+hAdbKaJDISPdYJFjpYiovlxkOOrxUupN5k8KB7GPmPi65wuzZjZra19V5Eqq
         Cn+TCojGGrDFGp0Wqxl/kkn9Rs6eR1buV0Rm3yF4W+eY6/FelYr5jhPTkPzNrmAd8rF7
         Wu5Ww1feD3DW3ftyepvh823jHXbIFXIHC2AC+hAArST6OtMaosdRYpj9w2bPD5MUlBH3
         umHiYWc1r2c4Yx2AkgVctIoYrwDZrlI+WPXUyForqEBuJRJ3sBaA2HNd4IGfVDJVD/Tl
         XYSwjluyIERpzj+vYSGrBa9qB1B+8BHX/VqRNBO3zN9smiWa7LLsT85nmSInoXp6wdLc
         Lkug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iJLYGstW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id a24si940963pfk.6.2020.08.03.12.05.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 12:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id m8so11850186pfh.3
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 12:05:26 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr16536069pgh.263.1596481525906;
 Mon, 03 Aug 2020 12:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <202008031155.E07E37D@keescook>
In-Reply-To: <202008031155.E07E37D@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Aug 2020 12:05:14 -0700
Message-ID: <CAKwvOdmEJ_-xopxEDgb24692QcVCYi4cG-fOqnfLjmLwKL9TeQ@mail.gmail.com>
Subject: Fwd: [GIT PULL] var-init update for v5.9-rc1
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iJLYGstW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

---------- Forwarded message ---------
From: Kees Cook <keescook@chromium.org>
Date: Mon, Aug 3, 2020 at 11:57 AM
Subject: [GIT PULL] var-init update for v5.9-rc1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: <linux-kernel@vger.kernel.org>, Alexander Potapenko
<glider@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
Kees Cook <keescook@chromium.org>, Maciej =C5=BBenczykowski
<maze@google.com>, Nick Desaulniers <ndesaulniers@google.com>


Hi Linus,

Please pull this var-init update for v5.9-rc1. (This is the tree formerly
known as "mem-init", which you correctly pointed out was not a good
name.) This adds the "zero" init option from Clang, which is being used
widely in production builds of Android and Chrome OS (though it keeps the
"pattern" init, which is better for debug builds).

Thanks!

-Kees

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407=
:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git
tags/var-init-v5.9-rc1

for you to fetch changes up to f0fe00d4972a8cd4b98cc2c29758615e4d51cdfe:

  security: allow using Clang's zero initialization for stack
variables (2020-06-16 02:06:23 -0700)

----------------------------------------------------------------
Automatic variable initialization updates for v5.9-rc1

- Introduce CONFIG_INIT_STACK_ALL_ZERO (Alexander Potapenko)

----------------------------------------------------------------
glider@google.com (1):
      security: allow using Clang's zero initialization for stack variables

 Makefile                   | 13 +++++++++++--
 init/main.c                | 12 +++++++-----
 security/Kconfig.hardening | 29 +++++++++++++++++++++++++----
 3 files changed, 43 insertions(+), 11 deletions(-)

--
Kees Cook


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmEJ_-xopxEDgb24692QcVCYi4cG-fOqnfLjmLwKL9TeQ%40mai=
l.gmail.com.
