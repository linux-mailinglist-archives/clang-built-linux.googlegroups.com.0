Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ44ZT6QKGQE2IWR6DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7216B2B554C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 00:41:56 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id j24sf2355127uak.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 15:41:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605570115; cv=pass;
        d=google.com; s=arc-20160816;
        b=M6zzD8vR4T5RvdKiXz+VKqyfcObTMDrPMCTCs8ArAAGwKXi//9p1o24gRhArgTWKDA
         oeifrLJrjBLBnHaBQr0o+d+5JqiODDk01hnjQtqjwbomUEUNYWgvLobF8HqyNZb+szgz
         vKgEPnJyxAI/Kg78D6Cm69mbOxQR7/RJWnW+azlwn3UqJBJ1KGrbC5ntu6OwBTTVrUh6
         9JGe1sFq6Aa5Bq5TLbykFuCvxpesoLsGA2IzXpJjyDy6Km8yKgBJNjiCnx9aVgfQ9Xnx
         U7EbI+UBLrZvPUzIlv4hZLVpsBOTmPb/ROgNBzGrgCEkTCrkES85ALfD52mfT24UXupm
         2Y6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kCIG2BqohFk1ff6HFky40JkKbEzmXEXsbCNx1ZZMk/k=;
        b=yxpF5uY/WFo5eAKPsa/TLOTi/zKbaOAwwV1gHl/pPTMqT5efub206tiRsQzJGCyAKy
         g2J+pGFwvkJ0YucPSFRWhQG+2T+c3noiT5igf10BZ56ymTiGwCoy3D5gyvnvNKmzIWNQ
         UvaRPRGEWydiWmGEbe09ZeMl9igiHKThCTrpNaFpybY713+f+gNrp8Bw8LaYos01QOH9
         slW87RrKzoZ0VE565br7F0+HPRiltho/jSu89kzFKHTgYK9dq4kRTVF0Rh8a/B0ffFKH
         WlANm5N6x1UjqcY4xnZ38He6RwXjATvKf6j04uB2xo6C3lvLEBKo5DlYt+Hv1vLw9gCM
         H2+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DaGY52y2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCIG2BqohFk1ff6HFky40JkKbEzmXEXsbCNx1ZZMk/k=;
        b=j62Il180B6RjQcZNChA7iIVXMH2PjHNNROJhsinun+pXr4nPG45dhZ4z5XRAUDvJOf
         VkRL5U/RuCH1hiMBM6HX0KyL2TgXvzR1GNdsp0I4lfNYQ/XNX027SFyrfkp3R4NYiyfU
         GNGPB4xdtdA67KzNh2PSejcxKCufo6YbHW4bC5ybUlDF6q7G33s55BXiN+XZburtMKpN
         WGlPa6amiBlAEflyfc3VViJJUfRegU+pwvxfRVgixgdadPkxTq/Y25iIj1BXJ15h+URp
         REfLyChLBH3rZRP+LVn2ULBWhr3Dl37rVKAIIhJff/7Z08McpaT1hyzc5sR1EuwKn+bj
         y/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCIG2BqohFk1ff6HFky40JkKbEzmXEXsbCNx1ZZMk/k=;
        b=ghp8abLYS9/xDDHx0klGykG2gR4ZloMMACuYZyQH0tZZiQiUGFo/W4BECyDVSF+B+j
         +6AXh1BN1hrYScrDFOyJxBQHm2IYJ1jH/bOVNtW53ENC30R2yoH1PPhLnsDw8bB0fe9P
         Y1IdPKeC2SZsNqADjl0yzCMygzqXQOQIYH8N/PgKkYFXK86/S6q8dZyNazJ7eFxAzbhe
         uDBCjf0xOuADKnK+pLjsZs7SYs6GkV87b0LHupTIMck1T1vug3eT4Sz+y8gk9q+rfbK7
         7izsrRtLEFP/Or4w+Ai+0FFNb8nJ5s8MpVIu8jcXnqFWq7DvErbOxAKqqZ6iYx9lD410
         cZjQ==
X-Gm-Message-State: AOAM532R+ukUP+J/dkjaB1cAuKx0m+8tLXIyINRoYgWAms17Df9Ij90A
	qp/LWY2kx7AQmpseo6FKcyE=
