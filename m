Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBIN562BAMGQEL2KW25Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9A734A353
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 09:43:14 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id m35sf4797046qtd.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:43:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616748194; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTEsjSEptHZG4uXmw84Dm7YMnSIFAfrN37Bp4hD/Brdk3Y/wqBnKlcxXgdTU6yGybh
         knUFuoR4qgJoIbOn91v3JkHNvmiAd/42xs9vxJrYQ8FBig9Tf0kkBG3w6AGmE+1OM4IK
         IIjEoNF8yTW/JOUuP3p/Em+q59cygkUQCqdJF9ZhX6mgJkX6QrPp65vXG+z5P9O8b1iH
         5ZU9awGmlbuKp4UR2Wp/laWY1CWfS7ZySd8dkDuW6dKYXTyC4TCVrvAdu3gO9zhxQdlq
         TBFl7aNZWaL0+0lP1j9x8iRFDfv5kfXD9suiNCF8MmYZcO1z8y02i3z/r79XOrBmKevU
         VLiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cr9x+4YQfq3iYnQCz4P2DhzF5wPrFQ5/EQr/bnbJ4cg=;
        b=UHL38bfaQPse0eeuPByxQJdkJMw4xDZIoNlMAh8PNMuFIRBih2c9LYUFyov9YfAgTW
         UMhAnkdtwWPzHrLMe4EKExEsQZhDXHFZaHv8UWqYGsyOXlJoiU9ZgrAmiZQzSPyJTEGu
         oCWmTtVyuYoPAO2bNR/nV8CfM3D+bfpOWAVpc03j0RjbeocZ22HVjZVn9DvJk6ofDKQa
         nwrboKgiKZATiBxpahru3tNVb6rL5lwK/peD8QqcA98TrkT7HyeXzxec/Dq342cgPJuk
         jaOmbPrI0EXY7IiXiyUZ8Jbz8NFb0VpDqHu8Z4lSZOOXUTzFj+4FR3xoNNesJ5YMGkMl
         cKzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HjhYLnV1;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cr9x+4YQfq3iYnQCz4P2DhzF5wPrFQ5/EQr/bnbJ4cg=;
        b=jLRq7AGB2WK2L+NTbThWDdNOUHNkheZ8AxunV5hNS8YDTgEu3oeSBRVq8VlvEvoXWn
         GJBiXed+csjveYbHrZP5AGDQmLJHrYv2PItqVf2QPn88O0D/4pfO8gqgJWHYkesUg/1F
         KSW+OMUGkCkL6HHWQlap4cTBZSdLABEv3W1TUHAXAy0fkjc62xci8vedr4CNo3UYWc3K
         Of4YEhf8LI8r+LQvF2q4BqYGiK+W5wksAbNX8KtXNSH35vkVaje/TeA/6/pKX7qgFPyI
         +9BwkyivZyNU7WmDnLFi1xjaE7gYeEgILyfRU6+bwpNNpMnLQZ3Y6PXfgAYIH7kv8Cjs
         4MPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cr9x+4YQfq3iYnQCz4P2DhzF5wPrFQ5/EQr/bnbJ4cg=;
        b=cPesf8bo9kAKsu/dd+XJynm5YIT47BN+ML4hZlb2KNV8KC7YnojWfD/2QVHqEDCSO5
         eMbEeCtw9mmrie42E3F+i08Kc3mzjaEZUQxgmXI+p8Gs8xV3SAuOVEbNXJReyjP6Rr+Z
         jGa46NnlvikqiKk1tbVSJsbjucJGArIomCFm+Q+Qc/iwCaGCfzsKdAquwcY8vabbNqAY
         kUQenDn9oZE/iqBCI0BqNjFWDHHuPOwVLEHGSv2tssaeMjyw6Qgnb8Rv4CWQX3vHO7GA
         IeeSyuuwQCzEjaGyH8G+x7GH4r8+h4oDJDv+UdqzTlvAOx+xHyEjrJTMAjDeM7d3QRrW
         4X+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R/FEYwcSfq/gkqLkEIQoFPo6LsEr30wQaXH1aloT1ErvnrpxZ
	P983UHpvQJPVWcIMcuIVFIU=
X-Google-Smtp-Source: ABdhPJxv+ZYt6tYb3T/2WNEQcoyusTiPkitQpU0cf4E8YSnYZ09yrsGj5ikJvzMFf3tzJFx3QPHYkQ==
X-Received: by 2002:ac8:660f:: with SMTP id c15mr10843197qtp.278.1616748194057;
        Fri, 26 Mar 2021 01:43:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4f10:: with SMTP id b16ls3052245qte.7.gmail; Fri, 26 Mar
 2021 01:43:13 -0700 (PDT)
