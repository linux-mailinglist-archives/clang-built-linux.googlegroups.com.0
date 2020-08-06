Return-Path: <clang-built-linux+bncBD42Z3G42EFBBBENWL4QKGQEZWROM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 5414923E417
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:39:01 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id e14sf219201qtm.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:39:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596753540; cv=pass;
        d=google.com; s=arc-20160816;
        b=ll6Q0MFd29qqIB5qcW+Yq9P0kPCnGMPYDTmZLG0OS1YKpS3sgqaCALnNdcUxhfS6FU
         IO7V8sjH3kiutXyDIX2nxIfvRB6gBDv4NorgQbHYkUrIibYOxKrQdYLJLTIc/VLqApX5
         YzKePiaMn/BHKlyxoez7Ycw26+yY1CqoZ6Vc0G6OwPe4F0M4aM+7M7bTvwghLs1D2hRR
         5ch48TDiMdstE5puWUkmz5yJQKPpCEwjHL8/lmJacXtbNr5SJPTW583YvCs+A5hWWVcy
         X5yH1R3SZ5ZczXHH8wtSJ3j/uLG/ZLbCkuQ3AclaHJC3dOR4UN2B1l/0C+UfJyTR3Dd1
         SnZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6azJ4B4cVEbqO1dROG0q+Dk2N5gmt+1JNtjuIze5/b8=;
        b=P4tYCMysEdlTMwCIhkIGYUUHSmg2BoYB433Uhvb6HHUreMwI239aqDnluK06Q4Qpfo
         wJ/mLOoZTkrdfpRUePk7+iF1sq3wHdHhxyDI6jUlzkQUuvuFijHYc5SmmqF7NCmfV4+J
         8uAaQrwB9k7ZrO6khKooPuOw2to0+OKRL/gZNl+RTgKEzNYmxgz5e23NZFRuDEDP2KHz
         hR/dbaPPIDsshLUqIuD9w9diwpgCV9Zc/zJOZwNzsMsI7E3dfCXBc0iDaEuObnuzVfr1
         wP/xDvbCyBCo+gwwGaICN7BLKxjMUOJEcm7f3gWEUO3bll96vcFHT/XcP0Y84TrHtYPg
         UbqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oWwFoqGb;
       spf=pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=nhuck15@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6azJ4B4cVEbqO1dROG0q+Dk2N5gmt+1JNtjuIze5/b8=;
        b=bmpn0J/EgDBYIx7ddXuqbnBl/TCL27GNePiE01fr5euFOgqHM9rjWlBHp7+d4/2eE9
         rfLxma0x4DZseTUDtUCzXTwtkx909Vs9LbONVvcIJjX00ruIwOtUH6mX95zW/UcueLgT
         IQoN9iRAo4OWmmIs1Zv/DnlfbtWojLO73WNh7TbaqMULWapsggL9keO6tacvS0ji0Qft
         Grx9zYnHdFd+CFNiIlch4mazBYdgac2yXVHyEoHCYgFLUfbQCf+dgyHrPvZyso9UoDVY
         ErOhV0LAPYewID0Vw0kVKfTAevAc81AUfBjXohBvJtsJuuM1lExyI72ZJeo6KhgSJwsh
         L8cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6azJ4B4cVEbqO1dROG0q+Dk2N5gmt+1JNtjuIze5/b8=;
        b=RH9cafBtg1HXF2D6qCC6DJK8TgP4yLU/yhQk1fNZFnME8meCf4g/70UsK9cEfZty/6
         Ao5/CgfFEuXfLNL/EMVeKny6ZcHMXwD0dd/L1aniMP4VamkyYxqVE6ncWGwt0818/r3h
         pYfDAM/5qZsmqAhuyjuNEBV9s0lRhzCHsaqbS8xKpO//Atp2msWVNLAnh7KTbQCrUw8e
         JFHBcoSoBhdGPYlfySo9EP3ZeUPxMzOr/WaxkJ397Am0BKZwrrPWpxktU1ServH8mNmt
         43c9jfHf8irk8iPnh3ReMzkgpMX5M+5knK3ocW1HJz2LBgzkhRVoUqClKcZJABNQQY5a
         hB9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6azJ4B4cVEbqO1dROG0q+Dk2N5gmt+1JNtjuIze5/b8=;
        b=iL94G4oJOvz6288VkXaf0cvRIb178mesUP9H+Yt6mhoLf8GuA2U6CJlv6VD7fAjuBx
         7er5fytO09l2qEv0SqNKLD3Q3lHaa1AU+uudt0MpVZ5ONuNgEwrTPgeYgDiXzTEV44Of
         1XeWph0sSnW+BI+9qL8rSHS76Lz6+5kQVgogf9FXZAZRsQe/Eo7lF1GcDqj4/3qx4SqP
         pqpdbmC2vKwEzEv0ZsUUvjm6BHvuVsokpYQgn9f04A2S657TGZ8ZY6RPAFDGhsuKdfD+
         RgP5y1HETEO7DULOi4a0m9CPrLDQQ3jPkFcFHBpDEgXHVe1jtGl+uCdVNYSw+OkVdUVq
         OsaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336VwBpNi059sku/QVTgV/Qke6XGc2YaIq7RkmQTfJv7sf7re3P
	lx6U6uAsIfN7h8MJYp3SyGk=
