Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZPY576QKGQE7PVMDWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6B22C12F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 19:16:06 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id v13sf1956200oos.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 10:16:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606155365; cv=pass;
        d=google.com; s=arc-20160816;
        b=R6y4ElyyD2pQfCQZJBmXEm8HKezJH8XMWb06WZlegP+WhWkmzazu5H+d7a7N1xo+Uc
         tjNZ+fjvM3dhfZvcd4SAhTVoTKBtS+b2vCjf0hkQ3Q9ChknyT+/wPHwN11agnFKr1ANR
         B8Un2Qj8JLprGq3LcX5EOUVVWUBoaAnfX++mME3UqY2jecC0+HJH/5p4IzL5vZ+OA2JT
         I8+3de2iPl3n7rvY6ZQ1udt3XN+x4XQjuNEks+H+NWNRZVyhLruUKXLtCj/lV+gqq0cL
         KuEqEXrap6jovMmMi5e01+ZAqH5xC+XA3pWN2F/FKnXtILUFECVgBzlW8ohotpp8ZdD0
         TUDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Wp2ZO0H53OWZI+4U1GYoku2SA1e6O43tomZHSh4JVG0=;
        b=LijJ4eSxEY7+rAMQ053eEo2I8s0qzmZcAha/pEG4iq6sQeTtDB42dN/zkn7WXG1XUK
         KUxwxzjc4boqf4KhQi1cQ53bQ9f27in5trFGleamOsRfyNqcAZDVkNPGmzsOoQX4rFng
         KzeZOEpkbSdSp/EJZUil6Kgf27jFZTV24Dy3in/a5h57wnLu6U2xZ8ngLw/in2T8T2da
         Zx1sl1vPEpOkX0uNav9hT4uTkBnCfH0tpRoP6RuakMvvqSjVmb+GQ98EbfWMim0/GWM6
         XzgAh79VkWGLmtBHYLfhdXQwG6HIOA00xkFApwVb+sTRw80JiV40GWg+O/i+IzmlrNrR
         NAVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eJDt8chJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wp2ZO0H53OWZI+4U1GYoku2SA1e6O43tomZHSh4JVG0=;
        b=WrI3HRJylB6IXAhhxqNHUcKzr2sxra3QdcQAHX0vGHZO1slNii3Jj2M1eah28HPDXq
         GbbtUlz6YJDvYBtnYpkWlOoF46QpLH318Bqr06oNYJC6q1ObzD/NW7DxcMXBJTD8uwWH
         Nm9P5JXOgQIOQergktohw5C0I9gwYurDmroGMxBz/fnp1C/sXtx+BL6HadZWuccFZy0a
         Nd9x6ONtaQGc7yexVTR+yy/pDvdM6xqBJAmxFSiG9qdJK2OMWhF4WIHNB9LMyIGq2zMo
         tC3DS4jonmw5BHhMFfe4Cvz1gemW9lbObfv/eivK+iYes7OB6yvsFZzDzArexJLnXQHX
         R3PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wp2ZO0H53OWZI+4U1GYoku2SA1e6O43tomZHSh4JVG0=;
        b=rZkaNxmlFXIhgRcKW/UDr2FwCGgbhGoev1xiv1pV8XxTQrg1fYR7cG66L/xDntC0IV
         UcE70vxYjPvWP2H8WmjVV3Po544+rylz0DMc1x0MfMCEicXBFdzjlaJVZf/JT4Yry4Jn
         ZUoT3WNeRhhVu9dybx0nF3JYneckt7bKM0BK0z72tz5lLrqkBV0U8GgPMx7yc51CYqt2
         w693lI+lbwCzz11qIZKsjhTupZ72Smo49WnoQ//N56IUcqb5FpmEyfVSSeo/yoRz7wdi
         cGGNBGh0sPjEsFyt3y4uWkdSAAAsvoXOPXoVmb8ptWEhylZ+IczT6qFBPJvEJcWZs6ly
         z6GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wp2ZO0H53OWZI+4U1GYoku2SA1e6O43tomZHSh4JVG0=;
        b=MNePHk3mEuMck1vQKryDm39hyF80imHoBYGZm7Y8f2WITtH/vA8VhgGtNXhwgsiIEL
         /sX0gzUddxYnUQ1qOSj18HGyDBQXFXrtO7ulxYEKX/1xFcsCrCXXirCJQmVBv0azZzU+
         jYY/ZYuXNPJ16RbhwRBxIZSXbfPT3lPTUUsMTYxHWf6INM+TNNhenXYlTGjwZC5K7ZN1
         ungs7/wrKGp/zzWGj90eBrTGzqOLDiE6Bh0aLshLQ5Pm53kMrvPU/SBPSPdXl609uJrC
         dodlLyrCLkj2+qrwiPjW2laxvcfypIv1C/0hjhTQYw1c3D/+2y5PIHQealOQ2f46xMgU
         I7Pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gmUv7W+LEwklFgUvmlkzkgbL9mB37OZvYJBGsY7T4uKDRgGq4
	5srFpJUDK36Y0lThOMNvN4k=
