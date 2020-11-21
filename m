Return-Path: <clang-built-linux+bncBCP7VQF36ABBBU5X4H6QKGQE4EFSMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A49692BBAB9
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 01:14:12 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 198sf9340803qkj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 16:14:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605917651; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLlPMSdx1Xz8ms1C+tsfMOp24V4GY8VrBtxRBAuBCVlhU19gvRgEcHJNqDFIvabqsx
         GlS28uYmQ/yyX949lZBewU6ls0a6gCyXGZkNr9IXqZRLpFWChxWoGD5NnUsUJUYfo33t
         UzcYew9we1oXOYvLv6rkUj3VfjQSnWmBGBIH6SBCAI/WU3fZCl69zaj1c2YtpHvCGohv
         UbhIZ3g8I3EOaBm4nKGEQqJBCzZZd5eABuaaoIWnbpDMTe2sgR3+dzKyMvIsUbB/t9mD
         b8RMi9Z/70Ae2c9ARNGSw5lxC8jLVKrkVjkv5qyNHc5lJsbg83lQUraI5NG3iJehHWuL
         9ifg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id:to
         :from:cc:in-reply-to:subject:date:dkim-signature;
        bh=S6Mp506vbhdrl12wt/X5LP466xLmLGhiK2D1Z0ykuzg=;
        b=QF2ru5EQg723OCUxDBkyLPF6LtE+r9+I3exHTQiL9fgN1n+m33bHgRqffV0t23DCtE
         lim91lK8swcavUXLlSHqX/dNnTMyjqXc4YyE91is7nQnzPr6naDXwatWVSWgBV3Lagla
         BkazPHZgJHyOmv9ndhuHgpo3SX6hAYOnDbb1lvRyVNFta557ChzIYUe345HsFBJsbERI
         1FUNal/dLZLyX6otNW88wKR3eHSqKG7X+XwodMhkHnVic0I83lgaqjZShEDHq46hPNwD
         DINyKbPklq2tmpnF6TOjSw6/uTuMugjA4/3PKzpCDpm9YRqbcP0KRgDb7xTLCd8hPDb9
         hbDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lFf95V8U;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6Mp506vbhdrl12wt/X5LP466xLmLGhiK2D1Z0ykuzg=;
        b=Q2xY4LkrWx7EweP1W32E/JnkIGNzZALE8cgAqChEhx1Wjss+C0J5YkSdFpWWYoxTyW
         nVsZwtKk+pzxe2di+IXWafnP+OIm7qrf4cu5+GfSVBqycUsW9l+IbZljvG4U2XRuORPh
         nKYP+Qeis+LiyJus+yQ6MTPHlEGp0RHRq/9eYAIeYCGl4s8HC1Wn/F2eoxE7weJyBx5G
         tJBCbW5E1TzVptwhKeDo5J/pwXlXv+4dLKKsslYoYrdnIvlra2zep0s+MYUKvBFJ7kCj
         6DVaWOrvbq3+uT4g66te53OMTRhlSuGCJnjWeNYE41FcO2zEIM+Os6ZGIYYqygEy1oJr
         53Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S6Mp506vbhdrl12wt/X5LP466xLmLGhiK2D1Z0ykuzg=;
        b=YRloPrJEmB3VGORfMMhXpkznBlkS5K70/n68EYD7HLDtX8wac9t0g7VQ5XKeXuz1FM
         WjBjcvpWi2EKXCim/4aqJrq+z5iLsoIcpSdRZQepntsZjDnZ5+geeaf7S7btYuw4tSIu
         OTi2KT8uPMohWNVM04ltKTjKf+L2aLL0qdtPnQC16SVYnXkpTwoYAUDLLAk/BnDEklMB
         n+Xryygv58ALYq0tff1lzdrqsQK4/SPLmJtZvx9pBStUFgLSSa61U/bqyW0H+rHz12iz
         9jrchHUHGp3NxpbmoRpz9DRQ0XLKmgzMG4+1ceBezKeM/0V9n+/wHxaD2uso+Q0vBuRk
         Hfhg==
X-Gm-Message-State: AOAM532H6Y0Mj2WFxEBfm90AQqYhlYsgSmWrNg1Ob5UKMmt0TyPzpYAl
	uPoJbYQau/VqThmInfcoMnA=
X-Google-Smtp-Source: ABdhPJwtMGBPQMeI1fRx+XZB22+Vd5649T2ayz4b59AeGpt2msUhVQ1j2Yn7dHx2r7DTDFTxILHLgA==
X-Received: by 2002:ac8:5553:: with SMTP id o19mr18112712qtr.32.1605917651760;
        Fri, 20 Nov 2020 16:14:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:708e:: with SMTP id y14ls2962053qto.9.gmail; Fri, 20 Nov
 2020 16:14:11 -0800 (PST)
