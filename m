Return-Path: <clang-built-linux+bncBDV37XP3XYDRBNHTXLXAKGQENYNG5XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 49303FE054
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 15:44:05 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id y3sf7745142wrm.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 06:44:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573829045; cv=pass;
        d=google.com; s=arc-20160816;
        b=sKkFAUe2YmzAcVeaAd2gGQZJU1mTjbMnYjh/BarB6xleFKJ/C0TH6daYFe4UiS6frB
         TD2kFB+vA/RC+9xfkiwedOFKGh8CG8bzW0aeWXS2qRYEbs6n+FxmRMfM9lqKG5sdeuY5
         lcxTi+F0Bi5okM8fmSBIGhp1lfqy6mVgohFN7sXXXBmtfEheCHVHSRRCnqt2lvdri3/k
         m90W+eg/OCk/19pnbPfTmjE6gNlG7IphXTTXvViFyIMQxkzhyu4r7AzkjF5IVzktNV/r
         QoIrAhW6KvjVgrDp8kzIRCoqODXLdNBILmr4eRkc9WO4SdFLQjfTPwV+XmpuP2gbDDN5
         abkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wb7dxV2owLDsE2QVrg+KvHpvJul+vJpe7tIr7yPcCgQ=;
        b=E3CoWAZ7qEDUQZ3beR3xRCZMAxFjyCJJeBR8M+69t257MJLwsE1zcJvs/BaagXIhLF
         osh7jG6UTMg6D9lxxrOMAqhfnO5HmEgp0Gp3qoi51tvbfJaQhktOKejacilpWzm+za4I
         kB1ZEeHiaX1CS84V07/mIJHJNX3XoE7eBCpR5EZLtNc5qdlvtV13Lg1MZlRxZU+Xy3FS
         6qDoJMaTVs69oXDazijtvpC1C8EUhdDESOpJh2rWvmtaJNiWOWhTufkEpROrQ2uVx2r0
         yvfaM3ZvdFL2HU1YrP8yLKY9PBgeW8yPT+ftzABOKt+F+0apLrL3gFeQkkbcUDXvAd96
         emyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wb7dxV2owLDsE2QVrg+KvHpvJul+vJpe7tIr7yPcCgQ=;
        b=ZHWtZUrHVkxa32ynoqBOocVtI5ZwkLixqvQBttTqwO8lI9Halpn5PnkUYUJBrpINge
         2+pa/SR22o1wls7e7N4chs9Kw8ZREMaLSWfesQicfkHhHiawH8IFxCGoY3kOP99IiDz9
         ZZYjRdMIueieNdb9QaKHfguvwxX1CZYLMjz2PemI6ZkhBcf0Amd99dUIeYOTxOiDFDwJ
         u587nVYRX5jJBXmqNge7z8Pj2fZKem2BZOCyJNuu5eB+m8jDVTuzE3/JgcsVaexwno8U
         87v6K/8RHUIiITf/+2iiGKFCvfW8xq+VsOGLtoubq2Q5CrGGOV1VL8ouPAZEItvi26L0
         Ca1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wb7dxV2owLDsE2QVrg+KvHpvJul+vJpe7tIr7yPcCgQ=;
        b=FYHtmpS2Dv1HcyKKQyXqwQF+UQSS0N1kkJLSkOhKegHcYUI2D3CWGlafMlsxZx+zI/
         0d3dcEPvzRAKn/3nzFeqiiQ84AiWO2Gs4zbRNNvnM7P64Hq+KCMOM/Jbj8PYwyU2DXaX
         fqAkxNe3R9DkfZW9gBmGyVfSMH9WMQtwi4K4Jf2jRCawrwhnyRT8in7KO0Tf7k+1n3mL
         v1z9G3kjGgacaX1D/laF0+qVZibXbAgohtE10k0oOrjhIcAawXosXKscDLzJNRbfhMB/
         us4aWocFjlWrREZGxv6XwQTIOKkeeQjPidp64Ly0cFnfD/4LseuML7Yi2HMIxZwxaZ4i
         Q6oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUNdkVLu1uy51ofjUr2GIN3J2O+hRI56l0g9j/g025HkgGDoHWL
	y0fOVs4CBXO83p5uZn2J+6I=
