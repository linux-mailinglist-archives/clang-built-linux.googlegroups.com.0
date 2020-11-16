Return-Path: <clang-built-linux+bncBC27X66SWQMBBVNUZL6QKGQEIU2V3II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A9D2B4934
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 16:27:18 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 8sf7632312ota.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 07:27:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605540437; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASKCsajHgHJBZNt4JL+t3U42T1fygFdFFdk9l0+Dfiy0/XVL5rxtTGF3PdKVP4cY2d
         glbEFa0q687UXSrNukuRdWiLXm80oOjozZBg2quZJxqRaGHXJaigGdmmoLNWrTabG4/H
         tKn2vHOQgDxJA8dc0IBPFJlSKPzAgq/z577RW/jaEceq1V7vabHs3uec7gw5JsKc/z1e
         kW2Dczo7en49umSM1pVhjYbaNtNV+FRPiCSIUfjdCaiZsEFe+hwWNZHLfXu4zqOVv3X6
         S2K/7BYXedoMJfcQJwmL1va5U1ce3CNyKkDYJiWVDXJ6Oq9TkGtJHEj2q5tADX0p8rCe
         50Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=y+Ykzo66hqO3azbJahqqzoF0JU3a/FIXefpwwN3U5PM=;
        b=zBEqv642tXbi2kzjNVZeLt9jvkcS0KB2yT4qSnlp7wc/PUaKZRPtxW656+c8K3IqX7
         bkWKkRq5cVQsghTf4AD+/9yjqs4CxHQGrML1cq+jAMjpV+wH+Vz+RfuMPu8VWSCq2B+Y
         7MKNc2MS0Lpl+Z9IsHqBq2ezpBL9EgFYTsmZVlbNzUDID2R/rdsFwRP8IVeMTcBIB+qQ
         tS1V9gdeWEjiQjbekqPjGUxDOQwxPf27sYSXDqwzT143QJ0CSggJdkJZfo1SpLDJ++LU
         Xmrfk/y+GxXy6/g9t2WasQGbE06lcneO7AoXFvYUJicqJUYPtSQCQKH4cRRyhChhZMzF
         pFDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G7SNdW2Z;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y+Ykzo66hqO3azbJahqqzoF0JU3a/FIXefpwwN3U5PM=;
        b=JTQqpP71FjdqtJFoCkDHUina/SIOBOp6BiCWLmpyGxGCUTr0APr31vZET31iNDcmL/
         zmywKbIhFP66V/24N05QSKtzOI6Knjc/a02j29UVWvpOZu5uJgvtXooUCYkvJkOQoxes
         GP2XhGh2v2QyhymrOX5CwBFQLTR4hzCe+tbfk766cjNOu8ND31bxbzjrNGQKhpFPSoT8
         95NDLHNW4vXbzcU6nSAPoqK5obkUcI8rHhYVHQK6jl9q93uJbx54t3Wn/PJ41jW4k9Jt
         M+od/mpa9BgrABV72LtmQu7MAhfM+DVbQFZplJwbO7PmdifjVqzjeMrgdAFNdi43D3sm
         fNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y+Ykzo66hqO3azbJahqqzoF0JU3a/FIXefpwwN3U5PM=;
        b=Vj+WVkCySrwTxk1v8Qin8ygvOrhZylke/w7WhpabmKYe0p8zATh7zJhBeTos08ujN6
         YPHoa9RrXHYAjv5ot3tkkwhm0r5XAVwcsNM1NYdxRefS2o6Jz3zjNDfHiqhavcDaw1VK
         NxYrBSpStyFI5+LnqEma8Q4ci4C/rYealKod6vtlpEwc+CRms/KSsez/MIK3FiZch2i/
         okZpl+wk9GQ2U7KoTKTbIY1pBdPLeBsgCY8qpSTZugq324NeQx4y2XFupxw3y1UKu8os
         5qXzdRdvFZQ4RDMoLWyJf+/Ybi18fbDJQtBv1YBRwBaYVjv5EcCjX/DNoRA6nFQBLPC0
         LzFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533POhs2sctfSiV1x/hRi46fvY+Tdp+bej5OK6QRDkm5z45qsw+B
	4yyEKxihe29rB+INQlVbadg=
X-Google-Smtp-Source: ABdhPJxgWKrwoOsVT3EUvCRL1y4Fsz7l0v6JnVYHPpu7VMnh2BGnUp72Ts+VRJbgnEjFsapgddWx9A==
X-Received: by 2002:aca:aad0:: with SMTP id t199mr18549oie.62.1605540437526;
        Mon, 16 Nov 2020 07:27:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dd84:: with SMTP id u126ls2009372oig.6.gmail; Mon, 16
 Nov 2020 07:27:17 -0800 (PST)