X-Google-Smtp-Source: ABdhPJxKII4MSZaXz3VQis3hMhy+w6XdMTbi5abOrGxTCx9pZxn+fLjqFF3yhTUYTKWDuNsez+FsWw==
X-Received: by 2002:ac8:50a:: with SMTP id u10mr11201367qtg.175.1596753540436;
        Thu, 06 Aug 2020 15:39:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb0d:: with SMTP id b13ls3441350qkg.7.gmail; Thu, 06 Aug
 2020 15:39:00 -0700 (PDT)
X-Received: by 2002:a37:9ace:: with SMTP id c197mr10421283qke.278.1596753540057;
        Thu, 06 Aug 2020 15:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596753540; cv=none;
        d=google.com; s=arc-20160816;
        b=WukT3YgvWgbmlZY/BnllsGlWtfwwai8EOKzOmZMvsPDrHRNBsnY0zpdecrmYIMxLfn
         Zd6NFrtpnmvhluEY7WLgyFFkqdItLhVzw9g1DKNUuejb4m4DweXEYoCyacOi9eFtI9MS
         6F35v9A8EVBEXdceQO9c3ZyzMrAFX9sQRXUYw7ibcz/dCqSnh15dLembD1C7rN2Czl8C
         DJJ773oQtEBCXIGhHetP3ID/gCmrfKHoZPxPlQJ4joeGNxA8jOM5FF27UePko56lbDbH
         du3CFt9DHEP1U3y2erR5xXQo1lgolEzZWVkpe+MvtauAG5MPVWdCeq+oPSbEZsocvEDo
         l7fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ne1iYZprPZsaiWqWZFllfuyUnxnmRkcPCgewhYs7+po=;
        b=EnJz3GrCg+Nb27C+fUl/rQ2axStAVZczahTfrJ9H0gTy3rKnoMaGPlRZSqufzsZWqb
         kVJUr+ppd9FVtgWfO+2AoBBy+nEjPFM9PlDrLQP+peuI4RtERcuXDRrIOL3QxYBh8lLO
         R31GPh8ipBh47ongsdCBDj6s1qSIvNwab7QPqXuXqG6geLlEee5HVX4yKpEW1KrUi+LL
         yyZUP7rrLEGmIRCV9w3SPayTT5zPYvOPpUcp6gHGetvGJNbF5F+ulSxt/nJGN7J/3Z1i
         //Z1tCLs8OaBoIIqCcnyv2oaBEzrkR36tC/UI6HjryPMSIFTk52JMdT5vWduyCg+Yq1O
         Gxkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oWwFoqGb;
       spf=pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=nhuck15@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o24si357825qki.7.2020.08.06.15.39.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 15:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id v13so140629oiv.13
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 15:39:00 -0700 (PDT)
X-Received: by 2002:aca:2306:: with SMTP id e6mr9080081oie.108.1596753539610;
 Thu, 06 Aug 2020 15:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com> <20200730205112.2099429-3-ndesaulniers@google.com>