X-Google-Smtp-Source: APXvYqxBUdsjaEyBaerbXAFVBWQDpqRX9lYLTQDMJvopkxrX4maYgcdn7b+GEUhyQhsVMTUkU0YxHg==
X-Received: by 2002:adf:c50a:: with SMTP id q10mr16686595wrf.374.1573829044956;
        Fri, 15 Nov 2019 06:44:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c447:: with SMTP id l7ls15810068wmi.1.canary-gmail; Fri,
 15 Nov 2019 06:44:04 -0800 (PST)
X-Received: by 2002:a1c:4606:: with SMTP id t6mr14459946wma.73.1573829044324;
        Fri, 15 Nov 2019 06:44:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573829044; cv=none;
        d=google.com; s=arc-20160816;
        b=M/GCb6IL8QPdXywNVzDkAYBUGZhhJ4mhuUZkWMuEOjCEOsJ3iCtheaaOWAAvfYyb/M
         spYrCdk2kQrFAhHGZELtnfznuyoeDIrTGGDXGvZ1x/xXaY5Zd6IHoR5nZUmJhzLD7Ep9
         bVMHq+5logFG1vWhUA6kAAoCynt5aOcl6d+oCkL0smt6NT8UJZUowNopfSO8P+fg6Dw+
         3JDo0LgV4SqQu6Ypqn2hTCGTO6dZWn/vJpIkIP7TQm7LhI1u04uZ4tDyOcBE3mRzjp+4
         UclxQZQ87bLbkL07NEldvFG5rCbyltaZE7EFerGw39KxdPFZpQNUTe28dmjkwM85l7SS
         hzZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=UhXUHqftGzuWio2y691+7Bq5HH9vhGA8/Bk9cpJzlbA=;
        b=0E70SdHWmTK3zLcWoRBkk+QBSSb05kgoEk62A9VcH1pc6VBuommvzPD2vKVgCqnGnU
         IoEjk+tt42gDALDibO5oiYDp2rxXBkKljh1vIDbcZ9rYZbjdDsvEx0Fh3ruQuZGJvo1e
         40kauRGFNtxeJyfhMIVafKIz5nbLnBbK+K7jYqvODNI/vRq2FQM0jXKLV4VFZZq3MeRe
         72zlsys2Ztr+kswpXM+1PX2XRHObs72cHyVxZCmPS+SvsiYCpxc7Gk6ljVm5PXR6Gnbj
         NBJcLoJ+XDndF5q+iFzPWnpDxMql8FoIdIuejSuZ15N3mcqVw3dHsA6mlfy6qo3j08gd
         7aDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d5si593564wrm.5.2019.11.15.06.44.04
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 06:44:04 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C4DF31B;
	Fri, 15 Nov 2019 06:44:03 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4FC513F534;
	Fri, 15 Nov 2019 06:44:01 -0800 (PST)
Date: Fri, 15 Nov 2019 14:43:59 +0000
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
Subject: Re: [PATCH v5 12/14] arm64: vdso: disable Shadow Call Stack
Message-ID: <20191115144358.GG41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-13-samitolvanen@google.com>
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

On Tue, Nov 05, 2019 at 03:56:06PM -0800, Sami Tolvanen wrote:
> Shadow stacks are only available in the kernel, so disable SCS
> instrumentation for the vDSO.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

I gave this a spin, looked at objdump, and found everything in the vDSO
was a leaf function. I hacked the code around a bit to force a function
call, and I see that just uses x29 and x30 as expected, with nothing
touching x18.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

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
>  KBUILD_CFLAGS			+= $(DISABLE_LTO)
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115144358.GG41572%40lakrids.cambridge.arm.com.
