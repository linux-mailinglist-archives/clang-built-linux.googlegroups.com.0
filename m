Return-Path: <clang-built-linux+bncBCR5PSMFZYORBS6B2H6QKGQELOENKVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D102B7297
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 00:46:20 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id n10sf152646plk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 15:46:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605656779; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bi0RktE+gvShmyrvqLNDnjDIgaz71byA2CN1C0SgJzJtkIrl4SiYITpPKnWyWJrrdv
         VPA3E4p1MKFJYCh8A4Hpb/9mDVG27xHHdhQhYQQkEXLnlR0Q/ZV0H9R7BPjq+E/BQJGc
         5YiKXWTZDNCyunkv6ZRKVevBYh3jJwkTk3lPRpBj+8RpLrgJ2RWjjWic5uCq6Efy5BY2
         bc6NA3rJxP98uXFv5YCSFEFyYWgrHBlS4HVB38iYSWVg92bqZRpJVuqvFy90V+duNiAb
         fKX57NcbprLyYU8pVSec/mjr2tqQgdhKuZUnFIjLnBpA2FRBJG97j9SHq/BRFbtFqeh/
         huDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=NIBFtcD0/D49FOyCcAIEm9DfmkIsazJ+3CwlI1K9ZJg=;
        b=jA78aScKQPo2LN/9E9cdZlo9YoWr+bwiqtwZsXSI22RX1AJOaynp4CmUnQTlvK+5Ri
         pX/a4KNHY/bQ5GFaNlBNFE8VSd+Gns2BSfDYx4hlKkqEDIjx4WyU3cPWsoRElVh/cGwa
         YD8btIp3hetM4/UBtJzuX/wKi4wokekBhtIHMUZqesWiXT5jRksfHYthrDftb+bg7Qp0
         W+ZEoNB+dyLsZFYizhFbSk9ATQu5U36693sC5E5UXeVa+wDl3hsiZNmPDSU1sfaq/48n
         x75OjlAWNBn81Gb8Y2BmyfrKrAUgWEFJa2EQrW0jCogxQ0fUs22TuUNfQgQFjUYTuYMv
         y3JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=MN7PA4Dc;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NIBFtcD0/D49FOyCcAIEm9DfmkIsazJ+3CwlI1K9ZJg=;
        b=IGvVKi5c5SA0MgnaDP2zaqxq/LA4DJErDF6Z1zCI1hMoKQxh22FAvj38abAi/H0cLo
         soF6IFcbnhBeVFKQYuORJng0OXOSUfMKuXhzKS/YV7HIsof3/E2TTx/Z06Gtp3hlq6oF
         0F3Jp6C9pSZn1ENlC2/3uGFd4kkLIx4fW55gMEKHxhzyP1F1IUmC5gv3uUAjD7X9Bt9T
         c0Q0Ii/BfgxX133RuFgIkG3dDHeEAefFsaXLixT90kZEogz7HomeVbCYE1DMuyH+kuhr
         YSgpaxgVXz0rMInpd9iDb4DTBXIZR+7NxNVvF3CEAr2Fe1EohcfNBLdzEFq8MMZGUdCU
         3dSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NIBFtcD0/D49FOyCcAIEm9DfmkIsazJ+3CwlI1K9ZJg=;
        b=QWoRPoKU1Y/ZVqDCKetruCOUydEav6kXBOqlMCnsGbwn1EcSjxr+xoGps1gssfirYV
         hjSaMo+IPZqi2/Jdg7KwVyb6a/oUCOE1xeon6fQQOe6fjxLB8XNNN4kbgMp9osAMYOKX
         qputlhsqwvFgsznWlu7SoG6AGQyzPVgLj+VJTyaiDVljK8q1D7D5tOZgnTAgUrEPAZBo
         BRqhpzcozrEXbFJGl8fkwx1Zhz9pqMj5Ai6/mYF5grU8DNkuldFWSUg7QflTsPw0UepP
         d+qX5ZEAU1fcdqyMQ5BKHYtjAHjYPiODswEsoUmL+RP8M/To9MO8UNRhplKpHhs3j9nk
         uUdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QNB9WbINSZmvBNBaMccy0t/HWzZbWIxly3V/RxQC94GTNsKm8
	4hE6XlVXElh3Spj6IlKk5FA=
