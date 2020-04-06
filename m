Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHWGVX2AKGQEVVBZE6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 260A219FB1D
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 19:13:03 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id t6sf2040046ljg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 10:13:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586193182; cv=pass;
        d=google.com; s=arc-20160816;
        b=RAlqTFLXeIbmUAv/nt9LGL+6MeiXjYcP+jsF4/s2ZSFq7mgrnxxrDyoBL2I4mvoJPA
         txqF6nSaJWdie3c2U1XeBgHZDVHqK1GvSUg/dOh4OqDQWottnsOw/qh7WS6fb0zHBP6d
         01ULgo8WN4YSNiZdmL4Q4UZIWIucFDILwZQhxIOuzWL6DQFjIYeRWkigjtKSgliSpW/l
         BY6SBiENN6uSmXWgvUUE8o5QFi3kjPXyBnJQOt6RMZu+dHGzCjav5goBmkVdceh4qvh7
         ZR2zZlDAR5nQ4YLNfnevD4KK/8okzekS/sE5SACHDAxk/eSZfD98ojmkRNEKNXMZX04Q
         JtJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XUoRzDyWHpYjsEmzQK0xNEibvN03TzU45gc8Sg7iB1c=;
        b=fzIIdB/RRG9JtcvRUQXYh+OJy2P6l7FfLa3dsHAwXLt1FCDoGo3s5Kaaa283Gtv/p9
         GlCyKkShh/q7XSBMVKJdSgbutWqktN6y2fooBFZuGJvwGjdUm34jYwCralD1oBsLKLQr
         EFlDpY9VMep7o6lEajvIejqb+s1i2P4c21CCDuVPvljDv+ardZEMM/tRy+Dm7O2Md/J6
         1ueyMO8q0sr89i4Mut1yfXFs0cvT3COaDFf6fi5SpBY45pHc6OWm9IPMTYNchVoDKUPd
         9BhJOXIJEjOjOGhgNexYRhZsj45E1CNpwFlwRSeIAzUd7pQoCDLo9lOqeI0XKcNg2xdq
         BC+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5p5ffAQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XUoRzDyWHpYjsEmzQK0xNEibvN03TzU45gc8Sg7iB1c=;
        b=SPvFIDt8969XGTqMj7eLcsv0abnuOxjyXek1Ir8LkLirxNVffliLRneNH+vSiCwN7k
         9Gn4YJyyoUT4XsOJr55sLp4FkDxK3MWK8ckOkwCmEje4ZC8az0xNZbP1tvCfXxXLG4pD
         Q/ZdeJB+D2JqBZexKhoo5HZ8LOxgYJY7ul2NbSPqEOn/C/raqRNP1+e/mr/KQovDWYQi
         Ra6p6NfNASD86HBkl7dhHlwOouCmmkKMjjwutuKjlnkDAx5XPspddLqy6ommrDT/cBr6
         O+bMt3J0WlehTNloz2MuyRplwNHvWFd1IWn/yxqa7VWaeDG0mSxt5jLy5vfIrOP26Vq2
         xIuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XUoRzDyWHpYjsEmzQK0xNEibvN03TzU45gc8Sg7iB1c=;
        b=tioQxc2v9IPONzu1Tu/pH3bQGmgfSrpb/u+zoCYValaS+oxOa5/FKA88JN1/XtiRoZ
         rDl70Nbl1U6oU03CyCZjmbiMyw9z2IzoOU5LtblnKGQtA6mjFlnhc9VVFaMBoyygVg98
         sBAPJj/Jto8BElao4C61PZjN5Z58OAIVdKkg1cHU41bh21zHhNAGMhKe+UJiPgQD9o/N
         phh+98Ziyzv1rIrgQXY8jtKR09E6UfwBC/ZZjepTVEGmrAtrKJOgxCoptfV17D4lIzpL
         eHSrIWrLegyplK37q+Viw9UCRboudMoB2b5VN6kwUxOTlQE3KmSD95IfXEUzkfJhDZCL
         RT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XUoRzDyWHpYjsEmzQK0xNEibvN03TzU45gc8Sg7iB1c=;
        b=UWxwx/3zGm4SPrrfdo+mzwOtiCb8d9KFEx0t0UvOZ9VMyfvJYNHZL9vPx+PIR+2ZsG
         CCrogJE91fRtfHfaIcjXzmrW66TnT5iWQQxH2tqTO9a1+2motecLQZDrn8eibOhHr4XQ
         y0MLipQXF4WLD15dlSzJz7KSZ296nC1eUbPxOccYNdhO2JyECw/UHQBEpjZQaAso0mG7
         Q/fpKKPcNNn7hUxsk87t10LvOy7EBdqCWjw7f1o6hshh1sEVUQfXPEUm2OfZjod8z1cy
         U9Sj/MNucgX+S3H5cT68qsHfZSlTmgR5dX05Kfx/jW7RxabUy6gMHFBG6Xh5/vIBVkGI
         du1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubeCUvaeT5dK3UJw/NDrgwEYSPHPO2lZMKz9CNqTbiKkVm7rGPH
	zsYn2P+0iI5ntiDFnxUH7xs=
