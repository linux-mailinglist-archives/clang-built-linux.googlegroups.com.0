Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHX6X37AKGQE6XTYEQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id E79E02D3196
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 18:59:59 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id p4sf2223489vkm.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 09:59:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607450398; cv=pass;
        d=google.com; s=arc-20160816;
        b=BDjdA6AttRq1aCX8xupqPxHPowpbAuxBprEIRTjhzj+36waB/BXlBWq5mq3uDjqEvj
         jyo7mjud/l92S1yEhcxI5MK4ckIiO9qI/8dDlAVqn45rwOavTMP+QVB4sSbGAI/5zoiG
         FIoH+2c5GQbFUG1wyPRMX2wA1JYMlnw0vO5zhF8OWc6m19l3A2PMhokFch8rm9ziC4zu
         zun/rJoLp9xn4zYY/VsqA6/mPltGC/BSVtcREwbcutFpgyPMyZRaabfmjnAa6QOhXC2m
         X8FKixRnw2hD27f+9/GZEgAfr6hYaCO3IsutR0aAteBLELLHF7tNWjkME+XVvtCBRiv+
         tYhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=R3D+VgSxKUFue01kgn0MrfyTwEQxFq671h6D5GOVlNU=;
        b=EmTC8oUb38+RRQAnsimQsuTIhx9gIIcLQsqoF3HOufirpD/HFa51LhcPmN7WTM7YiT
         n7/nWWD/iFZc9WTF4Yj0KwH5ycg6f55lbVzy54XXOkXDWcxJ0/FKKqrzyd3zxSzHRO6x
         8qdoy1kgBwVjaHKvtVuspHRSFQegvv0pSM+QVN4OeDlisgYCTZPZ5mOSLmLTjw9hXuqM
         ev0Pvwy3q1wQzfDOFgmNBKey9eTdVmCtuEb3QIyDMLGB0QjvIWw3K/ccCje1J3yWsshe
         BXq8MmJbY+V3pU8XVYiypoL9zgeKiLOr3FSQ4UUwJ/NJRHmVtHQXiMiblraS46eUOJTj
         O8fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YXOIjYUs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R3D+VgSxKUFue01kgn0MrfyTwEQxFq671h6D5GOVlNU=;
        b=nwxRx2jvySnjcqi8AA4tcqip7zthJqwcz+uSysPF9JpnsXjjS3x6SAe5/dhBIrCdxN
         wjACH6BaI0F1gxpGGrWlUEFH5tlX78u5idta07rYcASj+sQzs68fsGP6LgFskViX1Xdd
         UV24acN7aHiUtkNm5K4W659Cbq8Cfwp8SGmXI3Tt2VCmZ+ghxSKDhDZxOVDW0v9/EKQa
         +TFO3VeSvXNWj2nRPFye8WfhBW2iAuiW5wIbrtaaGrXvHGJYgMkzopjtFZORrbnqST9y
         7DsSABQ6rQldXXL6JA8lIjPOlgP/1fpkGOj3IIUKcbZet1hIEnKyuQy1TnNw6aY0Davg
         OoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R3D+VgSxKUFue01kgn0MrfyTwEQxFq671h6D5GOVlNU=;
        b=F0Jn6JJm1bDML0wIyiQJqZCZHqlYKhOtz0wpO/Bdrngh5U43bSIAUt8WbICdfQs8tu
         wTVgmkppmOrqNTe8rq7u/U+W9xiqJ95ejUatNPbFlZ6rwuoUiU8TYVqO+JPSMbJr5Nk3
         Is8lJw1UcXAWCu90R5M7D0xfYvre3AwtENRJamRT5SkTJefbiSxGjbtFcDLW3Zf+WyZB
         LAq0KjQY80ANeGmZFHn1bGHBHDpbVlD0FESzqpD6bnazfpYN+qPdgr3hl5ZFXfVSVGxr
         WejxnQOEq2wZSD95zvcrqpCTW8N6mjLysGB14yp5WYzbzmh2lX55OUp9acAiSvz/pAiK
         sL1Q==
X-Gm-Message-State: AOAM531FLOR7fzJUyeN0+J+NQSjyIyppU5g0rg0CvV7yBDCBnNM3o3Yi
	rpB8pTuyEEIKcNcrlTi6+So=
X-Google-Smtp-Source: ABdhPJxMSgpaFZL2xbLCFu22Ip+/Q9yoMd1UTEatXMXqZK70t8NmnRgpYguwSCjk1+T20MctRxwsRw==
X-Received: by 2002:ab0:5ea8:: with SMTP id y40mr16758255uag.21.1607450398741;
        Tue, 08 Dec 2020 09:59:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc4d:: with SMTP id p13ls817256vsq.7.gmail; Tue, 08 Dec
 2020 09:59:58 -0800 (PST)
