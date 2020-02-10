Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB5FXQ3ZAKGQE43N5X4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BBA15820D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 19:07:49 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id n11sf5485206qvp.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 10:07:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581358068; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELjOA5J8LUS4mgzOjz2CNYHduFcf9TDfcjMuMER7W4SedZsMQTLF5kcxpnC3K+xMY1
         JAWV/hLOaLwYC1PH19k2qNVwoqxZS9QZeZ5gtBT8aL0+HLhfNyLy5YLY3HLHHyK2PV8G
         2o5RfnZ6ZbLOpn9kAX1fO1kFaEiHXB8oQ2k/eV0PgDwIeTPelLvXvT07yIWdxi4alhwh
         f95a06xngcJjrrxjjAzIDR/rkcao3yxk4KqGn4/AD6sY2GyUn5ub3JFXgimY7Tm/eVV9
         HcGZ2jArK5FuytqjxXAWUpiE6DH0hi8qM6yJqgS8ga0iyvxCZsDl6/Y99+uBLf52g+lP
         el+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XhD5NB2AsOAtXNe0rWzp4/0dskNZ3qL5rVHyKwfbeKo=;
        b=GDhnOeZ9UuHC/VMm5Aqb8dA6sg5s+65RW2g2qgBZD9DWIBterQAf0yvW7idrbRQLtg
         YHd+poIVxf545VFsDTUb2qUHmA/IZMeabntZcqQPXDbTx7L5zMvw9OCTIs1GTqk+9u87
         KEUdvJyAsE9J9DQ7t03rF2HVW/wj1rvz+mnHjVXpoJOCyKe3jomZYBsnGydzM3lPBWdV
         KjpA3MaPwSpDEHByO1SiITDiGq29LVY+MbfWrGqC4tqEqOR61Br5zR+Rj2osDkrt1zjk
         eeOMKtnWUrO82WfdaxP2B0xjHMjKicA65Fpp4gJZ31oG+3yixIMt0i3steEpsre5TVPj
         rrhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MhSFm6px;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XhD5NB2AsOAtXNe0rWzp4/0dskNZ3qL5rVHyKwfbeKo=;
        b=rN5WOLWNEKdMVdRO6WzAGLE4mJNN85I1Gub87ph8y0sMvM4z04ZlJkOc8/GlGyzdY4
         JoiwtswhkZN8t6r2hYE30tx95pqbYQyzhxZkwGxwAT+2LMOnyk41o03inf2nNMjpK5I+
         KOhhmZKq/NKzXTqJimRvxoy2oc5kUKlEXHEc4/mLYsrYjMUlmUQK7bX2fcDFgroBJBu+
         L9p8gnXUbwZZ7vhOyq30InR/ZQ1OSRF5o0eY5lcwHCaIuoMM9hPmS5sYJ0/inHBbXnOE
         0X6OZPwiZ2hc79Mc2gVb+1BPw77JZP0ujjNHmXDs6iwflgPOH87Sytz1e1QhRdurGhO5
         ZvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XhD5NB2AsOAtXNe0rWzp4/0dskNZ3qL5rVHyKwfbeKo=;
        b=Jmx0DceLe+NB4/vfs/vr7V672dAsIRPz+Gk2P7G7Tq5uYsYF0Kburm1bl+AKVT9TdE
         4YbJ7TUsT7JdZtmfbo1sraip2bdlU0ZwJ2WWxkzgfzECjn0hq26PxOdKs+7KsHEHtgsz
         TJ2vyXMgEk82y6fw5wTXAgPOxym8lVryNIPP/8COtvydD5Q4lflJR172Trtac1xDBKD3
         FIyhf5OTJDVJ9shExQ8vuEbpeJ44E90rOHACDjwC+trhcrLgWLf7VRUQavY0f23YcZW/
         d6V4dI4JAVMwGDPUcr4ux7k4rfpbmBYDIvskIHxrT3Ajto3fJhEZq3Ndw6N1SqGISJlm
         ENPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXox6XpiboWE/2hbYup6+1KLqjjQK+cwtq4ELzfA1V9kqDkRBl
	31+tKUyLGaTnQ/DgbeCX02Q=
