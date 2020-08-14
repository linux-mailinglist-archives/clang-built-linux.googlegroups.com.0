Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4F53P4QKGQEIO6XL4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB48244E9E
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 20:58:57 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id l63sf4524361oib.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 11:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597431537; cv=pass;
        d=google.com; s=arc-20160816;
        b=T3RWEGvKtNyjNrtE8d53d+mU1E5qC8psAsjy4U+jEBTroVCOnjzE4y4+ttTLXPbbgM
         406BNR2CT+Y2PGBQSO2SE+NnV6uoZinI+gfJOV9vcPJp+dmYjNhIo2jlQwk9J1+NfcN2
         GHIaMODA1ZtFK8y356SgBvXak8mathCGCHMERCUvPMsoa+b5C96NpwRW/z39hzQ7Ftb0
         Bf3lSyoAh8/Bzc0VH5mJy45x0c9R5SZXnUzMyKkvPnoKfmB0GY6FjNxifIDSh/ez8AoB
         JK4+nzjFKyqZi0YFbVKFXmr5aVm4qUnh1bwl30792jSydkPJh2vneuIe32awur6YUe74
         UYlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UNZFgwMQsEMoMQFCK755/U7vrQLg9mXyLpLINWtVV2c=;
        b=0ivFbvan08OpCB9T6OIkq/YX02krAmEXVaZWuAlguRk8vVxTzKf1FxGzEuzX0mGMa/
         0DWa/DwN9K2cWtTUdXrHHo/oV6l8HYSwYcX7jRegmntXoWlzKdcmeQdPOBQS8Vm9fdNa
         WX2O1YSf3kVuzFyXa3gzZYugrInMesw5iOlh2E6V43fmD8bf+w8uo1o2RvSxAMUaZeQm
         9XpUE3ssjNTI199+ZEzmJrtKj720+xPr2sIO7cxbRmXqYltg6+Rk8Vv0iiCgo+sUDGgr
         NV3oy+5modaDoW28P5oeYf65HYCJQ9a0LqlQCKFHaqCXKAC+NMIPMsCP3sGDGz3nduVi
         9wxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=myEJhQQy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNZFgwMQsEMoMQFCK755/U7vrQLg9mXyLpLINWtVV2c=;
        b=d60WBfSuKiq7HJeZm2yrKc+y5mMTBK2I3kwgnFGYFhjNuACgiQ+Qxo/plLLsr79Oio
         Ag1LPufaefE+GCWVpw67ByKiXslB/4fSpRCyzZlwmd75Y7eAgQ+D41mV3Zd2rvze3l1V
         5zPcj2vrdLZFsxQU4l1l/smqPE6PwOfJ9RA90ulerEbgAp+ODvKBtYXrnSLNmCO9IT2i
         SF9C+8bzNflOyO+dKqtxRWoCgTp347vjTYlriRAAm0a9/PVwZpG4U0NSMRTB8BzslvCc
         9kqvF8FA4CLxjSvoMW0XFD4Q6HnFHI9e4RuWygAy2RY/LZxa2hAx7zGvOmtqQfiEJ0hf
         aomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNZFgwMQsEMoMQFCK755/U7vrQLg9mXyLpLINWtVV2c=;
        b=E2nD5DR/kLbgA18pcCgegjtWNv71yWd8GkXegSyrBW9YraKy65i5Dt6Cfq3De4wWuG
         biYAFStVvVAx/Mj01cYO3DtNYNLCOUiXvnfeTqd2MvMQ7zDDPGGRAzone9QQfs/gZW/K
         /EunZWU2lOCRmdhxMh8sP/0/oLYCjHLlsF7fnCon12B8uUZE9Wp8GLpFxAPI76IcqUdo
         Nkw/RoEB8XI+AGAwvr2FxzdZFWztvVcm4QA5IJAFuX6Y5OPGH0v0YFgW471yPFWYQimg
         05Dp4kPfTRIEDu2A6CTAa7nItjfNLbLFvG6OS7P0xHCP2w64dpZTaRgFN+eG0ELsMnY6
         vloQ==
X-Gm-Message-State: AOAM532QtzzJcSH0RgewRqNmcy5f5VIM1FJMSW+Lb1fGABrMf8jQcIhc
	w72Zo42vO7PHvuOojDO5pQU=
