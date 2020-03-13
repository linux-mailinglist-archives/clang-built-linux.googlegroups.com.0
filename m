Return-Path: <clang-built-linux+bncBDH2HYVOQUIBBEXFV3ZQKGQEUBK56TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4475D184C3A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 17:19:31 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id c6sf4496962wrm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 09:19:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584116371; cv=pass;
        d=google.com; s=arc-20160816;
        b=nIfcRu5UnqhSTYjiBQq9NJbXoL69VgaVDVUmbtj2mFcH3bwCrAROS+2khgOeh0Edeo
         FkMYZvfbeqx+zBjR1kQFoEr+iYAkrB6+ccdW/J6Oef6PyX32sZ1xJ9QN451rHEIcH4aX
         TvQ8A40aVIcsGbOT0snOIW0JNGF35pvkGZTolkLSgQV9i3ieaDVISNcyoo19roUBpeal
         PPeSO58glT3gJjZEhsqFLN4r3kOuy9hJPVqLE/24e/NpGgEJjFcoZ1zJ9Y9AHNs0dFhp
         ZJkFUeHNe7akVXzEdYW71enMyX5tcgwINq1q3R/rj88rM4GMTseb+rVBtiCg+czWGsH8
         yqBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=M+P9HHziqwdKrG8GWu6SmsNx1c67gGqxyWJrd+TT7Ow=;
        b=ttzJEJc1OAX7rW7htsZgT7xNDlA7UtuvRfFWiW7mcwWDSkjWYwAGa+6Qdyq/KZFiwi
         ahtTouoU9PHnAsQ5JrM6bGWv3F/kKOpEaSYu5YOCO6qPe7XJSGgk2oJwBHuJUXXVO1ly
         bqME5b5Cft4IPlJOFyZXgqOPUxWgVam7PPCGN7NrSJJD65aizShYWs+hUwR0T/c0sHTs
         MV20N6txk/k7eJ5oiwLk28mEoXc+SmZKic68BjJJR5jLpJDmbEHK7DEO7ESnH7Sh2GE3
         JCHqGEyY7exQUf/yMCeerdkmVoomurGxHAm03pLIvy6r9T86tahul+E3X8t/bgEc5SJc
         f/IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UaJGqhaS;
       spf=pass (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=0x7f454c46@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M+P9HHziqwdKrG8GWu6SmsNx1c67gGqxyWJrd+TT7Ow=;
        b=nSvbnEP1kt/pI9aRC/kwAY1uh+GMbUvBkuNnVPj7MrNilszStxkqhSoFHs6oCtSFvB
         qYdVog5wa3PTuc/qJs/sBIxCMxvrYfWvs7Ut9+CDW6N270IoFvrne4S34jw1/kV/LSfE
         bV51aZP1XCW0ejOYqNuc7WmHlJAJWnrwmteewPTHocQWvijpt6qTA39Q/xc6vqxem4zq
         15wg5sCH3zf8yvloguEaYCnQ5tOWb01XAp5AdaBVaz4SQFhvbjDcpJpSiyyCXPN1WIjx
         7T2u9azAtr7idC6P4CcE9khc+n31/jb9HN+K6wJ+zEIRRxtFGzr/Lg35q/6HnMG2+s7m
         pOJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M+P9HHziqwdKrG8GWu6SmsNx1c67gGqxyWJrd+TT7Ow=;
        b=WfLEpL34F/K0Kxw4A7dzwj6WsQ+OrKI/JujPEkz718lI8e27EfM44de8xyBo2JXyQ8
         mkPhUW29s0ZZcUa7bxLaKbVgb6S4D4Ea+/nZ50IiFOGlFNizdsqt/6mBBjT+HfVRTJ9O
         2n+lSPibOmMmDCa+dfrMJ6fPLIHwSPQTRaM/eQXv2Tuvzw03vZBMIBn33m/uUFjSvIyj
         YFSLwMwaN/R5N4YOi64bB66/Mf99Bp6LHnGpflJrc3sz/3lZ0XDvd07X/zn+4lWs+3TK
         aN5hrnpC/r6dRwjM/4rdF4jLI4b4wT2gOYDvAN4hwjfjgVWHWYqmQT4pYjpiSF857tUV
         bnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M+P9HHziqwdKrG8GWu6SmsNx1c67gGqxyWJrd+TT7Ow=;
        b=cu48h336FxGqV6nELT7iY9Ief98Q8mH/NrD1cfPjKQdpXM/oru1M9ohGnEYkBmL6In
         +u+psQyiysCwsyQ5iNmtZjK5WZh5JiqcoaLzYFjmMd2dJ+YGlZW79+VEBJPAcnbg4P+M
         OM/BaQSdNxe5Xr8+PAuW7tAmYhGOMqUpn9DmbA9S20yNj6sqrWhv7cuU9YtRh71Ftr1h
         3B3Fy4V1M8KlL7s1Vn3dfqSHV8O2Ra15ZzlF4LDKTjCPYskT1Z+E1clUroXbJKohzmZU
         Cc434EQi8o3GVYkQoxoTsERCO8khcDot/wHHAzX12LZP5HcDBCJQzl01Xa/rvnvCPPIU
         bz3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ds0+N7MvSdNMgEvxN3xMP+OmFmgc5+Kat2ZlTr9ODLi1DGS/b
	HfSMpey+rK/ms2qwspVIEPc=
X-Google-Smtp-Source: ADFU+vsX8bCHLHlDQtCOOVESjO+aEDgKl1+cg+t1DAalWXK7KRVAUbyOw/HfAzP4IcpvxeWGVE/0bg==
X-Received: by 2002:adf:df8b:: with SMTP id z11mr18682282wrl.142.1584116371025;
        Fri, 13 Mar 2020 09:19:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:cd01:: with SMTP id w1ls5215272wrm.0.gmail; Fri, 13 Mar
 2020 09:19:30 -0700 (PDT)
X-Received: by 2002:adf:ffc9:: with SMTP id x9mr19096550wrs.398.1584116370367;
        Fri, 13 Mar 2020 09:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584116370; cv=none;
        d=google.com; s=arc-20160816;
        b=AKmtPPHIHIP6xSIKcgVzMIlZSVqgjjDBLfoj3tmqPyLYlhrUDqhAjfAmikUyW/FMCh
         cLhP0c5drwYsBJlIuBfi6L04F0IQ1iTypTKJSM2oualUVUq7nUbz0JQywmKAkkWLVJDt
         s0nQJTO/8iBeoXKTiLoBNIhhM5YH6UgyDtmwn8akQVb0r7Lgq3XP0k8E5ftsynOf3PFw
         6XUltK+dzBXb2TLtyZHZKW0PzK819naWYyUOoCafci38ObZKJIyTmQ+q1ivCHQl0GWt3
         8gr2NQ0uE9IWGyXc+VOXbAyt2TFPwHUz9iYnzy6Lx7sQWUNkx8Oq4wHmwolrTURWIBgR
         Jxlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DzWpdx6328OZ0aH4x17MPaDC7GHF6Gljp2V0qUX/DXo=;
        b=VLmoERY6O9hWArl9nh6dOUb252gBRy/5xPXAjwaqIfDFzTwUCJmzxq+Z6MtrLAIZm2
         +8O7rWQ7YWZsm0WuSG7GHk9+wtpRbnLEnCID4SFAWRF42VdPb17UzAtuqPPEAptV4Xwv
         CIFs/WuM+88TvtAzTAUzFOx+M++Vr+yjZbb+V8nM6zWJDmIosQ923qZeSGY7Pas237Nk
         yS3JBa51L8059czJjF8AtSbjOpWs0IIB6UHXp+QVa7/NX5+g8yUnS832qSV2kqe/ZYgr
         zaqxgMzwtg2oWuAYx5HbYBAStwUW8l6LduC+oMLsRqNm1utn8+CXAEb9u3EH1IdoaG59
         exLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UaJGqhaS;
       spf=pass (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=0x7f454c46@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h15si664961wml.4.2020.03.13.09.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 09:19:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id a141so10950294wme.2
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 09:19:30 -0700 (PDT)
X-Received: by 2002:a1c:791a:: with SMTP id l26mr11500620wme.103.1584116370132;
        Fri, 13 Mar 2020 09:19:30 -0700 (PDT)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id w1sm16365071wmc.11.2020.03.13.09.19.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 09:19:29 -0700 (PDT)
Subject: Re: [PATCH v3 00/26] Introduce common headers for vDSO
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Andrei Vagin <avagin@openvz.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
From: Dmitry Safonov <0x7f454c46@gmail.com>
Message-ID: <693b6a61-b5f6-2744-1579-b356e6510547@gmail.com>
Date: Fri, 13 Mar 2020 16:19:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: 0x7f454c46@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UaJGqhaS;       spf=pass
 (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=0x7f454c46@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Vincenzo, all

I like the idea, but I'm wondering if we could have less-grained
headers? Like, AFAICS the patches create headers < 10 lines and even
mostly < 5 lines.. I like that header's names perfectly describe what's
inside, but I'm not sure how effective to have a lot of extra-small
includes.

Or maybe there's a plan to grow the code in them?

On 3/13/20 3:43 PM, Vincenzo Frascino wrote:
[..]
>  create mode 100644 arch/arm/include/asm/vdso/clocksource.h
>  create mode 100644 arch/arm/include/asm/vdso/cp15.h
>  create mode 100644 arch/arm/include/asm/vdso/processor.h
>  create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h
>  create mode 100644 arch/arm64/include/asm/vdso/clocksource.h
>  create mode 100644 arch/arm64/include/asm/vdso/processor.h
>  create mode 100644 arch/mips/include/asm/vdso/clocksource.h
>  create mode 100644 arch/mips/include/asm/vdso/processor.h
>  create mode 100644 arch/x86/include/asm/vdso/clocksource.h
>  create mode 100644 arch/x86/include/asm/vdso/processor.h
>  create mode 100644 include/vdso/bits.h
>  create mode 100644 include/vdso/clocksource.h
>  create mode 100644 include/vdso/const.h
>  create mode 100644 include/vdso/jiffies.h
>  create mode 100644 include/vdso/ktime.h
>  create mode 100644 include/vdso/limits.h
>  create mode 100644 include/vdso/math64.h
>  create mode 100644 include/vdso/processor.h
>  create mode 100644 include/vdso/time.h
>  create mode 100644 include/vdso/time32.h
>  create mode 100644 include/vdso/time64.h

Maybe we could made them less-grained?

I.e, time32 + time64 + time.h => time.h?

Thanks for Cc,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/693b6a61-b5f6-2744-1579-b356e6510547%40gmail.com.
