Return-Path: <clang-built-linux+bncBDV37XP3XYDRBQXLXLXAKGQEB37LKPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id D293CFE008
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 15:27:14 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id v8sf6059648wml.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 06:27:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573828034; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/Hw9SuiSl1Rjpuv+WfdsXQaVKnAZmBM7O+nG6LSDmu7IwUEah50LedQL0uxb2RGv+
         pTs8mmadg/9qNptqh/hewii78GW948BR5n9n/7Lu+tsHh/9wRu+REEKr/cLiIlxdmgab
         WDacVVpRWz608+L4rMxQVBvzl/IYq8zjMT4Pfu/ONQykYbRkTBXD/TIQVkDULPVPkDMq
         Mwu6TKkMK26EAZtfAIdUxvPQhXkFLLmEdU3LA0Dt1OXuSGSjOiz1nyHJJaoDpL7JFTr3
         O21nty8r0DGOPsqxq7LljWo5o/MBnrzaJ7yLH/fnhW1cWzEjZrZV7ybIjQVJuDW+h22x
         nQaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zAmZRcMotDqmnSB7ftEZIPVs3Lnyl92M+4JV3Oc9fUU=;
        b=lH9MJUx43oW2aF7PwjlC0NYfmzygI4l9MDSyTqxq1XZFAizJIC70XBg8tP0+cJIF7z
         TfEONXruQZNz24r3RbBXmDAPQGvD4UbrGUEYVvIFviuMCsD+TQWVF1tU3MSdz92/f2ED
         dldJ6eW+AaI1EUsXeuEjvuKKjo1CaXBipbt5hFf4zMbA7Rum49qy100OCVGVaimPBoBe
         Pwz1G25JX2Nl7IArlGe8W3IPDNWWf1Ro8RFBM4OaCmYvDSUzzKtX+Q3o2Qkgsotz74Vd
         R0POIRpV2ruoi0aiejIkITt9tLh7cZ2i6IgD8MpTyKbcTRI+v1Fhu87aA/7WdzukbKJb
         0Ekw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zAmZRcMotDqmnSB7ftEZIPVs3Lnyl92M+4JV3Oc9fUU=;
        b=HCXVt9LvDMEWTRjr3Z4Z/lyVE+1WDphf3fJgrDQk/iMkPPQkS4t7e3ZCTtkYcq6skR
         vpTeOOsBPuyNeCVPzjKYa4/P3EiADMcF5Z/6TTHpajgp6ZQOvgDieAj8adZP/0uV4T2T
         IYqG4VLZKHlm21901gXWPxx8NXFBVgbVVapv/Xxz+ohqWUvvrqOMFn289kO8nTCkF8eZ
         G6KGjf8eKlg2XmSr3/dA5L0E9BUts+8dAnqF5Sj9EbIwSl8sYe1Mrof/iJcRySbsDEPH
         Vr7YN1elr27s5aafAOqdjYlsX44D+oFsBndD492OYSzrCMs1YJVpfoHvw2NouNeRkWO8
         K3jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zAmZRcMotDqmnSB7ftEZIPVs3Lnyl92M+4JV3Oc9fUU=;
        b=FdSfOKHTzsk4DmEalQwXThn+xPTDY3xxBRB9Ek5WOlKdgTw5H/nkgHFPkgtxgWXeiD
         M5ffhHqdBsPLoq/75d4Ut7Y7Z39z5LXg3MyBa6Kmjz5reSaUiB/v0aj20UEJ41oCzAhV
         eoXkz8kieUZjAmguzJWNlzy2mZmfATcc3zXP/9lRbgzxUmUMFG0cSZygdJVP7wHnBvZO
         dzGvTSfiP5sTswsoaQm6G5UX2q4RUiJLrah2lVvWIq0TdJ9/fsxHOXSMGUk1Z4FlUs4+
         nj2YWK+AWJUDPINXBexO1zcLGYSdrgS+5ar+HQDMFgMIyVC86sfRqqjdyv6iassWNCDZ
         da3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiFbl+lE+ZC8lT6/CfE79EsXaABbLoZDhFxq4jFc3Icp2jWEb7
	Zu7uKBCXeFk+0toxoOtpz0Q=
X-Google-Smtp-Source: APXvYqxQBZdygWLoJdwOo5IPnFioqV5FRMbiapYYvu6iVH4TIu8ppnSFvAhG7/eVM3sYRZA4sWWfSw==
X-Received: by 2002:a5d:4445:: with SMTP id x5mr16509582wrr.341.1573828034398;
        Fri, 15 Nov 2019 06:27:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1008:: with SMTP id a8ls306315wrx.3.gmail; Fri, 15
 Nov 2019 06:27:13 -0800 (PST)
