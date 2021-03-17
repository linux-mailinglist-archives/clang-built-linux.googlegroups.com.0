Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBTNIZCBAMGQEX6H326A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE8733F2C3
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 15:38:06 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id e25sf12734262oie.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 07:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615991885; cv=pass;
        d=google.com; s=arc-20160816;
        b=l/UuxjMlcvNxbEOyvbewIzXzyhfMfbKjs8xFrIAej0t/PNxgbxnirvausFT7we7Mf+
         /w0/DCnKJ2NJA35zJ2a7GWSAvumPQsi5m4sJvlHCNTPgwtvMg8TNpHtJZCqRZQxZxswU
         n1zHk5Cq6gRf135A4RQG5sev5hZPJVA4ktfP5fDY6cDJ/oUNZJ8py1fz5bBpIKuTmvKx
         KH8OyWrBOZ7UHUOpklTfK7f+tkQj8HAHZRQzkHhTYoTVv2Klx3znJ1zYVGsDHun2YRGD
         AnOKMWM8FbgVIv4K5h/gNeIROrKOw7V1Amyi0UmdmrK+wS07yrswQg39bznJ5gDTIFzv
         dKwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=amLvgDdZ7jLTKbbkJZLs+bMHVqbsKdVtA2ORzdqsNvI=;
        b=vFwetM6utzV2zzS4BY53TYbLP9ZBnQjr8C7MuKwrwyeFtmgCakj5iOO4lS1/CzDcNx
         M3UEL2e7lXYu/iTNwUYTbI/66TlMJ6dCwQC7JfELQP7114RHDSzhYKfwgmBGZhvsMNxI
         fKpzlt2X1P5MYec/6SK4hKz1FbOXuAhI4IoSFk2rzJnIJTtRiG/8RL2zNly6tgzUcGKA
         wmFTRyrYGaqnUTkPmlrFVVWmz1dNeyeegcYjhjyedMH4uP4/+vs1sg05KZAbu0Ye8GML
         HNBYZAgOEUij8oLz04UNdOaV0cCAwVNCLOLUIGWA0CSVRq24YkY3VHAadxDArCLDUDDe
         ttmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=amLvgDdZ7jLTKbbkJZLs+bMHVqbsKdVtA2ORzdqsNvI=;
        b=CEHFXeDkcs6vSjboIjMe6NSQ0B16b0C3UkR5GZOeav7qaEvK0Z7Jo1P7PhR10w5LDE
         Rmo26yYG16I2EXJf7z9LJ48Qv8uy/gQMSb+yaQ+EAR5tni92Wl2YWpQujo0tObwfF5Mv
         bKrujw8o5you34+y3Y399OH43oa6Iz0LFctVMdmX3MYgsHW8kaWfK7SSpkpY85QdXjQF
         Uvtpj0HcTiICwGzPWIr8SkVN54r7VtSg5RCVGZU5JWKktt6N0jEJAO+vttY34ADV263D
         6TR6br3K2a3JPZZeWq58N+8dKpRRcZ15f4qtfi+SFSEIiEl8w6iJOGt/vbY0svHWZmMN
         GJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=amLvgDdZ7jLTKbbkJZLs+bMHVqbsKdVtA2ORzdqsNvI=;
        b=bDx+mqx2u73vS7MexZ+d+G4zhbwM8J8DjGJ91qV8ogmH9invFpNvfJL+dvtGPX8erR
         5yt9xbwxiv3Vml0+9DNItUkHCKrdO+ogRhXGxrdioqueo8wOFptO4/kynG4CpuaHqTcc
         280psfcRU91PqT/0KbNI7ZxlvMGK616eRgZcMH2x0tTCiM+a34E6Nj56tb9/REy/++zR
         o0jpxeCc9nZPZMhiUPNg2aQKHf8GxFhTgaLHu/xsPlBjwhkuxLIiu+z2gxDgJa77NLrv
         JEojKU5M9rQ7vr9AUQO6c11pLn6LosKK6+ofHgZ4JxG3uBV/rGiGzEXj5hyOshBbyLDT
         RqCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MEaGwM6/g1LeQcTRLKKM4zrLN8Z+wpKC8ZhJb+Pgqxk/KsGg8
	132v38qp4zkzpsWeFKLe+u4=
