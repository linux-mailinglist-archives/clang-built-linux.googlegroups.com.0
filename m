Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHU26TXQKGQEHTIW62I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BB71281D3
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 19:04:16 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id c11sf6546667iod.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 10:04:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576865055; cv=pass;
        d=google.com; s=arc-20160816;
        b=EbvMX8rhnZe/VhC2EaCpadZ9YNV+mZ/uHvhAxDNGj81AaxO7C3esqgDnxVx270j4v3
         30+wjB/tSkLvVCC7st1I0XPhFd0/Jr3oK9wjoZytv1vMb+lOa/s9qHzjEiMuiniiG41C
         YaWQY/lbF7+V1vkXmnc56c7WzO4fdNjCtG7MZ5G4maIOUPC5aF0ZdSbkL+xWH+B++WCI
         Z7oM7zPJLYLMhTHhncaqeepy0R5EOicRdRMJc8xIuEML1ZAe4R08pW4JSb+l60fNZj3U
         gIBMFRALwiVPDuPcs22s9CEIsDKmVrjc08QWinAG3y6nuJPGJZphL0MI7XU0shBrZqZd
         6I9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PqZ0fD5SvpbzwUZEUVpa7kcVlLGzcMBhR9KjQXSTuzY=;
        b=jGOh9wVq4hlo//Ujc8ZmmVVctG6OeS99G5+oARPvQSGxtMniwbneovy+8m5LiXssCV
         fZJfOPH6abBQ1tmBVuIHLHuM/iRUsmIxkm3ADjv9MjnJZXJp3rwfNl672nTDnOPdlp4o
         W5GGUIeL7PvoJjp4G9A/SXPbDrZR4+TNtwaSYo8YYmzlNRiH88lw7bqDpEllgZ1/WinL
         jkcEAaJE3PgJj1hkWCqqrnw6r9SjU/KB6Iv55ZzUX/nh9tdn8sUi+UWxwkJXQdRVM922
         wPwi8qJ02mdf5VesuBnG+/pPzZ+kpfb7/kO83R82c41+Ece724IJbh9o1MYHhSMSgPSM
         0c3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FJ0dExR9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqZ0fD5SvpbzwUZEUVpa7kcVlLGzcMBhR9KjQXSTuzY=;
        b=EsOp4SaCMbGz/pZbgoEQlzkAbBmQS94bgeKtuTHdBDDkEPjBPcTjCVDETPr/YMg9eR
         MvxDmCL1ytJzSkiTYWE3mshqrPSz0F1xEmzEyxMMHrKPbgd0uKYtc4jnuK3KniWce84+
         cb7tkmG51P/kaA9619SYPuI+5Qr80hq6ZLi2LDTTWCcNtQM2ne9xRyhdFAHbhG6zHhUB
         Ah5UlXDcclQoi8ZuhiTfIup/GdjpbFNbigN1ZLEPoanb3Uwp49L6722VQHlAc6pmsehE
         zUFSWp6EkIfSn6wIqWSCZ0uUZFhPhgkBuX9vRXTaGD1qA3337hExBNNd1s9rfUslm2KA
         IlKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PqZ0fD5SvpbzwUZEUVpa7kcVlLGzcMBhR9KjQXSTuzY=;
        b=Iwg5J2pFbQ972wtekoqDR4CbdUtdp+617QVBmfdXwpa1heVt5ROF7GpWEVqhDMtZ/W
         JDgNx7Uz/2NvgNTZQdbIiNC89DB3LnwS1mQJk88inehOw6miow+QNJCwEUMLi0H6awtk
         fGb2tbO+f0O8TG2QsXgV8W4cOGbzN30joCHdQqfMfQDRDRi4xp12zjTiyGGUt9ZJQpoP
         TmyunJ4VZk5P0sl62sqUHDijJIV+rd5jChKALXiiXa9uisLZrzyfPlTtqUohUrcRuVyR
         AdkzihxP055173wdfIGArueUDHK2oEXM0i53HhSigz7Rb8gMK2NkCVTqDuhOXHawtSHP
         gNaw==
