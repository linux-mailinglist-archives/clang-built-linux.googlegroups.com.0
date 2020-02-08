Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA6Y7PYQKGQEYFMIXQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF621565B1
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 18:12:37 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id n4sf2630620oih.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 09:12:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581181956; cv=pass;
        d=google.com; s=arc-20160816;
        b=vVLPNKRdl3PS2818RvbPTXlAqMoZKsCpZ2UHDezaUDTOz6CAWWE85axqsUTL2KRU76
         r0GJh4mdh41lxJbio/9LbRPc3sFG6uLIJKnV6QewD3x2ks9OR0zKdFDan1qbRjKIe9v4
         2CEBe8M/iZWjXhkaBm8ZytnZtO/OGHYrwLbJiGH3I3u/McQi6EDJvG6eJy4VrSIG3FGt
         afwqxAzSMXLHPZTFqI26ebttaG6lLMY/8G/W6SlC7O0SWXHZfpMvQAtPl6C98QC4usQc
         fx1kgoTtRZmugDdJdyBJmh/laj+zrEKTaGTrFPxwYyFgfDDuM8zcb4KX7uzMihKAUIiE
         L1kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gy87i2CRpqU8UX3g60GMiqoMjcuzFRUD6e/JSpQEisI=;
        b=TqE89A+7vbQa9rXpCftbXz82JEcmEseZP1v/SuqclrbvrXeWeT4WV7tnDUR+71ZRpQ
         Zeybn7Si39nYZVX02R6n9qJP/HCYG5572wv0T1GfkrrWaV6JKHc4A3KJQuaT3drBUXr6
         1S9k665l+0G5sFhPqQqQrv8NRq4Emr5L5xFXXzcyCucxp1lDJzUUBYLHEd7puXl4NG/b
         E7XpBhQdFx1uNT6Vk4UbIDHnJAjLAsYQ1s9TttSTc/UYZvfDnznwAPamezi3poPVP5T4
         S/eNcaja9627fHA2A08Ck6xzZsFQdL67IINN5yp0rutsWY64UkOwTMithoFXuJZQ2oF0
         tfLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I61HMxdl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gy87i2CRpqU8UX3g60GMiqoMjcuzFRUD6e/JSpQEisI=;
        b=NDKP+40Spuma1DPBQvrW7MYoWLR23PGdrmiNISHBAPjqhhLqZ7AmRzRWEk6ynSWyqh
         mDf4j6WWgxWT3CTRcJFWh1IKY++vMgT/P0PqKXZCEx2qtlqKKnAr6JTUJYPqEU9dh9nc
         YPDLQsUHOsuqs0itDfQSxco2NfYbgUkF3DhbIxuny3a5Gttt0QWv55q+SntCVRnwArXd
         6XeBQIoViqI8o/g5qc4KJ3xt8CrMFGmhmYQ1gYCV1mDZbGKNnHfBxKn02QNDz8/6Ak/5
         mx9zPZuW+R+5+2O59Eti/liBzhPtp0cARCnE6HSoTy1eeSzOcz9+NbR3GHGO1SGEAzIr
         Jd2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gy87i2CRpqU8UX3g60GMiqoMjcuzFRUD6e/JSpQEisI=;
        b=cIfQKJalbIjG+UNzX8hG4dqOnVYpHg+g2oHEu+SnaM/FxWdjkH4a7yq7cE8VIQPSWT
         943eDkCqM9v6QkKdp8fMyfuQ52lkGuKJbtlWGNTWFSwLW+ZKYOpoFGN3EQfH/zbqnm4S
         VZ8LiaVrayh5UrTxPsuf7QNAbKsK2sx7ltKZjC+c+zIpX6tSpLi52u9HJlGLx/PmBGxb
         iYdu3bsbKUwAN63juVGf74IzbMbC6fZF9G7kPpNraGYrpcWhsu8Nu6GkbeziMP/Oc5Ys
         gQcSL3oMajhMWvcPClrc4z/mqmuWayhzPyjVce/SOLJwCmSTLY+M7WHX0TjX69szHTdx
         s3sg==
X-Gm-Message-State: APjAAAXnfYMapaFlJpAt7uO1WgAxjZqZIzgvlzpsIo2WhIsmJKpHhc/Y
	Y4oy86yITr03bQvng+kLS3c=
X-Google-Smtp-Source: APXvYqxxdRsAOlavPYqfhQ/ARhLyT7df07/Oz2GktQciuiCVplcPjH1s77L5+3UgK11+nCbU8pMttA==
X-Received: by 2002:aca:484a:: with SMTP id v71mr5853095oia.39.1581181955869;
        Sat, 08 Feb 2020 09:12:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls765471otn.6.gmail; Sat, 08 Feb
 2020 09:12:35 -0800 (PST)
