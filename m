Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH75Z33QKGQED6FO44Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D3207DEE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:59:12 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id v25sf1535203vsa.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593032351; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUKOY0CJFCLTkO65lqRWWyHq6AURhephrhOcYbClJ4Jp26pRFQOmeolL11EBFFers9
         1uXADn/hqXqU6p2pMkxvKotOzvgpu6jVPlwbb5D9J9sDlAUmW1+vsAsxmrY4rTC2GTcy
         FhwsdemrkHHbXulbGp9gS68TYZEf2mZ7PIhejOLGaW9o5OUsPHyNJcSdibuRccGdR5xf
         dSas0X0fzhsTOi9pB9zUNTOUqddQCIOEnRQa29qbp5r9bg5P+++50tPOYNt9YCiYZIu5
         LgU3U336+7tkqPMVsh62RD75cdH1WBdfSMZ3YS2iR1+qcZvXMHAFjSIr/o62VfQNj1Lh
         jXQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CaCw+Flvy3jvbJ6w0JJRuzzCrfBQHO5i3tqaOD6kZXM=;
        b=Sl9rbEDiGAVJhE7O+y/r6T8F4U5w3a/qCWtKfGi7L87pjNLPO8VY0olh3IptQn6BVf
         ieFlFh22GlATads6yI6A3qOCmf6sRjp/uFuAldX8wpij8rQiM8Pe1QHZJq44mLnMaX8S
         z/PE4yNtS0dc816BjgfbXiOxIuzldhe7JkJe5nhB4qmgxDacD0C0PfSw6Iew39ex5aQ1
         9FhSY5kZ9ZTA4VWUGZq+ZsEP+LbD9CW13PajWrIopNZoZpg0gmkjkh5l4ThMrEWKtY2W
         xKf7rN7MMZ/OysxzqpL29UL1sCJbcC7CA/Cp4wxyCdHNwKDX2d3Mvnqk7tuuOL9kjNOH
         d+jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pd1+e0uX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CaCw+Flvy3jvbJ6w0JJRuzzCrfBQHO5i3tqaOD6kZXM=;
        b=Wv4qQuvwB8HpPkkd1g5AuVVgal573LcBZPcbAMGZpWldk+/mCVcMlzt76Qzn/s3iId
         Pgv5wPOoADxaEnbJXEMYLeyG8QqQ/Ff56n7dwTsFXFTGWbdKEWDU8qIoOpYUTPygfJyi
         PJbsWOJ/ja02Lq3m6Pm1HX8OESEVPaNNgvKExOC5Zt51sAOPEQiFas5QHUE651rjPvSb
         BIeMouKeOnG07Edz699+nSaxZ78gr0lVXyWoBjAfcL5AciSEDlLQD3rFjltl0qOsElko
         3Brpiu0ELt9Ydp+EqbXlJpsbJbLNQ1eSbZ9GAKb/w08U3mmVIzrgbl8wClo0Pv8Hi2xw
         NlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CaCw+Flvy3jvbJ6w0JJRuzzCrfBQHO5i3tqaOD6kZXM=;
        b=Ta8yrKO3mKVD0dtjYHBl4GoPj2J7SpGA53l9XWxNDjFnVnGERSrZRm1jFZmvtcEpK9
         Z5hbHnjH+9cKqOyaPSgtBA9nixPJFAu1tUX0bh5Qly2Ws0kxpA9fyIBmSHr+XaIxKQRX
         Lf76NuJYmG5cgECnTOEdEdg1g7WJislML6BSvoIqYSf6WxtAZKhNXCD8U1HQrTN78nHW
         GNZpWtsWBfv8X2y6kRW1EwtLg1HLAZOK1kcwnl43lUm3rF/lz8vHD05ZEMrZbRtcPt9T
         uClN6WQm6M6Rp/1iPJlaEsG6wJWY6/zZpnlSZv/f4haNlSNQpbn3s5qgtwLhFuFZR761
         N0+Q==