X-Google-Smtp-Source: ABdhPJyFLJ39W2sMJpVOrg45jDu3J8QuQAqB1bE2gLI8WlOJ7HNqLWGZgMvg+2qEneizZUNTxOdUPQ==
X-Received: by 2002:aca:4345:: with SMTP id q66mr2305653oia.151.1597431536845;
        Fri, 14 Aug 2020 11:58:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:546:: with SMTP id i6ls2069649oig.10.gmail; Fri, 14
 Aug 2020 11:58:56 -0700 (PDT)
X-Received: by 2002:a54:4196:: with SMTP id 22mr2493417oiy.23.1597431536522;
        Fri, 14 Aug 2020 11:58:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597431536; cv=none;
        d=google.com; s=arc-20160816;
        b=tjcLmkJ8a/bSDFmC0ph5e+cRUqqCr5oP0K2mS67mNG7Ny9VaXWsM2mAuJRcjIjHFJC
         RdmTcuv4ysaG1Evf1RCwpHdeifi7egJyO0CcWlNiwaFQLharGS+SE9uD9Ed5AXPSYa2f
         zCVUeO9N1fVUGwXFra+YiqyIP5P0nFFM8ophMn6FBodv2NRfruQAIo8mYVnHogd5zmeg
         cGhLOLeQh7YcgwaCDj/WSg3QadfHTSiQ7q7cj2hQobZmk/YjyariLoAC9WdptCbdWyqM
         /UnLyuUTXUFiT1/Vml2VwTfTriB5J5rbZXLv7rzCMtVab9RU4BEdRcr0q/vR7Yz0RTyR
         V+yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fT3n9zcx7O5x16iEfbvByyRxs/ywGGbgT4b/IYFI01U=;
        b=DdPxcGJZBZNduTKG6iuFJmV8jSuqnlrs1+WWje/svXsENpY3yig3dHO09Tcvs6/gEJ
         D19hSnxOvY5QAwLycrks/AbYDYfjVdMGLw7XMJCXiFXSRKKki1niLIf05u9tvVgfJwIR
         UARl3TkuUbC83WOvj/pXEnogmO9gyYj9rXQ49t4soIZISeMVVtxYm5Bi1/bTGTJl8bqL
         H1RRR3D4pRJLYivaLK9PGCpnx1lueXH8FH/BCVtS1iSZSguQ6CuNIEdD0pLjUNzk6f1w
         oZmhRAqzAqXJKSZAlZEFtrMMS1RmSpTCY0UdvIgnFFKeWU5GUQuuyLHGVCAToxMkdshV
         Krfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=myEJhQQy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id c5si175524ots.0.2020.08.14.11.58.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 11:58:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id v5so2424717plo.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 11:58:56 -0700 (PDT)
X-Received: by 2002:a17:902:7c8b:: with SMTP id y11mr2871782pll.119.1597431535584;
 Fri, 14 Aug 2020 11:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200814183935.GA23956@paulmck-ThinkPad-P72>
In-Reply-To: <20200814183935.GA23956@paulmck-ThinkPad-P72>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Aug 2020 11:58:43 -0700
Message-ID: <CAKwvOd=UFqz5XGc86xUbvqyCtLLSC8T77uY0kFqFC+tyAcu4zw@mail.gmail.com>
Subject: Re: Plumbers BoF submission notification
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: contact@linuxplumbersconf.org, Behan Webster <behanw@converseincode.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=myEJhQQy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
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

On Fri, Aug 14, 2020 at 11:39 AM Paul E. McKenney <paulmck@kernel.org> wrote:
>
> Hello Nick,
>
> On behalf of the Linux Plumbers Program Committee, I am pleased to
> inform you that your submission entitled "LLVM BOF" has been accepted
> as a bird-of-a-feather (BoF) session in the Linux Plumbers Conference!
>
> Congratulations, and we look forward to seeing you virtually in late
> August!

Great to hear, thanks Paul!

>
> Sincerely,
>
>
> Paul E. McKenney, Linux Plumbers Conference Program Committee Chair
>
> http://www.linuxplumbersconf.org/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DUFqz5XGc86xUbvqyCtLLSC8T77uY0kFqFC%2BtyAcu4zw%40mail.gmail.com.
