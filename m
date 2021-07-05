Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAGSRGDQMGQEIB4IKUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C31C3BB513
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 04:05:53 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id 61-20020aed21430000b029024e7e455d67sf9486033qtc.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 19:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625450752; cv=pass;
        d=google.com; s=arc-20160816;
        b=qoqzWoJRy4IkIJpd5G37+LZcuelO40I7yDpYBPd/stp5hrzBqIMMPOmJXRWaUMnDZ1
         EM0E47Ks9WTdMMprmlLmNGeggm6bg/R6Iua64yx/x91Y2xRvpFo16C3T4NNrv3lF+5UC
         mOgx8wnnYFa7jWO6Z2E6epPNXyro5bMjPs8MAhGjm2Zkij2MmEk9MNXqBPm5qnZkN/4I
         xFrlsn/+QAZntrk1onJQBT65R5YUCVTkaP+mWdlkQdlV3QSJi7K/6aMy1k0ALhXAaqvF
         Z6OqWpA3lokxXMn18IDp+MaCx4rzEYIVItdDo3aLkC6x0BjIdsNin2TSvwYzqXCy3d/d
         qR+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=txyX9zZkIPW6zkKmU9TwauLNuzTI7JCcwed/zRlKFdw=;
        b=0K5THfA1M1C6G5dxn1amY6I/L1g7SH8YuITw8zBCp0tQWV1zjhQJ/kxRUpeNGVKcJI
         nx4KOljiRHRWSjqkGCJIbCLgSDdDHl/y1h+SCjmxZI2kMNlLIhwjOxH54Ww0i6WAY1QU
         uLLvI+qbszkid0P2CqPWTSLMtitBgdWTovCetphXpc/MqXhrlY+3PkHgjnWZwWCWhLEg
         PumspvvCED6tPkT/OZEIvUdgYwxw6vkDZEMy3OcDTgkgG+hg3nHqg7TQGa9OvBz1Peos
         naZX4fMlEJycFYqDBs9AB7jAYHfXbnz/2+XxH7qR3vWnGNT3WZnc9lK1J6s2nPnGIkMY
         m8mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L7NQs2NB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=txyX9zZkIPW6zkKmU9TwauLNuzTI7JCcwed/zRlKFdw=;
        b=rnAGumY1DKZ9pc3wtpLNIJsy6vAgOHxooBP2EAcAKS79tPoKrS1TobmQgX2nG5soU9
         esbj5AwBo/GJeplJA+fViSkfL6LissMPNj32MSTiaDlnqUHaVtHGAwQYfxD6Y+LmL2hy
         Q7s/52mYU+0nRGVOvfk0176rOYamYev/amQAE0wUPwNmkZmatYlAGF7MNnZ8C8Gb3LRu
         V51r/3jbVjy71U0KmxYRHGpq3jRpyu6/rS79lJoHPK8mAvkjDC+H16b880R68nXVIOwk
         PrVvOJlNkRPDOSKiOZ7Q630H1Zy/ZtdqkQ6INS3c/Fh6JTtL8YzBxAcG1RszDWUUgPNp
         lcag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txyX9zZkIPW6zkKmU9TwauLNuzTI7JCcwed/zRlKFdw=;
        b=l/AL51W+2V9ASOe8UomlprYsg/t8To/eXguuJgAp45YYzNUJEQ7GnK03oQqOvsHaLz
         7nyueRtaYxtr+JtHw3jdAGVAU92ej8CD/wgL5TXda1ARebYkfEtCQstAvX4S3vxmwfSV
         EqKJ9u5EgceLlRf7/q+M1bWTkUOWU/2BRprMD55rd7KTkHci5IVc0FdjnBVfmjkJSVd/
         2cX9E+a0XooII3jYX9sf/uLxLO3BUb8RsX1b3jL0HuMYelAZFcbJYaYSEd66g54HgPhs
         gdUZb2l8+mtAoOvXEullXdgmFtrh0HRBXZN3QFCef2kNuNE+Hms6vb9dCfo7STzN/u6h
         ZjGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532POwLV2GejDpSMuYdHxtfGwzWRvNPriHdsPEtPZmc4vsaMv9Lg
	boDs5rNLMQ1bEybBMqdUTcQ=
X-Google-Smtp-Source: ABdhPJznLkOvFtdyUqJojJyiSkg2sCVB/DRd0xSGJ224QkTwz5ChA3jh5Gb72pw0qg+29yiz3BF3rg==
X-Received: by 2002:a37:6393:: with SMTP id x141mr12152246qkb.20.1625450752326;
        Sun, 04 Jul 2021 19:05:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1583:: with SMTP id d3ls10056017qkk.10.gmail; Sun,
 04 Jul 2021 19:05:51 -0700 (PDT)
