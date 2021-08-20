Return-Path: <clang-built-linux+bncBCT4XGV33UIBB57S7SEAMGQE6L2NYJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E870B3F2658
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 07:11:20 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id 66-20020a9d0bc8000000b0051aa462e094sf3460017oth.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 22:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629436279; cv=pass;
        d=google.com; s=arc-20160816;
        b=EmdM/B638WxC7veDTKcEHyi08okIr/hWoFKsb8xEKBEI+zSQ0kdNmo7JvxYEdYltzg
         suaVFcQB/2mNN9GTA2UxkYfv7bl9rBwMCMrOL+dhziOLmOYMY8BR3YF1s/VyZNmVeZvU
         OknXRgYu/qpoAraMDPqPXdLK3q8+2wgtlIaf6Gl6IgUDl2iT0pivw5z5McKcW5OpyKHu
         cwfToXPp+TE0YHcDUoGF0hASg74k92lauCMT16837TAAE4BIjOah+xr2esojBtYXYO5r
         ParX0aN40sTWog28jqYKgn3pSK1nfLh20CetaTsqhKSNHY06nxf+NfRaSFokHnbLLdln
         q7AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=bCZpF/CyAS9OQAcSYdnXcN21VxSahC9wWiTkpwcocTE=;
        b=Hkwe4Eep/CbCmT8H4HLptRZSP5UqROgzFzD8BFIOv0sguoa+/9YQYs864outjBGNuf
         colFnsQEdFmTDHZflNk9yC1L/Nefdft0AmSYbgYsGUoJbOU2+M84LyAdArjyX/jwrBiB
         4U7heCQ+8xkAGXaqCGOuDN3A27p6IVMdDQOGQ/x78loZii8YnRAE3MUe86Vl+niDpJv1
         qd02+BZxpbmJPthdBz72MwzaumAIFb2PvhrtC9taJJznUCu8tTLJmjOlK0QADi/Rs2Ev
         qAU6VeAGYFAnPQzP7ovfFcoafEJOCuee7oCPXBIGGe6cY2Nm+Y3bebvop7t25SMC5bcJ
         CkTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=bvG0F0sK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bCZpF/CyAS9OQAcSYdnXcN21VxSahC9wWiTkpwcocTE=;
        b=BAPXpmIGbFZVIaUeYwzncpWgrd2TCR+anhiz38E2YFxMAZftIzJD3isULLPTbxZ8zC
         hcfMsp4rQd9YbSx37eEpf7yOfRPXpS3vTLkZS0caH8w9sKSVNpWBmy0J+MGz02zG5cnS
         SuT01wAVIy1pJrzLiNy4EuOIg2t0SrjmWPkqe7F3hWloNp+Gn42XQjmHYDlZIbVSchhN
         iLy4Huux6E76X8F1u8GX/BrFy3u8bUiN0E22hMTwQ44NGfQMebK31QF2AT2l+KhfBy/Z
         PMdvJwn5I2mqvqBqWeOFoB4SLYwnRRFIJurLPMCA2jLa2KaHZgkXas3sFnJ9Svdc2hAd
         IY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bCZpF/CyAS9OQAcSYdnXcN21VxSahC9wWiTkpwcocTE=;
        b=bIV7wzP99JiqXFSU//6Dls6k8GyaqDeHlit8nE6rt0c1SJgQk4f9QM3ifsoymZGkCv
         KO7udyxdUtn7V6nuA/YcWbiHStjX6L1IvklYAVWYn5xOeOI7pnE0/6jK6YC390jHaguP
         s8HDehuVeeHeupTMS5IcAzSevGlN2Sy0r2FbdiFgx1ovEA7+enn/e/E56/d5K95UOar9
         tmCyBOi1mhv+1UOkydVsi3SpvJyQUwqNcODTWPHXjitKhn07RcR3NSLQVAR039LOGCHO
         l70baTlJpL4ZgbRs8se9pYI39pJ249jy004ctfyCoYV1uKLzTfkUQnbQTr0VI1PMdOSg
         jCyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326v6NDYWg3rZmWjomK3GM4izMCz/FZqfXlD2AazCLn7cYQKzri
	OYbXq6t+diG9Q3Nd/q5vnJk=
X-Google-Smtp-Source: ABdhPJxgmF1ovybrB1My4FTka9bhRK83hhJ9YT3tehLnFrts67ONhb7nB8ln4bUZDK/rXDU5Rjqu6A==
X-Received: by 2002:a05:6820:502:: with SMTP id m2mr14340308ooj.47.1629436279615;
        Thu, 19 Aug 2021 22:11:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:15d9:: with SMTP id j25ls61171otr.6.gmail; Thu, 19
 Aug 2021 22:11:19 -0700 (PDT)
