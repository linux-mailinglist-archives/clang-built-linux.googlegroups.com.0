Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFVXY34QKGQEKBG6YNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F1E240DAE
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:10:15 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id d3sf2999486uav.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:10:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086614; cv=pass;
        d=google.com; s=arc-20160816;
        b=XzYw8PdrwnCwl27MUsBnFIQ6WPL+u7PFFbaoI515D+C4kTn+2ec/LTaWetQmtuMTIf
         X/B5RiC3Sm3qVR0JbLv3nEr04RH6sqLcBzjGsUSiYSlen1KvKfXFGf9U033Ay3h6x5TF
         LS1/FCyRj2SEaDP3VNR3OZaDdGD8d8R0xiUYIHPHGmyZhGL5DK7nFNzP+H4Bfrh3hwcU
         NYc9gErKam1bme5VicJMbIorUSj1kgd+azQkBQtmNAntm+9qkNCW49SdhgesHnQf6+2F
         mo6eNLkMZ4TgpAL5/tdnwCYyn92At8IiI7fBGKg6FW7DYmzjVCHdkuc6pq0AQYDFaq1o
         w4Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=1sdmkW6TK0yqED6re58i6gjRLAamgFqa3FVbFZcX3hc=;
        b=nt0De9XwRRgRyRNIoyTG8cRfcyo1MIW66mOz2uDh4Ns4HU1suXXbIHKMju0k9MOMwD
         +e4DGsc3tsaTv2QOL4gmltkEAbaxCNso4SULfvt/XcvX/dsel8trYwxqurpvF6ItTQLd
         VV8S9Ke3oLso8jRr504oaYGW/h7Q3mvZuGdBIaOKfZywZgOpZKUfK9+sIdawMgNJzQ4O
         LsFoy+urci0Qp4bWUyrTw1qgW+oH3qyYqUJOaWeRDfqKTzF8FccXi4ITvcBpED11iMt2
         64l5q4PJfXUuYA6w8h+JV7TUe3XFxq69q+U20cVab80JuvhB993dt8Lanw0zCyXgF1c2
         ZZ3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r8HPnnNW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1sdmkW6TK0yqED6re58i6gjRLAamgFqa3FVbFZcX3hc=;
        b=d/Uv7Lz/k5bfysinlPuQy/8s9OZIzBr500ub8MMo4yBa/4GWkQdA1w/a3QeFW9g3WE
         /M8dQVmAFjzfAIV3oCE8hFcGWef01NFh/tNos3Ze7KvLJcZl73gipDWwrmFtnlqwqCDa
         tmDLjwKW4X5w7qn+DQ+Cop9gjqj85DXPVZqxPVlWpk1rWrcuGLazjIgDsgOT69jNUeIK
         tJ+UlyUbw03J+nu4HK3TCBRRIINZ9wGgEvy65q9fvq2l40emYglBEaosAQDhQ/z15etl
         6GCQ8es/2Qo5ea1PCAMKTHKm9mU6MAZfgeOU70uzwoHiAcJEsGgjhescXZVlGUYMmYcb
         ROEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1sdmkW6TK0yqED6re58i6gjRLAamgFqa3FVbFZcX3hc=;
        b=cvrJhiZlU4tFsxCTWeKactZAaUz0h7DHhHNjnIdOHOM6+6Q7mAfyaW0y76IWnmznd1
         8XKway2GQ9lXM1cmPh+MLzE+GuQLsod/t5GLNd0BuUG4YWYo8j4Jue0y5xphHsIdpCMs
         13CPjye2W5OdhaYeU5oT7m8UUs+LXHV4S9OlUkAWX0BfI+6Pn4zRdclmsLga/0WTcH+4
         x4vDijGY7e9W3z6UhOe3xXNMy3yNE/xjQbRupUDd6UuoMCsYoagIwtMfydMHIn5S60q0
         zRSKTpoTOLqLvGtWxZc2WgxxaJ4JKZhKIcIPLIRIsMyuVdh541DAwfut1aFZe7TMx7bJ
         GDAQ==
