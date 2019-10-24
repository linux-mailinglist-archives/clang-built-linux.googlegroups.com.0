Return-Path: <clang-built-linux+bncBDTI55WH24IRBY4FYTWQKGQEZ5QJDMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 86711E27D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 03:48:21 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id o17sf3933634ote.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 18:48:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571881700; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZoYvYQJ+d1qHlqWslqFqnmI3RrxF3f1cGhCBPthp6jRwTNg6LasdE8SOo7YXeZG+lL
         vLcyEEixsg2mLBUrEy9yv7ml0d3Glv7jiy5vzuYfBojZPWQvb34DjGWOIi6axSdtWqQv
         VWVNX5bLlSHy7ebEWtpSs4NPcn8MlML114XITMN68Bdgs8SEnMx6kQrwxVnUASD/jsXn
         ehEUF98ivERyAVfCjNd9VnFw3JCtqfdYjfEgqUr38wqHRFrsSiv3gcajWqIbPaNmVhvC
         6r700LFgOcKuXa6t7tZfuyu65f5xZq6yPF+E87XERViKIeUllD0KZRNyUbxCCHE2rdrB
         JZpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=SbU9gzDLcDw6fYfKuwLFGryxohZLD4DAVI12QEdvCTs=;
        b=bRm8IlYV8ng9YQO16438Ijdt7qvV/JSsgV8s0IGJoPJSyqujCZv3QoWWWyCye9902/
         PpHli6V/VtDgTzm8cwxEh5AVbZvfr/Za5XImL94+kSOzAVsmtPtpfJLR+bv9gSI06/ST
         giDOPPezf90INSn5JZm7sqU227aEZIgoBM75beY1WxV96xl19mXi6sN0XQBNUTUB5U/e
         p35H7Q6crsTgFlBuq6EHeZBXBYabodPVnN8k0R14e2fr1hUD8jDI4UjS396ZMP9WwO0M
         BWXikUYY1eUx1l0F7Tcy10I7R/awsq2RCSVW2aVW6CVCLzc5ISZIHJNcH7OOPo+CP44S
         K65Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ofNboEQU;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SbU9gzDLcDw6fYfKuwLFGryxohZLD4DAVI12QEdvCTs=;
        b=hjb02biCxbt3iwJ3U+dqcNBkzBtBk0nQ3RredJw5T03nvLDCJeHFsa2HcTjRhmNJN7
         KE87FLbJwUgRopYMcQxG+9QzsrYL1ddPZ9BN8wyLB4M2fuT+WwtDwALkfD2lo3F99pm2
         3kKtmOMOGqUunFr7QYE6+K1mcL5/GH5X003NUdJPrz1sqobfNxCq0pxBNPrLxEqH7QTm
         eMj96MfKraX11cq0A8fffXKPL36X6fp2qqWoKN891es5dAf0saJX843QibklsMlCkk3e
         RO1aaBlE6NNQK/8G5LupQiQdKi82dBA7or/kVGvKHOOtRUT16U0EcakVscvbN4nyWtyT
         EnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbU9gzDLcDw6fYfKuwLFGryxohZLD4DAVI12QEdvCTs=;
        b=ON4LHKvtp+FwMSU8W8i72xKrc3yP34iZtINgEII8+J17I7Xyc3MkAFAFmSeFYJJJ/T
         uCfZuA0gQHaynQoeNCJ7PUaEr3ut5NgvCd2s90IRHJXYR39q5CH3FpWES8rT7IamazTz
         3CLppvyZI0TFH6pi1RGIj+hvnOTYpbZ9PfIs2GzQjNwEqsT7RUOrpROgNL96OsoOW+HX
         di025RYGnQb7WumUAgfdJRs55pDEw+ewS6aWWMiZnX1X3T3/M4BgdVP5SeUc00g2+R0g
         RK7ba7dw2YCAK4Kw8abt7aucGYOCyiu+4fU6OvoaW8dP0ZdkNi3ldCjj6CcDseNXHllq
         XqRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIdu+qMBAke5AJaRjOiOMAQQzjf2IdV2d4725P1Gr6gqhtWwQ8
	00hVDQhqrk58R/qqwM8O1vI=
