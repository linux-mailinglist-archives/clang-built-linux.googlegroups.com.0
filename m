Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHE55D3QKGQESJVYKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505C20CFE7
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:54:06 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id l11sf12635736ilc.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593446045; cv=pass;
        d=google.com; s=arc-20160816;
        b=akYTDHM3IHvzOiHR8P0v1W6n+lRXMV5PXt03rFgjWjQdgylGWvqEEbycLhd2A8bIV7
         +xrifKTqo0o+3NGChPYvezD3PzgwN2EEDqXuGXXfxno4sy2kB0z2IgmSvV0BhNl+DSUy
         yeiJQZDreywNn9wefMMVJZx2RR5kK2+kJJ/H9arJ8W0K6peTRmk+JwS0zoIl6a6d0Ss9
         fk6+s2LN+5uWo/Hlz7U4++zjM6IVFyWieSUN0jsPUPgYhB0bYGebYQ9gnC5m7Yb3bfgx
         i+QqrmiDjj/svQwaG8g6tStuvy9284lIoiyY5COpgU5pGzbrPkB00jDlZRr73kHkywMA
         mhQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Tl301ohPrh9Z20NcaEAXEYvX7wS8XnesZCgW9x2yVXw=;
        b=kD5BEs+iZvakY6Ejg2kqyp5nItHcDmpPWQDZT2MBzafCh2RIaah7S9HIc00WJjUQ5h
         tfg1PtGgLZW4aBuOH0JG1dPndu0+IFu1ACOE0i2dxcCIaHzAJojqApNdspbTbPBNBlMz
         0pH2XiS5U7xZUYts5deTgEJyV0+SVBvrdy/9H9yyb0KbZPQeCSlK/OrrN4HuJMXRlCJZ
         P6/UVaxBxhAIPzENlVm4IN0QXqdPEcYKxrGfctnZqfCPbf9tugiN3iYksytH+aQn6zoF
         Ug783drU2BIUSouYh9cxec0+MFDe+ThXHhS0Drdn0geUm4mKvZ4I4vTl/nKc2StRFW79
         mjrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="BZU/9VIc";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tl301ohPrh9Z20NcaEAXEYvX7wS8XnesZCgW9x2yVXw=;
        b=pqPQNdMDpHzNTQ0Y8PVfbw8cFIzjEGflRMOYPi/akTcF2nISjR4vTJhmaQzxfRabOr
         BJMNtOZqdUtuCIJIh522k24kB4FnYyAWnWkCRGGki1LQWMIXyB3QBsGTJNQDacxWvy+i
         ZUqKkeUXtcAON87OX/GktBAZDYbQ8z/msSB0GAfRCh3XWD7hnbos9JlGLMEQRnydPB5O
         BqcfBQ9AyiWIETq0ldcec69jGhqCNqdEwDKU5HyAf/4BXD7K8o7iF1VOXz89WIxxjGZR
         iG9vrI8sf/AXMzhKrV0GIJCS0ul6BbqMiPmYXvdmReuop8NdMaeHH7hyfNV23scfhib5
         tVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tl301ohPrh9Z20NcaEAXEYvX7wS8XnesZCgW9x2yVXw=;
        b=a+XTpgP4q+SZD1Ah+ESBqPu4Yh4jsno3Rr5AH49+GEI+qQVfJpegtUGq22JWptdaE8
         Ux3gzXfPYViPDDUPP5T3tiyCDPBpxfin3VNkSo3ndDtoxWaddSU5hKfuCOQpB0FDd4Yn
         TyVcl84S3envspbkiwpM7BqOK0cBITW5JjysWIkgPj05IVqr5Sdc5JqEsATdkFrXNMvX
         ArP56+IZuxQRKhZSpsmzh0bq1lott4MKgR+xCHYGx0YnScVDmE7mQXSJIFLIjuEn8/Zc
         wgA/51+/suYpD73Zd46TvSBCULU+9U0XAWqo8ihr4OKSegba109VYWvREdVmhJvnL8aN
         hS9Q==