In-Reply-To: <20200730205112.2099429-3-ndesaulniers@google.com>
From: Nathan Huckleberry <nhuck15@gmail.com>
Date: Thu, 6 Aug 2020 17:38:46 -0500
Message-ID: <CAN=-Rxty=Ux5rj-VQSZH-ryj1RiNJvy7mRE7uyx_YAndGtcq7Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: backtrace-clang: add fixup for lr dereference
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, clang-built-linux@googlegroups.com, 
	Dmitry Safonov <0x7f454c46@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Lvqiang Huang <lvqiang.huang@unisoc.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Miles Chen <miles.chen@mediatek.com>, stable@vger.kernel.org, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: NHuck15@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oWwFoqGb;       spf=pass
 (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::242 as
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

Mostly looks good to me. Just a minor nit.

On Thu, Jul 30, 2020 at 3:51 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> If the value of the link register is not correct (tail call from asm
> that didn't set it, stack corruption, memory no longer mapped), then
> using it for an address calculation may trigger an exception.  Without a
> fixup handler, this will lead to a panic, which will unwind, which will
> trigger the fault repeatedly in an infinite loop.
>
> We don't observe such failures currently, but we have. Just to be safe,
> add a fixup handler here so that at least we don't have an infinite
> loop.
>
> Cc: stable@vger.kernel.org
> Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER implementation for Clang")
> Reported-by: Miles Chen <miles.chen@mediatek.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/lib/backtrace-clang.S | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> index 5388ac664c12..40eb2215eaf4 100644
> --- a/arch/arm/lib/backtrace-clang.S
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -146,7 +146,7 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
>
>                 tst     sv_lr, #0               @ If there's no previous lr,
>                 beq     finished_setup          @ we're done.
> -               ldr     r0, [sv_lr, #-4]        @ get call instruction
> +prev_call:     ldr     r0, [sv_lr, #-4]        @ get call instruction
>                 ldr     r3, .Lopcode+4
>                 and     r2, r3, r0              @ is this a bl call
>                 teq     r2, r3
> @@ -206,6 +206,13 @@ finished_setup:
>                 mov     r2, frame
>                 bl      printk
>  no_frame:      ldmfd   sp!, {r4 - r9, fp, pc}
> +/*
> + * Accessing the address pointed to by the link register triggered an
> + * exception, don't try to unwind through it.
> + */
> +bad_lr:                mov     sv_fp, #0

It might be nice to emit a warning here since we'll
only hit this case if something fishy is going on
with the saved lr.

> +               mov     sv_lr, #0
> +               b       finished_setup
>  ENDPROC(c_backtrace)
>                 .pushsection __ex_table,"a"
>                 .align  3
> @@ -214,6 +221,7 @@ ENDPROC(c_backtrace)
>                 .long   1003b, 1006b
>                 .long   1004b, 1006b
>                 .long   1005b, 1006b
> +               .long   prev_call, bad_lr
>                 .popsection
>
>  .Lbad:         .asciz  "%sBacktrace aborted due to bad frame pointer <%p>\n"
> --
> 2.28.0.163.g6104cc2f0b6-goog
>

Thanks,
Huck

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAN%3D-Rxty%3DUx5rj-VQSZH-ryj1RiNJvy7mRE7uyx_YAndGtcq7Q%40mail.gmail.com.
