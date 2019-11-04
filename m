Return-Path: <clang-built-linux+bncBDV37XP3XYDRB6U3QDXAKGQESI6JEMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E31EDDC5
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 12:39:38 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id e13sf11998401eda.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 03:39:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572867578; cv=pass;
        d=google.com; s=arc-20160816;
        b=LCx+WTw8OcemiZJdUZTvfNgqpqVIW/noiBZNyg+hK3FH3ORgCHwcLjAT8quVWpUhWC
         YKDn1hQJvfawQJ4Nbsq7blEj6Fpj3AZ9rzNxmewxKTFZJ7R3zgpcC/JUe+Xk5kIwYXRH
         DtyGPpoRNzqAukQARb39llB1+2HSyz62KWwLWeqIUJxLqWl4AJNL/AhcxqPJmnBgWGHf
         5Nqy+pFBtz/PIrN8Gmbwl3ThxFC2U4E4gbNZDRQxVxzfOSZ6ScxAZ6+mrLc1euTnXRh1
         wQKqXu9erbJp02MQvfXHeRNT6NIMtkZjOO+cqo2qSOYG2IPeRIwjbUhRhxc5X3XtRLg9
         gUog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pRgMIXBH60UtnGhQ5Bd0qz//YripZ1gcSgLAkzs2ijk=;
        b=bH1yeP3et8xnepEtpkosCOOuvrsH0m+rXrT3QrciBxuQSWfNax6P1kJ3eKGfLVWFnq
         AST+T3w4+pujLNzoZ05snA8KZ0jXIWOQtSMWCi+dmEx79rR50R6rJP80GXT3I3OqJTGL
         qq8t1bGPHQ0wIAlfPiS435Nz7jQfxciRXTdnuT8pHWh5Vh+JIqZTX71sZ0x0JQgrxtQT
         LaP2HYdzInrQyR4hGnNU666r1FuCOywhJPXIs3QO7JfwZPlFaNvPc7SDoEjFId5k//4b
         txYdRhF0HmmZAzCz61B3b38zHvTJO5Ofvk3CQs9Qnz+8S3qmtqmBNSyNKDCyaTTR/R05
         c4nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pRgMIXBH60UtnGhQ5Bd0qz//YripZ1gcSgLAkzs2ijk=;
        b=ZN0HeWzcdBPn5g+ny0W1qtEivfMWB+SoC/c2MDcXUAcGhH+DzZ6HUG/LoFPKAFW7BP
         0Cj6Pb70gMOaeGY7M3rDgt6HcoVjhiXnQjhpHD80oC+YCH1ByQI3wtwvEG+3YuszMsoH
         o7kGwwH4SXJT7Ov7ajhDdSWnb3Rgo5JICI78b19c/vIjhuaNkJBIrUTkTc3WvRE6lOdJ
         3YizP3XLkADZb6i504h9/uRrR4O3K3Qwpp2SQC4AhXm1vmNSd73lZZX7yA5x9QMzCR0z
         dxVJQrkAP5Pocor414RMNwN8DsUBkGmklu8ZJwImgotasdSSgJM6nPmOwZv87RwnqUf8
         I5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pRgMIXBH60UtnGhQ5Bd0qz//YripZ1gcSgLAkzs2ijk=;
        b=g/z0t+ZeqoEoSSWkzrTPnqvtVSGum9Bp4m0ZXDNc2YMZD383Px0IXoLiEKJLv1dhUd
         psXZv07eZLRnTJbqxmLr4JQ7u7htDahtqVdHZq8e/pyGJdx5XW69ZwCCw0qTIjJ4aVEo
         3QOaVfgsFK4+Q6gmfrKxm+sVxH1IXcYOiO+NOpO75Vr4sgHraF/2hWjr7bPyz+3fFJbK
         Mcg0pSHqaWnsE1Jn1MM4WawbkuLjr4eWEw3ob1xcO9ZNmO6Rvwj1Lw3B9FhJJZqqEZNw
         OEWU68ai2vtPU/hyhUijF/GyaZBWUp96nIc2dOrgfJuGfTTBNcdoCCzO5AbFCrwlW+9o
         0w7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXHDS250Nwu5PJ0GpPA4MDBlHTQZrXN9omx+eqYoh5/osS5vyIW
	k+zZ7Qb1dZLqaJ3dbBUUbng=
