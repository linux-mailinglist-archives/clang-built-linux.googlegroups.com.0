Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFOR2D6QKGQEK4B3EBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0930D2B6F2C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:46:31 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id q19sf9635266ota.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:46:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605642390; cv=pass;
        d=google.com; s=arc-20160816;
        b=A9l8i7HqlDbx1EnAoEKmdBjjy7/oiQ9c6WibxgAeZDtFXHm9Cz6KOQk3XtGlbfRQTC
         kATmX2dBipUNJpJvpmhbO3372z6F8drLZZc5sEWGZonSm8B7+1fLCpbYBVyWruOOUo+z
         dBhhPNEu/X4tb3SnwdNGwgLuXQgwQehBmIqGpcfW6haILNWfTFKOMuC3wRWCQtSpbBGp
         8TgzJqpFd9svPTOXDWEocovpAZcsa/NVhTBJniis7AlEP7U85AFnu7RiggM0J8ffIP1g
         aYGP1dNnWnAA0jZN6q8t+SFJnkXuq+ExbR12YxyvxJz8UeLUAbNzmTw8VxvFWa1nv7D0
         AtIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=U6MyjM+2EBdFJkhPUAiLWXx29xBCZuYSFa67WQi839c=;
        b=ea6JE+BN7Np2xk+Fka1E7A1us9Atvf3Kemj9ZqN/hPxmMODP+cM5whMT/QaIiT8Mht
         F6LMTerWVdnOPalKfP1sRdu+UjY5qN58S869cUHe5lC0c+Jjeo+KmAObbXm9Jsco4OB5
         ELk+SUjA8iZyt2+v7Ir3B+aAwsnvLclrRMadl5EDpqiOSxGZt/AOpwbPTHE50O+9K8KH
         IhGIP1Cz0YowUbaz4i5pSjStBtKDbd55Oytp4xyv4zxY0pY5PiunouR+k6pSrPEXAPLw
         tGpPvcuuevjOpwJ/oBbZdB4sEjWFWEfaVDTcCZM/J2mRNEULvcANB6vGc+YIB1vcAWPM
         xBIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RWwNYKUJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U6MyjM+2EBdFJkhPUAiLWXx29xBCZuYSFa67WQi839c=;
        b=dkTumYREyUfY+kUWA0ONyGtSFQ4UTS0GIhjRoD/NCZ4idX1/Djq9//cmOlOBCG24dm
         i916EHp9rov5cJLuPhXHsm2tXMIRlsBnuz31ZXHH/pC/hHPSYfYs8xMbb7PzSpJnaV3n
         bkPFQIo5QFnduQimnRFMtZP3xHQnxaice65EqvPoswowWg0R9JRzl8Z2vm/7YoddKx9N
         n1zHl2/9Z+pr94b3WLFZVDez6idbkyneWEh/BuNWKQHfuzj4BZjZNc3BMuLjHGrUUt4G
         XngPNfhvPcaRpyxE7fMfDCOEvcPrlIvFyj2xiEGwgcQgy1VHDdP6HCRONYQNGi4G886s
         Z3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U6MyjM+2EBdFJkhPUAiLWXx29xBCZuYSFa67WQi839c=;
        b=S3rDBwDwYaexHtcxdRnIJWAZpPJp9NDLV2exacPq/bNPqzEmILlFtjLJbtGjvNio8b
         nqHTaKkGS57tozsGkLl8VBGfGcD7UzwKX9I4PcGF20RqFRgeEPnbGoMMIbeAN57+bFik
         qDHG1QyKxCqnpsrHMBoevomzBOqieCwlEV7kntq3GkxjiWceO7ACwkKiAtB6uZOSZozv
         8kpFUlFBcHUlq2hLmdwhLRXkUftIHD+dryKues1uSyjC8nEShtHcoVAX/z02rXvXlLh1
         XC2Dz8elWt2jBbzXcqpTnvlX2yETLYjkiHaAvI3s5Yjf3dvMOqYSEWx0ZrnTDt9k3+He
         /HdQ==
X-Gm-Message-State: AOAM531ZfGnSeUgmquBNa6KKdnlHi9UcUj66n0WFD9YZKf+J3xLFgCPd
	uCo1h/WNeeuDzNdRg6MdVuI=
