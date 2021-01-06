Return-Path: <clang-built-linux+bncBAABBJFU3D7QKGQEH3ZIBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F5E2EC48B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 21:14:29 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id b11sf4840792lfj.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 12:14:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609964068; cv=pass;
        d=google.com; s=arc-20160816;
        b=fyThMKQpuymTyPY7zUzoSFzqqYYhnzjkK+lc6tCaf3lFrN5ihEVaLTWsIAikKOqEU3
         v8SYRhOAHYLYF0MFwn631m1w40IxWcrhcvZWWBwG+9ww/RBrvcbTzZQnai3nTVloXX6i
         7acSCppuYmrmyR+J59Mm9TGSvhWqbiWIP/iYRklc9Xr+onFLs6kDo+oT+GMpmmeA821z
         3/5uNtBEU3KcEfqXuNoeV8WC8macaIvYB6ac42M+QjHoMHERqBav+ooGo2amYjVh/B+W
         JUfA8IbsgBXtoYQ7VL5K4M0INdrFxPCXI5iJUtlnEf5WmUJqRpqw1zpBzXhYmw1YkyyG
         /wIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=5UBm6FKiAqSIKo5F5czMyOSV+iFtdr1izAAAVabrwMM=;
        b=l7LSAjCaA2NCpseaGs92bK5YpPdfC7FJT3f5uyEH+aFL4Bk+gdm0XN7Mpn/8gbQQ/U
         QTid6xs3TS7XA+nTAlMHwnVwP+SEjSZLBqbl+bThZ6gLJk54RTbJ75g1gT0iFcH26xOP
         bMf4/L1MTISwh9vwkXkoG9e+3R0roFw1wMtzKOutLyDtmjlttQIk+ZMZLtW8f5pVjyBt
         OAoBiI7TMVfcJf9+YwISy9gtkYyzYNbEEk+ZnqfTSSOOglsEeoLBsbwQM/MlkMhcHBt5
         P3DqI0ieqbHnB4IWFpUV9AvqW+qB8v1CNJe7ImSXmJ1EwFdTCC1SCfMES9zz4PT+pnYq
         AV9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=HwpAema3;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5UBm6FKiAqSIKo5F5czMyOSV+iFtdr1izAAAVabrwMM=;
        b=aY44RvNAE0FoA1WGkQNbE1I8blencYsX6Qxt4eA6g7Yhdr+liIHmi47lmw30Zl5G6i
         OPyIHUbbz/5zZ8YpWCxxb1NxATU5IvMl7G+WDLOnu2fzcVS+5XCl09doMRPsujr5lW+T
         nbVPQgcJjFDPxJQyicAPw+p1lZhmTE+KE6iiG33PxvHKDxN5auFDvewMGldPhxmvWOLk
         00c+cJ5dBY6VTdBfmTZJPlxaFZ6cOQDQVNhE8glYumf2jtX8xN+mXcKTw8/pmWf2cbwC
         kaOcbZU35STULmW6MSHJWi25A5qSELAbBrIbBmnuCR7a9fX3Oomo/UEqLCpNHaJdfotG
         oNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5UBm6FKiAqSIKo5F5czMyOSV+iFtdr1izAAAVabrwMM=;
        b=mEw5y9nD33nGyXTBEUygwOJacHcij/kKkgTXaSIN3tdpGYYXF5oiZcylWSXBL6l5oL
         8Rg8ofje6pbgZa19NnszPfT7wN6SrGD0QCtB2vBCJEVfQQJeZXQNCS0hWQcaxvqC+bDH
         wLvPLaAZ75fLnvkreJmP2siy68DIbKcOKe3Oe21LVW+UZhpGHbuowAF1Fhgjgl/5L6B+
         LKALRBy/q42eWcj7F//Y6Nzb3VFmPmQ+Gwu8r8E5KPB88KH6Is15aMtM5W8HjnI8j3z5
         BLkv8D9LyocjzldxQ5jCDouGjI3wBVxQ1DKH1Acy7q68yOlOi9fXT45MGGnsz0+o96+y
         VKUw==
X-Gm-Message-State: AOAM532gNxLJKSLvprHL58dE8dK2pIWSwDZhRpS5iBMpTh4L8B/JpBQd
	YZSjMqoXwWr8OTNVf8G4i1w=
X-Google-Smtp-Source: ABdhPJwU/bKJXV8z6yKF4wnTUm6uRL1HZVQJ+lh6mzuXq15Wjmw8za0TsNTwHpIiDO9iSc6y7XU5bA==
X-Received: by 2002:ac2:54b9:: with SMTP id w25mr2587098lfk.8.1609964068674;
        Wed, 06 Jan 2021 12:14:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls898783lfk.2.gmail; Wed, 06 Jan
 2021 12:14:27 -0800 (PST)
