Return-Path: <clang-built-linux+bncBD42Z3G42EFBBMMNWL4QKGQEWV45CXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEF723E41B
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:39:47 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id b10sf14678329oia.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:39:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596753586; cv=pass;
        d=google.com; s=arc-20160816;
        b=fzwYd99+lLhby8edq+x0KD47j9ZbXm7SNHgjMPsM9VsL765tYJWwiosFvPvMzBBfNF
         6cEh657vc9FaEXMMHiWZqIIlObzr3+6K8eL84qhqgRHATQ5tbvJpgJ1tiIz/LIDf1wp4
         Yd5zj7PSrq6IVgfz38NvCHu7NVa7H2gvMC0nDhl6oBuehV8WEGgEOC/5M22e++19x2T8
         LGQslrCU859o95iXmTM+M9Wqpw1hv13+7yt5Ej/Vyb7TE6OWjF+zR6x8IFc0zjMeeugq
         1jpN93MXGwqXWGzpQnsW6wh+cOmWxnia+98fk+w7BQSR4rMxx3YUq0ao3OlnclMDHU8F
         Z9VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8wC7XvyqU/UHoxqgExBvFhEkHlypUMFN14kIuwfd698=;
        b=PYasHo94xCCg3MXccguZC2FI4EF5Kq5nuJU02qBCcS7IDoc7jhnJ1Tj7ExPb95qYhK
         6gR5vJmGPAVNK3EArzK8nfXmMHRA+RKC1iPJsQZpb3Q6qS0vV9NBVx0JUnzXNRbgCXv/
         FldQTjtzAcs1w/FIgZf+o/kFwdv3BMRwmgAStoeIlkF7AR9qIpYJwBIVO3qSgkQwwypm
         Qom6Nqm2wM6iNL4vypsHppT2pe7rM70B9dlzYSTUvBuEsck/mEWCAgUcnLda0KmaIAVc
         D9KUGSaWzXZJ8OhOXghMDODQxMI18cYoMQR10Uuucwxi43Oxbq++jAaM89nSYLRdbtgi
         wAIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E2q1p0JO;
       spf=pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=nhuck15@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8wC7XvyqU/UHoxqgExBvFhEkHlypUMFN14kIuwfd698=;
        b=SurEdXYS/Pm40yYL9kFENrl/eKcHAYats3zdsSJOFNBjxoqdruVId8VgJkpZeDeleB
         bs07HUJC9C74YxEYWrdS54th+Knjstgimd8Ut7OTSvlI5YhFBtJ/do27+axXxf1MbbJU
         l/zZZHenous8Z2wqPqw5SQuIk+aWEcWkBtOM1B9yCC2RwnQK8cShx01MtJmsnVjFLfVf
         rkdJbsnSfNtpKGB53qw2EabtSdC9gxUiqz50nD4hfywqxnNAsFTHPQxIFy6J3X0d0FwJ
         BC/dASFna/wk3dxr/1ASGcoqU+qsvtuFTpKijp5/LIilwimTIq8c30af4hVbt8bpmnOZ
         MDUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8wC7XvyqU/UHoxqgExBvFhEkHlypUMFN14kIuwfd698=;
        b=gtJEKaV4R3yuUWv28nwXnqdByMYhKfpoN36G/7SJ9MWsC0W3II7kpfNmDjJZm4LSiy
         Qe/J+vFG5E7TmlvZ/seHSUe6eQ8/4m4L6cXvxxKW2lwxePnY6M4eCbiao+5O/7cJqitJ
         dx30+u085g0SN0mX3REL8Aqc/t8TSCCmDgNyml4a4wv6TZFHArW7HmJbGt5Zh4RUSuV5
         M+VXygGSCXO6KRNMI5P9zf5vOwo5fFI/NZiU4SLMLkazvzGLhf+7l+TO+xV4Y1Fq2SuE
         8uLmUrhMmtTPAGuY4NAvm8/CeNjnbbm83+l66LQV2fm1J35Eql1vcuGgU8BDOuQdmLcA
         0ZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8wC7XvyqU/UHoxqgExBvFhEkHlypUMFN14kIuwfd698=;
        b=TubTsSJr681Q9HGzuS9XaO6B/E83Gxx8L0hUkFPQ7idITqZcYaHm+KpljqRLA/493l
         PONim1N+ig0lr1E7f06La7zDbjlT3+GY9hKnsID6lOcQxElp3okzqnD/Y0F4SC+zuWwd
         3Tjk+jWyPQw+sMp1lDS8IJAj6dRn3JLBVXIYq2B61FFGipo/zC3RWFZ1NFDcVW1vrffT
         yH98laaQP6LfQ8Jhe2GQ0/wT3agBYwKLnNKzxtYZupEPKBaLOUSbnaO/MehMsx179kFI
         rtl4c7n2CXu3qO23qYwTSoE+i9S80JfJiLarOViAq3lpZdpVB4Jg3j1MQXDEXuwDnnm0
         nNhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ytnj+e60J5IDBIwbOnKxFHIF2itfSNLfN9lFfWsifdOf6pNrq
	xAm7cUm8V8GA7Kb6HJQZpDE=