X-Google-Smtp-Source: ABdhPJyM5q2l66cfmt50vauRL51KR5zjuzAprD0+lmgzvJWJKDCNNrdGblxLKMGAChUMobtSZcW0Ww==
X-Received: by 2002:aca:f083:: with SMTP id o125mr497351oih.164.1605642389997;
        Tue, 17 Nov 2020 11:46:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5214:: with SMTP id g20ls4256183oib.9.gmail; Tue, 17 Nov
 2020 11:46:29 -0800 (PST)
X-Received: by 2002:a05:6808:a98:: with SMTP id q24mr550874oij.110.1605642389651;
        Tue, 17 Nov 2020 11:46:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605642389; cv=none;
        d=google.com; s=arc-20160816;
        b=SUmIEjNd8BjHp/ja4SdCQTj88nEBAOm64VTDMAeI7166Gps1DuDiq9aZdFKmVyXZFb
         jxHq11bDGEeRWHVhFkqwGIlNOMRPeJ4o6R1yAgvSm6eaN782MhdMfgvs78eFa7aH8igu
         ta2jDWyqf1gY7z5276CX/55PKlMizIoZ/o13e+zCjh4l40fSRgJMwt/RRLdzPYp629qG
         iFIkWVNIIts1zuUw5HV9kFa5cvkHtxfCzKYVCvqgooM47LrgGqBlD0jT+F41/WCYL/HI
         nyVsb5/Ye6o0ja/if4SnjwaHAVr+Tktp+/MBanD52RHAxKpQFNYptiVC2lg7tBcMxQ+I
         hCXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nWLn5FutqVhu6C2envdImtz3KsoVlAIGjTIx4c1QXNg=;
        b=DATfAx8vmUi8Ko5lqVvepweihLfgol7BR5SaDHAyKhUcsRp8k4+W6mmPPS6bTKB1Ly
         SschcxucZpDI+cMhbl4tgTcDWgsxBYaTKy0Ph0NWQriDlMWDFaNR0aVsmEXdNi4hqTYG
         E5mChwvvv+7Kv/Qmsb2uw4BK7BC/W32guDyN2YiwA9tg/CXy0BGyjUbxr27R/QBZyrTc
         7vQaxSeh8yCRSL6D7/Lup2Xb1lDuLh6fkYzKmTH9FFjAa8kQSwCdDakvkceK8ybwbiUT
         THoM7g7BYs8feCUExqC114Ph0CEa+hkSxB4H+1mpDiLZyfenVPFP9WSHT/DfIHv8PI1U
         WFxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RWwNYKUJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p17si1652882oot.0.2020.11.17.11.46.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 11:46:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id c66so18006759pfa.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 11:46:29 -0800 (PST)
X-Received: by 2002:a65:4485:: with SMTP id l5mr4795692pgq.10.1605642388738;
 Tue, 17 Nov 2020 11:46:28 -0800 (PST)
MIME-Version: 1.0
References: <20201117193053.18990-1-rdunlap@infradead.org>
In-Reply-To: <20201117193053.18990-1-rdunlap@infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 11:46:18 -0800
Message-ID: <CAKwvOdnAHqNkN2yRPnSSbe=C6Uc0MJXH=VU2KFRyE3AtHpcXXg@mail.gmail.com>
Subject: Re: [PATCH v2] RISC-V: fix barrier() use in <vdso/processor.h>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Andreas Schwab <schwab@linux-m68k.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Arvind Sankar <nivedita@alum.mit.edu>, linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RWwNYKUJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Nov 17, 2020 at 11:31 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
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
> rv64 and rv32 allmodconfig now build cleanly after this patch.
>
> Fixes: 3347acc6fcd4 ("compiler.h: fix barrier_data() on clang")
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

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1202

> ---
> v2: update Fixes: tags (Nick);
>     also built allmodconfig cleanly on rv32;
>
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



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAHqNkN2yRPnSSbe%3DC6Uc0MJXH%3DVU2KFRyE3AtHpcXXg%40mail.gmail.com.