X-Google-Smtp-Source: ABdhPJxMwpUWdX0OtPyvShqnCqAol7MMbNN1YRHhzEZ42E1HV1qEeAEXfL36QP65niGmeUBN+Yuv1w==
X-Received: by 2002:ab0:5a10:: with SMTP id l16mr8322523uad.0.1605570115434;
        Mon, 16 Nov 2020 15:41:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:24cf:: with SMTP id 73ls1060227uar.2.gmail; Mon, 16 Nov
 2020 15:41:54 -0800 (PST)
X-Received: by 2002:ab0:2409:: with SMTP id f9mr8100676uan.91.1605570114900;
        Mon, 16 Nov 2020 15:41:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605570114; cv=none;
        d=google.com; s=arc-20160816;
        b=qkrlQy11vC+r/Mx/6U4PYStYzFUQ4yADgJZL8ApgzxtI4FQWzBtoItpcsAlNK/VaJz
         SFGiKli8JVyu3Y1QFlVgdBEIzwUQeRsvHbE7+e967fhY+D3xtAHzfV1RKAERrCyLN4pb
         gXtVpyBTTgH4iMoos5rba+6LxWDO0cWC4VWM8l/amMtACeXpjuGXab6uCXfucQYA1Ujh
         H/dHI7kON0BGtIJRqckqldx0nt+xLNsnoLL+bNmxPvCFm4tpVGz0ZY1db2mZPeTz0lhm
         vIrooTN8mtDicRVRH0Gl4FG0Y90/jZhp2fDHR+RRzevXIkvUXiOPdi2MP1+ZYmT4a8gW
         76og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q6oT/iaJpuUzbJsO3ZOoSLXJmJdPmOezInw0gF4IJ28=;
        b=GuH1nzhu6llO4j9fDwKKzxBswsBgJzL1NrVPmJWwKI3VY8YJn4u4bHPZYSM7FILuwK
         9w/ns2sCdGjz4UdHlT7HUOWvzZ+tz0kIF+fjOmADVepvbG4vbX2Ya7I73w3tbR1nGjcO
         6zPph/2TIfqc0B4K0k9yVrUsnkVUDm1XFcm6Em7E6rlFx3fktpCzcj9gCN6Cd7KSi4VV
         uYyWL8BUd8h8+tS0QZMz8fY/Ouj09vg2jMBqJ9s1zyMF6gx+qg2cnxi7rQ3HA05lev3a
         Qkmja0PBGKIFWFg6AAjCC8dJuzxeIcPECzruEja2Q/dGVWw3Abo459XMyhigMmaA1oAx
         MyWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DaGY52y2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b16si1524519vkn.5.2020.11.16.15.41.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 15:41:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q10so15705402pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 15:41:54 -0800 (PST)
X-Received: by 2002:a17:90b:d91:: with SMTP id bg17mr1379665pjb.25.1605570113934;
 Mon, 16 Nov 2020 15:41:53 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
 <20201109183528.1391885-1-ndesaulniers@google.com>
In-Reply-To: <20201109183528.1391885-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Nov 2020 15:41:42 -0800
Message-ID: <CAKwvOdnxAr7UdjUiuttj=bz1_voK1qUvpOvSY35qOZ60+E8LBA@mail.gmail.com>
Subject: Re: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DaGY52y2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

Hi Masahiro, have you had time to review v3 of this patch?

On Mon, Nov 9, 2020 at 10:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Clang's integrated assembler produces the warning for assembly files:
>
> warning: DWARF2 only supports one section per compilation unit
>
> If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
> assembly sources (it is still emitted for C sources).  This will be
> re-enabled for newer DWARF versions in a follow up patch.
>
> Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
> LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
>
> Cc: <stable@vger.kernel.org>
> Link: https://github.com/ClangBuiltLinux/linux/issues/716
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index f353886dbf44..7e899d356902 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,7 +826,9 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> +ifneq ($(LLVM_IAS),1)
>  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> +endif
>
>  ifdef CONFIG_DEBUG_INFO_DWARF4
>  DEBUG_CFLAGS   += -gdwarf-4
> --
> 2.29.2.222.g5d2a92d10f8-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnxAr7UdjUiuttj%3Dbz1_voK1qUvpOvSY35qOZ60%2BE8LBA%40mail.gmail.com.
