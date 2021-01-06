Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXE3D7QKGQE2IXNQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 255582EC5EE
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 22:57:20 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id 26sf2897858pgl.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 13:57:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609970238; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1Fe5lW9Zz36yMuNRe+oQfODOhYhJlWTMNRPorZqP/ur/D32wNDkiczmKNd+1l+jFQ
         1BH5XSLI0Zu5/Vb/GyjrXSsWKAqzyT76WtoMl3SdWyxNQMtPti63tBDYcfHchzCYaK2E
         IpwAG0gHaTKYwzcCuuH2Qii0lu8MFgFA+04OguqFhBvAt0cv0oJeCoTFJ8vTWx2vi1QO
         k6AlKXTWgkNQI6SWChme7YCbMJQXveF+vf9v/4Ik0BZTHytlHGD9+554A6qR35JCadm0
         wZzIPbAbjJJu90SekmRO0Kxn4mfmXKk3WXsnlo5NrNp5Bs83IO8caQALyBs72giLYOcu
         q6HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Rq4t4nPFo4KDMB+wj1OjLiDhS3H5mFtPrTvJcIQUoD0=;
        b=UeWTizpvKAZXEGLwE++7IfJydtr7aVZE9v2IKgTlGZF/5NToKeETEbjy+vKEvED8kE
         rIK7qhf28uAFwd1Ey8coA/RO/nwZr9DcowpoJGusB9LmS6qSKEaa61mqpNmnhlXjeD13
         QD7byQ/EprAIY4B6+iBFfjp1Dpd3pdYlRD2ENRYBmWX+ZjMX5GK8jjLqoxQvesZSNkQ1
         YNkCMcyBqD7RYToez10qcP012MGrmyQ6lvP3g0RbbzF5Bp7+gYR1l3j1Bw+c8HGa6Ivm
         Hm9eGEQZoNV6NsekdLAEgaXmCd9boMw0/1JmHAYb6p5BqltANmFGNGzlMtH35fgLy7Du
         WD+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FSKh9c3s;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rq4t4nPFo4KDMB+wj1OjLiDhS3H5mFtPrTvJcIQUoD0=;
        b=on+jIcqsmI762mkwDcCfSTyedClkPBZmUuzbJqZExaejAWSuOtaBEeCvHFsH2Y2FuY
         DWRMYSoFw84huPJu1KS2gOgA0zcGvTE8po6AyzhUz2H4g2GYMAX00tYTJKa3by4mwL3l
         tj7x5xMZ0DMb+LuZnoBycM8amNmNgUJn4WTZxtTphP3a8vzEpDF3dHUdQfCMR1mGWYgZ
         FhCkxeyKIeIVaRCQIWSaP1Ih5oQ3lVcjRna+TeKyMWzZdIyX8VskUxlQOFfmLkPgsM48
         HaKL3+MJ72JTHmCcTFEfF0+LadBSnmVorTEt50W6AaGPqUJlalxIqXRBWqPsR34WnHh5
         4azA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rq4t4nPFo4KDMB+wj1OjLiDhS3H5mFtPrTvJcIQUoD0=;
        b=YvHh9q3/25fLGIN7brwpjUUtsU26aPLN6MtA0c/YlfPpQWvDukfDMxCo2sMmzgFjdG
         9iPaDm1i5PbfNSI2QTG3xqG2MlAJ1j+Raooi8I9URbxseoxUcTvwFAz62KC688QjCiMR
         ABExI8bKQnmItj72v72khL+BbbCnLdN3fOnxEV/0kDOI0QMIiX2ipfkwgAF2hUn5d8Qx
         2VPI24VNwFJwfHJiAdtCauZyuJSN6VBmNp34RHVorsx8YzDTkb8ryUGBdTFNYB+egZD/
         HJIVwsXxYCzhloKFwhRZUPxuNy0ioyzGf6mxCHZwAgqDhyvgnziAYdhHNJ7rf/AGJu/5
         iRFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ITDICSSPGyigT0QcwbetgnTWPVDXCtrjOWtyjeutQLWInfbyi
	S9/AArjOttig6FqZV/B27iM=