X-Google-Smtp-Source: ABdhPJwmQ4XoWse9veUlDGh9el7V8Kssp0hH1MHlXRGCjcoiJuSiJL6a4obv038ZKsK+2GA+4MK82Q==
X-Received: by 2002:a05:6830:3151:: with SMTP id c17mr3553820ots.245.1615991885213;
        Wed, 17 Mar 2021 07:38:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5551:: with SMTP id h17ls6052597oti.1.gmail; Wed, 17 Mar
 2021 07:38:04 -0700 (PDT)
X-Received: by 2002:a05:6830:17d7:: with SMTP id p23mr3577548ota.164.1615991884860;
        Wed, 17 Mar 2021 07:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615991884; cv=none;
        d=google.com; s=arc-20160816;
        b=U78Ulh6cVxxdmn0EEGLzoBsXNToRS+C5Cm81Unwrk+UDJSNS9xnn9vYs2bhHmBPfq9
         7ySp//12HwmBPRU48WvzBEJMwaMK5uYmrE9iJsEU8eBCBZMkw6OubJJr+mubGSPpBHdU
         ICzTzTRFezLWt+LrgDUOni1kL9uT4+RnjARIcvpfjWNgowlUxdK57NA7Zdm+YyzbzP5F
         pz9XmJpEwBcO0Ugs1ICjcQdmJBxq/NBrXonVYymcmyEHpToZMMLJ33buttmP94Q9lHkd
         Vu4t4RrP1P0qSG5T6RbmnM+suTcGB+ckgZRUihvE+vPtJ5M42H+tPnJGE3waqgkJ0z55
         YTTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=iDcjKrqUxsRDmo8F6228geNZWSiYIB3hCLtGRZrHEmc=;
        b=oQZ3fwT8/Mimxduf+3qGFUu4dw5PxqxF4zu8wXIKeQ+kDMcTmWVFbHUdHNePYPDnI0
         hAu7FDOKq324MYvIdVYo22/gb7+tFJT4iAsL+ov5bBgsFx+UigoiDTjyOyjRMkCAbvqB
         fK3nDLCTrW6oM+YaBcG3BNgHrRrIeh6FDNtlbXiiMkPu04sQ/7qnJMy8SoR6ufKfHSV5
         ULFp617vP8wceEL6a0N5Aiai1s3wsFciS+GWpB284BGgvoNOTIojPqDN6kWEteJp2e2+
         xIrj0fVcJSgpU9Xvdu0pBaov/3vTCwpF2oqSZtXb76JNJAwWcs3LeWqcLUNgq3eC4Rcb
         tVhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v31si445998ott.5.2021.03.17.07.38.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Mar 2021 07:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7956164F40;
	Wed, 17 Mar 2021 14:38:00 +0000 (UTC)
Date: Wed, 17 Mar 2021 14:37:57 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Scull <ascull@google.com>,
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <20210317143757.GD12269@arm.com>
References: <20210225112122.2198845-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225112122.2198845-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Feb 25, 2021 at 12:20:56PM +0100, Arnd Bergmann wrote:
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index bad2b9eaab22..926cdb597a45 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -217,7 +217,7 @@ SECTIONS
>  		INIT_CALLS
>  		CON_INITCALL
>  		INIT_RAM_FS
> -		*(.init.altinstructions .init.bss .init.bss.*)	/* from the EFI stub */
> +		*(.init.altinstructions .init.data.* .init.bss .init.bss.*)	/* from the EFI stub */

INIT_DATA already covers .init.data and .init.data.*, so I don't think
we need this change.

Also, mainline doesn't have .init.bss.*, do you know where this came
from? I can't find it in -next either.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210317143757.GD12269%40arm.com.
