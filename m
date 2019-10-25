Return-Path: <clang-built-linux+bncBDV37XP3XYDRBPUQZPWQKGQEFDA2SNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F77E4807
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 12:02:38 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id a3sf1074107eda.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 03:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571997758; cv=pass;
        d=google.com; s=arc-20160816;
        b=zgc5K3tMDOJvzjEQS8qBrAMnC77z5SEVqug8MhKL/sSBTEvqFbQcVaom32IMXCyZlJ
         9YCybJJeV+6rMQ/WdQebEvIWZIeZ6myqr5Ht07GgEJBrEBMakJ3RsvGhDO17w6VH0dWG
         U3ccDWW2tSSEOreTM/4TBvLWkM/efkJJeyUJ1/bgF/gV99UnzFO8ssdkVsT/V01TZPTA
         D1up6OD9N6/hYszC4dQb/lVea4MHYNwSRdv/XIj+DRBxyqSPzBuQBQrGxqq0m4BIkXij
         4d5OLQEO8vptxcVY1u2Df2bGdpXUyW5iSvGiAcpVyvuAEoois6iF2uF4joyUkBKewYde
         zgnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8M+j+bwhRjBxSju1v4KcsIz83NhKyphwbVREsFIxDyY=;
        b=XQLX29q8gFawNCVw4IdiOEyPqf9dPMm6NE6r3BGYg2W+INBRS0NzbJpiTD/zWaxgrH
         w83I/H2BVdtloBK6QnVbs/Q3seY+bQIY/KT4fNe0im6iAx3wsTcc0CpQ5x2sopOJgHNr
         FyyOo7p36q+FEhKwrXVbBrnVPj6l6l31nwgF6jOvIGrADiil5pqIB2cYRUssUNC+yaPn
         rizXmxFUzLs2L4b0+PR6TrccY+VwSwGglrcJ9dlCc1DqvgvEWUDfq4HwtaO/R1S2cu+h
         fXbxC4L0B0uZ6BaAY2gTv2Pg8WNd/4O8qkmtDqesRyrAbYCM078agygd82l59DtRVppr
         tvQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8M+j+bwhRjBxSju1v4KcsIz83NhKyphwbVREsFIxDyY=;
        b=CPpMrkBckERLrhJpEc7OSI2hmzrQoXGv4c9e+KKlorkh5vLVgdpvwUoFWAPv9Ruw0k
         zXAGVOOl1l8JWeIMpLyNd2Bn1ipXmOrU3GJ7AOdvR7vAxbZO7fJp8+SdQci6yVnJNlpU
         shXWRcBxb2j3mmc51d+qnJ+cGMc7rwL71lZiCCA1dFz2e9rr9R8DuRuPuZEgcaa+ygMk
         1i95rsonnsz/udCtPgBnAhIPEZpeC3dUO3nx6+X9h2yXB+fPNxWkNCl5xGp7BRxGu3Ez
         ATG9FRSORlkAGbKkzFjf26hpaNlu/Zbj8y6j1NSpZ7AZMvOPiuLAJDD2yDh3OUOaJf0N
         7OFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8M+j+bwhRjBxSju1v4KcsIz83NhKyphwbVREsFIxDyY=;
        b=Si7w+QbgZ31tZAzxUVQgsGWdxrz6wfwVI3PlxpIkVsGP9wL+KgBBKzQ+oGCbKt6nfS
         iYFw6zZU9p3te5LRuOqGpeH2MJbE7NsqzMDJg4tW24suPTbELO25dNviT++F1/qG7tnt
         wfxBWNzvrLLosbnGHiANakIYN2VE/Sw5XwOu2neolYP/50P3s63g27X8rEgLWsd3LQ1h
         M2/4n8mrt92c1k0EU2UMXexXACzksbyZ81HyMwUiCmnTi5gT01Z4P2M9n0xJoeh/+tKv
         wJ6Edo/Yt5OXehP5V4LeUDdmWO4Q68Y0NXGH4i0Ou7yfdxit0qx918LUx4zrIIBbZPyx
         O8tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCoWp5BqMV7c3f5MLV8iYGqjBqepcoU1tLCfhNTktqXHdh1s8V
	czcQhy8GE47uuZtJ1fxToW0=