X-Received: by 2002:aca:c2c5:: with SMTP id s188mr27427oif.8.1605540437156;
        Mon, 16 Nov 2020 07:27:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605540437; cv=none;
        d=google.com; s=arc-20160816;
        b=gygFJGQlzu+oLcfGn7XJot+HS91xdV8W1p0QOPzsBbZNfkJP1sQLRtAKPhO70HA3I6
         wJFhpapMbnC2xknxktOfXQTHcAVQX6f4Bz9g/Isx5I4MNdAQpODadypWg8hT1s8OjWuQ
         IA0doom2aeFPVPtD6YEEA7BUndo2TnauPjJHN0roMmv/HA/n/CVbvHSBTkUkK7hFQ5gV
         OrzHijRwCLszyvPge//uJMH5X22bvoBZqNG35x1fMhkCtja9G9RKHizGKPCPRgmncsgG
         VpNdrBWEOv9oEcO/R+JKVbRsOoiJDjDqsRSdtQsdmCzOWn5b9S4SfH+wRFLUhTzvpaI8
         0Kvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=p+R8S0WweOXQR+OUWh+p2mp3xbX8KKGAJ9nOo8kOgR4=;
        b=q86pHqk0yAtaOCBmT5+QV2NLpnD1WVPais1f2Ki8ka1MY4TR29QTpUuzYKjgMGfjgw
         SuAuYBYcTUWgPhRLBdyFEMtJchxuvTj+olEOdG+URuAJF4sYuKSuydKj4f6ZVl6ovhMP
         CKfeqH6upxt8bghdYPOzrLKaxKWp3Fd2KC5X5JzdEwvXXLv1mjc3JirCBsPgM1+G9JD8
         UWrnLRw5V8VvHu8Wm0X0DVkh2Pwp3NuCZX938EQjn60XnQXQbA2xpHPpD8+ZuTrtKTUz
         MNfJzQbzWRfnbkDPbQyPlfa+3u44P4x6ZR9X0TNBplCusP8hAh4bRSi4mVmCyknLop8D
         YmRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G7SNdW2Z;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w26si1159530oih.1.2020.11.16.07.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 07:27:17 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-lUgBqLhtOwiGluek09ZQQg-1; Mon, 16 Nov 2020 10:27:14 -0500
X-MC-Unique: lUgBqLhtOwiGluek09ZQQg-1
Received: by mail-qk1-f199.google.com with SMTP id h23so11773769qka.8
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 07:27:14 -0800 (PST)
X-Received: by 2002:ac8:1201:: with SMTP id x1mr14518592qti.339.1605540434520;
        Mon, 16 Nov 2020 07:27:14 -0800 (PST)
X-Received: by 2002:ac8:1201:: with SMTP id x1mr14518574qti.339.1605540434310;
        Mon, 16 Nov 2020 07:27:14 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id z88sm10751007qtd.46.2020.11.16.07.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 07:27:13 -0800 (PST)
Subject: Re: [PATCH] x86/cpu: remove needless definition for !CONFIG_X86_32
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org
Cc: "H . Peter Anvin" <hpa@zytor.com>, Arnd Bergmann <arnd@arndb.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20201116094218.10508-1-lukas.bulwahn@gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <ef9fc100-78f9-4b8a-7c28-d413db041c1d@redhat.com>
Date: Mon, 16 Nov 2020 07:27:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201116094218.10508-1-lukas.bulwahn@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=G7SNdW2Z;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 11/16/20 1:42 AM, Lukas Bulwahn wrote:
> The function flag_is_changeable_p() is used in:
>
>   - have_cpuid_p() for its CONFIG_X86_32 definition
>   - identify_cpu_without_cpuid() within its CONFIG_X86_32 ifdef-block

This looks fine.

Reviewed-by: Tom Rix <trix@redhat.com>

a bit of cleanup, identify_cpu_without_cpuid() be moved into the main CONFIG_X86_32 ifdef with stub for x86_64.

>
> So, there is no need to define flag_is_changeable_p() if !CONFIG_X86_32.
> Simply remove this needless definition.
>
> This was discovered with make CC=clang W=1:
>
>   arch/x86/kernel/cpu/common.c:283:19:
>     warning: unused function 'flag_is_changeable_p' [-Wunused-function]
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on current master and next-20201116
>
> Thomas, Boris, please pick this minor non-urgent patch.
>
>  arch/x86/kernel/cpu/common.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
> index 35ad8480c464..b89dbc7ccb0c 100644
> --- a/arch/x86/kernel/cpu/common.c
> +++ b/arch/x86/kernel/cpu/common.c
> @@ -280,10 +280,6 @@ static int __init x86_serial_nr_setup(char *s)
>  }
>  __setup("serialnumber", x86_serial_nr_setup);
>  #else
> -static inline int flag_is_changeable_p(u32 flag)
> -{
> -	return 1;
> -}
>  static inline void squash_the_stupid_serial_number(struct cpuinfo_x86 *c)
>  {
>  }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ef9fc100-78f9-4b8a-7c28-d413db041c1d%40redhat.com.
