Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLNCRCAAMGQEBQ6MXDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E502F8817
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:03:26 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id z43sf8574161qtb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:03:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610748205; cv=pass;
        d=google.com; s=arc-20160816;
        b=ArvBcmSyQekdDykx5DY8avyJqJ5Q+aEpu3HO4A9MkYrYV69UcoiZYsAJFnAoq1G7pu
         1kdUCxmVDgvFTrVY47V3K4P4c+pXg1xIxesYE16XFtlDcCiwVKnY8p/WQV2Z23yFZMKK
         opgeE7sJ0eOj7uK+5f8uQ17hrv7/dHsF3kHmVI6ardM08EEkuNBw3B1qDmq6O7dVr4/h
         2FT7C//402aF7GLi+hrF8ZDVoYuWCo8lDV9tgglCvPW+vSL3ng5h21IiyDtXTTmShx0l
         euzXJ32AGg+sNFDLcawIw1mH7uESAGnNW0ckpIZHwvNKLz3LODGVVc/c7hVHwwX7qW03
         vGQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ndk467wzpwsmiJ5x4npIK88PJtEMC3T4bIwfENPuxMw=;
        b=bhk2zCC7kwLJaATPjRrjFwV4nsC+ALp3ZKKCK2R4n9X+ZLhSiBegnPPuSZ4M6VoiU3
         XMbZFlu6DvO8bCD21m7PhHHPo4xWWqwjpFCV5aDyUpCOG7xoSGsnv4M2x3ePh6pPUjTB
         sRI7A0uZHS2bpqfZ4fD2dTBaSJCItMQtR8pH/SvYz4XjXY7VlMNzXmQYab2hJSXTQ6iZ
         9ffq76gWpZ4CZ6MkXC/wKk7wO5JJGxf/kcmFD8wd0v6cXNvq2pBFLcrYFUTJxPxawlOE
         VrLjXZPP9m48ubtEyJSEdwAgcZpTptUxtifgUWTVYB69sZtxdl3SGBHT57Zg7o0pe7HY
         4lKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dYvn+9zA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ndk467wzpwsmiJ5x4npIK88PJtEMC3T4bIwfENPuxMw=;
        b=EqkwR3/B7r70xsDOFvGcxA0qjoolNLJUl3cus/rL1ltsn8at2FIXvXEOQa5admYGik
         whmGWGi28MVioxYSKqujQXywHrqA0+gTP2w/6gZY5rWkTTNfwsAm6P8A9pOYYe+uU0+W
         XoyMYgBx6yZ9rXoCeDcXt2GSATH82u8q8OYQg+fHnD3qykK34LFv5YAuvo+3meFXiS4I
         4o09gNz0kqrkxoKnUZU3hPNERsJ59fy5Uy4jtTOSoLkfgvRLlYGQh01jpNXGBAebCw3E
         0FST53nUYFd1M8zN5V3jjK4qLq7figy3Yc+SjzJzPNzUM3JtZpMDbRlj/rhfRDQa/WqU
         wrjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ndk467wzpwsmiJ5x4npIK88PJtEMC3T4bIwfENPuxMw=;
        b=qE4u7rkrxixExRQ0uuCGNkF91Z9i07UxdAlRXDl+yqtY4B5f04LP6A52LQjj2O4O2A
         r/uIt6vYSo+ujntVAOp/sNb8DynZi6LpagsNK2jUYqefK+aAy3wwXThPUhk/1xXsKaXQ
         6BkT2n/RTJQF4AzzdmDLlEJqzPLBy0hDzpek75phZoOsnOUkdiHu1A8+q99S0mzkrLJ+
         FXtC++m/8mKJL/YnVbTEPijFQrw5AR2HGFA3pZSmq/G3Q+GaWWsC10/j9ritq2zrRpY3
         dDfQjsTfsNxc23NZzrBiwDoRRHZnNEMyGE7DT7z8bU0WZL1qH4tlisg/3de+pMswPJEr
         9WPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ndk467wzpwsmiJ5x4npIK88PJtEMC3T4bIwfENPuxMw=;
        b=tNH5rlTbdfR5Fm4R5eLwJmc82nkgqvQ1C3ohmPIrPEt3Bcas3cp7x5mpf54B5pIzrl
         zMvrfHyG1L9XS/ABEfUg6wChAELiNqD5A3kN+hlV1s9AqLcNCNvRyFMDIDgVLavftmSm
         XSN2/ie9sVgf4VXCmqjocPyDNMqdJAR8EOk7tJiJ0PVfQwy1k9nKjKLEWyA0JltSPRut
         wLOQS8Z2iTduc1zxi+TDeyxalb731KYiC8Xhnil3/G0zN8DSCjsGl5ACkp0hZbIm77LD
         g4DQpHwQQfxV8iLzRz1vxjxPFNCmKnEJFQAZEbBAXFDXw5RXDWqOk9xTxKjmOomfXDJT
         5H8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53249+cfUx3GoFr4xa2AeoTDYw3qv1iv4Wh9Nu4ThfK13YIH4Y9k
	/HxoabkiSmE5LVEQ6I43/6s=