X-Google-Smtp-Source: APXvYqxU4rGQF2FA9fvBOTUBJa1FIWRYJE/9gR4HoL6w/zfF/sYAyfPxytguPA0/17PzTj45fwA8PA==
X-Received: by 2002:aa7:da4a:: with SMTP id w10mr2797444eds.209.1571997758468;
        Fri, 25 Oct 2019 03:02:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:124d:: with SMTP id u13ls1980508eja.9.gmail; Fri, 25
 Oct 2019 03:02:37 -0700 (PDT)
X-Received: by 2002:a17:906:7097:: with SMTP id b23mr2628687ejk.252.1571997757780;
        Fri, 25 Oct 2019 03:02:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571997757; cv=none;
        d=google.com; s=arc-20160816;
        b=ol9GGxBI6T6Sk/9wmrue5vcg6dsc2NafqTst6tb5Q1HtnDpKXrRQ1j7SLex+HgoEVa
         GpMyPvkyUz5MKtkst+U/LSvHeSCu2kxw2dxDRLt5ojGFji/K06vFZjInU4KxmMHnAf/M
         x/56d/YHW7u97hBmRP6XqHSmvSEAMhdt47MfL3T1BK2Xai09XGpHBGM8TUbhChqt5m5Q
         IKXJnJ1yc9Ndt6Gz4Fiq1D/nGNOK4W/RD4pe6jxRkEUtjVLWFnnNjSxVRD2/bygIeKpm
         Y5DSndgZpuhgKsP2J2HMWQb5TDEFK7EvZIBjnR3CoVVAuC5ov445yfyItM57SL0/NqtY
         Jgow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OuzT7yVOXFk4GKvhxC7C4E+2BKYXhJ/ZgN2CZr+EwAg=;
        b=vJ0f0/Ich9T6waUBMQtpu4OPo7uphvxWnDXXi3aw6UI4ovHiQPZ7RtU9dZqekTZdOU
         Q16A777Ez0V0pdYD1/qDhqt83T/7cyMKf6V8muh2nT+KCo0iWp3L+ZSQMaDhqZjdcLbI
         xmomAGzaFRXZ4rTWpKz96ek0QW2TwsIDyUpLYAh40DDvL5lVj6sf2KPlXiJU/IBY+hsd
         Tb///w8ie7GCU4xdM77vK1k56m3lvQ/QrImZ5phfgew3asj69wQ/K8F3YNCU25V31b0p
         DdX0FSs37lFA/95JU1kVjue+7qoFjyZB3IJCxeIiTzDUx98/revAJn/w2ubJWfNggSep
         ILVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q17si126785edi.1.2019.10.25.03.02.37
        for <clang-built-linux@googlegroups.com>;
        Fri, 25 Oct 2019 03:02:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF82128;
	Fri, 25 Oct 2019 03:02:36 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD6EB3F6C4;
	Fri, 25 Oct 2019 03:02:34 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:02:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 04/17] arm64: kernel: avoid x18 as an arbitrary temp
 register
Message-ID: <20191025100232.GC40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-5-samitolvanen@google.com>
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

Minor nit, but could we make the title a bit more specific (and more
uniform across the series)? e.g.

  arm64: kvm: avoid x18 in __cpu_soft_restart

That makes things a bit nicer when trawling through git logs as the
scope of the patch is clearer.

On Thu, Oct 24, 2019 at 03:51:19PM -0700, samitolvanen@google.com wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
> which will shortly be disallowed. So use x8 instead.
> 
> Link: https://patchwork.kernel.org/patch/9836877/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Either way:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

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
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025100232.GC40270%40lakrids.cambridge.arm.com.