X-Received: by 2002:a05:620a:31a6:: with SMTP id bi38mr9536102qkb.140.1625450751828;
        Sun, 04 Jul 2021 19:05:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625450751; cv=none;
        d=google.com; s=arc-20160816;
        b=M79lARRwzezXYn1CZ7++uuWf4KwMW5n19cBHtJ9I9NEDMff/3YxR3EIYjSuiTDaUA2
         ZdTdZzAG2M+WQoSOMxyDj8wX00kyZtt1UpcVlqjPTXmfKJUeTGIymUtf/auqyUhkXHBQ
         akpmLB2dhWd3EFQuVhACTlZ3rIq9lH7mY0Eh7gsVR1AtPOMS85VoY4knmBO0QE9nW9AL
         LuPj1qL4QIry2HLrIKcLXnlWZqxxEPNjxaR3dVtTdvRQQJ8igjJpt4/dWtf/9GeJ9bhH
         9UtPSXuRsQHB2r51ORvf4ZXeC7W4KFlc1upbex1jxqhHz8yaIHF7o/AY5T5DF3CSaEkd
         exZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=451ugBOIOf/0IdhMd6fN3sH6gq6e2woUEJhYewTR8bc=;
        b=itq9pc7M5NKNr+c+7XcyTgRup9B4MDXAuMDwFAbKfNprLmut/9fnk64PL47lA7LYcO
         wIz126zaMRI9HOEHtAMzY/Kcgz7D/jRVMCn14+vfJbUX9AgVf7hdQvLjsF/Kx4eBiCSf
         bIXPfejEypZ1VupKBxmmJ7mhAMLmQbqsU9Yf9NaYWHAUcwtMqhAxvCs4dzXjLQRnU0p2
         eLsS/v7FAzW++5e6ffxp8AcN3tfE2hPz/MHankwq9nTPcUOzfzdnAu5GG6ykAlLEt2/a
         qa3gIpKraJMNE0lSTFZ8FuiVbJgKJBIuSe8xCaX8eES3nNhWRal8l/7jqMywfYiFhMe/
         VqSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L7NQs2NB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id m6si1280908qkg.2.2021.07.04.19.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 19:05:51 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 16525V6J032705
	for <clang-built-linux@googlegroups.com>; Mon, 5 Jul 2021 11:05:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 16525V6J032705
X-Nifty-SrcIP: [209.85.210.171]
Received: by mail-pf1-f171.google.com with SMTP id b12so14303320pfv.6
        for <clang-built-linux@googlegroups.com>; Sun, 04 Jul 2021 19:05:31 -0700 (PDT)
X-Received: by 2002:a62:8309:0:b029:312:d19:ac8b with SMTP id
 h9-20020a6283090000b02903120d19ac8bmr12594417pfe.63.1625450730678; Sun, 04
 Jul 2021 19:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com> <20210702032943.7865-3-lecopzer.chen@mediatek.com>
In-Reply-To: <20210702032943.7865-3-lecopzer.chen@mediatek.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 5 Jul 2021 11:04:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR2vSaaCyY9UgjrC10HdbnK7NrtfR5mf1AUf5neEzPhZw@mail.gmail.com>
Message-ID: <CAK7LNAR2vSaaCyY9UgjrC10HdbnK7NrtfR5mf1AUf5neEzPhZw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Kbuild: lto: add make version checking
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Kees Cook <keescook@chromium.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        yj.chiang@mediatek.com, Michal Marek <michal.lkml@markovi.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=L7NQs2NB;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Jul 2, 2021 at 12:29 PM Lecopzer Chen
<lecopzer.chen@mediatek.com> wrote:
>
> LTO with MODVERSIONS will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
>
> Thus we need to check make version during selecting on LTO Kconfig.
> and the suitable version should be 4.2(40200) which released in 2016[2].
>
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> [2] https://ftp.gnu.org/gnu/make/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---

NACK for the same reason as 1/2.

We need to write correct code.
If we cannot, we need to add 'depends on BROKEN'.




>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 129df498a8e1..beee68149da8 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -639,6 +639,7 @@ config HAS_LTO_CLANG
>         def_bool y
>         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
>         depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
> +       depends on !MODVERSIONS || MAKE_VERSION >= 40200
>         depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>         depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
>         depends on ARCH_SUPPORTS_LTO_CLANG
> --
> 2.18.0
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR2vSaaCyY9UgjrC10HdbnK7NrtfR5mf1AUf5neEzPhZw%40mail.gmail.com.
