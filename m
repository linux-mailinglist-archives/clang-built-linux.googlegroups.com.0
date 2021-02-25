Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBY4332AQMGQEZQXH7AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 9035F324F5C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:45:39 +0100 (CET)
Received: by mail-ej1-x640.google.com with SMTP id bs10sf2292235ejb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 03:45:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614253539; cv=pass;
        d=google.com; s=arc-20160816;
        b=UmMMCeFrDCHdOX6Pvb8DEdDsx/9IGyThmzoaWiIXgMg5eGTlksN9nCyCl93+3mJV98
         oD2cu2uVAJANkXFt2vWzzOXTTVA9ZWDhQZFdElcMxNqEPd30Sni1ZJyeq/Z7kn6p1hRp
         YM+B3/tce5ciHYa1ufROvuIatxW/dFWMY8t2mbNBPLJe2MMngrrTnYxI0eDl22I4CZS6
         txpdYrrLkoFT3T5Mq/94DE7HiAG5DhhMAC9FJRm0JsswQHXZS9LXxCyKU0s7K50m7KQP
         AOzAlkqe5t3ZzFmOgWefgdgqBPSQa2fXTV9OE4DR39AD88zOggCGM6H/j6p8CO60KGqJ
         4GAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=orpgIMjJRsVB48pO2X45aNLC6T0yuBbqx4N2RSMzYMo=;
        b=BAYlSlmH7jGPNiAh5/5uzRSCMkYmSCXG4CwzLP6KlhHpeBSHe1dr3mtTWSYuQAGH7F
         RRF6q7pKIfWCK+ZJrem026bjVLKLxWNjFKFBwMGyHQIIF+Sr8aueVYOi4qa1eiM3itJG
         vh8rCiO7gJv0L+CXA0GJeepWo1FUiIe8g7VoRxKazguXvOd6uWpwsEtLd70UsVwpm2Gx
         1OK9q5EBwscG8NOvAOZyhzXPjefCfprqaGHNo00zVsScC9tYWznqqXyI4urnl2jjd3C2
         x4hsV3joQI7Ll8nmnC5yfQ1Mmi+zNgF0D1P+xJxdtDI+ag4NQPobHCC4orRwlbje6Oke
         b2jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=cCwk3Zrz;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=orpgIMjJRsVB48pO2X45aNLC6T0yuBbqx4N2RSMzYMo=;
        b=pjK1mqcXo9rduMLz3JklHQ7+zwMjZpKhqiEw+WfYWbpUNxbhnC59yIBG93KLdPTK4p
         VyxOyTFGBau1KSnQtVkoDV+wCnv0RumMeR+EOKGoRswaKyUs3z+7vayvMb9uYrrUh0gw
         KwtBUvF+DjhcNgzPYcd4po4Li454AR/XPb1LurojWyrV2cfRRSeH5LAkJafTyx8vSYWv
         lWcq/cD5D1hAXMyGuwZrPfiYiI0TiEUgXbYxuySf1U1Jv4BZawife6kjIxcZwnDHPk+9
         bb5PVznbGwfmgkk7Za+tyMY+JDYE6DUPwi1+03cv01tygkPmOpyXNACxrrwoB3GDJGhR
         s5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=orpgIMjJRsVB48pO2X45aNLC6T0yuBbqx4N2RSMzYMo=;
        b=K8LgolvMyBgnUoml9Weo18d/1j9jx/3w2P4qXADlBi9377bk4fjwgchsWXPn3kCDgW
         XTPtONag3kdS8FdGTZRymEwelSU4d+ZK1Ne0U12JQRjEQ+WIUT9OGJwKAKUKqc0W8ETH
         As/sSqSyOppUowns/H2YRTmQax0MR6iiwWbhVoToXD7RaYNmIa2K6TyR6fiGadsAXL0u
         j2jxBSyvL2qpgjZd9hsQ1JXpPmrFQbOTVG6yOYJEOATH2IPf8HGjMHplKjOfxowK6oAI
         NdX4gRtDtaeTsioWzojWFC16cwUkGjZbbw1/Fp7h4wdNCio1GcEsAxeGXGWj9I8j2nEr
         K4SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Cd9aXjmCERewT1QbwZgeMIL3XQ1NCIbZRphZpEcAW2jg2cBiR
	zC22gbxf0DTiDkWOJQ+B8PA=
