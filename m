Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYWXQWGAMGQEHMOG6II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 369A84433B4
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Nov 2021 17:48:36 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id c19-20020a056830001300b00546faa88f0csf11357609otp.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Nov 2021 09:48:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635871715; cv=pass;
        d=google.com; s=arc-20160816;
        b=RNVu79CZObOpHRRsMUWA9dCTlbqTMEAAmGzk0R5NeeDnwtHG99FNcnKf1MKtLkXk/X
         7KH0ASC8b3kfkG901n2dXTdwz2PRP4nLVbXlYiGBdRXpZCrUaXrMRTsY1xnKW9l6SUQI
         8TIFISoYqQ3u4KmgZReTKXLzlv1tGbJ8fUaAdHhvOnh19vs1ETMKBK65cJM0EDjGa6jJ
         jsWPim2GRkh+8bqjptLS2+qrMM40Px4tCzxL7NnhN7efYeEg4A8Zhwdk9L4quz7w/x20
         zBwSi+0AXxj6NhiXfxg8pLfI66Op9VgUF6ugpI0LJs8JHc9IOvIRO2BjGJGoBCNWOy1T
         cvUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Lv3ubtNNvWFioBz26TOtZ3ALH+rKEOWcl2t1YXHS/Qk=;
        b=toH6GRDUkJsJBP8+SQmyM55fLQGIaYln1fwe8CoAasJH1ykE401qe4/QFmK2nBFoQq
         hz9lRmRovmrNHcJFc8F2Y5EfFHZzd6wFhW0LQRm6jP2rv2vkEA5sJ3yY6+Oao5K1wJ+9
         lp886UK2t//kamjHCs+wWG4yoNn9P/OdQtI2pq/UJYGLdhgG426OM7n/7iNC1ZqKEIx8
         +5BZ1FhtdGNgRLhXiE9UpDld9z50R8CQWGPJxeyIrbyFdY+LSFlSkMdjFFLUdB8bD4Lj
         vagiAU0FBPaz+ZVL+zWvcuGU47vpxUGyOIdD2LM18P7+PrxAsFjcT78Jk3Si94SdBZKH
         I9rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="d4q1/o67";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lv3ubtNNvWFioBz26TOtZ3ALH+rKEOWcl2t1YXHS/Qk=;
        b=rvahNomglyP9TdYeuUVo8gZJZouCFpYRS9qCp50ALUTs0QoViTpgURfFF5GOVulQoO
         BoEtuM8RiYNyS+kXce7OAxg3lNlMdT3OsAi4F7fNezEPsYAXZK//xhAJvDM6NzQ1dw2Q
         wV8xYCbF86XJIuc2XMfXOp1EOeU3/j+bLHY49WcCGQVZz+wMCHhXLX4IoaXfkYY6tNYC
         AsDECd+Cui5hi0tvcTWBTRf2UyfElqrXkiTkib2CZmOgWO/zVRijOJWMPGLW97o3yW6P
         VWp/pV+T8yfHi6JIUtngMh0snFSAw/iPEro29cIZZprU5hZDGsX8vltUIIHbQ/HNOYen
         pl+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lv3ubtNNvWFioBz26TOtZ3ALH+rKEOWcl2t1YXHS/Qk=;
        b=aR1L/kpHWFxwuzv5qGZBIL/ILLbLOTgZma3Kp7XhPUpGabdC0kSsyw1+1P46gtDJv9
         HxTvwafVYUOvXy1+GtMY5TGIuAQgn0rqj5gUENuHSTaiVoI/IiXWr3oxciJBpPt2PBUD
         6GEqRANVN1aYeSoBVZjMjzeGulDPVBlXPck3jfQ7WIUTS96T3bOpGRZyltes7xs33IEw
         cFaMeq8f6R8ikemkns2BmdsmjddJiMI42Yn/EGsNnHqYTcNisQq8iOB0vM9vzgTPTHC3
         8gqqQaMaaXBBet+VA2qmleGY5XnGGn/I8zqChnQyQUq6q73e0Ez7tuxxsKYPHg27SAF5
         DCEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iUBD4i5Sdo5pJjwLVWyBOnyCHvtU7Z0o/LaI3ZbJTWpjYC717
	+dshuevo8q3rzMdTjvW2Ib4=
