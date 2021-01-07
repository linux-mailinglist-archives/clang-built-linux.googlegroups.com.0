Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2U4337QKGQELLF53VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB32EE8F0
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 23:42:51 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id e2sf5897997pgg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 14:42:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610059370; cv=pass;
        d=google.com; s=arc-20160816;
        b=Odl5r94xEGTucVZ+SfZOKrNPhhK0A7StNnQlnpR/X2NR24qKP5G5mdsbJeebbuAf3U
         8OiKeaHbrovwdsl5LpJBDX7qocog3Yeui1X8DkJy/9KNJTrtqlG/h0v0zE5rNTKfLMAq
         e76i2ZwCLDvMZX84351gY3pIn3uRK1pU/EY4PNbjvMd+HMJ72Smyd67i4jNWAiB1U42l
         MnRKwuCpZ7aax6LG4L1I4kQ4ab/LN/ZxUclMAko0TspDmRaWDfyhjoPns3PuaWJKNgn0
         MYLajAYuNJEs30NsBju13ngLQ//jdEgaQZOOnRg10EXF+JyVdscRQukIDuSEEolRYYvn
         yn+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=NEbiZ/JeyS4iAhndWWQrvwctFFbIqLOAwCexPp05o3Y=;
        b=LiI80ernEgSNg2jUdsveENEHu3/j2pC30G/bKrFAGQwL2wJVhfRvSeyCIFRDp8lad3
         cJbtaWadluS9vGS8MsZiFU36VqF/NPKdaWVRrn3bnZDBLs3jp9uraYdKeV98I3gADTs1
         B5kgkX7KJ45Kjp54u7a+UHAeTIvi2E9RMsCqH/lXqm5LX+OPPgZqRyIrCCoXeNcbspxb
         AEjyVatUGZ9jXftbfRpJv74vMtHTGUVdLGTNf3uR0YQv64BcPJhwF+0ablzWYXSFpGvN
         Fg+72ENB28g38RLML7snHo8DMM4rl9S1WflWsMayFS+HA1eQkmj4O7H0l8h8KLEzEPDp
         ebpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsYBJoZS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NEbiZ/JeyS4iAhndWWQrvwctFFbIqLOAwCexPp05o3Y=;
        b=MRQ2HTVnUJXGdYaJGU0E1EVc7sdeiuXECACUQnVBPA+m8CHLDIcAn9AhOnFRp9zsqI
         y42lXgodRP6n0+VynNxTPrNdukIZe4hxLDpktEnGLOkpk9JzkyqoKCdH5aaX0putEAkW
         yDKK7WVoUll2IhmWC0+fusrRxMjJflQZ0pJuN60F1Z6Dd0OreQNLdt1lSkDZwyu2mQ4h
         cmshBEm1l3RpxZccKxZ49xVPHO/ccGp4ptTk/YsytoYtNcK1jm62ezivSGrwSMq1ZR5W
         odzQSWR2C17wFEAY3pSlbrV1uFhW4Kz7wU/5xVxiLmAIKm2F22i94LIhXS/p0wCbHzXq
         jNaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NEbiZ/JeyS4iAhndWWQrvwctFFbIqLOAwCexPp05o3Y=;
        b=u86MoK6XsX/vztUrHXxQHfv18XvB5yCYfV5qf7HoETltSjdUXbyE2WSAKcxAMhdBgg
         zsAjOdqAMMgVuWhvUvrrQ1vWKPje3EBeq9czwTq+8n/eitzn2z9sbhQJ+2mD56rS+GH1
         hbeMuya+cCWZTuwF4anYEUktCGNxX4oNe84EUYok+9pDuSPs/9AIh+KwECBUkoA7KPg4
         TsdoLacKCqJSihqIYnPQ5wl7gpZU3gRo+XTpMvxa938Hxoh4m0j+dAFz6RD+I6bypYpi
         J5Fen5m80v8pGNWY35x0IJCPTJeKE6tuHDy/Fg+9VaahfEWi3adwDJ4BX42Bm8lDi3NS
         bYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NEbiZ/JeyS4iAhndWWQrvwctFFbIqLOAwCexPp05o3Y=;
        b=Rm04RPI6AGS1F3h8USf5bg8fatclvvXmr3r+VH0c79d0cXptIPVxOzGqKn0oVRSun1
         OLWcKlY3WdfrA1cQebDSWLCxB45riiG50wdOyZvmv+yTghGiFv54tS6ezbQdROR5DHLY
         N0aKMgS3OEKonX9p1SqpW4V+71ezj0hegJ1/C8ZYTIbwSk/yK79oZNHYyCC0OsOYRuvL
         GdbTZ1cSXwbxhbV9m3TkN7hfszQYENkOQf2x9d2AURlSLj+K8dhywMJhCLSLcJQaOdFT
         vBbU32MbWHDzu0rc8Y1XnfYrnbU7k12zW8phUbYkwNUQyDdR0umQr1J5aSU6mO2JSvOg
         1E/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53152zXaIAotJh6toAyx6z9d9h+4ljoKp0VuJ3dwCF2Z4olm3JVy
	KKyAiFQAknpiqlcBD3cxg8g=
