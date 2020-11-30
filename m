Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBXN5SP7AKGQEINNBVCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB472C83A2
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 13:00:30 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id o193sf3800010vka.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 04:00:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606737629; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwSUoLAZrE1vEIxZBjFpJGMACFJ/BJVwdstK0rtapMhs1zpZAC2TtBoLfBqQ+57BMT
         9OusXyFRVi3oJ6VEWSGrB3RforkhgeUllyMtXzv+R0fFrAwsEyfYskl0VJfX9ohj6uWJ
         BwHKdS0/R7tJH1EkvL+lx9UIhjT6ExfDzi22jnDSB4KP4LWUbDBXtR7ryZIK0RnTxf+c
         bGkrhYFbrs6YxVIcJH9sr9trJ7w3zKiCD97W+rYnMHxhdHJamzOq8nfbTVLfvvvYYmpm
         h3YVwflwIg/GJawt8ArQoOqAdq0QxvHsQPsK/yO9nf61ieN58DOQoKukSFrV2zBNpOPr
         9axg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pGcpnlOoBFzOJlZTfo/KHorYlOztZFqxs2As0l3UroE=;
        b=05cUreNmZ0XaiP9QSk8XkTLlknCSFClK2RbMJiHWtKwfZrWrpcejdGIFHoPJe1q2oD
         vF5lwCxQ/KSyx0jNfd9iMvI82bLPQHeSDZrH5g2lMPNZoF2G0PB8PX54/a7ryYaaacgQ
         UZgOh4R8aOXRxF90vxHVv2tFXyqYVFm+aHbcru/4Id1FG2IyAmOXlS0ylEVilBDN2ivr
         H5B43c+XerjRGmG/c7Cp7CLUxUBcsaQiFjfInCFFUCnFxHIhXNMusK+4UB8BOEFuZ7t1
         4uLdIyv/fi/lsstxyFaxWAgkUZdxcjzB9w9pZV9RQPsKKAMLcpH86+i8STMJOjTLRgag
         OS1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yzM9f+2t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pGcpnlOoBFzOJlZTfo/KHorYlOztZFqxs2As0l3UroE=;
        b=ARs4MO2Rc1YCNKw50yE3Jx0qjhKgdaH7Vst7Brnfjb4lgNRikQaim2m3MUqqVCrB2m
         WNpjKUehCH+7HpB2+xwq/3JFKcn/uPVm9IA9M5S44oRWzbTf8V/iA2zFkph/zybrCFdY
         wUcJOPExEfAVjerSU+ma4OaSo40rNwJu0a3hCRG739jSgx/++O9Rb0h//D4voYWXmSp9
         hWqlT2fQK2dLy2MQEMXPY+QufiVSrLQKL8Dzw58hT0QT7W47GciLQEGC+e8BRB36Li6W
         D13BqiNWMHIFpxto8KF+zmJtIigZ7IGTnkleGG3pe1URY9DgktR6KDUy26YU6yHCIn3L
         AAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pGcpnlOoBFzOJlZTfo/KHorYlOztZFqxs2As0l3UroE=;
        b=YV6vz/27EV2pW0CthBk36DTvJgtbwwVbNiQ7BCK6uEY5GDyDpVh36xBB0g+5k5peLG
         o7ZF33YxeBuVKMrnZ7NSFeYP6VmZ4aJ+zxWjDtx45uXC8d4O2lyMxG/Gtu/ktL/VVrrn
         q8ZbKUYlAgxxgIolji76hNK7oAylnZGXx2JOdzW61BLPM+l9qWXXqESfQvKbp0czfugi
         EuuBOY8jg7QgDpF32P+ksBMRWVPm+eXv65v8OR20/6tYXBVydM+Uer2xB/Fzrz0zhzQs
         IY8dEf9vsrq1IIF+bdqvzeVgZtil00Z/6/fa5sRHYTc4eXSYT6kh0tduv4bIm97z3sWq
         8/ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QGL9hPTdw8v+eiMGmxVDEK4w9OllJEV9Kbgx6s0/i1T15B0oh
	eq26xHSPS2nz4s9ixLO5IZM=
X-Google-Smtp-Source: ABdhPJwR4wBSkilk08c//SbObcCt2H7PRIYtRUp4Pxfmr6P5+YIjaHvOjBwQCK+qUpQEeiUxt7eVEQ==
X-Received: by 2002:a67:874c:: with SMTP id j73mr14258653vsd.51.1606737629605;
        Mon, 30 Nov 2020 04:00:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e985:: with SMTP id b5ls1466341vso.11.gmail; Mon, 30 Nov
 2020 04:00:29 -0800 (PST)
X-Received: by 2002:a67:2783:: with SMTP id n125mr14423557vsn.47.1606737629161;
        Mon, 30 Nov 2020 04:00:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606737629; cv=none;
        d=google.com; s=arc-20160816;
        b=UeyWrLHx5DpH8r/5sMs3ajYfkdMYeHOfvdQptVnrwiNXLBZg0DuHPk8wbUSRQM/dGA
         uRJAjyscJEjN2T5K8YYWmp9ynSYJyf+K1dE/ayYtPEEXiOc6HER9KegMSHkLHmGwxIai
         m4urZg/tGRv4pNZWjUdOYL4STj7lIfNCv4t+8O45mFouIgMmGtHpK1hFBsQO7/U7G5XF
         6J1F99OJ5+4XJrVN38Mv7vSylbdb+OyqVZ3SORy4+pz8qD1zDGxL7beBh4Z9glACy9Jf
         4WEFOk0jOrsbW92N8IOn90nlOFhpJsIiW+tFRaLmfV2rZigQ9crrygAWr4KBf8x12TKb
         gIxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uay6wYeigzGIb7IXjukvrSzMpse9nj7ZaynJ+R198Qs=;
        b=hobQG7m/U9xc3G6n/HzDzjIT2LKY2IrzaWo01gDX1M8wanthfXG4lzEOMYEUsQ7oOs
         0/6RY7LdKpOKMZefOlb4rFhMnioAT4fBoGPeEPbhUW5wRO+E1qMxXn1Mls5Jw2TfQpod
         wn8ROotft3K0NTYsambOqjd1kQJ6E+tOGCn+7FJoVBsUKGBw3ln2/wY+P2fhT0YygrHx
         pko2s5haeXCi22UhPh/TeWUSl4LOf+YyHcUnZwfPyaicVNP7a3NjCschQifx508MUyZG
         TkS4z0T8ES8+TSZFAhmtz+ofw8W1xy/DFWMtZIC1lp1fYlYULSZ91X07b+Vss8jS6SXI
         oRug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yzM9f+2t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k67si810100vkg.1.2020.11.30.04.00.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 04:00:29 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 179B52073C;
	Mon, 30 Nov 2020 12:00:24 +0000 (UTC)
Date: Mon, 30 Nov 2020 12:00:21 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 17/17] arm64: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <20201130120021.GE24563@willie-the-truck>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-18-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118220731.925424-18-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yzM9f+2t;       spf=pass
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

On Wed, Nov 18, 2020 at 02:07:31PM -0800, Sami Tolvanen wrote:
> Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index c7f07978f5b6..56bd83a764f4 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -73,6 +73,8 @@ config ARM64
>  	select ARCH_USE_SYM_ANNOTATIONS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE
>  	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> +	select ARCH_SUPPORTS_LTO_CLANG
> +	select ARCH_SUPPORTS_THINLTO

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130120021.GE24563%40willie-the-truck.