X-Google-Smtp-Source: ABdhPJxRtWf1w1evBZoiwukd5WGrUsr4n6k/0w1jqijacrMHbLX7mB/XiqOv3SeZoXmJLmhBTARCUA==
X-Received: by 2002:a17:902:b116:b029:dc:c93:1d6b with SMTP id q22-20020a170902b116b02900dc0c931d6bmr6003524plr.22.1609970238737;
        Wed, 06 Jan 2021 13:57:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb95:: with SMTP id v21ls2029197pjr.0.canary-gmail;
 Wed, 06 Jan 2021 13:57:18 -0800 (PST)
X-Received: by 2002:a17:902:74cc:b029:da:9287:2b4 with SMTP id f12-20020a17090274ccb02900da928702b4mr6116688plt.9.1609970238064;
        Wed, 06 Jan 2021 13:57:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609970238; cv=none;
        d=google.com; s=arc-20160816;
        b=VkxWg8+rd5GN7v1hcVc3WoMH5js/1AykvKIQHyemUs66ydbc8hRd8ic9T8Q2yHs9Ff
         3zd+YD6+oKrRYjOHDEKJ1+T9Hnm5LkBybVt/c06Cg0SkpVsXBiSYKWItvrK4V5XSWu9q
         RJ3S3lPxdOT3oH+rAnZt5hkBc8udRBkaRF0GYXMqlmhqgszZqh78gDYdS3SJ7TE1UeWs
         5AiP/hm1XJfm6xTckCYgrlLvuDWnLbbjdfShJ51mrrsnrUOsJH4suZ66WNGt3VU9l4Cc
         RTBcARDp4+TJj/7RQ9SEip5VgMfrUT/By9xogjLgb34gF951rLFj1QFZ0flNriEgPbhH
         WA3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WOP/JQcRWppeMUbSb8zNlIsrDTGlMJqIRNx0QEh8i0o=;
        b=eLPImAXg84JpaOhH+aXkhyjnYiw4iKtNIkn5+wv3c6v3JNIjrl3hI6J1BrHw+4JM9p
         B5MEzh2cK2oozP/jF7qwYGrjNlt41Vm+TZjQBmxi2VxQc6WBIx+7wcZ6ClnD6JB6Tkpo
         so0uimp5jdDw3fT1aLzOFMQGovUh+P5p0ZMdpgKyfXVAPymh8iV/ZSZAnqHfGsZkZct6
         kYBD5MCYBmISvqP9WlfrBZaa6lEiJE9vcdTIhPOjwDiXWv43MrBn+vFHR179qeJ11yQM
         7hldpkHhpvv8Jq4T2rpG8+TWPD7bqfYuVNDTqRR85oXCErP/3/QM9fwpbMXHzL8Tbx78
         EGjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FSKh9c3s;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id mp23si649690pjb.1.2021.01.06.13.57.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 13:57:18 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id e2so2225028plt.12
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 13:57:18 -0800 (PST)
X-Received: by 2002:a17:902:7207:b029:da:fd0c:521a with SMTP id ba7-20020a1709027207b02900dafd0c521amr6196896plb.45.1609970237539;
        Wed, 06 Jan 2021 13:57:17 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d124sm3739593pgc.68.2021.01.06.13.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 13:57:16 -0800 (PST)
Date: Wed, 6 Jan 2021 13:57:15 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <202101061350.913E1FDF6@keescook>
References: <20201230154749.746641-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230154749.746641-1-arnd@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FSKh9c3s;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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

On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building ubsan kernels even for compile-testing introduced these
> warnings in my randconfig environment:
> 
> crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> static void blake2b_compress(struct blake2b_state *S,
> crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> 
> Further testing showed that this is caused by
> -fsanitize=unsigned-integer-overflow.
> 
> The one in blake2b immediately overflows the 8KB stack area on 32-bit
> architectures, so better ensure this never happens by making this
> option gcc-only.
> 
> Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  lib/Kconfig.ubsan | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 8b635fd75fe4..e23873282ba7 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
>  
>  config UBSAN_UNSIGNED_OVERFLOW
>  	bool "Perform checking for unsigned arithmetic overflow"
> +	# clang hugely expands stack usage with -fsanitize=object-size
> +	depends on !CC_IS_CLANG
>  	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)

Because of Clang implementation issues (see commit c637693b20da), this is
already "default n" (and not supported under GCC at all). IIUC, setting
this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?

Is there some better way to mark this as "known to have issues, please
don't include in randconfig?"

I'd like to keep it around so people can continue to work out the
problems with it, but not have unexpecting folks trip over it. ;)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101061350.913E1FDF6%40keescook.