X-Google-Smtp-Source: ABdhPJyJdGwm0r69AvVWnmWNqu+C1nSOC6xA+L9s0sqTimPF0CKRD0lkShAY0ukAyXVteD8DtlNWJg==
X-Received: by 2002:a17:90a:301:: with SMTP id 1mr677064pje.86.1610059370155;
        Thu, 07 Jan 2021 14:42:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:78d4:: with SMTP id t203ls3072215pfc.6.gmail; Thu, 07
 Jan 2021 14:42:49 -0800 (PST)
X-Received: by 2002:aa7:87d2:0:b029:1a5:43da:b93c with SMTP id i18-20020aa787d20000b02901a543dab93cmr713756pfo.6.1610059369530;
        Thu, 07 Jan 2021 14:42:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610059369; cv=none;
        d=google.com; s=arc-20160816;
        b=ui/M8LtWroP3VI6AmL88VxFylMnRotTdPWH/o79MzoYkpu+pCixUGDRvCGR1eGdVM6
         0tYYa/Cr5RQRMshZ3V+M2QsC5ZT869DyynPUdLT6EIM3KQniCZMMChYr4ERzEP3VBLXv
         yEK7ZLE4lysy7brqLv8yaqxNLZt7A4NmqfPT+SYMueY/DqfIb5cOrfWqyYVgaqwIRSzj
         KM+Ddb44VHA79/Xge1VLmBQaR649GF4zzjrDX7vBsswN6r7MdjFtYZVoLq0O24pA9v46
         NF/ijq2Ac8E5kPQ+nn9wNu4wWF784xwNrvW7zAxDZlkwdM95QNud84e0+UC9Rle1jvHS
         sZzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ClvZg5sXEBf05sG52Cw6cJJLIc0iBfkKfgRvrL6xzOA=;
        b=QoXWQlv0DMWFHKwhEgMvwQAw8oPaobHSYGPrlyBy96qLXkk+MOZ+tjNDL3QKUTQngR
         Q6Q9eW6fQz5C+XqXYs/pD2iwkDws5jkygXYutERO34LO8uiUh6lM/psca83IcE8Tsh8t
         itSsFPFtmyFav8IJNzR2qiF+ZC9EPi4SqVYfSlFIsryhLBXTsbAiruy1OHmgELhrmJo7
         mF3JQvYUiJFSmcI+keuywpdxAOWWNCzz6GZ9krj4yss2MT44NjPhAr1bFiDgg8tmOcp2
         S21Redv5ZJudkvMxnAz2uNEGY3qVDGQwu3T/5YPJQc6K0M3JCK7uz0nPlAj86Bv/ICWI
         Vqng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsYBJoZS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id j22si678690pgn.5.2021.01.07.14.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 14:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id u26so7802220iof.3
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 14:42:49 -0800 (PST)
X-Received: by 2002:a02:ccf0:: with SMTP id l16mr681541jaq.5.1610059369101;
        Thu, 07 Jan 2021 14:42:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h17sm4120758ioz.12.2021.01.07.14.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 14:42:48 -0800 (PST)
Date: Thu, 7 Jan 2021 15:42:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210107224246.GA3523037@ubuntu-m3-large-x86>
References: <20210107223424.4135538-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107223424.4135538-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GsYBJoZS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> 
> x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
> efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> 
> Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
> and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
> so it only triggers for constant input.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/256
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/x86/platform/efi/efi_64.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..62bb1616b4a5 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
>  	 * As with PGDs, we share all P4D entries apart from the one entry
>  	 * that covers the EFI runtime mapping space.
>  	 */
> -	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> +	MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> +	MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
>  
>  	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>  	pgd_k = pgd_offset_k(EFI_VA_END);
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107224246.GA3523037%40ubuntu-m3-large-x86.
