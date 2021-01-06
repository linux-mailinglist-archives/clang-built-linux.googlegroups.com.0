Return-Path: <clang-built-linux+bncBAABB6EH2T7QKGQEVEGS3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5DE2EB6DD
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 01:27:37 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id r20sf1245441ilh.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 16:27:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609892856; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIVBF1UIntIZwu4u3YLVYCtdPHnxMFMwNpeknjqWk8qu8LCcWqyzb9cutlKVR9zIOu
         191KHJGUdyzkDDY59Feb0Cb2sAS8hR2x+djJT5gNot9b6Et+QJznRrTr1PRzqaHIbhoC
         75f9RVHmOaNGEcJAFN4+Yw3J5rey65qRCJ3PF06FAiRMCimlHPNjGgLs3jNUUK3Ssrjr
         QnaY/mUJtWtCLXN8v0kQY8ruJLDzSfYw3SbOZIbgAolFU2otHvZDbn/2uO3QWWQR1oDw
         JEdP+/T0WFWLCUOXFTpvfLEKaRyE4PWcKt5olIo7B9dDmlBxCUTcBJP9vGgLojtboyWN
         cvsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Y/LBB3dCRmEnvLHNsP7Q+cR1oG6KXsoH9HmiMBkArPY=;
        b=ifRg56kLHi0PaYzDmYcOUTPganKTzv4qCu3RCnWZClTJ1EcN191HNM3CwkcppqzMx1
         4UsEG8CVM+UlBq3EGVZ2aZNNXrWUbvCQ/rYDafY6R/mYkG2Tk0hbzegnk/uMMPSlOgxd
         gpsGrb55ykal1FZNc+iGfMshwS0kImxxfDWXrSSi8dGo1pMfJNQiZCiUnIKbHRV5lH6t
         x3DL1ug3QIFE0wmCYpz3Tto8rv44iLnX63f26Bc6S8tUMoe4qiqYKPgpNkPXEapN+lt7
         PFoKgin940jvKHjlBR31zP9zGDkbc5u+ZG6otskVZlgXHiSc7yeXhdcWHNJxr1Y3zaD3
         z0ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WYW96riW;
       spf=pass (google.com: domain of chenhuacai@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=chenhuacai@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/LBB3dCRmEnvLHNsP7Q+cR1oG6KXsoH9HmiMBkArPY=;
        b=ZKzVNeI/DXyP53nNUdxfxWztI6G9dursMgeKomMMfHl3B95waQkNONHjYzXW4aqX++
         rqDELajePUl70aOFSFpyRfa0XL1rPf0pttT57wHgcsIP8dhVnJpq2bi6tblnoVHZ7hdB
         gEEoYc2s2SR1t3MHndRjVmkffFymzaLGZUP4JDQJOrzDRFXtcZNIHmldSMeutr6T6xC+
         Z3sLJd09pbrk7Wec6NOLyMCiS27K4oFt/eelyQA2yCJ6GpAe1ajH50IERTg426IM9JqQ
         qDxqzATVedPL69+Hv7br7Hpj88PqHX+cyHqA5p78lKkuScw66UiGLTqLSP9o8LiAB/Qp
         pbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/LBB3dCRmEnvLHNsP7Q+cR1oG6KXsoH9HmiMBkArPY=;
        b=dCF1sA9hrnbvkHiSd/7TFrEFprNXwxso+tEN0hzoquxIdrehHtKXjmQ0+6eUhnATwy
         VvLtUgfkBT4W9sWuZqlvVGDwZFfU03cgRJQV28ZdC9inmUdIqkaP5N/PcHzJi8t7/z8x
         RtcNOduSXmi8ayk8/sApC5EEAHbqUnrbr66d12JujS/3V5HgBXEHGBL70iXanlE1lOUe
         zyD+sjs6pfAuoHsbewmWnjbRadD8k/cZkO0ow4OIbICBPYM5x5gKOgTK82XzEuU3+cfo
         YYCWxjMyip22eseZt3k+Os8XASjKhDyHwJYdxfKMxDQdg+N9TYcmtEOtXQM5dDuvVs6y
         zF6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Gam6Q2BqCJfpWF/XOBD319iMIxNtPqzbkSBRNqBEM57R6iRME
	SGAer0dZB48U3fIpfsyZ7qU=
X-Google-Smtp-Source: ABdhPJxrajjvCgKo/XTMhASLNzGf5mZiP86W5gO6VNMQfumzin3dkRUPuzfzdyG55VX3mLYXQid61g==
X-Received: by 2002:a05:6e02:154c:: with SMTP id j12mr2104633ilu.33.1609892856189;
        Tue, 05 Jan 2021 16:27:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f48:: with SMTP id y8ls387817ilj.7.gmail; Tue, 05
 Jan 2021 16:27:35 -0800 (PST)
X-Received: by 2002:a05:6e02:43:: with SMTP id i3mr2071519ilr.206.1609892855858;
        Tue, 05 Jan 2021 16:27:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609892855; cv=none;
        d=google.com; s=arc-20160816;
        b=ukTL0tM6QBd8H63shHIB+BpFGRE5CJuqUFYwKTeXpSd8YH5+8EXpB+85ga9iLPRXX1
         wkC8J1ajJj7D6INDkm4FbJp1qOcndA+FASBm0OhuwnoAGcoIstD2DnIIY8DRUdzzzpts
         0/0Tc2ZHq3paWjlhT8rkn72K7wub+qwK7CndW8/MmxZgbmyTuN9X4acdrvyENH9UkRDu
         6Xi2oa7MM/50jtcx8B/Kw8a7A3vODcj35scQ6vPnlci2P1VfcOxBmvitTXr5gE642pfJ
         JiKCMKuG0WpOfdwA+j09oCpyRK7x/wGoJxykuXTduLu1sRy3RjhDjbh9GXBaa/Qrbrny
         PKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PotuupZxBHNJkRsqyFbNHQEirBNPpSJ13+XzPP9UrA0=;
        b=RecbgOCGxGA5LJmgXZ5Zp/znaISvZxoj8VFcjUU9YGOiejz/nbw9bLMEeoHdh4SzwU
         yggpuz1Yst414oiuHEGHScyO5p1WiP2w6qyJtT3QWVGOIfLfLYOQKU7fhyCtFzeLagGk
         mrgqLcQL+gOBwo4Sqnh8eXhXRY/A0UTqhuZ5DPElDx6+KC6A1HjPNoBMr1EmK3yCDELJ
         cq01knWW1nEfl60PXkwiBV8opUQeNV0RFyS9kYx7uXMQfgLPgfQKsRHhIKwouQK3FscS
         XSq3B3Airs23TvuVKXgq3iEPNzsw9Uh+eWUc2HwMNYm2gxk5tP1O2vOZcWMYfXBm8O9x
         3/Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WYW96riW;
       spf=pass (google.com: domain of chenhuacai@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=chenhuacai@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t69si46538ill.3.2021.01.05.16.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 16:27:35 -0800 (PST)
Received-SPF: pass (google.com: domain of chenhuacai@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A6D022E03
	for <clang-built-linux@googlegroups.com>; Wed,  6 Jan 2021 00:27:35 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id w18so1172293iot.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 16:27:35 -0800 (PST)
X-Received: by 2002:a5e:db4b:: with SMTP id r11mr1238435iop.148.1609892854494;
 Tue, 05 Jan 2021 16:27:34 -0800 (PST)
MIME-Version: 1.0
References: <20210105203456.98148-1-natechancellor@gmail.com>
In-Reply-To: <20210105203456.98148-1-natechancellor@gmail.com>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Wed, 6 Jan 2021 08:27:22 +0800
X-Gmail-Original-Message-ID: <CAAhV-H6g92UYVpncKJ8v7PnVPpvCTUEeeSyBrXdopGm6uNFGHg@mail.gmail.com>
Message-ID: <CAAhV-H6g92UYVpncKJ8v7PnVPpvCTUEeeSyBrXdopGm6uNFGHg@mail.gmail.com>
Subject: Re: [PATCH] MIPS: c-r4k: Fix section mismatch for loongson2_sc_init
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	"open list:MIPS" <linux-mips@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: chenhuacai@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WYW96riW;       spf=pass
 (google.com: domain of chenhuacai@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=chenhuacai@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Reviewed-by: Huacai Chen <chenhuacai@kernel.org>

On Wed, Jan 6, 2021 at 7:01 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with clang, the following section mismatch warning occurs:
>
> WARNING: modpost: vmlinux.o(.text+0x24490): Section mismatch in
> reference from the function r4k_cache_init() to the function
> .init.text:loongson2_sc_init()
>
> This should have been fixed with commit ad4fddef5f23 ("mips: fix Section
> mismatch in reference") but it was missed. Remove the improper __init
> annotation like that commit did.
>
> Fixes: 078a55fc824c ("MIPS: Delete __cpuinit/__CPUINIT usage from MIPS code")
> Link: https://github.com/ClangBuiltLinux/linux/issues/787
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/mm/c-r4k.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
> index 4f976d687ab0..f67297b3175f 100644
> --- a/arch/mips/mm/c-r4k.c
> +++ b/arch/mips/mm/c-r4k.c
> @@ -1593,7 +1593,7 @@ static int probe_scache(void)
>         return 1;
>  }
>
> -static void __init loongson2_sc_init(void)
> +static void loongson2_sc_init(void)
>  {
>         struct cpuinfo_mips *c = &current_cpu_data;
>
>
> base-commit: 36bbbd0e234d817938bdc52121a0f5473b3e58f5
> --
> 2.30.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAhV-H6g92UYVpncKJ8v7PnVPpvCTUEeeSyBrXdopGm6uNFGHg%40mail.gmail.com.
