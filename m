Return-Path: <clang-built-linux+bncBD63HSEZTUIBBTHG7T7QKGQEOQDII4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEFA2F516C
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:52:13 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id x4sf3064278ioh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:52:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560332; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5UOjX0vbUHaKvnCoHXQT/8RXiFjHMkjMUgeh5QFa5QCJNjStyN7t+BaxkRetw9wXL
         rHq9LwJ5jdbp9fnLB2yq7Kih56bGuC65KtB0m6Zzd2zUHFDJIg9iudQrvBlvwy2CZNNM
         Kpdc7+Eco4kxamPKC9S8kMa5FTGl57tkiLJGdvqWYYxuI22zSbmiBD8+Trqs4iifonGd
         b3opcpLrHNL1Ih3xmskG2HxPBqyUv6DWsb6E02f9234zD2nywfH/RoyLY/SQem34TouM
         HmiG9ZcVjopwZcS4wgyvE+tvJGcXZ2h8y1dBMeKlFlZw4KZPTQTHfweW+jRe21c5/WSW
         Hm7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LrEJI1QtmTLMFThb42bRg9h9BV3ePTyxukuzqlC7H2Q=;
        b=MGoiD+i5ERtbd7bpqXow5unhYfuU7uMN2IjrpbRMq1ry394mwzUodO4RTTb310/tum
         xAIGcDKQ2vxe5pE1TzZraH5CvlWDJVPQWJttIwFCgWqBCSqIp3Egoez+0NSTBJBUsUJ3
         JcvUZ6e1DOnVk1gEwRrE/3X1zS9xvHiBi0Wii+zw9l3YD7LSrGlt333DOHlfSbeUziWJ
         4qig1B8dkkkWDDb4ot4MHVf3bIqpi/1EcdvEdtOaJodfUPiQg6zAPWQfizkp6mVEtOXv
         FQVd3wX3FfzcuSK0vjCkh2Fsm4m4lBQ1bB51saZgw1lQ42wVFCTztp35rXI+RKX5paJf
         4XpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cd2LEA8J;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LrEJI1QtmTLMFThb42bRg9h9BV3ePTyxukuzqlC7H2Q=;
        b=qyWAPjtejqQ8dax6TbH58Fl1Dlw/waJtoA51E+xMQcqKcQAgdn4+wUETg/B4w3jwu2
         tzZyLPoFUKihIg9P99nQP52PKDMuJQfmYbmw8sus9bH5HcjpSHhXPFcC/w46P4J9hxjd
         uGkvdxZD59ZEL3pIJckK2lOWZwE6TBiX8C9J4RjrO0e6l9q7GI79bCaksWhPuNj60eDF
         vQiA4PTExAZ+sUSLw8wA5qC1lQHjZc4c7cpcoiCQXa9MdRDmn1bAlcp/vnr2Z1g68XmW
         Sj88RUcqixY/Qt0KFAVw2d+seeaOx0kuz0xrjkpAFcJ8NA3+lrQgrgs77QQ5Vppaa1UK
         raNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LrEJI1QtmTLMFThb42bRg9h9BV3ePTyxukuzqlC7H2Q=;
        b=LJL3l9hgZySJkA6h9tDEBIAxBCmJ8ry2ivp+6q9IuR16UjQOAit9tMWlgOlktQmvU+
         XZ8xw0rchiDN82e3x88mvWI1H6fNZP+tchpghN3OkwqRsxk3Q5GG+TKQjBWhYXQqGJoJ
         xQed3oX94X1zvRPWBHBDepZ9bGYXkRWpX+ft7+uPBf0i3BQ40m0Qm8TkdNXgYaS5IU0i
         /ZyhHVsVjYE343sF87CQnYU8wLnvmoepl+6EyvFp6713Rr01kQ5hsw97i4E3jpObFEun
         517lFWBxUC8lTg4DKnEUhQRMxjClg4DBLpU6Xe6kNdZaBAzjRvETBx36vt+eFqHvwIRx
         //+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YqDISsXO/S3YUcxUTL4BBYs45QOKjeDudJKEjcu3Lcitz+Dv0
	7lfLNacXliJs7XtOGeRnlL8=