X-Google-Smtp-Source: ABdhPJykRpoQK57reRqDRrosCNzyWXUzHqERmIryVb45BnNugPcGCsme3EhEmQIojzW8CP1/T9yhWA==
X-Received: by 2002:aca:5e57:: with SMTP id s84mr136024oib.102.1606155365674;
        Mon, 23 Nov 2020 10:16:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls3594638oib.5.gmail; Mon, 23
 Nov 2020 10:16:05 -0800 (PST)
X-Received: by 2002:aca:4ec4:: with SMTP id c187mr88464oib.137.1606155365283;
        Mon, 23 Nov 2020 10:16:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606155365; cv=none;
        d=google.com; s=arc-20160816;
        b=rw0kxi8RGS0qkXPad8cI0jCqeyqgwBiw8sJWwo3o4qO719nJGe55uLIXbnXjl8PJSS
         hMRcG1VExsjjBJzGjJDtPmp3bWKldSQDobclogcdgE7la8ROiqea9Vi/y9+rXTbxZ5Ml
         9dbyjgVzSU6SGWeYlga3mNUFv7EUyhLfoUciPJTtkmnzjZmkst42Q3LAY+RQNTdCRp4A
         YgwtJUD1KVMYjYFo96rYJns5bWB0J7VkBAoUkQiaMKCITJDzTOgoi5uwxOIbswS4UuCw
         6Ilj1zRBqsgWZdyEQv9IZNOlh3jiyIdnzLPXM8MFqSnN6sqGwKNgsKvPiaiLJCMITTC8
         sVkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n6ql3VbjYT3UQMZEAEWSAAKb2v1qSJpb45k+j/2GXXM=;
        b=SE+W9aY/+JXRuR2y+0/JsBvUlsmI4PCP2+vK9ZluaBIq8kAdXD2J3wr6bYoyROgf+z
         TujrELxY8uq2l4G/oxMDKbDMl1WRAcD0dBMo5eVM4HHYD78tWeMOv40V2F+pzgKCVZgc
         JFifmwq/3GlrzQsqPEpoaBxnhs4rKAXT2UlUxDjyOagAJzn/2dJ3XY/5i8fTxUUCWkEs
         ZSldYF3MHj/ZW3lbarTCz+pqIrapfcFPGHDY8tIAoDU5sBOBCvwA5Rz916vuWrBe7FLV
         y6qsUIQYPARsN2KSP0wbWsiMXVnAaw5n4iOD1dl90i55IJH9seJAYAh3KYIwNYZSMZ39
         0yVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eJDt8chJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id i205si125793oif.3.2020.11.23.10.16.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 10:16:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id n132so17899053qke.1
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 10:16:05 -0800 (PST)
X-Received: by 2002:a37:e40b:: with SMTP id y11mr744826qkf.29.1606155364813;
        Mon, 23 Nov 2020 10:16:04 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id g9sm10211626qti.86.2020.11.23.10.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 10:16:03 -0800 (PST)
Date: Mon, 23 Nov 2020 11:16:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Antony Yu <swpenim@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
Message-ID: <20201123181602.GA2637357@ubuntu-m3-large-x86>
References: <20201123073634.6854-1-swpenim@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201123073634.6854-1-swpenim@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eJDt8chJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 23, 2020 at 03:36:32PM +0800, Antony Yu wrote:
> __do_div64 clobbers the input register r0 in little endian system.
> According to the inline assembly document, if an input operand is
> modified, it should be tied to a output operand. This patch can
> prevent compilers from reusing r0 register after asm statements.
> 
> Signed-off-by: Antony Yu <swpenim@gmail.com>
> ---
>  arch/arm/include/asm/div64.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> index 898e9c78a7e7..809efc51e90f 100644
> --- a/arch/arm/include/asm/div64.h
> +++ b/arch/arm/include/asm/div64.h
> @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
>  	asm(	__asmeq("%0", __xh)
>  		__asmeq("%1", "r2")
>  		__asmeq("%2", "r0")
> -		__asmeq("%3", "r4")
> +		__asmeq("%3", "r0")
> +		__asmeq("%4", "r4")
>  		"bl	__do_div64"
> -		: "=r" (__rem), "=r" (__res)
> +		: "=r" (__rem), "=r" (__res), "=r" (__n)
>  		: "r" (__n), "r" (__base)
>  		: "ip", "lr", "cc");
>  	*n = __res;
> -- 
> 2.23.0
> 

I am not sure that I am qualified to review this (my assembly knowledge
is not the best) but your commit title mentions an error when compiling
with clang. What is the exact error, what configuration generates it,
and what version of clang? We have done fairly decent testing for
32-bit ARM, I would like to know what we are missing.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123181602.GA2637357%40ubuntu-m3-large-x86.
