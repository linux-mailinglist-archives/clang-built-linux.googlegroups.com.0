Return-Path: <clang-built-linux+bncBCRKNY4WZECBBLMR4L6QKGQEVJW37YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE802BBCA8
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 04:25:35 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 9sf8484879pfn.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 19:25:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605929134; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMpmGU9R1Lu6hp/rk+INQglADLwAFuiG1144ufLDy/oZPqzV0gbjR5qO7BvPxrSyEP
         8Lpn/fKKLrM7TbY/AmmniX5vKQZ1GKrD+WX4uQUPv37MUMnWZS9vdte6Ms2n6o8oB9tj
         4ocNVi3u7QGogTLTB6/BkFNA6G+7/jZoJShNFrPFq/qJbHUnYFdX5u5dhalK7EFdyPXa
         PqKq0SBg5TXvC+kJeDkDxvABfoncxlFc9bVyB0lbjvG1MQ+ecT2hEyrpVDcSDf9HzPuj
         UNPODMgyhlMJuLHFJihVVD1Xi9PI47y5pSMcbIesvPqQQjKiPNe9DJ6Vdg4Iy8WIohUB
         LSfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=dBCGm7S+oBUbAx0CcHSfmUl7cMutPlT/jX+uzA9X57o=;
        b=qVbfMTnLUTJQPVz7wUkJ0MkX3iAIyH6Heieup8Z3vgwKZXNwO2z19UzHLrguItJ/YN
         byYB7aWcuui581+MOR8U7LMCh0DPWmOVNtScQmKAo0+jHDy/fK6Yy2mdEjg4kVn+1/aj
         McnX/duAVwGRo23eOJOoOnHrnVXbKMTh9gm1x3g47zHTR13aFMtTZRj0xJyqvSECJI0U
         NzVy+uZqoak2v1s0EIpcapgDyB6dWf4YqPUv2/kxz4iNbqeFV4bgZO3kLSa/UuFalMPs
         uqHxOBdsuNvOtQ+GKJA96vAa7OfccFao06ZGLscLxBqXBznGMiXAwZDa0R8bJBCiAx1n
         cMdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=U92UXwN3;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBCGm7S+oBUbAx0CcHSfmUl7cMutPlT/jX+uzA9X57o=;
        b=Epn1nOAbchRYFME8bnun6YY8xwWHVpoiQHUQahZP6Hs8K/nml9Bh6SIDEJm3jElUtu
         yV1gCz/3LlyrKI0Oma3X0AuzqEVUFn7bx4sgPpwdjxOsAL8DQ8jK1VbWZwb+umqYeBQ6
         WfAXWIg7LeWjhhi6Tb5TriFIrweY0GWXvOrGHCLHkkpVSDFhCo8ZAnYhnv5CbJDEUBAI
         lUfxspLD7UsqhZvxsP8gTF8y1tjb9rOIJu98W6VE1myx1rh0fhlptfGQEefig1Dx28vA
         UXtDAPDZu8pu34zBYPoHNWZIWdfA7JytZmzSWDEd+SkzNm/ptJUKI0wj9e08UQsO0xBh
         2ySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBCGm7S+oBUbAx0CcHSfmUl7cMutPlT/jX+uzA9X57o=;
        b=tNDN+PS01xHYfj3GhcCv74UXhDzNFufvVw6qSQDQPh3t2f3nBfFdIxUJUVH/qBc5+y
         TGIAX4j1jpwX0kQx6TAj8NJLM8OYLS7B07pWc41ACfxiwBUoI4WYSHoYC5qf4WjysxVu
         9vL1o6NvZHdfysdwx6aTsZc7CZ7pkscvLdI+xT0L/L90B5ujqRCCJ/l4FqSaQ5mbvNLF
         oKZjnFYRO0ubHd/oz2iE8KHd80cmgQjg7JM8AZPYMmjtcVkelfIlS4ST8dCYXDIXCIiG
         cADNLrdUIScDRRZ11IZlW0eXR8b5BIY7y8jDJbzaDiOC8eBmkVDfb76bl44loeSFOUM2
         GV+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EDG7cbw34jIQqIzoqI3kR/tuFpn2FG/O9GMbsmBiRC/ewvDeR
	ArBoHJ3PVMlSoriDhT9XUVI=
X-Google-Smtp-Source: ABdhPJzfiC1+dLAq/xSJToHvAEr+BecegCRHQuWByuw+gVRVCYN2LQI5I9OEZtXX9neH8WAhctmV0g==
X-Received: by 2002:a17:90a:4410:: with SMTP id s16mr14367837pjg.173.1605929133676;
        Fri, 20 Nov 2020 19:25:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:881:: with SMTP id q1ls3101037pfj.4.gmail; Fri, 20
 Nov 2020 19:25:33 -0800 (PST)