X-Gm-Message-State: AOAM530Rx/6JntJIDdWu86dMOTOC5fIC2uKO7xZ2sh0IL7lj3yK4xo5A
	VG/4TeqaCo6eX0PC5zesc0Y=
X-Google-Smtp-Source: ABdhPJzRxRLaQr3/GQVv75a3acISO2r8cYNVnWm3aOkt35dFQpAyEdGLIeixNUaRF8npSaO6qbS6rg==
X-Received: by 2002:a67:b608:: with SMTP id d8mr20647154vsm.113.1597086614161;
        Mon, 10 Aug 2020 12:10:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3cc:: with SMTP id n12ls1632923vsq.8.gmail; Mon, 10
 Aug 2020 12:10:13 -0700 (PDT)
X-Received: by 2002:a05:6102:3025:: with SMTP id v5mr20527674vsa.194.1597086613683;
        Mon, 10 Aug 2020 12:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086613; cv=none;
        d=google.com; s=arc-20160816;
        b=nh+CakwDIHdYvoXftp2jGQpBv81z8x5ODh3S/VHLgJ4VtUdcPwNMpdzW8NP6cqq/ej
         c/ODrqZQ2LaaKqZr2wOIgmA18Itir5yhm+xbq7a+Sz612g+66Jg5d/cm40VnUGJpqgNQ
         AvLcpGcTxZMRCPyaq5Bd0wBFTumA7g4v1Zebo2oe2w5DVduk533tTJcjjcUFKvjuf0he
         hlavB6iK+nQO1vJtbj5Mj6H9LX3lNNYpWeOxSuZkJ175FrzsIftl6LgQHlyiu9+9I16A
         xLt/6NDUxXdMI4x0hfcGlIXO6v9U/EM13cso59bhbxtWAnhfklqthfbvndmv1SKCvRKg
         6lkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=hSd8Cnj+zLOdfZWxwlyNQGqAK7rOZ/4OoR1dKOODul0=;
        b=izycm7Ha1/1XmvLeMUCQYb/+poaVd00AHpjWC3HRXu6cXtrDbVaapscxkGvzNp+X9F
         i7+oUxMYLwd1LOb5ExUbXl5TTriog9Zw1fRd/q4oYIzYNlVUGWHMyCUmt04H0Nb4W0Ug
         UHwMtc9GHZ366qfjOk/DgEALDT1aqvsKF7YNdTHF/9+Cz5XLOX45wdyRen/rI/2MA74s
         W3H/Mn+Zs5AAj7xhAaHuO6WugKnECR85uY0pxehPGPD3XTArcp+a3GnI3pW00RTZf611
         f435RVY7PtX15SZ8/QefuvfM93kuIh0N8XDO403TtF1n70Adr1VI80+T91INZ5Wi7hc9
         r2BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r8HPnnNW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id t72si1109919vkd.5.2020.08.10.12.10.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id r11so6145459pfl.11
        for <clang-built-linux@googlegroups.com>; Mon, 10 Aug 2020 12:10:13 -0700 (PDT)
X-Received: by 2002:aa7:96e5:: with SMTP id i5mr2445969pfq.108.1597086612322;
 Mon, 10 Aug 2020 12:10:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmZfCrZCezJmvFYzprcQmqZ_uw5HX97UboO3tuGcjoOvg@mail.gmail.com>
In-Reply-To: <CAKwvOdmZfCrZCezJmvFYzprcQmqZ_uw5HX97UboO3tuGcjoOvg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 10 Aug 2020 12:10:00 -0700
Message-ID: <CAKwvOdmudP1QuDdvK4-W6rXNRKO-3W0Vqi3p7j5W98qx4qHaPg@mail.gmail.com>
Subject: Re: Plumbers sold out
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r8HPnnNW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

https://www.linuxplumbersconf.org/blog/2020/linux-plumbers-releasing-more-passes/

On Mon, Aug 10, 2020 at 10:34 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> https://www.linuxplumbersconf.org/blog/2020/linux-plumbers-currently-sold-out/
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmudP1QuDdvK4-W6rXNRKO-3W0Vqi3p7j5W98qx4qHaPg%40mail.gmail.com.
