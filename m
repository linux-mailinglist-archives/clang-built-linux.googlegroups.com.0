Return-Path: <clang-built-linux+bncBC2ORX645YPRBE6HRP4QKGQETR7JNDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4045323351C
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 17:13:24 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id z10sf2313528wmi.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 08:13:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596122004; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5mPfo3Z8RX3iQlI+ySxldYL58uZ7x2MaiLifYixUO6BhEuKrWRYWkoTjL49DaYTHl
         DQXUUktgux5aVZVHo93g3+w3eh4gEFVVFM3AxaBMg53Pp/SY81yl4Cun51slYVbyom4x
         VtzIlmwQtX0Od+3ah0vovauCz3GTlXQsubn2p0wjEY5vtLjlVH3HwwKYATe+/ctFYRR9
         Ouvlcg8JLertbAYpyn7H6jXKPLkye74tBCUjnkyh0dmUqcKKBUhWmy5+bEX9c4WzYasE
         2A3BLBW1PWCExC9bnBXX/iTNM9kRrl5btvs42VJPkJ2+08CxQdfxZX4pPOo/pIXurH2s
         M53Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qB6PTZ2p8K66M/yssEZWzXCoc1x2itqsnRcVFrMf7Gs=;
        b=bIthydsTIh/18+4CZbD8xAF1orIcjnufiTvYbLYer4ILVX2altY04zZa6/nmXmHx3l
         sLyzE41Stptl/6jBA4SFRvz9vFupgfXYP+zOzBDNHu8JL91vumbv08fvksMUgwp2sYpa
         hTu5l1h3VgAb24OcP9E3ubBjiF6/GmrFHrERUjstOIsV/57V2JfCoLwpNVJZw0M0o+25
         /hDLMCuc9CRlWk1jdST+YgDGvd0O41vRmpqrQtsfKsQ0nvUGdhV6s47YAty1VaI6mxbt
         nax0OsbIml6+KTCuOuJzSRBo49gvXvJdbkoxYiW1ZDC2hbx/UUbFxvKVOkhNgi0x/4nq
         a2Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=McJOS71U;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qB6PTZ2p8K66M/yssEZWzXCoc1x2itqsnRcVFrMf7Gs=;
        b=bEOE5YqI+8bY9WaawLZvZlljiSmmC5Vl4PTehEtQrhKBjeTlf9+d6YYyhxkZjtNAF+
         OvbOM9TkN4jM3b24B4fZRXKjup+il05x6Uq2+MkgixAx/Z0fKvwA6s82px0tPMtmdcaY
         gDbuVk7bU3/NUqPUkWllTqLreJ1gPmrDkvAwuOA+Geg6qRIH36Ov/AyfNVbqR4X3u+S9
         H+eVngWk7Ox0KEsIItnD5JbQjuOk6LVSXP9Hk5A8Lrchm2R31BJYSJmQMPBJSQ7adtmv
         s7RLuA1rr9Z7mC3AUIRBdJtU7saLjQG8wLtOXtY1aLH30ggUXLPBO6AIPXRH4oeofNuu
         3CVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qB6PTZ2p8K66M/yssEZWzXCoc1x2itqsnRcVFrMf7Gs=;
        b=MFCeZzhI4P7Veiuz+tfXIMdVRovpH4C4dhpJ0UQuCqllDVRTtqmEgEBlMkPcnLZ5IO
         5vRP58fV/JVTXGfC8CtXBtsNtF5YI9ew9FlZArUVid9Z1aT10Wv53i7fCKP8pgTNWVm+
         peDZ4/NeEke3Qd6BrouKVeMAZMidNZN/cXyFziGoEVVEri7/qTeWZILzhJ01/j2OY+3o
         ccd8uznWh2xXRH7bkeGx8/DlHthxXq88Pqwl1fq0ZPsWLzBwFPeTi0xO7GW6ixKkiMPS
         dyHLWFduAkfx5M1R/OAX35pTsnNQR4eCPfMNkQq12SNVDJROcljfXRh6OnolLsMzMx1m
         s0+Q==
X-Gm-Message-State: AOAM531kBaCHWV8hQwwfuk3iD7J3OuVSAo46hK2GtH0GUXPW1rS3+IxO
	WWJWj8Zd1gwztP+iPOKypWg=