X-Google-Smtp-Source: APXvYqyb88gSGKykiXTZR6ZRVetjc7DBGH7rXIs4RoSXJs7ozYQxOq+AuzFqEbbPUUiBmSxJxZpoAA==
X-Received: by 2002:a05:6830:18e3:: with SMTP id d3mr9114538otf.168.1571881700099;
        Wed, 23 Oct 2019 18:48:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls1332682oig.8.gmail; Wed, 23
 Oct 2019 18:48:19 -0700 (PDT)
X-Received: by 2002:aca:2807:: with SMTP id 7mr2500935oix.99.1571881699592;
        Wed, 23 Oct 2019 18:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571881699; cv=none;
        d=google.com; s=arc-20160816;
        b=rem0LTLRaq17X9cRbxPdyxnWHVg7STLSsHEh71c6QhzPxPbnVkUTPhUpwiz36GiGeI
         Wv4sV1hEvdKnP9DymSpQHO3kIv+qSb9AJ8M57y1abmEKhMW/GQDVD4+n7MvUDrwcaG4j
         hT/pP8Wtof17LTBnoJsShD3b7TMTvtJfhqNUiFiHm+yfTvV+MlHtVchB0T3dLlP5/jPq
         uE+ne8nN3NIfCqInSkMHfDDKCXW2wcb55va3rtX0W8vbrF7P/yyLaMBRKkmQH13+rZDj
         gwWos3S1VSZTleQPzaMM7uWhtxpvEpVlEtUJAlbbWvkG6MnI4fOlVlvxbFxLy1rsMhYT
         b4zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Pg0PBlnvPGzMa1Lyb7SgzTssmkI1SxEtJ6FEB1T4F30=;
        b=WHFSJ6CwXn9OGxAhGDtKZuajYe+nHb+SsXXKS0uu0CtwWl82s/dJGn9hTJnxRN1/w5
         vvVFWDAAr2THTa7KMqxSqLZCxtXuvoYBwfo2Vz78gx8hSko9rvVgKPzAIloOpQJ7Clc4
         Z/c2AaJOcEj3+oYLAMPLyrPURsM36Yxc2mPgtDUIwU+m22SUcXpXdg7g5FdO+ECtUUIc
         nT92nQOfpLjZL178lIrfMjvW+oH1h40W02nz7dTKRFhtROcYa0sdsjjjbz/ONz0d3GFa
         WKUiaCIZ54xANDRg/3vZRyaKw5NSWVdo3pKGdXqohfBP9aLYrCcd0dJeyCx1MeeNWJ6s
         jZfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ofNboEQU;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id w205si1103547oib.2.2019.10.23.18.48.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 18:48:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id x9O1m38j014699
	for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 10:48:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x9O1m38j014699
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id c25so1371210uap.10
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 18:48:03 -0700 (PDT)
X-Received: by 2002:a9f:3e81:: with SMTP id x1mr7475449uai.121.1571881682588;
 Wed, 23 Oct 2019 18:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
In-Reply-To: <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 24 Oct 2019 10:47:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNATrz4fTp1RWHfwq36M4Xs1CdkoZtnoYfZ4ouNKow5F0RQ@mail.gmail.com>
Message-ID: <CAK7LNATrz4fTp1RWHfwq36M4Xs1CdkoZtnoYfZ4ouNKow5F0RQ@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
        Laura Abbott <labbott@redhat.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ofNboEQU;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Thu, Oct 24, 2019 at 1:59 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> > so that this can be filtered out, e.g.
> >
> > ifdef CONFIG_SHADOW_CALL_STACK
> > CFLAGS_SCS := -fsanitize=shadow-call-stack
> > KBUILD_CFLAGS += $(CFLAGS_SCS)
> > export CC_FLAGS_SCS
> > endif
> >
> > ... with removal being:
> >
> > CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> >
> > ... or:
> >
> > CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> >
> > That way you only need to define the flags once, so the enable and
> > disable falgs remain in sync by construction.
>
> CFLAGS_REMOVE appears to be only implemented for objects, which means
> there's no convenient way to filter out flags for everything in
> arch/arm64/kvm/hyp, for example. I could add a CFLAGS_REMOVE
> separately for each object file, or we could add something like
> ccflags-remove-y to complement ccflags-y, which should be relatively
> simple. Masahiro, do you have any suggestions?


I am fine with 'ccflags-remove-y'.

Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATrz4fTp1RWHfwq36M4Xs1CdkoZtnoYfZ4ouNKow5F0RQ%40mail.gmail.com.
