Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNWF3L4AKGQE44762OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id CB042227A36
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 10:09:27 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id g16sf1702309pjz.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 01:09:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595318966; cv=pass;
        d=google.com; s=arc-20160816;
        b=brGKap18bFclQcaWjcYcrLbhwzAH31v1Rb9EGy0ZEboT4ZUU9T4UeCvi7HsYS1JiHJ
         QpwNByNSTMYN214s9PQ9AfpUK3Qa1+sXjVrnkFRLADOa682LqtLooVed6YbTZKFddJv0
         HyHFKtTnCm0HeaU2O/tRpsCTwy8FB4hN3imm0ddEKKWpfp1EJ+v3SrTA72uDUhiwbxIu
         LJ77JisT0+Namr2/ZLXtCcyT7FF3FVlCmsfhcf0OMIawV3byuynzjM0VxPuR/mmNjzYn
         P8eXSVbk070GAsOs0Z4r24sGCMmmiOIk5HezcT48Bb/zXyWzOxE5EQbkYCQ40DeK90ni
         OAjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=58Zc7DSGjQMuBkyHUaSgnQ630VnXJAvrrDDj0Ymjixk=;
        b=Re+MUnPk14keu+I82KcczE/C3MFxsN01xYvAaOiXYMBTgfQIOp+6l13m7aEZbhZnBR
         Bu3+YN73SuJPigfYgB4T2j05XT6IZOMKUtSVz2/iV51/LWWKp5mm4HqsCVT0k13ye2w6
         FYk4XK7NT2OicBnCD3U/EYOFIM4K+eG8ZmUA9OSDkNSK3TDE7rAysUqcYFAihhzJxZim
         jhoaHvi+FX5GmYFciJ/xm1SztioS/idOIBWWD+HHk0NZ4tqbFqYExXx7CEuGn+USE54i
         LV935itA93mwsI27AjwKtzl0LqfFdgVoJ+RUhtV2X5PG301mxl3aPRnMSLWQlnu6GCtw
         hNKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7YTfmBR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=58Zc7DSGjQMuBkyHUaSgnQ630VnXJAvrrDDj0Ymjixk=;
        b=XC1iz1AOMolX3NyqW5y2HiaxDjAiYy3l5OWQB7Mz4uKPPR8onK0lbdHugnsx7lBH9G
         wRRFqGN3YFJgdtWG20rCcangi0YDuMAF7b8QBMlM8WmbAZZAMWHkCmi1Cdq0WQtDSZ+7
         XYFolFkk1UMuzbQEXVlfxOKscSosbHL/fICbx64evBgVBn7U0IV23x2qiYro6hK6BAcf
         SD/57gvYbVbJBXIcrHMUBVnFFL4X4Fa6sumVthf3X/PWMpIeEHmd/T91eYdyF5MhnMz5
         uoMvcH4Q7RU0zLd4dC6gBuIR9zuGb0pF2Vf8bzTv/YlW30mhVq3pn+QHbYPfPcq/fSZs
         mNCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=58Zc7DSGjQMuBkyHUaSgnQ630VnXJAvrrDDj0Ymjixk=;
        b=bG7WfclKS8Ky2dhXqsIGrA6iHB/D3IHhdPZSNaUvPGuyweC3D9VVL5zK+xh6kiTICV
         b6ZEjJfitSWCdfLmSMyUdUsAIMqrw6QFZY3O+yF/4kxw3cv8blpx2eiHHt0Vp/ryS+9y
         jCAjppt954NiM7WsVCKQP7mE/K0E6mde0CHDrcXN6eGwC+cqFnCfV8nuAYb6LoPqG7ST
         x3RatzD/bGNaABYyfmxz8pr+nA2SUBz2sIwmcpAXvB0I8/eD5Um7p6cBbMyWcMOMmyi/
         l9Lcd/CtJDX5vQfoID9XQeUXHMz5+9B3oQZMyFByfD0RrzW+CutPSOyyRRNgcESQBO7R
         zH3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=58Zc7DSGjQMuBkyHUaSgnQ630VnXJAvrrDDj0Ymjixk=;
        b=BKukk+B02ULGoayeh7obm1laKBpG9WM8kYNnbE5LIMbSeHaHFkvLeFmJHnQLSOEPBl
         r0xLbdqU+sTzb46LZzRsIg42h6WG7jSebfvAU0YTfbLnDgmTzrC+mSnDy2GzjxbBGBxg
         15W5buwS9FlJ8wg0bez0tQoG1CcsGX1RkYKEzvXqFQW+7FFA4X+25mkCqCiTHSe2LZ3z
         tHZSKjb1xln82CZIB/Wt3a4CjnK0kGL+girmrLqu9dowmJ+Vz44nU54YflbLwORjcIpc
         4BWuAyhgkkK6AP9Q+Pgf2tmhizMbcA+5guD3HokkYuLKqO2xHap4/+1IYjEKpJhhgUNW
         P3bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PA/87AltLYSwb1r9EIdInmaCWayL1freLtVSQg2rlPe4ujrpY
	xL8bqk6hypkaW8AeGk60D6M=
