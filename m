Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5MNYP6AKGQE4DFG2UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 980BA295544
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 01:40:38 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id q15sf2782895qkq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 16:40:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603323637; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhmIx0AlD2eb6eLm9Bc3t0JM+ey0bd1hhKAEJso7WU527MScixn8X1sXGalwat8PHP
         vJcABrGr6osYBGOpUvTk3l2Jn1D0bdVj+tiormS1AuHgZQdms/9kDUJXQhUDP6J4B89g
         ZS4/UuD7NxqvctPhMK/hkw1ct+S7IghdaRoJ/9eibXLcGYFHVGo5nyOMnAk+dAK0F+l3
         Z7D8tkdGO0NLZB0n4ZsPrQMkJ8MmTe438fCw8o/0ZUFNK3CiI50I+ZW6ma8HdADOPd9i
         AOS4eSNjfygUtJEj3mop7OVQmR9Qacxg6Tc8pnkTQR+5cXlkIy276NTkvYPaaEISbwf0
         hxhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pYCV2Q4EW26pKcQ7vOqALIHESRbv/I/puvxxDKf10AM=;
        b=Ypgdp/PB4c8BbY0fQfEeM4h7OIoTJUV+S9VXVJcM3y/RHWPzrX4+WH7i8UZFmPtSGo
         Iq5tNxOHfo9NrX3GK6npoWawzOtz49H2Tmnjrrr4VbpMcnuCV2a0cmnskvffGQUBl6fV
         vl3znEp0ln2FHgVmiIQpRmx4OTJRiI5pUSBa70UqOQDFLtuMsVxmilhIXdKYnbks42nc
         rboyHi50l5ToZAT6vlRL5WqbrT0UPb4TlJVHPX+jM/eFoa819m6vOQ/x7I5hISulXUU5
         pMX+/hb9goXi7FPD0PtvbQE7iGwb2jJ9Uq+L1msuurtsbVE1lkqaqQgXR+WdPsvt5H+E
         2Xwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YRDA3LM3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pYCV2Q4EW26pKcQ7vOqALIHESRbv/I/puvxxDKf10AM=;
        b=eLN2jVfuxZjFhGJgOFJ6Sa/ycGkrH/FKXjNuGYpjUGCa72rWfX8V78gpnKgGP4O8zU
         MpDVzMkd3sNiGJ3gt6ohKPTASh3Fe+1y4q8V7+cvWpQ0S357Q8FzgDdpsDc9P9gNDTE6
         7PLpc2h1xPq75kzd0TzlqQX4bOUjW6yoiXFlN4RvIF/6PE439lNJwsiRMUy9351GDtq4
         kGfuKOV6rKKzUCFwOEowWhzwT9hxq95wiAr4RSt13ZTxUlbZ1RXa4cbDYd+MZM7979AI
         TnsKtVJOXr2UO4N6KJdtpIaONKgrafb3akCd4up0O77bssPaLRPPGMaG5TuN/dXoeRlA
         PdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pYCV2Q4EW26pKcQ7vOqALIHESRbv/I/puvxxDKf10AM=;
        b=UIcCYZh+J554Pzxw4VfVRoDY5oPkSZR/MSENJX1NqTAyyW8nR85DrvbvriszA2cQGA
         Oy15eRDOntEBCt9CLBD9OIiqZx66N1IDygQlW01Ux7RV2FYbcEIlyBbZzDqn9nQhoGqP
         Oyhgg80cWLUNvZ79frufOc7xKU5mJs/hgJUcAdlD+UsFe0sAPuQ5pNX/wLVlBbC07FJ7
         SDKbModgQJ5gPhVQyAWJGLf38Qw+dw8IGZt3t8PQ3u+ikZhp0f6uG9ejDccCmodw2gaF
         kdeEc2RF9nAM4QhqALX5FEuIRW61FqmzAWoJVwhdkGhYqXDZLjakKu3Fl1sFGBBJYfQY
         1k+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324DCJerCBb0T+Y56+6pYUroKCEFpusPVMbUgq5jW4qqHIMKyW8
	Y8UzPNI55wFTj/fPflX3+d8=
