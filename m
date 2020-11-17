Return-Path: <clang-built-linux+bncBCR5PSMFZYORBX6B2H6QKGQEI6U23EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC0D2B7298
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 00:46:41 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id p3sf120228pjk.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 15:46:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605656799; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/iK0k3W/90xw4Ua+D5uUZfpUUt8qbm+ltqaoirLa7NpFGTUwXapXPDrNu6jHHm2GV
         kkdq7zkZBup8ebeuW/I2G/b9fVbvKsTQrWN6obGyd7bUdLFz5OvfWrTdo4CSH/BcZ+bX
         9zqy2budOPXJ1LG+QhM4ep1oEmhkgEdoCVGOAnDXaUWFhFuPZqSZ2Krd/hCVfPReYDz8
         huWPNYgbKE4LrZPHgFrJB5/r10VHtDvR1sIdiprzZAhvlH0IpTqKP4B6e7W9gTvqaxzB
         igxhbvrHXSWEf0XupLYuQXpQqAxVl0/3BPV2yehrerAc6BmNqECvrsQPbDjVDV1UgIU5
         YByA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=4yFqXAaAnlf/0QIlqsaIPG4abfqgQAk4cO1kpVgDnDk=;
        b=crUCoFh6y8LxN7x/iwHY4ddcQIMcwpqJ/74GD3L2jgAy83hbuqFpH0cuOw1OxsZJd4
         5URXF1PoZYGvSLWJB9sdW9Kivp/+M2Z2/v1BQgWzdLwa4VCDWEoML+B2xdBCyVrbXBwh
         sTPp+K5TUOtphBfPiF0l3xjc0AcGzjuu+zZPb1HHxzTictcGCV9t6G1mEp2dl42d7DJ/
         DJ9xHLKnQ2+mmSvLs7r7eW24ouGWycVtkrHcDdinMQ+wy6BPGM46U5o+XDqMHmTxhWql
         mbQtTd2VcuW20wCHKjBFoyNIThgdKBJt7/aplzWOhpBOglWEwJsGHeDok3t+BVZq6ZAF
         bMCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=r9lvxBwK;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4yFqXAaAnlf/0QIlqsaIPG4abfqgQAk4cO1kpVgDnDk=;
        b=Tl+6yR8weYL7XUPtHikMEiWmSsERvrXQ9gElf4w8SgyX7+AlpOX0pcnvqYo71yUn3S
         50XwlMpYgNLHGCTp3QNOtgwKfMg6rlQeVgkb9UrqiEPNrlQ8ed++gpWbckewUVqurnfS
         qqxBAlMtCAm6ADSFi+OVxqNO1YfLd3BawpjWxGdaxF2Edb/XtyjU/l7G7JHqeS5E6wvB
         HDi2VeaxOlRBq0YQP0UZliFVDU6fFRDKgdZ2d0y47auo7HM4rkz7HX5FvtCDJ4cS7UhS
         BL1YJ4FwXd1ftKh8H8KsU8c/xL0sMRzmytCXDQKNzDTTjDCqyyIANl0mh1yV4Jh49nX8
         NaOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4yFqXAaAnlf/0QIlqsaIPG4abfqgQAk4cO1kpVgDnDk=;
        b=Pr3OZaWIDA96Q5Ay3zCvbquuk5sJq73ZDu5k3XOTcGb2VDrIcygEZq3IHm6P6HLmOT
         pFj5rLR4t58M6+uhpC8WP8YkmTP0Cp/G9HG0Zzv0Z68lTGmts9J/EYUFo9PR7ZzePSOA
         kIbLQ2gvsRZyxsZY4kBkHDO5e9Kkpf3NetsbT88w6vL4HQS//IvgCuOOdoQiNAl9uSoY
         sdtPsHavYOKJ4I6yyu2/6HK8UiqdwfZrlrrraRVFonSIGZo0/o0VSsGhq+5FxPXyBsAH
         L7OxPXfBKQuHzT/wZ7nPuZEiijy1EyXS+2cBzrv1s1dZrwaQr1yJLrP6e1Mas/69d/vy
         9AjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QQfuHIfNE+fXdkyU7DPm1mAjpVjbOpWmzXmH8hS+5LJnVgZ7y
	iEXeWsjnLRUUFSqbeTR/0No=