X-Received: by 2002:ac8:6899:: with SMTP id m25mr18527479qtq.322.1605917651414;
        Fri, 20 Nov 2020 16:14:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605917651; cv=none;
        d=google.com; s=arc-20160816;
        b=pgs/9rKLJEiSILFZfwV0daC1hToXAyqsOrl1BgTAGANEh7qkbSPnSDRsbRCGSfnEbZ
         3vFsL1BhKctf2yeZ/+0TSJXlZHFUxLiyKa9ExUQ0+hLQ/NlqBL4Haz57hq7pEzRxsaXC
         K0Q6+bV8rk0f5bSvnAA93MA7yTYZyZT//+LrrYuC+FE2P+RikWsdETi1uY5G+HnzQpoV
         dYijmE1M7mIsn3CrGcgsntumovLzgctu99ju81RrXZT4INLD/Ld0IhPnsL0Hhh7FqdfJ
         26z3C2R4NC84Qf4H56lEUJTcZ2yPbXx4ykOKGvy1zpzDfIhFN+on8jwKxuREBmufDEZc
         C4Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=U5bxGcfchBQVmEBBbdQ2iExVkYUOiZ88oTXx0NbjtJo=;
        b=hSERzxyLR5FzQKDNZ6tGEgo+yy1EctRLHOlbNn4ptJW7g1fsWpCNNExO0ePKFVY3z+
         oiqCUrzZzAB9u1erlnp+uJzAl9gxCip3nO0dPnOjMVmjNMa+cpyk30iAe3U9ficFZrev
         ePDZ6Miz/vEb4OjiqylcxuLAEqkXThq+Vt5PicluZyRpGW7Zwq4ntpdqb7XZcW0Xc1Xf
         hIhJXX9HemaOYVzwFxsfroEV1NwjOgRgZtUa3mWwLA7dJZ5O4DXlS6nO9QSp/RHIQjty
         0YzCQZZugLnRYWByJqUyt4d+QDgsHhRasD7RNWy1m7CHbgrc5QRMp/OVcXbwOi/j/x0u
         eH5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lFf95V8U;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g6si301205qtr.5.2020.11.20.16.14.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 16:14:11 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 81so8728557pgf.0
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 16:14:11 -0800 (PST)
X-Received: by 2002:a65:684d:: with SMTP id q13mr19480014pgt.372.1605917650458;
        Fri, 20 Nov 2020 16:14:10 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id k8sm5080220pfh.6.2020.11.20.16.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 16:14:09 -0800 (PST)
Date: Fri, 20 Nov 2020 16:14:09 -0800 (PST)
Subject: Re: [PATCH] riscv: Explicitly specify the build id style in vDSO Makefile again
In-Reply-To: <20201108203737.94270-1-natechancellor@gmail.com>
CC: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
  clang-built-linux@googlegroups.com, natechancellor@gmail.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: natechancellor@gmail.com
Message-ID: <mhng-f056461a-d53c-4405-b514-1d01dba13cc1@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lFf95V8U;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

On Sun, 08 Nov 2020 12:37:37 PST (-0800), natechancellor@gmail.com wrote:
> Commit a96843372331 ("kbuild: explicitly specify the build id style")
> explicitly set the build ID style to SHA1. Commit c2c81bb2f691 ("RISC-V:
> Fix the VDSO symbol generaton for binutils-2.35+") undid this change,
> likely unintentionally.
>
> Restore it so that the build ID style stays consistent across the tree
> regardless of linker.
>
> Fixes: c2c81bb2f691 ("RISC-V: Fix the VDSO symbol generaton for binutils-2.35+")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/riscv/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index cb8f9e4cfcbf..0cfd6da784f8 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -44,7 +44,7 @@ SYSCFLAGS_vdso.so.dbg = $(c_flags)
>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>  	$(call if_changed,vdsold)
>  SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> -	-Wl,--build-id -Wl,--hash-style=both
> +	-Wl,--build-id=sha1 -Wl,--hash-style=both
>
>  # We also create a special relocatable object that should mirror the symbol
>  # table and layout of the linked DSO. With ld --just-symbols we can then
>
> base-commit: c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c

Sorry about that.  This is on fixes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-f056461a-d53c-4405-b514-1d01dba13cc1%40palmerdabbelt-glaptop1.
