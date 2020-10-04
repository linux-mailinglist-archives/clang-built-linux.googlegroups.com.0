Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZPN4X5QKGQEAC7UXUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D0C28295F
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 09:16:54 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id y2sf3749217qvs.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 00:16:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601795813; cv=pass;
        d=google.com; s=arc-20160816;
        b=TmTLlWV4dvwMYFmkoR4g6cCtwQKYNgOofktRK2YO4hNpanMHnh7FvUlMwvXWLqTksO
         nsNEhWgFVfNSrOEIrLoRhkYB0xv7LwdNl4NsCHmgPviCU6vMMAhtNZ1292hkl7wYSQvS
         592HrGNSNzobJoQdFhZPf6E/rvHmLYRm4KBtmEGzqD6xRkTNdSqyTaTha3NDZk9X3i5v
         hdF6lwKF6uihXtT7Mk+hzA703Kn7uGRRrn30HcuUlMD2YjXimOt8t2u4nNgZ5vg1+d41
         JE6yqzQXZgHdllFNCzcQ+SEdYmtEaqgW7VgUg5GpvqW4ENwZn7UikasFjqp23MXSLSzi
         9HYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2vC9ikCHnWg8SibbVoqd2ur8rRPnsVN1fQlqs5xHSzw=;
        b=GrtemdZbquWodKE/MVCpvrYGeufzhAZ2rsPkUDKKl0YNWr0aiZmSoCcivVRt1+jf+8
         WtAhnXgJv3Dt261IyY6+cw6dg70Aovwo/9xlrd4qX1nBzEE6+NR7gVaKZL03/88lCkpU
         Nj///GDtOIW9wFF0kctSWtJ5RTyxSYVO1ku2PB6gO+z/Nhx4G09OW3JIFx5KnrIsPWJw
         cyjMc6izRDWfX/BkFCsI93X0iSiOv9VdK4ryndpIH3sWUf2CWMU3qadrhD/JG81w1aD5
         4q3SNKLczQ/HQlcMZk8ubTpItiTQvPoIARI2GALBfc2bDi3gP/omYY9JwdsxkJZIDSVn
         YeSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CGdVC3cy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2vC9ikCHnWg8SibbVoqd2ur8rRPnsVN1fQlqs5xHSzw=;
        b=b4DNO++mHUvzzp/HxZ2AlK/P3quhYVULkeVSbRWI4nukom18tUD3zRLRPdV5xCXfm9
         VKdaX+S0eFXMUj2Cqe+TpR9i1k90dj0s84RSFFqHARoezF6Gh9yYU73xsa8xNpGFOpuN
         TWFjXTgJ79jS02kHqDZ5zPIZwwYwkn7iBkzRDhU4lw11yQ8kiS095BWPvP0OlTwxSMe5
         O8TUWD8LBQl/f/BrR7KF/3V0qFVAlJF7UojQ0bq5MeZqWKjpyh/sr+xvaAVRO99BVq70
         6CeGnZ8KydRbDlKwYHwUCdT6MQZ7nIdW00afil2JnxFmK9vZ1RfQLFnjiXAIzJUJBMKk
         /aRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2vC9ikCHnWg8SibbVoqd2ur8rRPnsVN1fQlqs5xHSzw=;
        b=nlqF6sBtdkAvz5Z2NQTR1I18Sgw6W/kYWxdB3/zuc4e2+GMb4htTMpBZAnWYxjBk7P
         4N+QA6CyIBKI2zlyNlkEvcAmvzNlAF0jOdau1FRwI4BTpMa8wuuaaEu3CUra/d1atRb/
         B60tWq+OmjIrZVgKfckEF2nfpJ6NpvBOFVg3zau3z2AoXApARFe6yUHfmZBUXnZ6nCCl
         6wtxdxqMinstyPM5Dkvqnbxcvxvn9zlIV7BTemhpXe9UaZSsxRmcw/+tPMztEu1XrL+s
         bN8L46NKn8kD/mage9qW63aI7v5MtNAvhE+lKuhQmKFY1T5HxkkBAcifrKyJfTsQ+wqG
         diWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2vC9ikCHnWg8SibbVoqd2ur8rRPnsVN1fQlqs5xHSzw=;
        b=In8NWbbnvspnEaQVi1KzKmC8Tia501QiKu8O7N7WSKdRP7v9Nj7WhssaQw5BtDmloj
         gbXTo8FVMwm/NxYJmRc3W0DHmm9lysw8kPuq9EDsQawZD94YGQEDn9Nw1yIROxLS9keA
         EMzWT4pyAJPNt/jIjKfMiK48lhnGoAz6UO6OUV0PT4W4/0SKHKPn+UaSdVhqNE+2VbJz
         ihhqj/1xCJvzVDpNkx7tg+GpZWLxDd7lyb6p2QL8e+/9tjiz5xd9zT8jIigrJ5fnEutZ
         cZGYJf+OCdHBNJUhGpBX5uDY/E7zyPEMImfoPw4SP/M1/fzgBECcNm6Td07fo2seNqZu
         ZtNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KkLUE4+bVipgY4V2zhwZJ+w8/E5zO3BQTTgd54jumrnx4K57k
	twmH9xpR7B2C8AW2Ot6rKhw=