X-Google-Smtp-Source: APiQypJ4xveNIW5TDrZW76ouhldyzQeqgeVhB3gmbH6hf7nrF2MBClXuvtjDD9IOu3fvXH2Fftgeyg==
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr172590ljf.234.1586193182657;
        Mon, 06 Apr 2020 10:13:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e69:: with SMTP id t9ls64481ljk.4.gmail; Mon, 06 Apr
 2020 10:13:01 -0700 (PDT)
X-Received: by 2002:a2e:780a:: with SMTP id t10mr160935ljc.83.1586193181828;
        Mon, 06 Apr 2020 10:13:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586193181; cv=none;
        d=google.com; s=arc-20160816;
        b=YPygFfBdcgc8LS2hVTrFu9cFognI92DW2XzSjHYO84ImYwQtcREJ36NbfYzaxLqgqV
         dS/Pptvz/Z9Uu2vLZcJO9I/GwypD63iNhygwFiCLq0ySOWwiHjzsxJ6Yiyhoudgc+Qc5
         UJfDMywOC1cRGeBZFHGJJXlwTneyFUhRlg+8hnw1bxy0RFucwzFXv+1FP99v/Ro5iQSh
         suzSno9KOFTmpKHHnV15E1fUvVzj9ytuJ8ljtlFIXMvoAcowpCO3GdwGLFi/dV+bix1S
         WRe+bLNKoGFnHlVGWir2qGRVY0lugFisWZAz4HJqmB9XpQaTzVr2rOjLPnTge1g4U2iz
         csdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yDxXuewRcgFmXFLJr7NOIa2EoB16SqylpIIdg920w9o=;
        b=LpZ4pnrLZHXb9xILNd4PvS3OFo9p/t5MJGiPdIYddKpyAWrc1eBPY1TM0U5kLxS+FA
         mL1p7P41GNehyGGPM1p3hNStJ6NH7SDGsObNrgt4D8OzkJXrFSnfBkaAd3c+DTvDj3v8
         vKjpX5H8mo2+0gM5a/4wZxmfFLzwFRe2g8g106jRXwnUydjrRxW9Fy4xlcHMobFJ/kdF
         MYoXo+8vh/6n2eXLC2nujtMSJTP0xYHxmN+rKpwbfPAq731hd9BGy+dpmT2vfvh7zsrB
         NasLcclz7HZyYhs6YFGefN9xvNocnhoSrT8VAfpi2VtCNT5ZVg8REp7maBDxYHACk7jk
         O/DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5p5ffAQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s4si36678ljj.2.2020.04.06.10.13.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:13:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id w10so379107wrm.4
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 10:13:01 -0700 (PDT)
X-Received: by 2002:adf:b64f:: with SMTP id i15mr186026wre.351.1586193181215;
 Mon, 06 Apr 2020 10:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook> <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
 <CA+icZUVowLVpAxiWw=FJHfQ38KtU7AXXkVnw46D2XLM41-NCEA@mail.gmail.com>
 <CAK7LNAQ6ji3=2+7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj==A@mail.gmail.com>
 <CA+icZUV3rhvmBv91KMKCgvGSvJUoWDVfaV+08eC-kTMdThRn6w@mail.gmail.com> <202004060851.CCB538AD1@keescook>
In-Reply-To: <202004060851.CCB538AD1@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 6 Apr 2020 19:13:22 +0200
Message-ID: <CA+icZUV1wy6QFzQJFghBpvAphMnZ1DGhYrmrryfZ7vkXfPc3vw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q5p5ffAQ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
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

On Mon, Apr 6, 2020 at 5:53 PM Kees Cook <keescook@chromium.org> wrote:
[ ... ]
> > How to test scripts/mkcompile_h?
>
> There's probably a better way, but I do:
>
> $ rm include/generated/compile.h init/version.o
> $ make init/version.o
> $ cat include/generated/compile.h
>

Thanks Kees.

# Clean-up
make distclean

# Prereq: Generate include/generated/autoconf.h file
cp -v /boot/config-5.6.0-2-amd64-clang .config
MAKE="make V=1" ; COMPILER="mycompiler" ; LINKER="mylinker" ;
MAKE_OPTS="CC=$COMPILER HOSTCC=$COMPILER LD=$LINKER HOSTLD=$LINKER"
yes "" | $MAKE $MAKE_OPTS oldconfig && $MAKE $MAKE_OPTS syncconfig < /dev/null

# Generate include/generated/compile.h file
$MAKE $MAKE_OPTS init/version.o

cat include/generated/compile.h

/* This file is auto generated, version 1 */
/* SMP */
#define UTS_MACHINE "x86_64"
#define UTS_VERSION "#1 SMP Mon Apr 6 19:05:53 CEST 2020"
#define LINUX_COMPILE_BY "dileks"
#define LINUX_COMPILE_HOST "iniza"
#define LINUX_COMPILER "clang version 10.0.0-2, LLD 10.0.0"

- sed@ -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV1wy6QFzQJFghBpvAphMnZ1DGhYrmrryfZ7vkXfPc3vw%40mail.gmail.com.