X-Gm-Message-State: APjAAAWisd54xl4VdHRCvZjDbJ/XJ3hqcPAi3ZzNCQKZ5L+j0ifWvqPK
	RbL8XzGp1unmwBp1Z0wHaeg=
X-Google-Smtp-Source: APXvYqwzptVaftSdxFhU3AoTI6E/XhJ+839LoLVb3lMBG/gRIqYsOjOCqW6GElWWrJvdI6+uekEZrg==
X-Received: by 2002:a92:17cb:: with SMTP id 72mr13687014ilx.173.1576865055030;
        Fri, 20 Dec 2019 10:04:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a1d:: with SMTP id h29ls1636755ila.9.gmail; Fri, 20 Dec
 2019 10:04:14 -0800 (PST)
X-Received: by 2002:a92:d34d:: with SMTP id a13mr3095201ilh.178.1576865054705;
        Fri, 20 Dec 2019 10:04:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576865054; cv=none;
        d=google.com; s=arc-20160816;
        b=VtAya8wkWxC1iKMPmfKZIH0U6z+DzkpsXEZ53SvlLe/1PYtNFmvYWXa1L2OEZercri
         sLVh0hGKEgVCurYPABe9u9azYA0RNKJ0uFA2un5UR5DhR+2ZywXmSPedAuYwz5EbiMN2
         vxhQU5PTFDH6BZFZTVufxE4KSn5BroYgCNLgbEvYrfS7/9Y5eezSlVHMCu8w0OiuNhuO
         FXJGOMUyX4G0gPA2AFKI1quorQFuP23nht8IaQVW/BUbLkZUTWWoS5yXwqjDAL3xKQ2w
         UE0cD+Xty/BI03HLIr+L9fOA2032qPozlpmnBa4SKacbooREhLP1o9eDjdZbuuknKqF8
         +OQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=52Gk/VaXrSmPzcos2yNkL/HEF6ayuibFpqM231tfu30=;
        b=ZY5l/p4hD0/dngci2YMyJyccUY9MwGcmew39S4fu/bBEGzmzkVExrI6Z01P+EAv/+q
         6ZmAbuO3ZXVz0mfLD+Z5VxYd4TdlfG2G9pima6c0ily/Y5sxDYPhdTM5yZWhgxDL/CSb
         Yrx7L3MHudPjYqSK8TDwZclc8sKt2GX7RsawBvQ5sE+TD1BS7mFiMP0ovF4RqtOFkq4Z
         biYl0+a0/Xdwm8brqxhR5+OHsqVbVWZBtZKUnSh2YvmXq+xByj3QDyarubOGO7zq7Nov
         DtMSql1PPuTuE2phEiBUAkvYK36cRQmZJ/yNBmbtwZUQv0xukV95UqsFFYwzjLeFP7ur
         3hfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FJ0dExR9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id z7si105060ilz.1.2019.12.20.10.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 10:04:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z124so5291643pgb.13
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 10:04:14 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr15965153pgk.381.1576865053620;
 Fri, 20 Dec 2019 10:04:13 -0800 (PST)