X-Gm-Message-State: AOAM5303FK+oiX8Ofyfrbkh4cO0Xx1SCxR0feyttjLVQXvOf0qJnSY7I
	z5s0OoN0c474vcXXvQatSCs=
X-Google-Smtp-Source: ABdhPJyoLoaswe9E+ON/MDpCCvd/5KTAyHAuzi7P2LfdUXPEbOGPxcTK89r9VCozeaD4uaIeYTf50A==
X-Received: by 2002:a5e:9309:: with SMTP id k9mr17275383iom.135.1593446044990;
        Mon, 29 Jun 2020 08:54:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f13:: with SMTP id r19ls2089482jac.6.gmail; Mon, 29 Jun
 2020 08:54:04 -0700 (PDT)
X-Received: by 2002:a05:6638:14d3:: with SMTP id l19mr18401299jak.25.1593446044617;
        Mon, 29 Jun 2020 08:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593446044; cv=none;
        d=google.com; s=arc-20160816;
        b=GNg4kaUNzxXgTUIhPc4gND2y1tudLQYcW8J9v+jhh9ea0ba0NgAiyV35vWARx8nD4D
         gec4jhghZCB9yiipqdCIvNI5CbbBXY2VUV3Eqrf8Tgw06OuHdRN/QKA4tOZynU5JCEom
         bIVSQ+rxbynMMAeRfvpyBgPz9EK5Ho1wDmrzYU2BIa4VKdLw0nEPElS3Fylo8T5wsBdD
         7mL9wBC31B4dUMvuT7hCG447bw9/4ZjbV3Jl6A26ITCbDBxL8/GU7F/JxdQmS3ST0bXv
         hBpniXsSnDk//XEpEORtqKzLzlV9hW4EF8guk+m39myon8PEd2LS4qgJLu8X8TYDZKe8
         ZQrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=aJxCpiw45uiFCKFF/Aa3ZwVBKPmiXfb3oRMSPK0K9jk=;
        b=EZeK3IrE6+kAGTOcaszCmhNtY+IiRLE/ahb9oy0uRXA3qbXscR59IcFBzH0fz3dG1F
         6sgf55gEhOzWV+/RbeUo+zg1OpCVvVyxuk7qCg3gu/4D7fIrEcAgpadN9QXtdhEuI94R
         //95e06SjbjWSEgaSyKk2diglsVlXOsGEtErCcTgd9C6YPtEzgfNlL92rk5qwqYC9DMh
         llqceIjuGTogIf46yDQsL3Ga5LR6Idgv43wIzWxk/xV1e9xF0famyqRfEidVCkBy00cN
         Wi7DjwT4CNrQOZkzL24ixUs/DsjnDxW5So652QlF4sOisk1TuV+h4wLt6/oJHF8IwWQM
         7RIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="BZU/9VIc";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id d3si16498iow.4.2020.06.29.08.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id j80so15694003qke.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:54:04 -0700 (PDT)
X-Received: by 2002:a05:620a:c08:: with SMTP id l8mr15224938qki.239.1593446044131;
        Mon, 29 Jun 2020 08:54:04 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id l46sm81965qtf.7.2020.06.29.08.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:54:03 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 11:54:01 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 14/17] arm/build: Warn on orphan section placement
Message-ID: <20200629155401.GB900899@rani.riverdale.lan>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-15-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629061840.4065483-15-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="BZU/9VIc";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, Jun 28, 2020 at 11:18:37PM -0700, Kees Cook wrote:
> We don't want to depend on the linker's orphan section placement
> heuristics as these can vary between linkers, and may change between
> versions. All sections need to be explicitly named in the linker
> script.
> 
> Specifically, this would have made a recently fixed bug very obvious:
> 
> ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'
> 
> Discard unneeded sections .iplt, .rel.iplt, .igot.plt, and .modinfo.
> 
> Add missing text stub sections .vfp11_veneer and .v4_bx.
> 
> Add debug sections explicitly.
> 
> Finally enable orphan section warning.

This is unrelated to this patch as such, but I noticed that ARM32/64 places
the .got section inside .text -- is that expected on ARM?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629155401.GB900899%40rani.riverdale.lan.
