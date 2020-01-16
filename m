Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBRODQLYQKGQEQ6RJ2JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E8613EB0D
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:47:50 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id 13sf13219293iof.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:47:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196869; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qg22ydLoSX5NaZ0Mhitb2eUJpvBqjsY/1b9qCWoe/CMozSXWzexO6NavosSu6oLWyI
         FSUAF/WH10rrMYXG8RWnPCpuC+NTopnAvxViZFoOuP/AtD/g6XewD5Azw4f7P+qJKJsD
         H7dv6oD7OZTzOjmGtWcrSSfZRO5xBwMpjYjWasjRLnUfUgSc/Rx01XFKZsZIkOyYrWL1
         toYOGwWWTulwBpp9bqqpJXilR+HUdKaDeA4Z9x1NS9KtqUbzv/DbfWNp7y73DXJUqDHc
         miLv0+LOBxWrURj+YCnfX1EdfnkzbIYMcnD35mHpDwHGkEtzn7wrHJp6MHt4SOeCcro9
         tMSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xIOTb/n5ro0SmuXciPkp6p9IFgZNYFqljeJsuCyRFmM=;
        b=BFZBmv1bvC7hJAL2GNxwdNYnoo/j69B+PuVvdbe0Ztho4gy3vazKI3z4NZIU2sJV17
         NrpPEDu0B8DgRjz0eBQU8kzsHSTpVBUlEpqhdy5/VC+zkoPz11cjVPrRRednZ9/Go8LW
         sPMp5bE1cti4jqpM5mYAYEk7lM+GIq8VABbvC6FGjofVKbkLx6+JIc+0QHMGXxCo7/Xl
         z7qhK7anObL7njacVV9wrPqgidCImdUff9/4Cdb3q29O0OSFkelplgn7UUWoR8k4BLCQ
         Qa7aQnbS1dQmFLMCvpacXcj0yYgbim0483S5bmymI076ldDO7yrWp9bhEfd8qFJUoN5r
         0Apw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zhPIL1EX;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xIOTb/n5ro0SmuXciPkp6p9IFgZNYFqljeJsuCyRFmM=;
        b=YlssJBdPECsW8bg1e7vhLdgflqTaXvSrdXypfI3BwaCij8zlFJC1e6ea6Ka8W7UaLZ
         MDrvjiGviOgYo6kwGsHZoIoVXS6cGe3LZa9zVFvNEx5ng0+sXT/Y7B9OwoEJbxplkSFO
         3dWrmVRPtztm6ApRrb5fWp42z2XIGRJ/+qKHudVaozbXU2fDdrXbBNTZyzeGjYwKAdml
         CsWfaQrKrJdGblZNmRG2PyBZtB6JTB26fYXKF5lTCOI2ARkb7MZDhDnLnRJ0y5jea7DB
         nVYEjq2GP2GzFuUHNay5fEiBFTqGTGLEujprAYaNXZeYwVgBvWSEoQtH9s/RFjiPaU+h
         /CcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xIOTb/n5ro0SmuXciPkp6p9IFgZNYFqljeJsuCyRFmM=;
        b=P3iecrz7MOAw6XRldh/6DaSh6Hif1NGeKuR1ceDQvF7oqyK4C3xdW0/IzOclLPuLLv
         qbDpx+YVTlPHLsLjAIN7LwotnOXfGSCzIH8+Fln8DULJEZSbXcIvDSAECQ0X5ug4kGKM
         2kedsNsVrEDFYJJpwY7iQGQ1YhFF2XSNI0SvQJkFgEttXIg10TP7QBwQPTEHBO7Y0VU8
         KkHMMV2dyljC83TQWWcmq1Zpj8kKG6wY/35Nb3qzb3btkxk14cb9ITESgE0Z+BnVu6MD
         O1wFdrjTtDTsFQwMfJ5m9k4Jh9IfYjzlvLN/BRuEiOfDB4RPou4FKK508gqZle6U6/Oc
         u4wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPTwdluf8DSv5FnVhKFz+f4rRn2pjM/PV0FvRaWxH+U0c9amJN
	KnLf8lUNpjiz1SdQBYm1FUs=
X-Google-Smtp-Source: APXvYqx3Cqs2+B9JESq8QG+SQ6CDE1oQg3bf1ljPlWUOP6tnQPJKWn75V8cB6YTpoigypQ7xJ1aDCw==
X-Received: by 2002:a02:b602:: with SMTP id h2mr30388436jam.20.1579196869689;
        Thu, 16 Jan 2020 09:47:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:dd4a:: with SMTP id u10ls3646475iop.5.gmail; Thu, 16 Jan
 2020 09:47:49 -0800 (PST)
X-Received: by 2002:a05:6602:2501:: with SMTP id i1mr28070259ioe.231.1579196869383;
        Thu, 16 Jan 2020 09:47:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196869; cv=none;
        d=google.com; s=arc-20160816;
        b=ebi+pffY8cCc0zGuVbNw0ufTpAx/SGuoxDFWvkMhFeh744Ib0XYJSgQW/K8txfpPVU
         U3nahwwFq52YvkVBCCJ9FE8Bye8WtJPYnpbMKsKszsBdugMErZVNOATf6BIHcuZjKhtf
         mt+7iBJtVVtXnf0lI1OOGiudDd2oxfGyb9IwSM0PWLsRwvC8luugwpmyUSM3YjIdpgp7
         Ddb9Z+E00SyIkMoVOMW9yeZttybbeVxN59sNXWV7owlFjAGM7OY6EMdntmEu8XL1m5fk
         gzLpk2nDYmVubTiy/sdNXQUWa9txBOt0SdAR2OppVJc2sH3pjVSHE9XwcV0wBz2cclcm
         gNBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WSyCIFK3WYA3UI0giJ7YX2xM9ZTsmjSv8hyNO7eriM4=;
        b=U4Up65oyxIuwHbhYfh66OjVQmgsuKwk2GQaIbEVRASWRBSfxpdnLzeqFz5VOFysKak
         8P97Qyo5jHXt4l3qCM+exQi6A8yMbpjgV8OLbXPTYNwBI0BSqmLJvJ2E/kffPfnL0M6m
         gkmUmx3LBN0VfmxkYB2fj548LU2l7mr9XDnlBIi+t7GUgVrv1Buh8sjW6/zqyLnH1roK
         3AGtgQh4DEsqTv/y1ZJOfQpfNNHdpAlKTXV84xlKDvWA5BTVqLfG2tzViOKGeJY6LNzP
         rSTbaQfoGv3cMF0et1mB8Vh+3EKJ1y7eHydNVpyYZe8EHtkTQzVwgfQK+CP1n5NykMWO
         lgzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zhPIL1EX;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k9si1071118ili.4.2020.01.16.09.47.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E01792468D;
	Thu, 16 Jan 2020 17:47:45 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:47:43 +0000
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
Subject: Re: [PATCH v6 13/15] arm64: disable SCS for hypervisor code
Message-ID: <20200116174742.GF21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-14-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zhPIL1EX;       spf=pass
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

On Fri, Dec 06, 2019 at 02:13:49PM -0800, Sami Tolvanen wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..17ea3da325e9 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

Same comment as for the vDSO; can we remove the -ffixed-x18 as well?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174742.GF21396%40willie-the-truck.