X-Received: by 2002:a05:622a:216:: with SMTP id b22mr11237790qtx.263.1616748193600;
        Fri, 26 Mar 2021 01:43:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616748193; cv=none;
        d=google.com; s=arc-20160816;
        b=yBTFT3JmqFpAsy8rC8m2MrNE4NlKwVs1kmGgGHP5/R3gXKFtrWH2dZI5a5t1mCAhoA
         cvEt7kt6VuIgzClQNSC5uvu14Yg9/CG8jSA3J6Jx++N1HismvI3PXLyIU5QHlZCvwrPr
         bZaw1IOve0BteM6wc1t3n/2me/Yek9iJ+ruufi4cusnCaL4uT/Esy7RcIa6YfuOct4D+
         G0YrmGX+q9tdpe5WuDWDc2Bkp2y1CBzqZ7JCUkis6/dtC4Yat94YP+/HEqrX/rspsX/f
         Nmm9YP1YpQNAtnzISUgIghdmQjC21J9yXKAzZsXU/bv0TCIwkpW80Z/neA/dDifgj2gu
         uQRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ScPPC0LjnoMNtr3tslxU/SJmIGb8QvQW8ixdd7uz1io=;
        b=aUQ3QfQL2CIvbfULN75my+oubOe6T6fSDTMeMDEnOx7YNqMXtz1T7U6O+Ix70ndXLy
         nI7dbGk0AXpvhV0KT2zvJgtBuvpwgkewl97c/j2UhK0Dxy6DQdQDRKaNNS8N9pkqo5nA
         USuxVBQWD4dulRWFphhoVLsSa44NKrx9tY6tIgFhh7goxLAj87df+bg/BGzOStGDrqjC
         bQyb0rzEEkTDxNx9T8MRDzaFrVCV271o4MaHEmsLog+oSsZl8KD4H/HBtETKlq3CWQZb
         1rv5yz48wjuWr6+TxzgPl4b9RXFJAp6MUPp9VzejyVWIVbEo+yNytalsqrpm13Cqhyfa
         7Efw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HjhYLnV1;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b201si665158qkg.6.2021.03.26.01.43.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 01:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6C6E061A45
	for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 08:43:12 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso4506500ott.13
        for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 01:43:12 -0700 (PDT)
X-Received: by 2002:a9d:12cb:: with SMTP id g69mr10624384otg.77.1616748191665;
 Fri, 26 Mar 2021 01:43:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210326000435.4785-1-nathan@kernel.org>
In-Reply-To: <20210326000435.4785-1-nathan@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 26 Mar 2021 09:43:00 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHhdw2EDmsuM0KHXcbKVNSPjrYkTYELHGShDN5NhAkvOQ@mail.gmail.com>
Message-ID: <CAMj1kXHhdw2EDmsuM0KHXcbKVNSPjrYkTYELHGShDN5NhAkvOQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] Fix cross compiling x86 with clang
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-efi <linux-efi@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HjhYLnV1;       spf=pass
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

On Fri, 26 Mar 2021 at 01:04, Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi all,
>
> This series fixes cross compiling x86 with clang, which was initially
> brought up by John here:
>
> https://lore.kernel.org/r/cceb074c-861c-d716-5e19-834a8492f245@gmail.com/
>
> I have picked up that patch and added the same fix in a couple of other
> places where it is needed.
>
> I have tested this on an ARM based server with both defconfig and
> allmodconfig, where the build now passes.
>
> Please let me know if there are any problems.
>
> Cheers,
> Nathan
>
> John Millikin (1):
>   x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
>
> Nathan Chancellor (2):
>   x86/boot: Add $(CLANG_FLAGS) to compressed KBUILD_CFLAGS
>   efi/libstub: Add $(CLANG_FLAGS) to x86 flags
>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

>  arch/x86/Makefile                     | 1 +
>  arch/x86/boot/compressed/Makefile     | 1 +
>  drivers/firmware/efi/libstub/Makefile | 3 ++-
>  3 files changed, 4 insertions(+), 1 deletion(-)
>
>
> base-commit: 0d02ec6b3136c73c09e7859f0d0e4e2c4c07b49b
> --
> 2.31.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHhdw2EDmsuM0KHXcbKVNSPjrYkTYELHGShDN5NhAkvOQ%40mail.gmail.com.
