Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBEGDQLYQKGQET2OV77A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D36D13EADD
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:46:57 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id w4sf22909224ywa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:46:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196816; cv=pass;
        d=google.com; s=arc-20160816;
        b=tdjOHxXETGuAzZZYvHztoBKCHYptaLyFHcRYrVKLZNeRaDB+LbTSPyjEKAsIJ+Z4+P
         bEWhUOkTdrzOEJDC9QIa8YjtKc2Le94KSYQODmMnFnHufV5lWbO17xCJiEN2IHlMKebK
         v0FQ0wpGT9OZ0bNgXWWz8vgD7oc6jInw/t08yktF1uElka0FsSx1CnPe1urh11ldatRm
         e9DNn51YkbFQc3eRmR3AuFxuIYfsnjuCD3g6sfmXXh7PjWhQu8fEd2VAHbr0nmkKPZRT
         WtUSnG4kU8YAXbYMD6pxzb42rRDOys9QwdEfFFJ8wDW/qIOpNlNA3G8/wfcZ8gRfr2zr
         BzPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F/L4YIOg965FCvmBqtaX4cz1aUPjtHE9lFohXVdq3Q4=;
        b=t4UCmCuyBRioIQAl0lcV96UnXc1FojbKh4BC5+/t3PGEXhHDwG/UL+AW+LAyhC3T3H
         ybyjrbz563jhe0ZaRvw7ta6ctv4e3hH/VOKbvMJqUqfNj7FKfPqJILg8MAmCRnF64L/N
         9iMstRUk4fE51bB4yNSd9Dtg8CKVhGzAp/w6nln7hnvr0LCkOqud5u0rROHz2+a8/rcU
         M+oGussEkWi66GaQms7Upy+6CdZ/DeBSAoprR34qvn5QgrpI06FT41R92sUj2NxEL5iY
         JboZIYN6tUr4gL/JlKlEX9cgFlnWZY9GR2jjhQPSxh4retK6vIfg36l0q5vnwTswRtwx
         e9CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QRF4GWYw;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F/L4YIOg965FCvmBqtaX4cz1aUPjtHE9lFohXVdq3Q4=;
        b=Fz/Qld7w+jmye+krgnadttXQSiVZFqZglNCwORN3QtcLOEDJQCuIxtWateQBjnbpsP
         Pf1Bh2pXihxhQ3WaYVKpBfAjY8z+kFidw8zAWmEvb3xfLw44zEvNJj/kDX4LMAxSRZuu
         pLLF0dO+RxanDjnQqaNAWN3wqGftLdUx4I2L7R+ptVbKzskVd/w2tmazBs75kWwFjvKV
         Ya8snQDBauZncYCMaixvuUyeS5Oemr6nOgCOVeeYssbC/PySoFCaqqXlhIGhOKg1AYWw
         vX4MkR9ybdWKGnWkOqHVPc7m/GdGMmPJarvZJFQ2l3lusEWZoNBAO0iwxqha5wC7c0u0
         1UkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F/L4YIOg965FCvmBqtaX4cz1aUPjtHE9lFohXVdq3Q4=;
        b=U10tjtJ3PLCXvS7c2BMR2jqobupJCQzpc8x0Y2/6TPnqeoD++UfmgWc+ywlWKS/KXn
         R9NItpaRFGgwfzXVSRZ0leYJyqyQ5yDTgA0l8x5bQe8eGcKk5fES2xbMmOGxtOVdsj63
         OFmEQftYkPHP3r+RxBARU0/ajRoR5B22abx6A6/LBJLoUriuVofb53upmw6QT+pU5T8g
         ghgR6/PG0Hz4XnCwxwD/2r7g/WI+2f9l0OzmyM26kMFqorjkYJbXWcHUzd9UftuXd0l4
         VTfqneGD6x0KxS/+5RIesX0C7oLCCbi3kuMSEluEBRcDOfgUdy/gUmQ1slNaLHdgj+UV
         B4bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVhid1Rvn/3zkUdAH9h5PVrsu/X9TUofZTqYjYlOwLuOCuLl87S
	JHLuS+pjM89PIPv534noIkc=
X-Google-Smtp-Source: APXvYqwROG49f7/o7XXWo0e55+IW4TKy+X8XiRjDmXYFIXDLQRuNTB9h+0priGMvI35w4AV9tE56mw==
X-Received: by 2002:a25:6cd6:: with SMTP id h205mr26246492ybc.301.1579196816306;
        Thu, 16 Jan 2020 09:46:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9b07:: with SMTP id s7ls3684390ywg.14.gmail; Thu, 16 Jan
 2020 09:46:56 -0800 (PST)
X-Received: by 2002:a0d:c3c4:: with SMTP id f187mr28163835ywd.201.1579196816028;
        Thu, 16 Jan 2020 09:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196816; cv=none;
        d=google.com; s=arc-20160816;
        b=fmXlQ9P6zS5Xb0uB/lJI2RCkQmRfAdkm3me2G0xhjaj26aIRCWQmXe48/MmJmdz7sl
         /HJFs1K8lt5QVz0aNKrXbW1vjYH2Yn4+LPy5YK5t/qOVjhmPv+HL+XDHmD/9IX3LzBEb
         GdYIgu6Xs2Zo1LrLVLH1DqudYO4aBNf8Q+nMmgKJP2n4Rw0EiedPpDXJlKCXzbON04vo
         HVzOWnKIa2HerzsfxWXiISHt+9XhPvMcwvH6JI8AgYpPW3YG+p/ca7vgrMwM6MyLSUJw
         eXhjiQpEsKCMg/cSm4whFaDn8Lh0rvKv/h3aa6iHL4nRDX/j7JHMz0Jb7nj+VuztVDKE
         lt1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rHKbtmv5fqTjFuxYzyJ7YSl7LpUeHpBiR2KVNbvURlY=;
        b=olj+hEOUeOCA4hjt9tkuS5tLxXiWT3uFT9q4ny6NppIbkOEC89HclVQdTzEMBRVcgO
         hLqOqxgSaiqyvYJYNKFbNI1n9vSrLdYGbGLPiq6vN6mPQv6psbfZiJWgeQAVp6GVEASC
         5SBUjuz9EXIIm/ZxRbBKDCaE6iX5QgokpIp4AcdYoijspwgvFJAy32YDZMlXohUgayKh
         LBLZozqGF6VuZHa0Hh9fbRGWR/icshIDxEdT1oXmVlO2WJsG6aEprZau03d0VxMlz+gs
         v4VbyDMh2O68zfsWEdOv65vsvWtQJYpbWb3vsOZEGVEpQQkjQP6T/VNQCWtJHJ8nUYU0
         g9tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QRF4GWYw;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v72si868546ybe.1.2020.01.16.09.46.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F022246E1;
	Thu, 16 Jan 2020 17:46:52 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:46:49 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: Re: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
Message-ID: <20200116174648.GE21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-13-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QRF4GWYw;       spf=pass
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

On Fri, Dec 06, 2019 at 02:13:48PM -0800, Sami Tolvanen wrote:
> Shadow stacks are only available in the kernel, so disable SCS
> instrumentation for the vDSO.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index dd2514bb1511..a87a4f11724e 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
>  
>  VDSO_LDFLAGS := -Bsymbolic
>  
> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)

Should we be removing -ffixed-x18 too, or does that not propagate here
anyway?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174648.GE21396%40willie-the-truck.