X-Google-Smtp-Source: ABdhPJyCQRn6sGnRy6dqGTQjIbtj5RsrFVXBzqz9SfrOmalhOM73B4+rl7WhXeyrtm9/Q2RfmXDZrw==
X-Received: by 2002:a17:902:9a48:b029:d6:e0ba:f301 with SMTP id x8-20020a1709029a48b02900d6e0baf301mr1841276plv.30.1605656779487;
        Tue, 17 Nov 2020 15:46:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls2577449pld.4.gmail; Tue, 17
 Nov 2020 15:46:19 -0800 (PST)
X-Received: by 2002:a17:90b:2204:: with SMTP id kw4mr1389968pjb.153.1605656778944;
        Tue, 17 Nov 2020 15:46:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605656778; cv=none;
        d=google.com; s=arc-20160816;
        b=CdMYiE0wKaRFr+NfiFahr/ZSOEZP/0f+iZT0KizyCxFU/vxJ4t1p1Ih1jhRu7jNvDE
         2rW5UaTYfMITe/zVRZM+R8EpKBVHZMzuAlcF4+aQesajRsvWYQTcMAhZwuXl4sM55iTJ
         lMyjaUZywhxndEaEGjQ3eHQ14F03MeY75gG40n/vosYbm10JxEjXf9BJ2HKMiLGmYlto
         ck56+aizIWllxrWgGbZrpEB0RImqzxlOkGH/QLoPpn/3QlEtT4jPl/b1sB4TqiDrq5aL
         GKraGSCup9jo8IZclRCtc2kj8gubjVXQ2CbDUjfkzuwS4oUu/qn9GyTIswwqYHRyxPKo
         NGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=lwU8gSi8jzTYeqB60sg2pOMHTpzT4xVd4aTnq0hi250=;
        b=p2zW4j3y1bE/s4yiYtQ4wzqfqONPeZv20t+gV0pVDtIwNXQd4UulfX4t6jGg8dvLcE
         YOK6LB7Ir2KKrzihcyzsOdqp8XSbij+3aSjggCH+uvVCVxc25rmYwlXHvwzIorYcPPFJ
         Kd6Fdo8c2uH5tZPYR1iRgv0CMwQvFCvCUSik2Qj73zL34laqwD1x5N5k8fMK+to6TH+q
         7IQltYaMaPHXUGfITwiaQ4dKIFfZeP1Bbp+OEX+zOp/IDBnONp5SVc4glRm8AZkTmeda
         RI26EMNV/fkthCfbcyySDXxFRD0MdzXyvGeGaOnoGbIFoNj4whaY0zJavxxRPbefb5Gg
         f+1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=MN7PA4Dc;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id x6si1115753plv.3.2020.11.17.15.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 15:46:18 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4CbMyr6430z9sSn;
	Wed, 18 Nov 2020 10:46:12 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 1/3] powerpc: boot: include compiler_attributes.h
In-Reply-To: <20201116043532.4032932-2-ndesaulniers@google.com>
References: <20201116043532.4032932-1-ndesaulniers@google.com> <20201116043532.4032932-2-ndesaulniers@google.com>
Date: Wed, 18 Nov 2020 10:46:06 +1100
Message-ID: <87o8jv35tt.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=MN7PA4Dc;       spf=pass
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
> The kernel uses `-include` to include include/linux/compiler_types.h
> into all translation units (see scripts/Makefile.lib), which #includes
> compiler_attributes.h.
>
> arch/powerpc/boot/ uses different compiler flags from the rest of the
> kernel. As such, it doesn't contain the definitions from these headers,
> and redefines a few that it needs.
>
> For the purpose of enabling -Wimplicit-fallthrough for ppc, include
> compiler_types.h via `-include`.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> We could just `#include "include/linux/compiler_types.h"` in the few .c
> sources used from lib/ (there are proper header guards in
> compiler_types.h).
>
> It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
> -include compiler_types.h like the main kernel does, though testing that
> produces a whole sea of warnings to cleanup. This approach is minimally
> invasive.
>
>  arch/powerpc/boot/Makefile     | 1 +
>  arch/powerpc/boot/decompress.c | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87o8jv35tt.fsf%40mpe.ellerman.id.au.