X-Received: by 2002:a19:228b:: with SMTP id i133mr2639927lfi.365.1609964067854;
        Wed, 06 Jan 2021 12:14:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609964067; cv=none;
        d=google.com; s=arc-20160816;
        b=p2vZlEYFr7Jt7kJ70HZypzXO/J6RE5VjPTZ6tIHAxJvpxmHC9w+safEEUTy2o58LKv
         QAZPgDKXx5lym4B/WQ4vi7WcJAOav0q7aHwgz2hSA5hFsWiMAo+a5+8bNIvHYLb4o+6Y
         /Vq8MSM58/CJe4qNf6QH9j08ryHbVTd8fSfdBITMk8KWeDxBfZO/MN8NJ6HBrtNYOdAD
         1QtI8CKu5njG6K3uXsPLo4xogAU55XI9eoFZKdvuepkVEDI7AQHaZgWGrclhimZSI8WD
         shiqBJXHN6dhoI/PXUKb6LklVmnlSnpXmykUBTWnScdmaQGF1AiqPGWqY5xTwbO+G9vI
         mwog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=WJzK6tqy2kudlSwkM4O7gMAIJYEZptuNFADdyTc5dhI=;
        b=wCghVkENBqVqh9iiyKFoCflU1ckUxRqSK0trU8ifbEwPr1aZiPbNMwDYf82SJNnTrM
         4RvPyVwBD01Q9p+RGm13kio6hbzsWFIh9RV9j7eeSI2EPfRYYn1niOfukNP+rvo+yT1h
         g/VOjLQBq1ksN0JALrD4sTvu9zm98FsFmsJ52Xk5Z2fUY7r1UEuDWhlWZX2DdfM0r9+n
         LG9oXFfSx4VqrVT00x84+T5iJiHP2zb/OFH9JrgQUigehC832o5DNtFdWVCIsUkyCpI1
         U37ESHR2TTeWdEgR27D/7q/v1t06HRg7VNmjibM/b0zsS/eeCCT6rZbC9cq//qnq0hAK
         IGGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=HwpAema3;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id q28si150981lfb.10.2021.01.06.12.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 12:14:27 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Wed, 06 Jan 2021 20:14:22 +0000
To: Nathan Chancellor <natechancellor@gmail.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Alex Smith <alex.smith@imgtec.com>, Markos Chandras <markos.chandras@imgtec.com>, linux-mips@vger.kernel.org, stable@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH mips-next 0/4] MIPS: vmlinux.lds.S sections fix & cleanup
Message-ID: <20210106201400.32416-1-alobakin@pm.me>
In-Reply-To: <20210104121729.46981-1-alobakin@pm.me>
References: <20210104121729.46981-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=HwpAema3;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon, 4 Jan 2021 17:09:36 -0700

> On Mon, Jan 04, 2021 at 12:18:10PM +0000, Alexander Lobakin wrote:
>> This series hunts the problems discovered after manual enabling of
>> ARCH_WANT_LD_ORPHAN_WARN, notably the missing PAGE_ALIGNED_DATA()
>> section affecting VDSO placement (marked for stable).
>>
>> Compile and runtime tested on MIPS32R2 CPS board with no issues.
>>
>> Alexander Lobakin (4):
>>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>>   MIPS: vmlinux.lds.S: add ".rel.dyn" to DISCARDS
>>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
>>
>>  arch/mips/Kconfig              | 1 +
>>  arch/mips/kernel/vmlinux.lds.S | 5 ++++-
>>  2 files changed, 5 insertions(+), 1 deletion(-)
>>
>> --
>> 2.30.0
>>
>
> Glad to see ARCH_WANT_LD_ORPHAN_WARN catching on :)
>
> I took this for a spin with clang with malta_kvm_guest_defconfig and I
> only see one section unaccounted for:
>
> $ make -skj"$(nproc)" ARCH=mips CROSS_COMPILE=mipsel-linux-gnu- LLVM=1 O=out/mips distclean malta_kvm_guest_defconfig all
> ...
> ld.lld: warning: <internal>:(.got) is being placed in '.got'
> ld.lld: warning: <internal>:(.got) is being placed in '.got'
> ld.lld: warning: <internal>:(.got) is being placed in '.got'
>
> Looks like most architectures place it in .got (ia64, nios2, powerpc)
> or .text (arm64).

Addressed in v2, thanks!

> Cheers,
> Nathan

Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106201400.32416-1-alobakin%40pm.me.
