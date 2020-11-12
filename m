Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAHRWX6QKGQEUUZW37Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F6A2B0C14
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:01:38 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id h6sf7242541ybk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 10:01:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605204097; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVt8f+eRL+TwaCE4OhZQl0+35tOaoJrybSp1imL1VfCK+u+RazlvPOuzNBxBEW8/xW
         D6+c6j9c865crHBeQB5oGLo+MMtCtEllgzM8kbzYFmfM0ZK4LNCCuNk9OfOi+PNvWTYl
         23sOSD2WDG/LEqYIKwg4a2NsyFv1lZMtAhQq+XqwTC1qIXQKL+hv0mse9Mqx71NG7qWi
         OrgdUJ8mVPPiwAwaLLalNS8FHVKda/08Sps2pugn7Wm9fkF7DXgsfWnlTRby9BiTLaAn
         FIVzrP6gmIkSRTc5gRwkZsLNWpq3sCJ6F8jQIE/skKDUAV+10nspi1JG2aFRtOltSI12
         bXsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=SuI8w1tDJODy5vhpRgR6UTouMC3a1dL0NYbk8/MjTnA=;
        b=bXVl9BK4OFZwEEo7n6tpJf326U0TFxM/C0PxMDoFzsBQxcoKCk4BIcNvZqzXD7E7jV
         5oozfco3aS5sksDRYTstDdj4KAbaslRwkj8dv8yderI1q8nA7wXu3GuH8dZiicHFEtwr
         GVfzREX6S4hFvqfF5Q2Bd4e9J3jLa9irCugX8vlqsfhEoaJ8l2PJXQEUZjJ3PT2247ea
         8iL1jn+KI1iMSNMOJc99cX5qrveYwozdZS3bTT1fYlI4mCh/uuo2rLEE9xS945K8y4DD
         6zMdx+TsKUfWItGiJCCJq8tciaAhH9RVXhcUlBIEPxCf2IoHN9QskjVi370sBgwOj9vU
         e7BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OjmTkPxL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SuI8w1tDJODy5vhpRgR6UTouMC3a1dL0NYbk8/MjTnA=;
        b=MEQQkaSdNXZ2fc/SVtcDzIJFYY2uqXUMNakrJgHC5e4nvBxS5XaM0u6ZXCG2/cMWp8
         wRBn5prBPZczhGXRfPngQq/znnqC2F4tTWpFdkHCSnGPvyJs5hXV4Xlj+kJtkH1MWFBE
         rpm0Idhka0ZnMAJceIblNh2GoPuIyA3KhNrBa7Pe0kXz5x+vt3Clut68J/adtdczIjhH
         PaRRzwmWRpWYaAu4LC4lOF2Mt1gq3/8q0RSubY0TE/cq/cqdJfsAB8FTZpyKZhZxC0j2
         5gwFp+ERvXLNljBwW7ZFE5DXOCX//xmfTNPYO97JjJjiBlNhFA/vvArghmiPR7hhR42l
         aqZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SuI8w1tDJODy5vhpRgR6UTouMC3a1dL0NYbk8/MjTnA=;
        b=oUZif7l46+/bY4P2gzVv17aF96VhhI8PYsR8sb02iK/R0MVggifcf3FloaHu4JZEe9
         X0kE2U5YrN9FbMz5WOAgQcscHRHVY9PIknvzq51CvwiNZnpHX1aHHpaJhVhDVdLIZCPi
         vly0H8RDcPzHcE9EJq7nX8wJ8SaZmRyDPu1i5SpmF+f7NPViMu1yeehYsCLLxURRmrm5
         x70qo38rYIvnQA4t5wKegd/rog78E3xMW0SWgEpLaE5AzwpRaBA2M1QQNMJpoucVOAX7
         y+Zt2j6u7s09kd4Rzd17+SzTbjR1YxYSEUiwVcFK536ffxFAi7kBopouZ2oodzn7bfou
         NnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SuI8w1tDJODy5vhpRgR6UTouMC3a1dL0NYbk8/MjTnA=;
        b=PFRKIRCsWvsrdE0uwz1u3hG21PMfIe+0916TVqBdnztd7rZOEi7CZhdha6jd0u5fWI
         AWhHHLdiLvVmfAJ54KyDOvQny1nGMXkDZJUAPwCuHH0hj7nk39/r+ytgTXQd8K5OISPq
         qDSNlN2aguWsUkcgU9dvYqy3KMGFCWKyb+uD+NaHIEGXmgZ0Jk+lklWryDYQqUJepE06
         /eFbEgj5DBxFc1GAB/tpuTXwoRWFlsJ8ZGgXPAX+1I4IJEX53hsxwJpBDY6tM1w0B5vn
         3yHRfKcjhzfrERATO9CYxdjSoa1iuWfvH689BI3rdeShJFXp4w8mf9Rs31XvrNOft7TV
         0Kag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i9t9xY7iD9sPh68hANN498N8SSytPnFZH+RX/5w+dLa+JdC14
	0rv1E/SAf0W3a1Dibe4PToE=