X-Received: by 2002:a62:7b46:0:b029:197:ddfa:168 with SMTP id w67-20020a627b460000b0290197ddfa0168mr4074841pfc.11.1605929132965;
        Fri, 20 Nov 2020 19:25:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605929132; cv=none;
        d=google.com; s=arc-20160816;
        b=xlJ9Pve3C771Al7Lhj6iTWDIsMOjcIv4dPkuGkrgKd7RqSHVS/qZR1mKX4t30Vg51G
         z5pEWiJdY1bOQB0gX2r+N6E2yAaIO3xopgdSCaEyRoym1rt07VBVmbrYZPCXXnNaNfCk
         EbmTNFfQeuN4PEibLV3vob/818aBfhI7sgI3yFrymAdV1XAYYl5RW2sZIJLnC8EslXNt
         4XoEcZPanSK9mFwAzHpKVpA1HAAQPicDE0VQ5k6opgGiVh5rGwbIzd4x5YdHjbyvUV38
         xCbj2mbHfoHUaCgyZ+TRjB9ySjPJ+mEyT34SYsy7nRctgaOc5+tNc+lc40m+wymFFzwd
         dwmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=F4LHuwHPehTGg6C7SwMVTgSDJxeRk/wpcUvGl+GXLpg=;
        b=WLW4bAOJf50Ue+MmZvm2zMEhN0dQsGtikMPUWE72vDptENRCZ18k0FBNZ+HnHYPQJL
         LhvmpqGveHDrsh1NICWG4//4tf2bm/4O4N4r2+I1PH7U2h5hybPPcjn7XX4iM6nUg4WH
         LWfPQm1pOrCPmNk5ho2BAXfEpZppqhDQQs4jYLd412N7fk3xy0NzuteX0aKbUwylC7WL
         mou42sbx3KyagIzAfiFz5TP4j2kWj/6Nu6BG3Tonvxg6NNz4ZBcBPbNhU5Lslv6DHKJP
         parEXayHqIC70kDkxEGibFpvT/jgtBEQivsbDz0fXa9+PIeNuxHL7PWYLKApkVWbAb/I
         pGRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=U92UXwN3;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f14si297096pfe.3.2020.11.20.19.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 19:25:32 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 5so5905471plj.8
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 19:25:32 -0800 (PST)
X-Received: by 2002:a17:902:bd98:b029:d9:7b0:e1e5 with SMTP id q24-20020a170902bd98b02900d907b0e1e5mr16129511pls.77.1605929132538;
        Fri, 20 Nov 2020 19:25:32 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id w22sm4673768pge.25.2020.11.20.19.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 19:25:31 -0800 (PST)
Date: Fri, 20 Nov 2020 19:25:31 -0800 (PST)
Subject: Re: [PATCH] RISC-V: fix barrier() use in <vdso/processor.h>
In-Reply-To: <20201117013951.7827-1-rdunlap@infradead.org>
CC: linux-kernel@vger.kernel.org, rdunlap@infradead.org, schwab@linux-m68k.org,
  akpm@linux-foundation.org, Stephen Rothwell <sfr@canb.auug.org.au>, nivedita@alum.mit.edu,
  linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>,
  natechancellor@gmail.com, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu
From: Palmer Dabbelt <palmer@dabbelt.com>
To: rdunlap@infradead.org
Message-ID: <mhng-8c56f671-512a-45e7-9c94-fa39a80451da@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=U92UXwN3;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Mon, 16 Nov 2020 17:39:51 PST (-0800), rdunlap@infradead.org wrote:
> riscv's <vdso/processor.h> uses barrier() so it should
> #include <asm/barrier.h> to prevent build errors.
>
> Fixes this build error:
>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
> In file included from ./include/vdso/processor.h:10,
>                  from ./arch/riscv/include/asm/processor.h:11,
>                  from ./include/linux/prefetch.h:15,
>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
>    14 |  barrier();
>
> This happens with a total of 5 networking drivers -- they all use
> <linux/prefetch.h>.
>
> rv64 allmodconfig now builds cleanly after this patch.
>
> Fixes fallout from:
> 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>
> Fixes: ad5d1122b82f ("riscv: use vDSO common flow to reduce the latency of the time-related functions")
> Reported-by: Andreas Schwab <schwab@linux-m68k.org>
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Arvind Sankar <nivedita@alum.mit.edu>
> Cc: linux-riscv@lists.infradead.org
> Cc: clang-built-linux@googlegroups.com
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> ---
>  arch/riscv/include/asm/vdso/processor.h |    2 ++
>  1 file changed, 2 insertions(+)
>
> --- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
> +++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
> @@ -4,6 +4,8 @@
>
>  #ifndef __ASSEMBLY__
>
> +#include <asm/barrier.h>
> +
>  static inline void cpu_relax(void)
>  {
>  #ifdef __riscv_muldiv

Thanks, this is on fixes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-8c56f671-512a-45e7-9c94-fa39a80451da%40palmerdabbelt-glaptop1.