X-Google-Smtp-Source: ABdhPJxhKBp5HK/9Rdt1XOV9DaGDRWWgRs1rA+CMEZBch4SKiWHG0twYla8B7lqska1YGdnnFfHVAQ==
X-Received: by 2002:aa7:db91:: with SMTP id u17mr2378789edt.71.1614253539364;
        Thu, 25 Feb 2021 03:45:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f28a:: with SMTP id gu10ls253074ejb.1.gmail; Thu, 25
 Feb 2021 03:45:38 -0800 (PST)
X-Received: by 2002:a17:906:6047:: with SMTP id p7mr2261787ejj.400.1614253538495;
        Thu, 25 Feb 2021 03:45:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614253538; cv=none;
        d=google.com; s=arc-20160816;
        b=WEx4A2CiYLoelNDGpigtnq7kLhdgqb4q4BlzNU/eK1vDLhKuf4IJ0VsJj5nuOTcEMY
         V/AU2ohootyQgnj5qZc1nms2anJVAKmCjKQgANbeg2xhKE4d725wDM2DUGITIO2+XCf/
         mXevYDCVEZ2rzsYLmubBaSBAyj71JcnzNq7/o8Ls77nngEoJki0Sudkbo1HOnbdMZQBZ
         cq3ZLmga7s+XEsDTSvG8wkNTLzy4sIQ+yNhNZUIwzn7GFdX98N81wBD4S6ZDJB+0bQHf
         rkTqzN9fBRQ+wrZaNwVldchWUo+z9Mg7tQmmryKErCFJBxmgIMjTeA4ZTHHirijiByb9
         QBYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5PC1Iat4+U7GzFaV6HWVYimOi8jqa6Fap0CPvCUVnQg=;
        b=oVDuSzfR4x5sFJlhXiMq+SVINssigmRo01OaQdNxfQRinrDiaYZrT+JXcc+MJmi75q
         IB8Dn8YpaVhc6sFu8Agr+1oL7CpLKsi+aH7P4gHjb1FqwGx+VxHe+U9FLHZhG/Nq3xvr
         siBuBRkujJga4XiSEoN9L4yw6eBYeAweUQeH5vw60JOPqxmIq4WufdfuJ01uzl+iU49L
         75lB+EZ22CdmAYSp+HgxORhxzdLqYzWvA4taEHE1ObltQZMzAjUrh5llrPcuDhg6zUz2
         6yzUOJfg4I4Xjx4HNMMwMIKnc5PTFN7qkUd4Cl+UJCBNRumrgJql8N5CquuSMeF+1jDz
         +oBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=cCwk3Zrz;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id jz19si356365ejb.0.2021.02.25.03.45.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 03:45:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f03dc0059e4821217d1e808.dip0.t-ipconnect.de [IPv6:2003:ec:2f03:dc00:59e4:8212:17d1:e808])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id DE5851EC0591;
	Thu, 25 Feb 2021 12:45:37 +0100 (CET)
Date: Thu, 25 Feb 2021 12:45:33 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
Message-ID: <20210225114533.GA380@zn.tnic>
References: <20210225112247.2240389-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225112247.2240389-1-arnd@kernel.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=cCwk3Zrz;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Thu, Feb 25, 2021 at 12:22:41PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang-13 sometimes decides to not inline early_get_smp_config(),
> which leads to a link-time warning:
> 
> WARNING: modpost: vmlinux.o(.text+0x838cc): Section mismatch in reference from the function early_get_smp_config() to the variable .init.data:x86_init
> The function early_get_smp_config() references
> the variable __initdata x86_init.
> This is often because early_get_smp_config lacks a __initdata
> annotation or the annotation of x86_init is wrong.
> 
> There are two other functions which may run into the same issue,
> so mark all three as __init.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/x86/include/asm/mpspec.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/include/asm/mpspec.h b/arch/x86/include/asm/mpspec.h
> index e90ac7e9ae2c..b41066dbf5c2 100644
> --- a/arch/x86/include/asm/mpspec.h
> +++ b/arch/x86/include/asm/mpspec.h
> @@ -49,17 +49,17 @@ extern int smp_found_config;
>  # define smp_found_config 0
>  #endif
>  
> -static inline void get_smp_config(void)
> +static inline __init void get_smp_config(void)

__always_inline then I guess.

Not inlining those is just silly.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225114533.GA380%40zn.tnic.