X-Google-Smtp-Source: ABdhPJxm9KavGegNpb/JhiHJcJGwUJE0lPJGyPIMKZdUF9f0HQh4rs+K5xzaFiDwzS9YvHERj34ozg==
X-Received: by 2002:a25:5096:: with SMTP id e144mr993774ybb.491.1605204097020;
        Thu, 12 Nov 2020 10:01:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3f81:: with SMTP id m123ls2023907yba.1.gmail; Thu, 12
 Nov 2020 10:01:36 -0800 (PST)
X-Received: by 2002:a25:80cc:: with SMTP id c12mr1003058ybm.415.1605204096444;
        Thu, 12 Nov 2020 10:01:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605204096; cv=none;
        d=google.com; s=arc-20160816;
        b=k5ToZhobhYM0Glcyrkm06C1ohT07G3wtVmYPJsXfd/yetpBGKfL+y9SYs8pyvA8rE4
         nZDMd8tD49ehALWHpRmdkWaEPmy7SICVoaF3aiuEXKdGcu8nwAb43YoWsMe80R9SgQa7
         fRUjPQ8u9x6UDnjyHWdjfWTTyB+m2RBDVgYindjUxlqk2ay2Fi2wA9B6q3sy/F1oWsSe
         ePizXAPwe9kPV+SYmTUMvSih/9m7XpvtP/ZAughR6+rgGFxxpAf022YVOwy2aOwgsCmX
         Z0r8QO6EZqqNcg9oRF+NdhOG0e8iC+OwkrGDpBxIgjnlnqRR4vP1Wi2iG5OUHDKESN4O
         CNeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U/n0GaULRIPoW1TWIaMvg2AjJJpGn7IEqvwF77+rhVY=;
        b=nZUvZ3GiXtnEqloLG2pn+MtpxL2SDXOasKCusKYTdraskLseHyEzgACryvACAC/aWK
         lC6A1HV32FH/huNyiPax4XUiw3BYg5FLuLqJCYWXJniHSRqlhn+PZiaLSjh75ymMTKDZ
         0GBTdlTqyRHjdLcah9/iVAQ7Tz6crTcZX+cXB3Gbo20ol1iVqMDr+8MxZ95kvjd0ZdIZ
         J0mY2xq0TISBMX8B6MHcfeoOh5tOQDbsCzjwCkJSHPI70YgHwB0awxs2X7UYhElfehga
         SjDfWj9SW13eIzYuFxTqXDJT8Pmc45ret4mvW/vgHOvaJECBfhPEtzv3LNlqfkWPKaam
         VMQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OjmTkPxL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id d20si94629ybc.4.2020.11.12.10.01.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 10:01:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id 7so4642169qtp.1
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:01:36 -0800 (PST)
X-Received: by 2002:ac8:6799:: with SMTP id b25mr337543qtp.115.1605204096085;
        Thu, 12 Nov 2020 10:01:36 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id d82sm5244325qkc.14.2020.11.12.10.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 10:01:35 -0800 (PST)
Date: Thu, 12 Nov 2020 11:01:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>,
	clang-built-linux@googlegroups.com,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: unwind: remove old check for GCC <= 4.2
Message-ID: <20201112180133.GB934688@ubuntu-m3-large-x86>
References: <20201111025120.1694158-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201111025120.1694158-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OjmTkPxL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Nov 10, 2020 at 06:51:20PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> Since
> commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> the minimum supported version of GCC is gcc-4.9. It's now safe to remove
> this code.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/427
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm/kernel/unwind.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
> index f35eb584a18a..59fdf257bf8b 100644
> --- a/arch/arm/kernel/unwind.c
> +++ b/arch/arm/kernel/unwind.c
> @@ -18,9 +18,6 @@
>  #warning Your compiler does not have EABI support.
>  #warning    ARM unwind is known to compile only with EABI compilers.
>  #warning    Change compiler or disable ARM_UNWIND option.
> -#elif (__GNUC__ == 4 && __GNUC_MINOR__ <= 2) && !defined(__clang__)
> -#warning Your compiler is too buggy; it is known to not compile ARM unwind support.
> -#warning    Change compiler or disable ARM_UNWIND option.
>  #endif
>  #endif /* __CHECKER__ */
>  
> -- 
> 2.29.2.222.g5d2a92d10f8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112180133.GB934688%40ubuntu-m3-large-x86.