X-Google-Smtp-Source: ABdhPJxAg/Y1iuCkj5nygXCTPaYusCR0yytEYTDmpFf0kJVmf8D7LVr1Re+McUr/mzVB45POfxNfWQ==
X-Received: by 2002:a05:6214:52d:: with SMTP id x13mr5363121qvw.20.1603323637663;
        Wed, 21 Oct 2020 16:40:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ad0f:: with SMTP id f15ls719916qkm.8.gmail; Wed, 21 Oct
 2020 16:40:37 -0700 (PDT)
X-Received: by 2002:a37:4b4f:: with SMTP id y76mr3778138qka.108.1603323637215;
        Wed, 21 Oct 2020 16:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603323637; cv=none;
        d=google.com; s=arc-20160816;
        b=xqUdNd7SdmC68cL+KRNHLE9RH43U8wVY6PlMD6nzksH8ACitamWCzPA8TGwn/Zp5qs
         fl5DR9X3kAbBOnxsr2zJPzFrr794Aa/S721GEuk9BtbGexlT6tfmYlLVBaczI9V3KGB/
         QfPGDb204oeXISo4NKgcPaEeJP+0NRzxYLY7zIN9LXcXI0Wr6lmK95M0TpnqSsUvbCAe
         zKJdtTookSoxYemEE1IjvhI9eUEv2zhJ9dB2b88Enxxb0EpJFoRU0XRmeJpnb45mCSp3
         LNMdPVoJRQX/T3ffkd0zExf0GGuprZLe3l/NK5I0TrcfNxDe5iHw4cgPd8ttvH50Z5dd
         CTkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O9rYzRnSkF2UD97oO4EZ0NEFG4S2m4ydCre3ge1rKBo=;
        b=frkm8kEt0zDmZRrSOSVoEktp17yMkLIRRPo/nj+lsMAEvghGsssl5HLvqfA/t9CLMt
         1k/44bdoC7kbdkWs/2mPJvdALJ3vNGm0jSdxZ0X2Vi6cfwnTAVU2PRXDyjpp4tvBs9+D
         w+ZmtFX7j3agzUzcubmqXePRIk3tnxCq7QtJ9aIy2FZVc4jLclolj0u08Rm+ps2VGGTi
         nKCMQVBHcfm9kH9cHlc2vFLEpMJXVwZvir7wXcDkPNkZeoBENDrAh8xckIRGR2cj/BKH
         uskMEfegZ/IlDE7XXo5j+QjNAysrSJ94tNx0fDtjlv0RfrVzrZ46dqN9c7OuaE+oJT+V
         LbhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YRDA3LM3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f6si190240qko.6.2020.10.21.16.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 16:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id a200so2414810pfa.10
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 16:40:37 -0700 (PDT)
X-Received: by 2002:a63:c806:: with SMTP id z6mr21407pgg.430.1603323636408;
        Wed, 21 Oct 2020 16:40:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ne16sm12877pjb.11.2020.10.21.16.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 16:40:35 -0700 (PDT)
Date: Wed, 21 Oct 2020 16:40:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
Message-ID: <202010211637.7CFD8435@keescook>
References: <20201021225737.739-1-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021225737.739-1-digetx@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YRDA3LM3;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
> The vfp_kmode_exception() function now is unreachable using relative
> branching in THUMB2 kernel configuration, resulting in a "relocation
> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_exception'"
> linker error. Let's use long jump in order to fix the issue.

Eek. Is this with gcc or clang?

> 
> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")

Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sections") ?
That commit may have implicitly moved the location of .vfp11_veneer,
though I thought I had chosen the correct position.

> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  arch/arm/vfp/vfphw.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> index 4fcff9f59947..6e2b29f0c48d 100644
> --- a/arch/arm/vfp/vfphw.S
> +++ b/arch/arm/vfp/vfphw.S
> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
>  	ldr	r3, [sp, #S_PSR]	@ Neither lazy restore nor FP exceptions
>  	and	r3, r3, #MODE_MASK	@ are supported in kernel mode
>  	teq	r3, #USR_MODE
> -	bne	vfp_kmode_exception	@ Returns through lr
> +	ldr	r1, =vfp_kmode_exception
> +	bxne	r1			@ Returns through lr
>  
>  	VFPFMRX	r1, FPEXC		@ Is the VFP enabled?
>  	DBGSTR1	"fpexc %08x", r1

This seems like a workaround though? I suspect the vfp11_veneer needs
moving?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010211637.7CFD8435%40keescook.
