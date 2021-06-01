Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFHW3GCQMGQEWWA4SDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E621397A00
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 20:23:17 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id r1-20020a05600c35c1b029018ec2043223sf91371wmq.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 11:23:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622571796; cv=pass;
        d=google.com; s=arc-20160816;
        b=M4wgQinPQpY7BENh0gUWpkPovIjmz8wdZ3Kt2iIUvefiVsGdy7X6RoYnVZh2VI4WBx
         3kVL+Aw+vw5TL0T6dl6ZVcjF+rfiwANXxN3FhxQl6arGZO0bRfkKsHdSVIiOpX8qpKqV
         BXpJ7kuOfLaj0d22wkiz/NBxlOfwfzx29nFxfEIRb+y94l6TN2na3Q3y6O5m2FF941tA
         lhL+qqzKoMKJ+Bk5xtB9OrUFTrIYIGU8A8rIFdGZ8nLSbr2AD0owy4u7H3iQMHsfPDgF
         0R+tFJi2i4/bvjPkp4gtQ5Iep1DUCEMie7MqP+mt7sVm+K3E/AJEgLoNfl7WtGokjyiG
         t5qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pPczxWXuC6GGQMbFQMMAc6N8mjliVtdmkv26/uQQk9A=;
        b=SHNTHFuHTy113Gy+o+xz4zI+ro5cfaabx8NXxKqTL1v+BaNKAOLK3EUSeuOnVoBrRl
         s3N8eK6ziN2cZRIfpEc+8IVXV2t3i/ejFjXJDgrpWcNsP4hGNjaoPD3IDtgD8NfaLrkc
         Gr8uwRYRDBu/B6o/BNFz8SMm31ecMnD+B1veaJsAWmTQAVZ6JPB4zPaiWD8hnsLqWZwX
         xSkQNTFzaeC9Vjw1Qo5Tl6TqVDu4P/+dpbUDHeZt5ztpX0mry7P+8EpBRXFSsRpbZgR8
         2JWGGac/i7Qqqv13AF4873iVe66Rz9o6Bltxt0yygzqAH1lm38Z1E6Fsh6WcJTosB1Zy
         sDuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J3WL8E4q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pPczxWXuC6GGQMbFQMMAc6N8mjliVtdmkv26/uQQk9A=;
        b=IZNRD2QgBKOq5T/yaoituTWGp1a+6cUqRfLYy++w27twsdPWZ63wU40UYgxPGqECBL
         IrVk725qAiwHDQgnfIOtHSAInMJc7OsgTzRr0zqhBG0RatsYZXJpyeQX17Zl1/Z480Uo
         8cleJ0QL8bmPOecqKmAh/IuiYaInZbgZi1Oxd7ZubFJkW9euI7sz2DCNbrPsV7ULd7m9
         fVqI23COACSIx8sVCbaKHPb4a4gCJskH5CbntKvHHBvMFLulLcu5gLmnrl/rwSd0eJAC
         CnBnGpAccOpLK6kr9rxLJmvO/uXr+T6sUgc+SEopNJIsu4REkd+tOvsNiE/MC4lCCzbu
         qHjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pPczxWXuC6GGQMbFQMMAc6N8mjliVtdmkv26/uQQk9A=;
        b=UrRj727X6AUteQ3sR8qTL7+uIRl4gTdXz/KsJ/qgftboANirf86OYkvxsy1gN5nJBa
         5ITsRCOBoe3O/N42pD0FsLSwIHwZP535s8+36NoWTClNQ/q/MwttnyReEf91aBgt8oTN
         UIu2hdCaggIjIbhBuNwiHzwiG/PbiYAXM/f5DNSupN3ZVz67z9vJNJpv6sw3x4ophLJX
         s2v2WT8vkqrX3ju1WeK34SUr48mIiGB83Arol+2IcwiMrvIEnwpWEQN59ygEON1YOO8i
         gmqQ/H/XkWwcaBpmtiPR3rLlx7TP4MA0ncdxuGjxsAsT/7eVuY+57l5E4K2YZw4KFcjr
         GyZQ==
X-Gm-Message-State: AOAM531TLybjw42soZeVpkFJLGWxYuMwzi2MGptEcjnGZkudMoTaQU/b
	3pA+o3KFkCBsR9mG/ut75Vk=