X-Google-Smtp-Source: ABdhPJyigIjrjxMxHnQgSQYxGQ9pE5ta89h7hRbGg/p/k7n28ikkLIaX0js52M5XD559CMo/tMR+Ew==
X-Received: by 2002:a05:6808:b03:: with SMTP id s3mr9448110oij.19.1596753586010;
        Thu, 06 Aug 2020 15:39:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc57:: with SMTP id a84ls1639705oii.2.gmail; Thu, 06 Aug
 2020 15:39:45 -0700 (PDT)
X-Received: by 2002:a05:6808:aa5:: with SMTP id r5mr9011079oij.29.1596753585751;
        Thu, 06 Aug 2020 15:39:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596753585; cv=none;
        d=google.com; s=arc-20160816;
        b=cSYpscR26H0iAeVaPPxz9xOdBhMRonR475MyVmVRtcMLJGpCMufTyATd4fuN0tMfUr
         AaKyCG5iOI3C+2OINFgW7Xw5OJbJdXm6+1WE5KWqsgEEs//k7/LxPrkO6Z9WIg45xy+c
         zDv2MXVAZh/bT0gAb89Ib32IVZTGk3k0RVCpYgGJA+V8oxuAYQvhReYM9ZpxoDCpv9lV
         HiIkWGIDZrL7azFx06AyaH0yGX8Phb900AaUWYcF2nXJJX05Fz8N4gY5Q7nYn6utZ2yr
         lhLWbiI6pBCblvp/9nnswQIwwvzQ7M5H4dAEsb50FNg9/c1dVUhy7aPcCFlrfILYvn6E
         2Xcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QYyChGMYepRNLD8UKgj7thBgwQob2Oa7/EK/gPsMnyo=;
        b=LFTpSIInoz1/nKmfHWkjBT4KIx8e/WKzM4zeFZWzCE+5z0jo6Z+uAtMQt0ZI1KMHxN
         6oBZW03Wq70txF6dhnlKJZxtDSUKx9qsdZrkA5M+uLO2okfovOVppN/5bIV9APt9v0rv
         0kxxqpTiFRX7g9j66dWU9r45xk8Ydl00Fxo6rlVmjO+E4Ap48fM6tTLBteIkGW1zf/0Y
         0roYnibo3sY+acAWm5w568odG+k5bdw1QG+G73I+hs4bzGnRDLOMpK+R0+oLYBjxFSnC
         LrGXNjsT/jgNxepx1m7C9UjBPVkmW+qk2lJoQMOLKLccIG3M4oo3q20uLubVTB/+9oB6
         AFSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E2q1p0JO;
       spf=pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=nhuck15@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w1si457215otm.5.2020.08.06.15.39.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 15:39:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id u24so171324oiv.7
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 15:39:45 -0700 (PDT)
X-Received: by 2002:a54:4512:: with SMTP id l18mr8807675oil.148.1596753585500;
 Thu, 06 Aug 2020 15:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com> <20200730205112.2099429-4-ndesaulniers@google.com>