X-Received: by 2002:a05:6830:3114:: with SMTP id b20mr11940213ots.17.1629436279193;
        Thu, 19 Aug 2021 22:11:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629436279; cv=none;
        d=google.com; s=arc-20160816;
        b=whP+FQV8HVHHei3aE4h3VYUr8EYxq+J4TI1lY3aveseL3A+r696cz98ErWp/SvB/C5
         gMRHJTpC9MSFQ26ChJfoLOGf9pGKO5oSQhTEjo5CM78phAwI5UhUf8kWmOAjbsA2KU25
         KO58QGju9nLFS48TyWy9lnYT5xPAKWifdHNTSB3q3ox79mjiYroVm4XSpCtFta8vCyvB
         roOvbMWQhawGQeGWF1//WOGsBruds9N48c6wN85KddZq9EZNtCkwTEcvJ2E1DxjZYhO5
         Gx5skdI5+ekln0pIr0Gedp0TGNTqQ+1brynjvQiDXDMtv8ELoTP7FN2F5WHc5GyZeDhC
         uiNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NKcjszTjOxf0g7w2LtGewET4owcsnETxlRLGiLmkzcY=;
        b=utr6qnuR6LeBQ2XKaqL6EdNSUpzk17ihKBmRPxGEc4s4RFnFhNnZ5uXbJ1b5zftapF
         +KGQIsDghlQxXed94eTP31w8RB0CQgWSfKKgLI6/AXevXODcuo9VpznWDEa8oTDFpMVD
         e3+LlTNqzuUPPHF58sdmENnIMuKvjKgT8k8UTuQhnLP4sHmkXldM2EcNgZB0GTi713iz
         80NQvc3sAIl4vf1Lo80Ugo/cJOYZSFf+kbFV6v1EGosGzFGh6k/h3S/V0HcjgBGnJ3Il
         TwGzsDOxgLa5uRx8DwGZcOqq8+5f7y8gdQ3cElykv0vgDEllTkaazy/yNg0d5BUbuvFH
         jpvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=bvG0F0sK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q18si391226otm.3.2021.08.19.22.11.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 22:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC1966054E;
	Fri, 20 Aug 2021 05:11:17 +0000 (UTC)
Date: Thu, 19 Aug 2021 22:11:15 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>,
 Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph
 Lameter <cl@linux.com>, linux-mm@kvack.org, Joe Perches <joe@perches.com>,
 Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Andy Whitcroft
 <apw@canonical.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn
 <lukas.bulwahn@gmail.com>, Pekka Enberg <penberg@kernel.org>, David
 Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 6/7] percpu: Add __alloc_size attributes for better
 bounds checking
Message-Id: <20210819221115.b3a34e280cfe748ad6a76b04@linux-foundation.org>
In-Reply-To: <20210818214021.2476230-7-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
	<20210818214021.2476230-7-keescook@chromium.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=bvG0F0sK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 18 Aug 2021 14:40:20 -0700 Kees Cook <keescook@chromium.org> wrote:

> As already done in GrapheneOS, add the __alloc_size attribute for
> appropriate percpu allocator interfaces, to provide additional hinting
> for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
> compiler optimizations.
> 

Caught one, I assume:

In file included from ./include/linux/string.h:262,
                 from ./include/linux/bitmap.h:11,
                 from ./include/linux/cpumask.h:12,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:55,
                 from ./include/linux/mmzone.h:8,
                 from ./include/linux/gfp.h:6,
                 from ./include/linux/slab.h:15,
                 from drivers/misc/lkdtm/heap.c:7:
In function 'memset',
    inlined from 'lkdtm_VMALLOC_LINEAR_OVERFLOW' at drivers/misc/lkdtm/heap.c:27:2:
./include/linux/fortify-string.h:172:3: error: call to '__write_overflow' declared with attribute error: detected write beyond size of object passed as 1st parameter
  172 |   __write_overflow();
      |   ^~~~~~~~~~~~~~~~~~
make[3]: *** [drivers/misc/lkdtm/heap.o] Error 1
make[2]: *** [drivers/misc/lkdtm] Error 2
make[1]: *** [drivers/misc] Error 2
make: *** [drivers] Error 2

I want to get a kernel release out, so I'll hide
mm-vmalloc-add-__alloc_size-attributes-for-better-bounds-checking.patch
for now.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819221115.b3a34e280cfe748ad6a76b04%40linux-foundation.org.