X-Google-Smtp-Source: APXvYqwxA3+jsQq3IqEoLredHMxaAL8i3/e+va+yTRikUMRMLPxV/7Y0SoEWXGuqKFtvOYWqoPutaA==
X-Received: by 2002:ac8:71cf:: with SMTP id i15mr11213123qtp.383.1581358068748;
        Mon, 10 Feb 2020 10:07:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6116:: with SMTP id v22ls289380qkb.8.gmail; Mon, 10 Feb
 2020 10:07:48 -0800 (PST)
X-Received: by 2002:a37:e507:: with SMTP id e7mr2567048qkg.358.1581358068401;
        Mon, 10 Feb 2020 10:07:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581358068; cv=none;
        d=google.com; s=arc-20160816;
        b=kyB7NrHji6Xomnf6l4OdbKq0L0WIb90xz/YsndMLx7NeGXLJxusEUXWbZX+uuldDcr
         nytRxl9as5rRDnkNU+sPbiPpcFBuK78Scg0FZhOzYkEkRWOrZpO5CV3F2MLvbrj1FcnV
         7drn20EUBTyb6FMKiqXhVnYfjqZjLvsvqXBoFEiyT5LWKKXk1QbB7Xg3CUrgAhIOvv2v
         s6TreOu/yRkBy2rxNCJbTfdqJrwBKpVglsrQIOOYOZTq98tF/dFnrrHVcG7mrnUTrAct
         ZLjgn3ePBFWBDzagGM+fDZzH3Vh4a+DsQHRbAyorjp1Ns8Q1IvMY5VgZNGS3eiYD2za7
         ga6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zaioUcaMdDdHlhUXAQI8GRu2aVJ/IUHe1uFHDPsrvUg=;
        b=ZPkkbySMAEqhyWz4Nmy0KNxKjWqKXpPMLFCG5m6OiM2m8UzNIKO1aTQ2/gQEAjngqK
         SXrmAYsEtufqx3lLmbe1fO+2bAnEoCzkMglDkjCOWGO/6KE8Vreg9mzk+pODHkIs/yaW
         CwnGMp5lr1dL22wWd01pH0fy1CI4Qe0uVUK+6Qvs2pMfZ90sqMIWAFSlklYnZdBjucet
         Fl89DVc816IwLVFFSAalXuIxHDbxislswE8zfSagWMG9Yv7+OU+hi3ZNoSoArh3DUgyh
         QpjS6CiA7ZGoyOU5CsPzFte+l2pCpWNa/NKk0TjeQuOUiEOE4BE4AjOD4OBDMJy2vHHv
         DTIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MhSFm6px;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l9si43395qkg.5.2020.02.10.10.07.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 10:07:48 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 527422082F;
	Mon, 10 Feb 2020 18:07:44 +0000 (UTC)
Date: Mon, 10 Feb 2020 18:07:41 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210180740.GA24354@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200210180327.GB20840@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MhSFm6px;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > different exception level.
> > > 
> > > Hmmm, there are two things being disabled here.
> > > 
> > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > shouldn't KVM's C code still treat x18 as a fixed register?
> > 
> > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > do you think it's needed?
> 
> When EL1 code calls up to hyp, it expects x18 to be preserved across the
> call, so hyp needs to either preserve it explicitly across a transitions
> from/to EL1 or always preserve it.

I thought we explicitly saved/restored it across the call after
af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). Is
that not sufficient?

> The latter is easiest since any code used by VHE hyp code will need x18
> saved anyway (ans so any common hyp code needs to).

I would personally prefer to split the VHE and non-VHE code so they can be
compiled with separate options.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210180740.GA24354%40willie-the-truck.