X-Received: by 2002:a5d:6706:: with SMTP id o6mr15845499wru.54.1573828033748;
        Fri, 15 Nov 2019 06:27:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573828033; cv=none;
        d=google.com; s=arc-20160816;
        b=day2Zvown32aZw67zW958OgZ0Y0zQ+B2UR7L0ZPXY7XSIjDHECr+LCheExxUyHVv/G
         T1jLsB8BPl9mUSB7sTYOYk9I/QOWRBrLab2ntUTygRNKZOKdlco2zNZiGB9EdnO1ObZQ
         NjDYcEachCkaNpTLGJJsjlXYI8l8M4H46+Uhn1ln0nYz8NZqW4pQFDCkWAoGRqt66Otg
         u+E5zrm8G9dVXkZun8H94oqLdBGWDTd9Wkpy+rU8Evf+Tn54Y5+zMmyFzZyrBgG7Ikp8
         8uUOxtxvg3dCK3o116IChWASwz+NEGaxBACh18poblCR9lbIpN1fYyoZknNdNMANw35x
         IzdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=f64mssJQcljIreDJ8ry7qFy+Wr1D4RveB2vD0XXqDzI=;
        b=q9E7BPOj+e5j5+1J308y0zVKxmk4qynuyRZH8h9EIMJ0FEWktNndGSplvMdufaDXse
         0mQybCe9DhbthAscyYxbMd9h+rXFo14+4lrWjyE2drb5oCVTnX7GR4uHlkos/jQ/etik
         ycAUvLl9TxtMGOPs2IxNUCuyvCgZ4WrSkFECeceBQqt+rwvLaRZ//P6DhmPSl2vSA9Rx
         U256hzdT+gpawGVdpStuFBX15wpmJZmRLV0wrifqCV/aYWvzNS10Rf7EVm7sOGIzJZCJ
         NUZT10QYS9lECRixzJ4x3/VtZwaPPXmZiPzMIaTDTFVTjAz46UjpvDpQe+2cFjMC3Ouu
         MpCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x2si486026wrv.1.2019.11.15.06.27.13
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 06:27:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E08AA31B;
	Fri, 15 Nov 2019 06:27:12 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CF073F534;
	Fri, 15 Nov 2019 06:27:10 -0800 (PST)
Date: Fri, 15 Nov 2019 14:27:08 +0000
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
Subject: Re: [PATCH v5 10/14] arm64: preserve x18 when CPU is suspended
Message-ID: <20191115142708.GF41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-11-samitolvanen@google.com>
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

On Tue, Nov 05, 2019 at 03:56:04PM -0800, Sami Tolvanen wrote:
> Don't lose the current task's shadow stack when the CPU is suspended.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/include/asm/suspend.h |  2 +-
>  arch/arm64/mm/proc.S             | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
> index 8939c87c4dce..0cde2f473971 100644
> --- a/arch/arm64/include/asm/suspend.h
> +++ b/arch/arm64/include/asm/suspend.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_SUSPEND_H
>  #define __ASM_SUSPEND_H
>  
> -#define NR_CTX_REGS 12
> +#define NR_CTX_REGS 13

For a moment I thought this might impact the alignment of the array, but
I see cpu_suspend_ctx is force-aligned to 16 bytes anyway, and since
commit cabe1c81ea5be983 the only impact would be a performance thing.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  #define NR_CALLEE_SAVED_REGS 12
>  
>  /*
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..5c8219c55948 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -49,6 +49,8 @@
>   * cpu_do_suspend - save CPU registers context
>   *
>   * x0: virtual address of context pointer
> + *
> + * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
>   */
>  ENTRY(cpu_do_suspend)
>  	mrs	x2, tpidr_el0
> @@ -73,6 +75,11 @@ alternative_endif
>  	stp	x8, x9, [x0, #48]
>  	stp	x10, x11, [x0, #64]
>  	stp	x12, x13, [x0, #80]
> +	/*
> +	 * Save x18 as it may be used as a platform register, e.g. by shadow
> +	 * call stack.
> +	 */
> +	str	x18, [x0, #96]
>  	ret
>  ENDPROC(cpu_do_suspend)
>  
> @@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
>  	ldp	x9, x10, [x0, #48]
>  	ldp	x11, x12, [x0, #64]
>  	ldp	x13, x14, [x0, #80]
> +	/*
> +	 * Restore x18, as it may be used as a platform register, and clear
> +	 * the buffer to minimize the risk of exposure when used for shadow
> +	 * call stack.
> +	 */
> +	ldr	x18, [x0, #96]
> +	str	xzr, [x0, #96]
>  	msr	tpidr_el0, x2
>  	msr	tpidrro_el0, x3
>  	msr	contextidr_el1, x4
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115142708.GF41572%40lakrids.cambridge.arm.com.