X-Google-Smtp-Source: ABdhPJxyOQM+aCmwqYXZeCVPNNY5YxPzgb5MqmT9Mjv3PUrqj9u1yO3+oge7BbJWZuseJjgZd0lxvQ==
X-Received: by 2002:a5d:9a8e:: with SMTP id c14mr2707496iom.178.1610560332837;
        Wed, 13 Jan 2021 09:52:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ed0:: with SMTP id a16ls381518ioe.5.gmail; Wed, 13 Jan
 2021 09:52:12 -0800 (PST)
X-Received: by 2002:a05:6602:5d9:: with SMTP id w25mr2622179iox.206.1610560332332;
        Wed, 13 Jan 2021 09:52:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560332; cv=none;
        d=google.com; s=arc-20160816;
        b=cmI31Dd4AvXOjsjm+Esj8xcjKfKJW/jsF4grWmfJRkLQPfMvwVPK12QS5k9sItIdSh
         z7u8XbdeGEJLZvCRp7bLHPJchErMJBlJCi+99UyIG494/qcYEj3SrHheh3x8tIe/LeS+
         x6jTp+rYy2719eR/QQvta4yzykIyGzAdFHeb9b92FhdgALQQoKPoSJoVXBsUxYRhSiL1
         OzkASQtuoENAN8RtYYr1MApPsPtUM047PF234Pb3baTx/7pg2BLjm28O3voexW7qETJb
         nltkrhGAAi7aLyKEBp5GhOTU166/mqapZP4Tx/imOzpLjgxjeBt0WZXkLNT3DrpnaIoJ
         ppJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aLbaw7pQltbtzVsswNXqJf3e7K39ObHdqq6gU1hIIro=;
        b=puzD3Bsgssx1BoXma4n0h0/x2BlMXcBVQfRrFIQ3pBdg77XuUEI4cnGYA0b2Pos4WG
         38y0yf97v1Q9sYJdaiXhod/J3fIUWmMpq3gKkFLfUZsuFe+Z0N9Cw8VKmzksPqDBnZ4y
         IbleZJgKiraH3lkeJ01I3Kus2cZiISjVwKyf80aOnNhsVCuIBM/hdlzSTz5NPfNXrFvo
         Lu48nH8dq8JNAXn/Bg++PvCMSbvR8jvflTproZWWVjp6+t3dq0HmxpYgNKwAFe6xvcrM
         lbt3kGituVcJI5iRygNGRJJkIXsqjRkMFwZ3zJLtrxt5qgMxufx48Yv+yWTQJ2qwmJFV
         MSNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cd2LEA8J;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t69si401851ill.3.2021.01.13.09.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:52:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73B8F235F8
	for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 17:52:11 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id q205so2960511oig.13
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:52:11 -0800 (PST)
X-Received: by 2002:aca:210f:: with SMTP id 15mr263013oiz.174.1610560330694;
 Wed, 13 Jan 2021 09:52:10 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org>
In-Reply-To: <20210107223424.4135538-1-arnd@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 13 Jan 2021 18:51:59 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGLO3TxH8oVYq+iT1f_kdunobY9C7a6dmFNmFQoSnzQcQ@mail.gmail.com>
Message-ID: <CAMj1kXGLO3TxH8oVYq+iT1f_kdunobY9C7a6dmFNmFQoSnzQcQ@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Arnd Bergmann <arnd@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	X86 ML <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi <linux-efi@vger.kernel.org>, 
	platform-driver-x86@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cd2LEA8J;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 7 Jan 2021 at 23:34, Arnd Bergmann <arnd@kernel.org> wrote:
>
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

Acked-by: Ard Biesheuvel <ardb@kernel.org>

This can go via the x86 tree directly, IMO

> ---
>  arch/x86/platform/efi/efi_64.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..62bb1616b4a5 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
>          * As with PGDs, we share all P4D entries apart from the one entry
>          * that covers the EFI runtime mapping space.
>          */
> -       BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> +       MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> +       MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
>
>         pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>         pgd_k = pgd_offset_k(EFI_VA_END);
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGLO3TxH8oVYq%2BiT1f_kdunobY9C7a6dmFNmFQoSnzQcQ%40mail.gmail.com.