X-Google-Smtp-Source: ABdhPJwcIzTa6fYqfP4naaRG8aWlXeQs8rRZRhw5D3zKg5JaoZXRm0IEAvwTD3yemqrFWv0sMPwK5Q==
X-Received: by 2002:a63:125a:: with SMTP id 26mr22449868pgs.340.1595318966489;
        Tue, 21 Jul 2020 01:09:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b288:: with SMTP id u8ls3788607plr.4.gmail; Tue, 21
 Jul 2020 01:09:26 -0700 (PDT)
X-Received: by 2002:a17:90b:1b52:: with SMTP id nv18mr3708387pjb.129.1595318966054;
        Tue, 21 Jul 2020 01:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595318966; cv=none;
        d=google.com; s=arc-20160816;
        b=EI3wMIkRJB57EKr7y6cbk88xl/k8qlIzGxeO6PyXWj1/fyy5qhtfDuHCA7jrcsnKHw
         xg2qk+5OnCm9RHd5JsGvOKAhDqW+ShQjntumYdtGgz2Ap4w9JQ+VEwNh3vkxzRG4j6+r
         /v8N7Q/OBzRJzChiWKg3Cxtm5PCDx7PBdWwRY7zWYzljVK5g8qPhKkpLq9gnwJWZg6Ib
         YrE6DaxxfisjQnw+DDIjFBKcw7udiPCOKcPLEnDXie7PdFlQ2hqnreo/ZnTlqj9+9+Xp
         KKw/JfPkGy4bUfyzKBa4XH1vWdiN/WdudIR75YaXnFM3JqG0FsI7FPnOd9z6BOzmfFUk
         h1FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5uXIl0XLm92YFeb9hC7/nZPQwctVwAjVznJvDpfY4JA=;
        b=cLlFASrA87kETrXtOhVgt4wkRPhzhkUMjn+aWbfjWWLL5fBwLWSwhCjgI9O7iypN6P
         va+dwxeEsZS1cV48fjkQqMtqiID0je2b/xd5uFUpw3SPl/q5H4qQUIayhwzf6yFHiXml
         /L8cvMiUNgbjxhJL7/G6KtMZZJXZGAzXJbPoKCrwwmPrfMSux22ojwTHpkKjPW5+Odu6
         nynN23uAgnNxUt/SvKAuoR5AdiMpzssAgLYpLA5OalrRKUMXmGH6Lpq5d/uR+KXpNIzo
         an4fK2kZDxpEB5E82yhqhLEues4lqJCGaTPPG/Gq8oinwAUfMatIvK8p+OvPnmcWZYgR
         dsRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7YTfmBR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id j4si90805pjd.0.2020.07.21.01.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 01:09:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id z6so2931243iow.6
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 01:09:26 -0700 (PDT)
X-Received: by 2002:a02:ce9a:: with SMTP id y26mr31164481jaq.121.1595318965508;
 Tue, 21 Jul 2020 01:09:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 21 Jul 2020 10:09:14 +0200
Message-ID: <CA+icZUUzRM-pwVfAYMn-26cB-2SSvG_0jdh-aWHiuA+hFFFJ+Q@mail.gmail.com>
Subject: Re: [PATCH v3 00/11] i386 Clang support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z7YTfmBR;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Mon, Jul 20, 2020 at 10:49 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Resend of Brian's v2 with Acks from Peter and Linus collected, as well
> as the final patch (mine) added. The commit of the final patch discusses
> some of the architectural differences between GCC and Clang, and the
> kernels tickling of this difference for i386, which necessitated these
> patches.
>
> Brian Gerst (10):
>   x86/percpu: Introduce size abstraction macros
>   x86/percpu: Clean up percpu_to_op()
>   x86/percpu: Clean up percpu_from_op()
>   x86/percpu: Clean up percpu_add_op()
>   x86/percpu: Remove "e" constraint from XADD
>   x86/percpu: Clean up percpu_add_return_op()
>   x86/percpu: Clean up percpu_xchg_op()
>   x86/percpu: Clean up percpu_cmpxchg_op()
>   x86/percpu: Clean up percpu_stable_op()
>   x86/percpu: Remove unused PER_CPU() macro
>
> Nick Desaulniers (1):
>   x86: support i386 with Clang
>
>  arch/x86/include/asm/percpu.h  | 510 +++++++++++----------------------
>  arch/x86/include/asm/uaccess.h |   4 +-
>  2 files changed, 175 insertions(+), 339 deletions(-)
>
> --
> 2.28.0.rc0.105.gf9edc3c819-goog
>

Hi,

I have tested this patchset v3 on top of Linux v5.8-rc6 with a
selfmade llvm-toolchain (snapshot version: v11+git-e05c7e400f3a plus
cherry-picked 8b354cc8db41).

This happened out of interest if this is in good shape together with
my Debian AMD64 system.
I checked my build-log and dmesg-output and it looks good.

Feel free to add my...

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Thanks.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUzRM-pwVfAYMn-26cB-2SSvG_0jdh-aWHiuA%2BhFFFJ%2BQ%40mail.gmail.com.
