Return-Path: <clang-built-linux+bncBC2ORX645YPRBQUJQPYQKGQENNCBYRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E69E13FA6B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 21:17:07 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id x9sf3497149uaq.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 12:17:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579205826; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4ai752YPLOTbm+g54QjE/7dQw9MiU1kqhsdQ1lRzHu84o4Le/MtMWwQ31rq2dV5uV
         j5pRwVOCTn3AnTkoaPM3p/2edmvKpVL26mMFSJQHT6/+WrncqLiuxyGKeWg97Eiwo1dL
         QTXeT1vVyW73j/3T/aDQT1FxkKl/nu8Qbfcl2TA+o9/Yp7cuYOsvMwSQlIEySLV1bhsa
         NqyjxSTKNskCmQpstZvY37rFWij3Ln11Z56UTC+9im4Axtp3c2P4YJNGJRfxSwxpEOVH
         Eudg5cPEg1uGVj/V3xUsKN6p+mIvzAisyVG0jfexGjehNYGFYNcwrN9NrGI79zFkKf5C
         JgTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=70xg7N0bmUK8iilZsLq49WiH4B3hzF8JBNkJA37Bi50=;
        b=hY2ho7HGODEmdAzO9XE3WrNHJVkxV2vAQ9KBTYY6OYa7txG/InMO3WqInlKnX3gIha
         GVJsT8i8bGiO+BOT9yPXzxtXXQrMX+aZ2sBsG3pWwt+Ayg4pjIr6V4h9NN5upljed+eK
         oU4Uihbq8XG/V5UBbQF7AQwRwetSGMoBPEdxdDQcLW2ExE6PQwblPEGp6PBUVwbrrp0Z
         WhlTafldvksvwsZIIYXa2/hUJ2BoKo6KjTk1STMtZ9EyMMQvkoSIKzeLWyIHn6lXRCNM
         YPTCFg50tHix8XFdqfaqS0YcJn3g+CHzkmo+rKE4A+AJcUl5duRABzZxqXR8wZFGPK1W
         UcwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nqN/bGHt";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70xg7N0bmUK8iilZsLq49WiH4B3hzF8JBNkJA37Bi50=;
        b=O7qLeEbZe7goDQhyP4876siq5mWFCuVMOGO6WuflYKA/D5Dt3extD6ICCjCpY6caPR
         4Rn7xZaNU5rlqqlCOT4j/F9xBhmi/lv2F73baw3ZGmg5pFhiabryRpv6Y/8Tt7nhmirX
         F6ntXfGIcYbjmOyXmi9y7NrD1K8trWSa04yHU8+vvUPd6ALjdCkHB0uCyJEXfsixFtVH
         CcPXcXUe0pxg8R4KySdOQduqV66qcvYLQherJlgvCtPi4BjsGFK1BXJXE03ZcDwwz+6y
         et2EhpdB8V8XIKo6PWGzgMIiCVWTB6HVLgE8eM0fvACVW2Tqyb9dLM+oIBliNJ/i702F
         K/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70xg7N0bmUK8iilZsLq49WiH4B3hzF8JBNkJA37Bi50=;
        b=DW7G/ky1MaW5IVvRNjZyO9m0VjaT52XyXB5XEGBH5PGHopV6DmKduXilsF9kQG1ri3
         Sv34qP6oXTTtmNCSxBVSSKF58HGenZrHWuwNuWWod+QXU4nzwaYymw4TmElUAeMi1IRh
         NpxOssMmOjqdgrp5kW9gsbaj+c5eLWfFmxHLWjHL2rHRYQMD5W1vhKpnPhf+esO+8v5C
         wGtPrHudLrrzxE8ipkeAN0AiDfy89PNNnAunV273TxX6ioXlqIjsPJGMAB5NAPGzZvLV
         M7/B6L5jOQTyHo4okZnNLfyO9hIrhD2iDZhkfA4UuncSUBgxuK+GyGojs9TJlaLpJRbU
         IuUA==
X-Gm-Message-State: APjAAAUigzdzRuXv6ZN5mIx+IXuC/iMJHLBNbCBE8R7USjPOaJgx/yMk
	f42u2cXBIg49kc8cqfYff8s=