X-Google-Smtp-Source: ABdhPJxR+JQ+U9O4v+YYfiG4TEZaOZm20PaOJcwnKHjbmF23T4v8ntjf+fsndtiB0b3FLjcN/I1PsQ==
X-Received: by 2002:a17:902:a9c9:b029:d6:2d8f:f7b4 with SMTP id b9-20020a170902a9c9b02900d62d8ff7b4mr1898232plr.2.1605656799793;
        Tue, 17 Nov 2020 15:46:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls2379786pjs.3.canary-gmail;
 Tue, 17 Nov 2020 15:46:39 -0800 (PST)
X-Received: by 2002:a17:90a:4281:: with SMTP id p1mr1450484pjg.87.1605656799001;
        Tue, 17 Nov 2020 15:46:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605656798; cv=none;
        d=google.com; s=arc-20160816;
        b=LxwCPnWpUWAFWhpRhOUTMnoTPuq6KYHn/DCNQ4SxGymr1Sd1nJjmgsvGJ3YGIsACTD
         SD+UnlNXjxPynZscWMC4jGo/4/MxItsMcqdL0bwjcVI0sjCf4Fhq8FnPYiZO0bumP6Id
         anW4pdJn+grCaBwmZCvAml3tATAelVjNCzbl+y6uJFyJqYRLlIR9OzhFoZiRYBsk8v5X
         UT4xOkQ1+FNCzfzXIHV2O6n4O7AVMY8l1X3MbX+HEPCPuplWnEOwA+oIkuPKnYDiUQ0W
         I06DBobAKJ0zN4JOaHcWhlw7rTL4Cd7qfjttD/iTET8ov0qEqbss3wwwOOWJHGbLjnVG
         vl/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=QGjtLHqanElR1sBICqxYoayfxnnP8lCn3ITPlF3Vj54=;
        b=ZOfMnXTowpPdUxwsXY5+OtumtaVr+Y4D7wdIFnpwm4YZePHHkJvbLjlnjoJ5aRj3Jr
         kmLiVIr2W9q1Ps3Uop3TLTO/FqMFLq4ZWxtF7ogMDA2F9rwS7H8azJDoVx/lV5kjMcEw
         dDcKgXVOSAgRskEylDkhYTo4DQ+QowosYFXutEAzWa04iuvExutFGa0+DfiaILdPSyEN
         t7eq6YS+y4oBg4Cc3pfOb1ozdrEVJ2ZqpEO7kWmAuaXdYGFZcoLSX51IX5bu9Wh8zi5o
         ANDBb19t6sTvVzLzO+Eh+V5p4xuOKDVnEEjUiC94gtb07PNLsUfRHm08zoFQSLSJ+uQ7
         hAuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=r9lvxBwK;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id iq1si16303pjb.2.2020.11.17.15.46.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 15:46:38 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4CbMzF2x60z9sPB;
	Wed, 18 Nov 2020 10:46:33 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 3/3] powerpc: fix -Wimplicit-fallthrough
In-Reply-To: <20201116043532.4032932-4-ndesaulniers@google.com>
References: <20201116043532.4032932-1-ndesaulniers@google.com> <20201116043532.4032932-4-ndesaulniers@google.com>
Date: Wed, 18 Nov 2020 10:46:32 +1100
Message-ID: <87lfez35t3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=r9lvxBwK;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> The "fallthrough" pseudo-keyword was added as a portable way to denote
> intentional fallthrough. Clang will still warn on cases where there is a
> fallthrough to an immediate break. Add explicit breaks for those cases.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/powerpc/kernel/prom_init.c | 1 +
>  arch/powerpc/kernel/uprobes.c   | 1 +
>  arch/powerpc/perf/imc-pmu.c     | 1 +
>  3 files changed, 3 insertions(+)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lfez35t3.fsf%40mpe.ellerman.id.au.