X-Received: by 2002:a67:fe01:: with SMTP id l1mr9580814vsr.12.1607450398329;
        Tue, 08 Dec 2020 09:59:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607450398; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+RyivclW/TYWPTAVpIk/gRFfgG24gGwLzEKwQ+Imo37lFiYn0t89R8iioYIapSrIA
         o4I7LLe3sMIb5BQn1UzNwKISRzhdGpCCjU7ZEuAm++Tjkcj6IUJfFWP4Xq/hhZZSyF0d
         XXBMGqXRcx1pjv5fdmHZUT9gtbx9z0MwGboeWlrO7oEGEd37863n/LBuMoP/3WhZ0kXJ
         9OJ1Xs0gyJ4BNDvA0gbD/J4m2J10z5tH4TK9lTtAe6ulXzqs2jUCWrznwQOdT55Pd80g
         liN5xBfDjgZqTpePHVlqeIs0QqY72hfDrTZQPLmuCt3OgBhp9tgi8jQJ1BFyCcq5K1FC
         NHzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vC+DtXn0h/YwH+m7lTrhoayKAF6AvMOlxSoaUs6f0Qw=;
        b=QOeV7JpbU776iI+o2UDxh7KUUlvnBY0E2EEs2pGqJP7x42wxqD1W8tUI4YFjNgpE1D
         fov56Z5YK/v+8kaPhjRxXY76ZpzGMNqU6Ph1tnTwbqIKs/Hd1Oa+p3CQGTv17b3fzTlr
         DLNBb0mb0s3xSrl6F6IlkHaIw4q2nH3vhHNcZRueke53trja63O9jZ2E87YSpSg+3v69
         cwA8xRefnQ0HPehZx9rngxn5Qy4DoSWual0gntryrE6AywfH8XHdDyKGLEVQ1kA3i2Be
         6GlzqFWl1FrA5qTO8X5Ft31oprGrW6pxJ0Q2vL1osOCfNwzRyIotptqQ/t33aolSzW5q
         1KUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YXOIjYUs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k67si1160439vkg.1.2020.12.08.09.59.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 09:59:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id y10so5904822plr.10
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 09:59:58 -0800 (PST)
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id
 d1-20020a1709028541b02900dafcd107bfmr9196778plo.56.1607450397283; Tue, 08 Dec
 2020 09:59:57 -0800 (PST)
MIME-Version: 1.0
References: <20201203202737.7c4wrifqafszyd5y@google.com> <20201208054646.2913063-1-maskray@google.com>
In-Reply-To: <20201208054646.2913063-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 09:59:46 -0800
Message-ID: <CAKwvOdmuwOPzZZHMh58syoorc4ED5-6_tbxCqhL0Gi65mq58-A@mail.gmail.com>
Subject: Re: [PATCH v2] firmware_loader: Align .builtin_fw to 8
To: Fangrui Song <maskray@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YXOIjYUs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Dec 7, 2020 at 9:46 PM Fangrui Song <maskray@google.com> wrote:
>
> arm64 references the start address of .builtin_fw (__start_builtin_fw)
> with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> relocations. The compiler is allowed to emit the
> R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> include/linux/firmware.h is 8-byte aligned.
>
> The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> multiple of 8, which may not be the case if .builtin_fw is empty.
> Unconditionally align .builtin_fw to fix the linker error. 32-bit
> architectures could use ALIGN(4) but that would add unnecessary
> complexity, so just use ALIGN(8).
>
> Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> ---
> Change in v2:
> * Use output section alignment instead of inappropriate ALIGN_FUNCTION()

Cool, this approach is what we already use for other global arrays;
such as __tracepoints_ptrs.  (I wonder why we don't use 4B alignment
for 32b...but 8 is a multiple of 4, so should be fine for 32b
targets).

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Build+Boot tested aarch64 and x86_64 with ld.lld and ld.bfd. Did not
test loading builtin firmware.

> ---
>  include/asm-generic/vmlinux.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..b97c628ad91f 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -459,7 +459,7 @@
>         }                                                               \
>                                                                         \
>         /* Built-in firmware blobs */                                   \
> -       .builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {      \
> +       .builtin_fw : AT(ADDR(.builtin_fw) - LOAD_OFFSET) ALIGN(8) {    \
>                 __start_builtin_fw = .;                                 \
>                 KEEP(*(.builtin_fw))                                    \
>                 __end_builtin_fw = .;                                   \
> --
> 2.29.2.576.ga3fc446d84-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmuwOPzZZHMh58syoorc4ED5-6_tbxCqhL0Gi65mq58-A%40mail.gmail.com.