X-Google-Smtp-Source: APXvYqxGqO5sIESABxqpAJV5gOyKLpaYmE2nmILQWaIVv5Hlt6kTatt9ofRl4nNdqjGko8/1GLoJrg==
X-Received: by 2002:a67:fc09:: with SMTP id o9mr2692623vsq.75.1579205826402;
        Thu, 16 Jan 2020 12:17:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ad50:: with SMTP id w77ls988727vke.14.gmail; Thu, 16 Jan
 2020 12:17:06 -0800 (PST)
X-Received: by 2002:a1f:4541:: with SMTP id s62mr7455093vka.59.1579205826033;
        Thu, 16 Jan 2020 12:17:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579205826; cv=none;
        d=google.com; s=arc-20160816;
        b=d5dRJXeV05yeq1Cq0eHb5ehxDz4xbYe5M+rWDoCClfDYOAaAMGh8n8As/tFQLUzjzC
         EkA5bu+yFw6HA4preTTVz9EuBdVD2n9yqx843mBMNU/SoQ2SjAs0b6jKznLBiS+LxdMx
         pGnW4u5G6jOey2zx1HjokIyJJRBpBG3Z6sQVkRmsCD9jeJJYrHIEieR/MOvxxqNc7jWU
         zuhaqCA2x1yrWsiIfyMMOxClrObJ28QYXeseMXQnF7W/1qnd+KUZ0JEJXsdQ3uQ7m8Nt
         e88Vs6cY3GJiyxAMDtJAh3NcSyaObGdS0xzZgra5RaVe0pv114M8qUPeL68wICtdN8Mr
         nMjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZF5qzwwkyvyxMKFoOMSyyzNqONb3HROfIsi+ysNvVik=;
        b=qOlkoK5w7syvBZzw5Qggxun0Pkgw7mon3G1ERVZIJ0bJ70lOFJCt9fgZMYDjIboT/r
         muekfroEkmQWir2UflvVjiaMPM4N14TCP4yD557qYG/1sqAJzgbMYLZ962Ku9g04S8Xv
         ACuf5QtmjOMXPS2+aHUH94hEx6nDOGERcbtwEqyy4fSotcnqFdiczpCc/x9J5EQeAp/O
         H5pqfe6RSo8NWfB2VT0glNWlVO2q2xgCVGj5nfVhprf/bJeoASANcwdtmYYzNzC6llz/
         HSB5an71tzR8eBiBi1ldG9s4y0/rCV+isAuxpxdpg310WTzlcfb5RREwMGgB/IvbblIA
         e88g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nqN/bGHt";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id t76si1006053vkb.1.2020.01.16.12.17.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 12:17:06 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id t12so13481126vso.13
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 12:17:06 -0800 (PST)
X-Received: by 2002:a67:f057:: with SMTP id q23mr3030208vsm.5.1579205825357;
 Thu, 16 Jan 2020 12:17:05 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com> <20191206221351.38241-14-samitolvanen@google.com>
 <20200116174742.GF21396@willie-the-truck>
In-Reply-To: <20200116174742.GF21396@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 12:16:53 -0800
Message-ID: <CABCJKucQY_Qr6bZXW5TdPnDcBUd7uk8_Md5FNfO+ObNmsH3MZg@mail.gmail.com>
Subject: Re: [PATCH v6 13/15] arm64: disable SCS for hypervisor code
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="nqN/bGHt";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
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

On Thu, Jan 16, 2020 at 9:47 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Dec 06, 2019 at 02:13:49PM -0800, Sami Tolvanen wrote:
> > Filter out CC_FLAGS_SCS for code that runs at a different exception
> > level.
> >
> > Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> >  arch/arm64/kvm/hyp/Makefile | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> > index ea710f674cb6..17ea3da325e9 100644
> > --- a/arch/arm64/kvm/hyp/Makefile
> > +++ b/arch/arm64/kvm/hyp/Makefile
> > @@ -28,3 +28,6 @@ GCOV_PROFILE        := n
> >  KASAN_SANITIZE       := n
> >  UBSAN_SANITIZE       := n
> >  KCOV_INSTRUMENT      := n
> > +
> > +# remove the SCS flags from all objects in this directory
> > +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
> Same comment as for the vDSO; can we remove the -ffixed-x18 as well?

Sure, I don't see why not. I'll change this in the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucQY_Qr6bZXW5TdPnDcBUd7uk8_Md5FNfO%2BObNmsH3MZg%40mail.gmail.com.