X-Received: by 2002:a9d:4f17:: with SMTP id d23mr4214729otl.170.1581181955215;
        Sat, 08 Feb 2020 09:12:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581181955; cv=none;
        d=google.com; s=arc-20160816;
        b=Eg2wKxnKRVbib+UJYAgsLDl8X35DPlQcfshV95Xd8lMFwen5ND4ZsAO70Uggl04zEH
         g/7iflumPBZwvJ4WmpAgkRyX2mqZfri//Gy8M76fbS1+MvXr6vzF40rDeidCotDOaf80
         3IdOo6kgfFYqxMGxcDyYWyZku3ZaN5PMohw6PpfGD2uJxjA2K1N4toNbq3zooa6WYcMJ
         Q2KICWZPfuwZzsZ88fqf/oLzTQQcAJ1pyuZ8PRifgy7JVTrRW8VIsvF/n375GFh1FZR2
         3Z+WEhvtrIAM4JpI/k8HYOt6JYQMZU3eKT+TKgdupHAT/wHNFrZk6WbHrV0303Li1t9i
         Z6OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YD1lho2uBiFfgje3vY86cE2s7Be2NhAx8ao7Z4azKF8=;
        b=ganMz2MlaGPInDoKiZydtoPr2QW7s9EMoTr3+igBxMJjQV6yjGomv0afoQj7iyS9op
         IeqkIWX96Ru9vGjUrlFk1eHxHdUbASPHrtfX+pdcKx+R/JrkRcOSfgmswS0fVRAVih0L
         X5VTjZEuu0UBHl4w29BV65YDHqTK2DWCuXGN+2BAWhzgNjFMPcYaE7RCbEuLV1Zwgkf6
         ctMSARZli7pOKODrPhgbcYjv5GrurQ8cUM11IIo8dPGlb2hF8YaJiI10rA03gp6creQi
         6bNLt4orgFFUhcl/IdldMH25AofO8V43aD9dIi8wPKAr1soMebtoorgmiWk5+/XAePfo
         FU0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I61HMxdl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a17si174570otr.1.2020.02.08.09.12.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 09:12:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 2so1414564pfg.12
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 09:12:35 -0800 (PST)
X-Received: by 2002:aa7:8618:: with SMTP id p24mr5122092pfn.3.1581181954133;
 Sat, 08 Feb 2020 09:12:34 -0800 (PST)
MIME-Version: 1.0
References: <20200208141052.48476-1-natechancellor@gmail.com>
In-Reply-To: <20200208141052.48476-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 8 Feb 2020 17:12:21 +0000
Message-ID: <CAKwvOdm8-nL=BnTaCort+tAm27bkBzygmipZ7L3eBD4zvmyb8g@mail.gmail.com>
Subject: Re: [PATCH] s390/kaslr: Fix casts in get_random
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I61HMxdl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Feb 8, 2020 at 3:11 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../arch/s390/boot/kaslr.c:78:25: warning: passing 'char *' to parameter
> of type 'const u8 *' (aka 'const unsigned char *') converts between
> pointers to integer
> types with different sign [-Wpointer-sign]
>                                   (char *) entropy, (char *) entropy,
>                                                     ^~~~~~~~~~~~~~~~
> ../arch/s390/include/asm/cpacf.h:280:28: note: passing argument to
> parameter 'src' here
>                             u8 *dest, const u8 *src, long src_len)
>                                                 ^
> 2 warnings generated.
>
> Fix the cast to match what else is done in this function.
>
> Fixes: b2d24b97b2a9 ("s390/kernel: add support for kernel address space layout randomization (KASLR)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/862
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/s390/boot/kaslr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/s390/boot/kaslr.c b/arch/s390/boot/kaslr.c
> index 5d12352545c5..5591243d673e 100644
> --- a/arch/s390/boot/kaslr.c
> +++ b/arch/s390/boot/kaslr.c
> @@ -75,7 +75,7 @@ static unsigned long get_random(unsigned long limit)
>                 *(unsigned long *) prng.parm_block ^= seed;
>                 for (i = 0; i < 16; i++) {
>                         cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block,
> -                                 (char *) entropy, (char *) entropy,
> +                                 (u8 *) entropy, (u8 *) entropy,
>                                   sizeof(entropy));
>                         memcpy(prng.parm_block, entropy, sizeof(entropy));
>                 }
> --
> 2.25.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200208141052.48476-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm8-nL%3DBnTaCort%2BtAm27bkBzygmipZ7L3eBD4zvmyb8g%40mail.gmail.com.