X-Google-Smtp-Source: ABdhPJxegu/lsQ/nyKuGSKUf+4mmGIK4eMkkcze6xgPOG7xLFOM/CpaXzK95pLjOgR30+JakY7XN4g==
X-Received: by 2002:a9d:7601:: with SMTP id k1mr10505990otl.356.1635871714930;
        Tue, 02 Nov 2021 09:48:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19e7:: with SMTP id k94ls5175893otk.7.gmail; Tue, 02 Nov
 2021 09:48:34 -0700 (PDT)
X-Received: by 2002:a05:6830:1bc3:: with SMTP id v3mr28058244ota.238.1635871714584;
        Tue, 02 Nov 2021 09:48:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635871714; cv=none;
        d=google.com; s=arc-20160816;
        b=bzwcVLp3n+M2UzvKzGrF6uVd1DmqKgkXRA4003vBht5eeLdOa60MhVmxDLkZpw/61O
         BxVtanbVL/6GLDmZ5dJ6fd8W7QQl0yBJ8ChUFnKkJ5rfNxWkVAmjPSfGtSUu8m8QtyGh
         t6Erq0lcIJG1U9mAVoMp8rj5iy3yfg6C7L/kDKYV2lW7l8FVJHTmQjsm0i9Z3cND8fT1
         uGN/rIB25RrzPwME13/egpFmAySAOEZ9mEpqAW6oylqzW29Zr7lJ1o7xV29IsyPeHTyU
         z4OHNeT8bWbITStjOSduGONh3DYoqeuVbG2IXQad00E4A+6TeguH42s8aKrkCwl5ATXy
         MxwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ITy7yEmR4PpmRrRr5yEmfT2Gf2Tt3UJGxuVwX8f6G7A=;
        b=UdOjXUcVjHTgwaqxgpIhcwj6nJcKGSya4WA2LROVXQU4LGin4BHNA9/qx9IQuSXHhG
         lEHFyn3Ka0x+EmD6m8C4FrwiAIbml7rcd00913oEMgBQr3ilvpQa4COSKWkBpbzsflXu
         AXRMMB5bByVVcN6HQ909icAKSoE2NScMjGPyKbf6cb1iRuhg+IJWGB1ztN5EJ7ngjn1I
         rJqlmOOwUym9aLlOFsgI3/F/+m5yQ0/Wwd9yKLBJqlAHusZWPvyudWlXb6B473aOEOti
         KHOS5XoJO42dxbgY1RZGOJUosbg/hup4PyGqE+FGXm0sNhNi60VAVK//rEv67d6ET1qF
         VMjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="d4q1/o67";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p128si1063163oih.0.2021.11.02.09.48.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Nov 2021 09:48:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4CE796112D;
	Tue,  2 Nov 2021 16:48:32 +0000 (UTC)
Date: Tue, 2 Nov 2021 09:48:28 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andreas Schwab <schwab@suse.de>
Cc: linux-riscv@lists.infradead.org,
	Saleem Abdulrasool <abdulras@google.com>,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] riscv: fix building external modules
Message-ID: <YYFr3F89YWfUDJxm@archlinux-ax161>
References: <20210804173214.1027994-1-abdulras@google.com>
 <mvma6imr1ww.fsf@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <mvma6imr1ww.fsf@suse.de>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="d4q1/o67";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Nov 02, 2021 at 04:51:43PM +0100, Andreas Schwab wrote:
> When building external modules, vdso_prepare should not be run.  If the
> kernel sources are read-only, it will fail.
> 
> Fixes: fde9c59aebaf ("riscv: explicitly use symbol offsets for VDSO")
> Signed-off-by: Andreas Schwab <schwab@suse.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  arch/riscv/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 0eb4568fbd29..41f3a75fe2ec 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -108,11 +108,13 @@ PHONY += vdso_install
>  vdso_install:
>  	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
>  
> +ifeq ($(KBUILD_EXTMOD),)
>  ifeq ($(CONFIG_MMU),y)
>  prepare: vdso_prepare
>  vdso_prepare: prepare0
>  	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso include/generated/vdso-offsets.h
>  endif
> +endif
>  
>  ifneq ($(CONFIG_XIP_KERNEL),y)
>  ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
> -- 
> 2.33.1
> 
> 
> -- 
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YYFr3F89YWfUDJxm%40archlinux-ax161.