X-Gm-Message-State: AOAM533CGtfSodXq3Bmk6lb5oHvCwRDpc3YsuCAYB89gCYrT8AkyHbNU
	2Ak25+hKsbXLGvhlQTCBUVQ=
X-Google-Smtp-Source: ABdhPJzEPhUNO7676zwFvDnDHnbL623b+EWERvyGOC8DNuE805DMSutfxbgZ+9XioZy8lpA09RiMug==
X-Received: by 2002:a05:6102:38c:: with SMTP id m12mr24019659vsq.31.1593032351474;
        Wed, 24 Jun 2020 13:59:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1c01:: with SMTP id c1ls172449vkc.7.gmail; Wed, 24 Jun
 2020 13:59:11 -0700 (PDT)
X-Received: by 2002:a1f:3d47:: with SMTP id k68mr12663546vka.68.1593032351181;
        Wed, 24 Jun 2020 13:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593032351; cv=none;
        d=google.com; s=arc-20160816;
        b=o8svxKSx/lOJgCcsRGxFyP6B9jjkBE0sswIWgT/edAfNHMLEbM8DIYVVElJS5P1rwo
         ZAJ2EPgwJ7ZIxUGJBC+RaZsxhH/8hYffI2PbjA693S3wRLArjH7A1vKUnGSDYviaT0Ud
         5Cldpn7+o6qen3Y3ljUVFPwAc97s/XKItnneZwXJ7QAjEkAVFghl8DZrR/lnS4cvRAse
         3z0anbtuq266EhVGH30MGqetKhTZ28rnH4KgXiB1fUmzaWMH5pLmkycVGFojgvXEpgKu
         SxVMiqGZmhrkLBUq2SaD6hMbqnIBiv4QgrkkZmw5JIFbXpG84UvV4HDsIKf8EP+lHzuh
         aNUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zWM/30Wl1IsQgoPaDiN0rPEEBtrHBKt/BJnnp0eLWds=;
        b=wazY9B4cHiSUIAlD24VdFB7C3Leu4Dwq2P3twkNIxDqB271FROfQV57fgcuZbLdcpq
         4yNOpevSoUbpHBIDcKeLTUgzC6+x/Nr5Ak8ZdaDVWmMxyTsiPS0oO28Gu3jwEh2gEeY7
         HqvwKUkEpgeLTX43CXTR7Jg2g7HKDd0o1okn98YoHzx8LiMlYa+km2572DkOXvlt6cYZ
         pq8ZhnexwMAJl7a71bJtspQLZxzs8U2HXLMD+Ysw+XsSdDgeONomJE2PYj1cWWLQxDx9
         ZZ4wn3TNuxcs1VVc6iKgeEhDuIrJJx/AZBvLL86SjEqQb36AObGV4fTxA/h0yWfxU+sR
         CBmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pd1+e0uX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id t63si116819vkt.2.2020.06.24.13.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id q90so1209479pjh.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:59:11 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr5252324pjc.101.1593032350091;
 Wed, 24 Jun 2020 13:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624203200.78870-18-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-18-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 13:58:57 -0700
Message-ID: <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
Subject: Re: [PATCH 17/22] arm64: vdso: disable LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pd1+e0uX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Filter out CC_FLAGS_LTO for the vDSO.

Just curious about this patch (and the following one for x86's vdso),
do you happen to recall specifically what the issues with the vdso's
are?

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 556d424c6f52..cfad4c296ca1 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -29,8 +29,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
>  ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
>  ccflags-y += -DDISABLE_BRANCH_PROFILING
>
> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
> -KBUILD_CFLAGS                  += $(DISABLE_LTO)
> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) \
> +                               $(CC_FLAGS_LTO)
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
>  OBJECT_FILES_NON_STANDARD      := y
> --
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnEbCfYZ9o%3DOF51oswyqDvN4iP-9syWUDhxfueq4q0xcw%40mail.gmail.com.