In-Reply-To: <20200730205112.2099429-4-ndesaulniers@google.com>
From: Nathan Huckleberry <nhuck15@gmail.com>
Date: Thu, 6 Aug 2020 17:39:33 -0500
Message-ID: <CAN=-RxstJBjJUcOf9iuAxEcxYUhJTdF9JhPVWwQuefnE+3s52w@mail.gmail.com>
Subject: Re: [PATCH 3/4] ARM: backtrace-clang: give labels more descriptive names
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, clang-built-linux@googlegroups.com, 
	Dmitry Safonov <0x7f454c46@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Lvqiang Huang <lvqiang.huang@unisoc.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Miles Chen <miles.chen@mediatek.com>, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: NHuck15@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E2q1p0JO;       spf=pass
 (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as
 permitted sender) smtp.mailfrom=nhuck15@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The style cleanup looks great. I just have one extra thing that
can probably be thrown into this patch.

On Thu, Jul 30, 2020 at 3:51 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Removes the 1004 label; it was neither a control flow target, nor an
> instruction we expect to produce a fault.
>
> Gives the labels slightly more readable names. The `b` suffixes are
> handy to disambiguate between labels of the same identifier when there's
> more than one. Since these labels are unique, let's just give them
> names.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/lib/backtrace-clang.S | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> index 40eb2215eaf4..7dad2a6843a5 100644
> --- a/arch/arm/lib/backtrace-clang.S
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -121,8 +121,8 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
>   * start. This value gets updated to be the function start later if it is
>   * possible.
>   */
> -1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> -1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> +load_pc:       ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +load_fp:       ldr     sv_fp, [frame, #0]      @ get saved fp
>
>                 teq     sv_fp, mask             @ make sure next frame exists
>                 beq     no_frame
> @@ -142,7 +142,7 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
>   * registers for the current function, but the stacktrace is still printed
>   * properly.
>   */
> -1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +load_lr:       ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
>
>                 tst     sv_lr, #0               @ If there's no previous lr,
>                 beq     finished_setup          @ we're done.
> @@ -166,8 +166,7 @@ finished_setup:
>  /*
>   * Print the function (sv_pc) and where it was called from (sv_lr).
>   */
> -1004:          mov     r0, sv_pc
> -
> +               mov     r0, sv_pc
>                 mov     r1, sv_lr
>                 mov     r2, frame
>                 bic     r1, r1, mask            @ mask PC/LR for the mode
> @@ -182,7 +181,7 @@ finished_setup:
>   * pointer the comparison will fail and no registers will print. Unwinding will
>   * continue as if there had been no registers stored in this frame.
>   */
> -1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> +load_stmfd:    ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
>                 ldr     r3, .Lopcode            @ instruction exists,
>                 teq     r3, r1, lsr #11
>                 ldr     r0, [frame]             @ locals are stored in
> @@ -201,7 +200,7 @@ finished_setup:
>                 mov     frame, sv_fp            @ above the current frame
>                 bhi     for_each_frame
>
> -1006:          adr     r0, .Lbad
> +bad_frame:     adr     r0, .Lbad
>                 mov     r1, loglvl
>                 mov     r2, frame
>                 bl      printk
> @@ -216,11 +215,10 @@ bad_lr:           mov     sv_fp, #0
>  ENDPROC(c_backtrace)
>                 .pushsection __ex_table,"a"
>                 .align  3
> -               .long   1001b, 1006b
> -               .long   1002b, 1006b
> -               .long   1003b, 1006b
> -               .long   1004b, 1006b
> -               .long   1005b, 1006b
> +               .long   load_pc, bad_frame
> +               .long   load_fp, bad_frame
> +               .long   load_lr, bad_frame
> +               .long   load_stmfd, bad_frame

Load_stmfd should get its own fixup
handler since it should emit errors about a bad
pc, not a bad frame pointer.

>                 .long   prev_call, bad_lr
>                 .popsection
>
> --
> 2.28.0.163.g6104cc2f0b6-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAN%3D-RxstJBjJUcOf9iuAxEcxYUhJTdF9JhPVWwQuefnE%2B3s52w%40mail.gmail.com.