X-Google-Smtp-Source: ABdhPJyZ0IZ6rBy8gQ0gpsm5ivs9aSi694W+0SEEx1SKv7QcgjFBJUrwJZCB6YRQGxwSaMCBPCyvQg==
X-Received: by 2002:a1c:bc06:: with SMTP id m6mr862029wmf.74.1622571796824;
        Tue, 01 Jun 2021 11:23:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4e87:: with SMTP id f7ls1946458wmq.1.canary-gmail;
 Tue, 01 Jun 2021 11:23:16 -0700 (PDT)
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr1208489wmj.49.1622571796006;
        Tue, 01 Jun 2021 11:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622571796; cv=none;
        d=google.com; s=arc-20160816;
        b=qMESZ5SmIW5MVM4gnqBcrShy/GKkIEq1rG1RRPBWEHXAcR0kJHdmf4rkXeyiIbPqZd
         G8/VsQtQgdlBTy9p6QE0dWq2js567bhLzft5oJcQTFDAW1yqVhAdwbD+Hmsge6gtkQ51
         JFFEj6KRXNKnPxj9FtwEXQtn+MF2Usb7po/gVovO0NXUeJ41viFGCWudL7Jp0L7pOEO2
         UEIxbAE0oTUkv21T19uB2o8s6XFYcF+6oAZ2SEBEkaFybATdSkqnWJbEWaVI6dhokSck
         gHeZIkLBrdFzf8NS1f0XaiBvEcMyzNmAn2uJULZ57WLf+NUKiuDxirpIMRZR7ASXs5R5
         vqMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g4HQ0zyETBbXwypfTphsYhXQU5jUVi5BzIgs/sw7Qr8=;
        b=Z49Uh5zhBKPUY6PWSc75tifZBn2KTYmuqsSgkg/Xx3yL2O9zrbx88H5a2IIFPvZnmQ
         ND9C0xlVdKYZ3P/TuJ0z6gpqmA2qHNjcX4/QqvuTpKL4CDnukbf6YeRV4eCKpfBDLZnr
         aKYqIqyGFq88rB57bwJz3KiQ38qIqf7P6s5ryGhLNSXgJYaSTSL8QStmFAqn87yZPaEw
         Yjt7iWuy0/x+fZPFeD7boZii3MsQeUQWGN/6EZRugq/dGeTmz1kdqs9fC4XGatDURno2
         btLIGScBdyHF/w9b9g2h408KdCfnnMt7YHxIFplRadESU1O77WtpnNLDeQ8riAfk/RC8
         mlow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J3WL8E4q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id g17si13174wmq.4.2021.06.01.11.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 11:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id q7so23295079lfr.6
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 11:23:15 -0700 (PDT)
X-Received: by 2002:a05:6512:220c:: with SMTP id h12mr20429141lfu.374.1622571795265;
 Tue, 01 Jun 2021 11:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210528182752.1852002-1-nathan@kernel.org>
In-Reply-To: <20210528182752.1852002-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 11:23:03 -0700
Message-ID: <CAKwvOd=Z60pm4rZw5yhpq-vCKb_xqxKa9xtgsCoknzD4VNj2wQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc/barrier: Avoid collision with clang's __lwsync macro
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J3WL8E4q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Fri, May 28, 2021 at 11:29 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> A change in clang 13 results in the __lwsync macro being defined as
> __builtin_ppc_lwsync, which emits 'lwsync' or 'msync' depending on what
> the target supports.

Indeed,
$ clang --target=powerpc64le-linux-gnu -mcpu=e500 -m32
for example.

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> This breaks the build because of -Werror in
> arch/powerpc, along with thousands of warnings:
>
>  In file included from arch/powerpc/kernel/pmc.c:12:
>  In file included from include/linux/bug.h:5:
>  In file included from arch/powerpc/include/asm/bug.h:109:
>  In file included from include/asm-generic/bug.h:20:
>  In file included from include/linux/kernel.h:12:
>  In file included from include/linux/bitops.h:32:
>  In file included from arch/powerpc/include/asm/bitops.h:62:
>  arch/powerpc/include/asm/barrier.h:49:9: error: '__lwsync' macro redefined [-Werror,-Wmacro-redefined]
>  #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
>         ^
>  <built-in>:308:9: note: previous definition is here
>  #define __lwsync __builtin_ppc_lwsync
>         ^
>  1 error generated.
>
> Undefine this macro so that the runtime patching introduced by
> commit 2d1b2027626d ("powerpc: Fixup lwsync at runtime") continues to
> work properly with clang and the build no longer breaks.
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1386
> Link: https://github.com/llvm/llvm-project/commit/62b5df7fe2b3fda1772befeda15598fbef96a614
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/powerpc/include/asm/barrier.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/powerpc/include/asm/barrier.h b/arch/powerpc/include/asm/barrier.h
> index 7ae29cfb06c0..f0e687236484 100644
> --- a/arch/powerpc/include/asm/barrier.h
> +++ b/arch/powerpc/include/asm/barrier.h
> @@ -46,6 +46,8 @@
>  #    define SMPWMB      eieio
>  #endif
>
> +/* clang defines this macro for a builtin, which will not work with runtime patching */
> +#undef __lwsync
>  #define __lwsync()     __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
>  #define dma_rmb()      __lwsync()
>  #define dma_wmb()      __asm__ __volatile__ (stringify_in_c(SMPWMB) : : :"memory")
>
> base-commit: 97e5bf604b7a0d6e1b3e00fe31d5fd4b9bffeaae
> --
> 2.32.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZ60pm4rZw5yhpq-vCKb_xqxKa9xtgsCoknzD4VNj2wQ%40mail.gmail.com.