X-Google-Smtp-Source: ABdhPJybXQh0WFFraimyyOscfz1MV17oD0HgOIgTqMW/TrRWy1dp+RGkQPeBnCY09fnTkveHdJUNxA==
X-Received: by 2002:a1c:7511:: with SMTP id o17mr14667192wmc.49.1596122004003;
        Thu, 30 Jul 2020 08:13:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls842346wra.2.gmail; Thu, 30 Jul
 2020 08:13:17 -0700 (PDT)
X-Received: by 2002:a05:6000:142:: with SMTP id r2mr3553472wrx.103.1596121997338;
        Thu, 30 Jul 2020 08:13:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596121997; cv=none;
        d=google.com; s=arc-20160816;
        b=FR0Yi2OjUI16lqBdfdzfRz1ADgrgqmnBF5eGa6gRGPf9Gy66Bi9PhPzKkcda9flwOs
         4hEvaJqSUgkctSH7mF4igvcTb+jGJe6tYARwEoubxMpQOJhAbjcLcCiEdL5p4VUrwtuJ
         eiCxIikJSbxn7nKTkQDQpZ4WzGKmZ64VDUs6mKeIWMD0h095zGrSE6JDwZRL4fNpiBdJ
         A48sOFH9mJ/jEJg51SwRt46bgjpwch9rl9t3Om6FXBPitWunkjXAbFCWgssxTNLtdThe
         UPO8bIiswSW2+tjRgGfoQK0qN6MbsnncUZiw5Uo26JQiyChwaE9WKXR6dOgBnfhOo9OR
         oM9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vfXGH/CEwaBaC/kQBLI8IC/drfAO5muRPoqQ1huaXOI=;
        b=kQeqbSXz2DrAE+r1r9SYUbYbn+CBg8G0dfwzQg0RY1jgm0WuT7uxv4gaKBBYbv8cgC
         pjsO3Oh3/IoMLPyKK81jCV4k7bI/++zriCdHwjKg/b8OTHq5I63+ad8xAD1xD6tZfS5b
         W4YiCeAqyrkrFyoxEEIqUOQ/GxcU8+DNwdsyRvgpMby8/UC8yWyI+ZIS+Y9JMS+2r4ew
         k81V+0r3q2LL5YKkXpKSPDGFyafT7IEYlCC+qS4FmAJy7lM5Wf7hnE8bp5jbLFXwM11V
         VcQmmsJ2fD5LtifDgnTB6/YlNuv9zO7DI812pNG17klaeWqudm8lwPUxw+HZDYniKil+
         A42A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=McJOS71U;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id i11si310998wra.3.2020.07.30.08.13.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 08:13:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id o23so880805ejr.1
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 08:13:17 -0700 (PDT)
X-Received: by 2002:a17:906:694b:: with SMTP id c11mr2989856ejs.232.1596121996817;
 Thu, 30 Jul 2020 08:13:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200729215152.662225-1-samitolvanen@google.com> <20200730122201.GM25149@gaia>
In-Reply-To: <20200730122201.GM25149@gaia>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Jul 2020 08:13:05 -0700
Message-ID: <CABCJKucS-DXPkHMCPKpbFduZApRdw=1DL4+YhULAsUNn=o-dTA@mail.gmail.com>
Subject: Re: [PATCH] arm64/alternatives: move length validation inside the subsection
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=McJOS71U;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Jul 30, 2020 at 5:22 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, Jul 29, 2020 at 02:51:52PM -0700, Sami Tolvanen wrote:
> > Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> > sequences") breaks LLVM's integrated assembler, because due to its
> > one-pass design, it cannot compute instruction sequence lengths before the
> > layout for the subsection has been finalized. This change fixes the build
> > by moving the .org directives inside the subsection, so they are processed
> > after the subsection layout is known.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> > Cc: <stable@vger.kernel.org> # 4.14+
>
> Commit f7b93d42945c went in 5.8-rc4. Why is this cc stable from 4.14? If
> Will picks it up for 5.8, it doesn't even need a cc stable.

Greg or Sasha can probably answer why, but this patch is in 4.14.189,
4.19.134, 5.4.53, and 5.7.10, which ended up breaking some downstream
Android kernel builds.

> Please add a Fixes: tag as well.

Sure, I'll send v2 shortly with the tag. Thanks.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucS-DXPkHMCPKpbFduZApRdw%3D1DL4%2BYhULAsUNn%3Do-dTA%40mail.gmail.com.