X-Google-Smtp-Source: ABdhPJyUGTexBTK3gG+SoHW0VWBP/QSlALuiBYDKZJAnPdxmiw9iiBcql45mF5zHQ6VjQlghp971Ww==
X-Received: by 2002:a05:620a:141a:: with SMTP id d26mr9091754qkj.217.1601795813656;
        Sun, 04 Oct 2020 00:16:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:24ba:: with SMTP id t55ls2354338qtc.8.gmail; Sun, 04 Oct
 2020 00:16:53 -0700 (PDT)
X-Received: by 2002:aed:2489:: with SMTP id t9mr7667493qtc.358.1601795813229;
        Sun, 04 Oct 2020 00:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601795813; cv=none;
        d=google.com; s=arc-20160816;
        b=I4/yvtbMpoviImKVKWSikYp/ZF8t/gXO+dix/ceU2YzBWUvq80aF3Dqbt0itoGTOZ5
         xM73GMh3nNlJUxXnMTkg89Bm8vtxoSQQxUhL0sL6ZaR6TTjqHzVsWxNJV8mRCwUaGMd5
         ci3GFuAy6NmouIn4TN2WNzOf9fWUOGITLQIbyz+7S6yeGs27usT3ejMK//+3aFEArs8a
         ADQnRYJ4JWnMT+0dlF0CODzTc1Enjt7h21cUfAK2+QwSVMG1nBxGABggwHeK113GqlXh
         PMYZYD+AjqItv7xboo5nVgacgK1zAlkCjvIq+3V9jDa7YY/RvitIiYlB4kbcuIN4rHWR
         mhAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wTu6mV8M0PZGhZvk2kb+ZcD1dw1mw7y+tx+MmFTk1ow=;
        b=YJlcsdPvrbuQfyaDiWjG/5OI05rHG9EtER3YeKR45ZUNvk9M6yOcbeXDIDn1B7XnOm
         W5Np+CvBykW42sgjYR99goWDCeMOSQGRoxVJN6bJYBYGqTBBo8eBN8oUe7mxFY2Axw3I
         gIJ9wwr4wtj08zZ3rdLGbtKoU0vhQ5e5qMvBHO6R7TFOf1TmhCwetwqMNCghVSwjiIIn
         +Q7aP0jdX9FG/s9A7300pX6OvD5P3mPNAf18q+OhzbeL6lBqaJOXg1+fzlFwWZ1tS6HL
         jUJfq0uqxsQp1VgBwscX79gJX4NIN5qkVamiiuKfI1TppyrErWPDtBnAHX657Gvd18bw
         44fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CGdVC3cy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id v189si267307qka.7.2020.10.04.00.16.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 00:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id t7so3648914pjd.3
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 00:16:53 -0700 (PDT)
X-Received: by 2002:a17:90b:4303:: with SMTP id ih3mr9933863pjb.14.1601795812431;
        Sun, 04 Oct 2020 00:16:52 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id b22sm117630pff.131.2020.10.04.00.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 00:16:51 -0700 (PDT)
Date: Sun, 4 Oct 2020 00:16:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] ubsan: Disable UBSAN_TRAP for all*config
Message-ID: <20201004071648.GD1650@Ryzen-9-3900X.localdomain>
References: <20201002221527.177500-1-keescook@chromium.org>
 <20201002221527.177500-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201002221527.177500-5-keescook@chromium.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CGdVC3cy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 02, 2020 at 03:15:27PM -0700, Kees Cook wrote:
> Doing all*config builds attempts build as much as possible. UBSAN_TRAP
> effectively short-circuits lib/usban.c, so it should be disabled for
> COMPILE_TEST so that the lib/ubsan.c code gets built.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  lib/Kconfig.ubsan | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 1fc07f936e06..b5b9da0b635a 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -14,6 +14,7 @@ if UBSAN
>  
>  config UBSAN_TRAP
>  	bool "On Sanitizer warnings, abort the running kernel code"
> +	depends on !COMPILE_TEST
>  	depends on $(cc-option, -fsanitize-undefined-trap-on-error)
>  	help
>  	  Building kernels with Sanitizer features enabled tends to grow
> -- 
> 2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004071648.GD1650%40Ryzen-9-3900X.localdomain.