X-Google-Smtp-Source: ABdhPJxXN6auiJqEB98xbjP12psUYUHtLNZq1f2TZjyd5+TCzdfrW8rU7Wi705I5xBanAB4JYsOD5g==
X-Received: by 2002:a37:a095:: with SMTP id j143mr14784764qke.25.1610748205247;
        Fri, 15 Jan 2021 14:03:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls5280533qkg.7.gmail; Fri, 15 Jan
 2021 14:03:24 -0800 (PST)
X-Received: by 2002:ae9:e854:: with SMTP id a81mr14744891qkg.77.1610748204825;
        Fri, 15 Jan 2021 14:03:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610748204; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUEchYQlBWzbDN8gWraPkT0+olVR//r9dXS+lod4kYEyKAJQ2Q1tNR4O38qS4lnnHn
         LEzcumVhFidtHsfO1LvqnRK11BZTT7XF1N0ei1ztgCUKtaLI812VSPhk7nof/k+DvRRT
         /683yd6iRxwGo8DXHk+EKsoDojgfPFNoLZgNvtnfdUULcLTyXmJVynpXNxuonlSp72oA
         qd+SqP63SZ2bgM3XS5zUAjiPtZS8kiNR2VTrhCK/QC4FOa61taNFOXm0ji1frD6NK/aC
         qi+aGYH3Byz6IkbI/z2Y68+o0FZj0zY3SD0YiXq8cUVKSVGzV+pSH7F1p1ZS2qaHQsCP
         gd4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tH8Dd34wEyfZ8To5q7YwlSddVn5ZC+wDT5td0wwyUuk=;
        b=0/oJQC+IT2KNkOSxC3cZs4/L0Gm62i6ezZtEe2ZRSvSeH/0+aK4dOd3qMjJ4ZmFimg
         SkgCfPoWJyIMT4M2yBJWSWaxzVdfmrOMbNIwzs1hYa7Y7zO6aptGGXrod76x21s7o21j
         9a5DIfohFyjukSRy6nUtE5i01XPivBYuLhkEWzNU5CelWrfJ+97l2CZovyL3aDV59Xa9
         K1i4f7X4BshEMM1KNzgsCJpQwrb+jDCWmZdlA4814FZxwAvZXGGDLSqFQtP/+1Iesk9x
         vWSCQBJi+2SRPlZwllPwmei1jXHrOuzNkf5nzpTZzTr2UwevqsXxdJMMLwdI7xlhZnLJ
         h60g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dYvn+9zA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id z25si951506qth.3.2021.01.15.14.03.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:03:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id e22so21049644iom.5
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 14:03:24 -0800 (PST)
X-Received: by 2002:a02:b78e:: with SMTP id f14mr4458589jam.97.1610748204486;
 Fri, 15 Jan 2021 14:03:24 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-2-ndesaulniers@google.com> <20210115215958.3cqewpk7hycfr3hm@google.com>
In-Reply-To: <20210115215958.3cqewpk7hycfr3hm@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 23:03:13 +0100
Message-ID: <CA+icZUXjiNaHgYpBXB_DO76XznfqOG-rpH5i6NzhBx-gGoN=ZA@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dYvn+9zA;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
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

On Fri, Jan 15, 2021 at 11:00 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-01-15, Nick Desaulniers wrote:
> >From: Masahiro Yamada <masahiroy@kernel.org>
> >
> >The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
> >
> >You can see it at https://godbolt.org/z/6ed1oW
> >
> >  For gcc 4.5.3 pane,    line 37:    .value 0x4
> >  For clang 10.0.1 pane, line 117:   .short 4
> >
> >Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> >version, this cc-option is unneeded.
> >
> >Note
> >----
> >
> >CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
> >
> >As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
> >
> >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >  DEBUG_CFLAGS    += -gdwarf-4
> >  endif
> >
> >This flag is used when compiling *.c files.
> >
> >On the other hand, the assembler is always given -gdwarf-2.
> >
> >  KBUILD_AFLAGS   += -Wa,-gdwarf-2
> >
> >Hence, the debug info that comes from *.S files is always DWARF v2.
> >This is simply because GAS supported only -gdwarf-2 for a long time.
> >
> >Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
>
> The gas commit description has a typo. The supported options are -gdwarf-[345] or --gdwarf-[345].
> -gdwarf2 and --gdwarf2 are kept for compatibility.
>
> Looks good otherwise.
>

Good catch Fangrui.
Yesterday, I wondered - after a cut-n-paste from the patch's changelog
- why I did not see anything --dwarfX related in my logs.

- Sedat -

> >And, also we have Clang integrated assembler. So, the debug info
> >for *.S files might be improved if we want.
> >
> >In my understanding, the current code is intentional, not a bug.
> >
> >[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
> >
> >Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >---
> > lib/Kconfig.debug | 1 -
> > 1 file changed, 1 deletion(-)
> >
> >diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> >index 78361f0abe3a..dd7d8d35b2a5 100644
> >--- a/lib/Kconfig.debug
> >+++ b/lib/Kconfig.debug
> >@@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
> >
> > config DEBUG_INFO_DWARF4
> >       bool "Generate dwarf4 debuginfo"
> >-      depends on $(cc-option,-gdwarf-4)
> >       help
> >         Generate dwarf4 debug info. This requires recent versions
> >         of gcc and gdb. It makes the debug information larger.
> >--
> >2.30.0.284.gd98b1dd5eaa7-goog
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXjiNaHgYpBXB_DO76XznfqOG-rpH5i6NzhBx-gGoN%3DZA%40mail.gmail.com.