MIME-Version: 1.0
References: <20191218022758.53697-1-natechancellor@gmail.com>
In-Reply-To: <20191218022758.53697-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 10:04:02 -0800
Message-ID: <CAKwvOdnOYUy7M0upKsknwPJOa6iYwtaqZAafrxdb4z_=vDmuXw@mail.gmail.com>
Subject: Re: [PATCH] tty: synclink: Adjust indentation and style in several functions
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FJ0dExR9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Dec 17, 2019 at 6:28 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/tty/synclink.c:1167:3: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>         if ( (status & RXSTATUS_ABORT_RECEIVED) &&
>         ^
> ../drivers/tty/synclink.c:1163:2: note: previous statement is here
>         if ( debug_level >= DEBUG_LEVEL_ISR )
>         ^
> ../drivers/tty/synclink.c:1973:3: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>         if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
>         ^
> ../drivers/tty/synclink.c:1971:2: note: previous statement is here
>         if (I_INPCK(info->port.tty))
>         ^
> ../drivers/tty/synclink.c:3229:3: warning: misleading indentation;
> statement is not part of the previous 'else' [-Wmisleading-indentation]
>         usc_set_serial_signals(info);
>         ^
> ../drivers/tty/synclink.c:3227:2: note: previous statement is here
>         else
>         ^
> ../drivers/tty/synclink.c:4918:4: warning: misleading indentation;
> statement is not part of the previous 'else' [-Wmisleading-indentation]
>                 if ( info->params.clock_speed )
>                 ^
> ../drivers/tty/synclink.c:4901:3: note: previous statement is here
>                 else
>                 ^
> 4 warnings generated.
>
> The indentation on these lines is not at all consistent, tabs and spaces
> are mixed together. Convert to just using tabs to be consistent with the
> Linux kernel coding style and eliminate these warnings from clang.
>
> Additionally, clean up some of lines touched by the indentation shift to
> eliminate checkpatch warnings and leave this code in a better condition
> than when it was left.

Indeed, this file is kind of a mess.

>
> -:10: ERROR: trailing whitespace
> -:10: ERROR: that open brace { should be on the previous line
> -:10: ERROR: space prohibited after that open parenthesis '('
> -:14: ERROR: space prohibited before that close parenthesis ')'
> -:82: ERROR: trailing whitespace
> -:87: WARNING: Block comments use a trailing */ on a separate line
> -:88: ERROR: that open brace { should be on the previous line
> -:88: ERROR: space prohibited after that open parenthesis '('
> -:88: ERROR: space prohibited before that close parenthesis ')'
> -:99: ERROR: else should follow close brace '}'
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/821
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/tty/synclink.c | 55 ++++++++++++++++++++----------------------
>  1 file changed, 26 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/tty/synclink.c b/drivers/tty/synclink.c
> index 61dc6b4a43d0..586810defb21 100644
> --- a/drivers/tty/synclink.c
> +++ b/drivers/tty/synclink.c
> @@ -1164,21 +1164,20 @@ static void mgsl_isr_receive_status( struct mgsl_struct *info )
>                 printk("%s(%d):mgsl_isr_receive_status status=%04X\n",
>                         __FILE__,__LINE__,status);
>
> -       if ( (status & RXSTATUS_ABORT_RECEIVED) &&
> +       if ((status & RXSTATUS_ABORT_RECEIVED) &&
>                 info->loopmode_insert_requested &&
> -               usc_loopmode_active(info) )
> -       {
> +               usc_loopmode_active(info)) {
>                 ++info->icount.rxabort;
> -               info->loopmode_insert_requested = false;
> -
> -               /* clear CMR:13 to start echoing RxD to TxD */
> +               info->loopmode_insert_requested = false;
> +
> +               /* clear CMR:13 to start echoing RxD to TxD */
>                 info->cmr_value &= ~BIT13;
> -               usc_OutReg(info, CMR, info->cmr_value);
> -
> +               usc_OutReg(info, CMR, info->cmr_value);
> +
>                 /* disable received abort irq (no longer required) */
> -               usc_OutReg(info, RICR,
> -                       (usc_InReg(info, RICR) & ~RXSTATUS_ABORT_RECEIVED));
> -       }
> +               usc_OutReg(info, RICR,
> +                       (usc_InReg(info, RICR) & ~RXSTATUS_ABORT_RECEIVED));
> +       }
>
>         if (status & (RXSTATUS_EXITED_HUNT | RXSTATUS_IDLE_RECEIVED)) {
>                 if (status & RXSTATUS_EXITED_HUNT)
> @@ -1970,8 +1969,8 @@ static void mgsl_change_params(struct mgsl_struct *info)

I'm surprised the next hunk isn't mgsl_isr_transmit_status() in
L1211-L1268?  I don't mind reformatting this file, but would you mind:
1. splitting the changes that fix the warning and reformatting the
rest of the file in two?  That way the warning fix is more likely to
merge back cleanly to LTS branches with less risk of merge conflict?
Warning fix first, then reformat.
2. reformat the whole thing, not just most of it.

It's easier to see if you set up your editor to highlight all tabs and spaces.

mgsl_isr_io_pin() for instance has trailing tabs, tabs between
`struct` and `mgsl_icount`...

mgsl_change_params() has tabs followed by spaces followed by nothing...

>         info->read_status_mask = RXSTATUS_OVERRUN;
>         if (I_INPCK(info->port.tty))
>                 info->read_status_mask |= RXSTATUS_PARITY_ERROR | RXSTATUS_FRAMING_ERROR;
> -       if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
> -               info->read_status_mask |= RXSTATUS_BREAK_RECEIVED;
> +       if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
> +               info->read_status_mask |= RXSTATUS_BREAK_RECEIVED;
>
>         if (I_IGNPAR(info->port.tty))
>                 info->ignore_status_mask |= RXSTATUS_PARITY_ERROR | RXSTATUS_FRAMING_ERROR;
> @@ -3211,7 +3210,7 @@ static int carrier_raised(struct tty_port *port)
>         struct mgsl_struct *info = container_of(port, struct mgsl_struct, port);
>
>         spin_lock_irqsave(&info->irq_spinlock, flags);
> -       usc_get_serial_signals(info);
> +       usc_get_serial_signals(info);
>         spin_unlock_irqrestore(&info->irq_spinlock, flags);
>         return (info->serial_signals & SerialSignal_DCD) ? 1 : 0;
>  }
> @@ -3226,7 +3225,7 @@ static void dtr_rts(struct tty_port *port, int on)
>                 info->serial_signals |= SerialSignal_RTS | SerialSignal_DTR;
>         else
>                 info->serial_signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
> -       usc_set_serial_signals(info);
> +       usc_set_serial_signals(info);
>         spin_unlock_irqrestore(&info->irq_spinlock,flags);
>  }
>
> @@ -4907,24 +4906,22 @@ static void usc_set_sdlc_mode( struct mgsl_struct *info )
>                 /*  of rounding up and then subtracting 1 we just don't subtract */
>                 /*  the one in this case. */
>
> -               /*--------------------------------------------------
> -                * ejz: for DPLL mode, application should use the
> -                * same clock speed as the partner system, even
> -                * though clocking is derived from the input RxData.
> -                * In case the user uses a 0 for the clock speed,
> -                * default to 0xffffffff and don't try to divide by
> -                * zero
> -                *--------------------------------------------------*/
> -               if ( info->params.clock_speed )
> -               {
> +               /*
> +                * ejz: for DPLL mode, application should use the
> +                * same clock speed as the partner system, even
> +                * though clocking is derived from the input RxData.
> +                * In case the user uses a 0 for the clock speed,
> +                * default to 0xffffffff and don't try to divide by
> +                * zero
> +                */
> +               if (info->params.clock_speed) {
>                         Tc = (u16)((XtalSpeed/DpllDivisor)/info->params.clock_speed);
>                         if ( !((((XtalSpeed/DpllDivisor) % info->params.clock_speed) * 2)
>                                / info->params.clock_speed) )
>                                 Tc--;
> -               }
> -               else
> -                       Tc = -1;
> -
> +               } else {
> +                       Tc = -1;
> +               }
>
>                 /* Write 16-bit Time Constant for BRG1 */
>                 usc_OutReg( info, TC1R, Tc );
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218022758.53697-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOYUy7M0upKsknwPJOa6iYwtaqZAafrxdb4z_%3DvDmuXw%40mail.gmail.com.