X-Google-Smtp-Source: APXvYqzQosdC7g0Dj7ln8Ev3pKKfh7tqp6wtFNkcm9oa5TrUbmu2Ol1tNQqyjekvyT307bcNR4fs9w==
X-Received: by 2002:aa7:d6cf:: with SMTP id x15mr10833860edr.202.1572867578197;
        Mon, 04 Nov 2019 03:39:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:405d:: with SMTP id ns21ls4025418ejb.6.gmail; Mon,
 04 Nov 2019 03:39:37 -0800 (PST)
X-Received: by 2002:a17:906:a84f:: with SMTP id dx15mr5824401ejb.181.1572867577641;
        Mon, 04 Nov 2019 03:39:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572867577; cv=none;
        d=google.com; s=arc-20160816;
        b=xRs+TjZge71THNDvVnUzrqVnO8osrgwJgE751w4UXg/WkOun4KCpEHVRsWlWdy04zw
         uUDPTSApQU7XNl9NRtK93LT1Q+watI0cjpIGbgTWfw/L0X74YJTs/Lu9u7OBsxKkKbVB
         rwEoqAewuhQQYDXNLnjKETKk59p2/DQSg7wQR09cw/QwwQpo6e6NJs0lWaaOsBrFfSNN
         Oea7vehHcLok3Su3z9BIDhO873gyU4ONJ/CEicbCwZ1UKLYrRNuLxM2rUgiQNwN5h9lJ
         /zqf1aYG4yx3hRU5jKwnkPp5woxPMK6PG3rEzT0CdGzxzC39JBjJP8wksP44WZnfw9Jw
         xSGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jwuP8Jdof4Wdl0gDgAD61ml003mo4x1pW2OHP+FuT/s=;
        b=J4Cl4kzXQRsL5/Uay90G3eYve1SczcQCJJIlYdGfNzuMx39gegyYNchA6w8nEH1nx+
         8AgAdM5GDBYRB1JSAEDLqdxl+mHbgSk3X/1NdkwGZM72b+yEg5v8ycpj6OVq8tM8g7ZM
         M9yguP7DeCaxv1j9ieCfIQRRYg9jWtI6XCzkfzNSOxY/YWG/hnlK+YNPgG8xw3Psu3tG
         58WCij741O7Npa3GTm+pFMT+B8LAUzoSCVee0DqNq6PistTA3m8ymIjbcJGqdRsUv3bH
         t9OVtk34XurC6wmuXjZS9Kuc+Y8fuACyu+7JdS3f2ricrc6jDRjKefyYSo9vHgH7rHVI
         DnAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l37si1092561edc.2.2019.11.04.03.39.37
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 Nov 2019 03:39:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D25E61FB;
	Mon,  4 Nov 2019 03:39:36 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9781E3F71A;
	Mon,  4 Nov 2019 03:39:34 -0800 (PST)
Date: Mon, 4 Nov 2019 11:39:30 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
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
Subject: Re: [PATCH v4 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
Message-ID: <20191104113929.GA45140@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-5-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Fri, Nov 01, 2019 at 03:11:37PM -0700, Sami Tolvanen wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
> which will shortly be disallowed. So use x8 instead.
> 
> Link: https://patchwork.kernel.org/patch/9836877/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> [Sami: updated commit message]
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Trivial nit, but the commit title is missing "in" between x18 and
__cpu_soft_restart.

Mark.

> ---
>  arch/arm64/kernel/cpu-reset.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
> index 6ea337d464c4..32c7bf858dd9 100644
> --- a/arch/arm64/kernel/cpu-reset.S
> +++ b/arch/arm64/kernel/cpu-reset.S
> @@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
>  	mov	x0, #HVC_SOFT_RESTART
>  	hvc	#0				// no return
>  
> -1:	mov	x18, x1				// entry
> +1:	mov	x8, x1				// entry
>  	mov	x0, x2				// arg0
>  	mov	x1, x3				// arg1
>  	mov	x2, x4				// arg2
> -	br	x18
> +	br	x8
>  ENDPROC(__cpu_soft_restart)
>  
>  .popsection
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104113929.GA45140%40lakrids.cambridge.arm.com.
