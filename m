Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKFOSP2AKGQE374UHDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B8919B506
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 20:02:17 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 6sf908100ybp.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 11:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585764136; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vk+fROmrePhJgOjWkyC9iOuoxbdbElgjQbcalj3LyrwSC4svUov/DCMoeHpYfIvmH4
         FDKm+5PybYCSlzxWGNjYVc9OXtXC/CSjdOh2nUo5JSJ6PdDQ8YdazH7TB5LA5Rog5QVv
         e5lOERZg5t4Io+uA8YNZChtIKkyK9HGUgmbcGBhBkylhqquwH+9p/wIRELcxTL4s0+rh
         CvhW61ngTitpdJ1O57kbsbxEFei9GXkNEl0VmNEIxseI7mhYzohqXOkRqhirixk3x3Ia
         PNuIMFxAvvPU+V/E4RFNZze0P+Z8c0pz0Tsio3ugi4ZgkBanFg0sKgAiXb1xj/GMx4CD
         89XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2NStRZGpGXnqOCtO84f78eYnVzQOXPTdvkuRyjTBs9A=;
        b=MczlDZFQbsW05Zd6d8IeJhAHqJmTamJpc4aukhNyUc7O0Jp1tOnMebj6fxK052fpEs
         7gHYdS9RStXwuziwqXaBN71e8nJMj85jTvYSOHJDay30y0c4EaoXN7rYrJbePzULaaGR
         bCjTo9zTwxsKlkF6Lo9SE92bLzQtZvUE3g0V9plFy7CtN/tROFLXU0/abgXeF4KhYhsI
         XsYntNV/p809OoyamrVc7zUefGn59VcPp69JbP8IMd7GUP2H/7I/CxgSDGkxonY9Di3+
         JPmInu4xTecMuW7jtcCj/pAPT3KrHxdDys/92IpW7JPsXM8diRJ8T1WPgYifiHuB15BZ
         +eQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GsmNqDfW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NStRZGpGXnqOCtO84f78eYnVzQOXPTdvkuRyjTBs9A=;
        b=bgXQyol9vM3PlMP0jCB24KAGR9mCp9z/HeEEijYyJ1AxZm/InExRTTlL/I4VT75Ef8
         sNdJJuS+mtfhj1GLde0wGGKcS0qFcq2HLaMg8qyHW2R3eSXPjg7yG+6J4tEmbWVUleua
         zr/yWbCH4LSpKr0tBL+Hw4gYX2RHsuTUkwQtT8V/fXFqjlnrgaaYJnLNqZ7ZFBRXxRLx
         znmf5k80T+3VHuA1+rLmCi17yF7Q+nFN09SZJPkyHzX8/SXrfvk3f7XmFryStw+/EwKM
         LIO3COeaPEwxQ8NyE16ANKW1pe+chHGrQB6F+iYQIL2G0dghtJrG7gbb+EIyt7qac1QP
         uCQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NStRZGpGXnqOCtO84f78eYnVzQOXPTdvkuRyjTBs9A=;
        b=QJElSufXPbT4SsFu/2gIt+TbqB3TKFuHCTFjlJhASSTqRaX2ybz2OArx++wjJuttFc
         ggiDMRSbZ/1GKDWM810GsaAQ1vBlJKN/3Qfsz/UbicgHwCbkKi9LW98iVK2WKtJNNvh6
         loSzQm7WI6sMt/hb0NZpopC5Bh0mcuFcVlvMSmeBl4rhOw11UK4jL55v2SSetNqKXIA2
         T+jL8SMp4iFEPIZNtb40UDbMe2f5Kj0nq6fHp80MfMMkJOUpnpludYLCrwkNcX05wsUv
         JcYSIdfxZ9C46dINUXI/YRF4P/vXXPO5aZU3oDR4GELRfOanwoxCY1x7JVw9ZHTM5FaS
         +zOA==
X-Gm-Message-State: ANhLgQ1ClRueWqngXl6hzztG23qaiHRKhkGDJ/kXo/WWaixjxal+Mhso
	G9aDm02THgFQnr2fTAkltY8=
X-Google-Smtp-Source: ADFU+vvZwsQuw3J3UGM6sLRwc4Jn7aCUlV+7Ru7+3scDCnRnM+ZNmfffwJq9uPOgjMXqkfUMZEkjjQ==
X-Received: by 2002:a25:3d86:: with SMTP id k128mr39240087yba.256.1585764136275;
        Wed, 01 Apr 2020 11:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e00d:: with SMTP id x13ls97158ybg.7.gmail; Wed, 01 Apr
 2020 11:02:15 -0700 (PDT)
X-Received: by 2002:a25:6a8a:: with SMTP id f132mr20369002ybc.322.1585764135884;
        Wed, 01 Apr 2020 11:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585764135; cv=none;
        d=google.com; s=arc-20160816;
        b=PkufWjlYzOyTpmyA+ZYd5eTIl9Rn76Krl82kqUElpB+ACyV1c3tvsGw6l/6W2Nc3ps
         1hRJ7kYQconob81vadomomDEp+32Zf2PDOHln3dq5bmnpyaVcXC6ihtGkeT/yANKUpA/
         PfM//xlAdVkS/opAh/dlV9uUkPJLuQtQCFw+GIjyZGBthjCAvcvRrKboDIcl41JpT0Z4
         3Zu3CmqEnyFchgL48XJjsLAWs83rhHQERuOcQHhs0J/4weIO6i/UcBHwRG2XCr0KN11u
         tupA/+Od4rxZV23MWcXV7V+uZtXM5zU5ijOZTxvz90eqs1yCtWNyobM5Z82t1wSs6l8s
         e7SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nN3zsE+FK4cNT3gjBDZd4jgl2nFuBzMDukGWMo8ib/8=;
        b=TURg9XhdfWtS6p1v1M/ESdDu5lIZOlUznOw90tKgELOR+IlAe3VhYL6yoNty5nY8vb
         ts9HayUMVFNvLsJuoJ22eCod+usuN2XNtOMfolm9oeUnPD+eLjwnCQKSqOCDDChVuUBS
         8DxlyfTymshRFe/hLG0rvlyi5X1OQW78maD5e6Bb8V1G3YwHNvdgIyl/nqEMQjliz5Po
         Kdl6GEVW3SwY3ierhHVwhwNyFBkqhoNSgPl4R+1yN1X+niDZXiL8N9YGJcMKQJhdx0rr
         PL8SSSLSu3qf8+8PhTBNLSQbjKmQ3C65jgcsfzTdisFR8JOBjT3fzVVnuA1ykMRzPefS
         H5CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GsmNqDfW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d72si197058ybh.5.2020.04.01.11.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 23so372297pfj.1
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 11:02:15 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr24113583pfk.108.1585764134729;
 Wed, 01 Apr 2020 11:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
In-Reply-To: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Apr 2020 11:02:03 -0700
Message-ID: <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Stefan Agner <stefan@agner.ch>
Cc: tony@atomide.com, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-omap@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GsmNqDfW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Sun, Mar 29, 2020 at 1:33 PM Stefan Agner <stefan@agner.ch> wrote:
>
> The adrl instruction has been introduced with commit dd31394779aa ("ARM:
> omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
> file was considerably longer. Today adr seems to have enough reach, even
> when inserting about 60 instructions between the use site and the label.
> Replace adrl with conventional adr instruction.
>
> This allows to build this file using Clang's integrated assembler (which
> does not support the adrl pseudo instruction).

Context: https://github.com/ClangBuiltLinux/linux/issues/430#issuecomment-476124724
If Peter says it's difficult to implement, I trust him.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/430
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/mach-omap2/sleep34xx.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
> index ac1324c6453b..c4e97d35c310 100644
> --- a/arch/arm/mach-omap2/sleep34xx.S
> +++ b/arch/arm/mach-omap2/sleep34xx.S
> @@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
>         stmfd   sp!, {lr}       @ save registers on stack
>         /* Setup so that we will disable and enable l2 */
>         mov     r1, #0x1
> -       adrl    r3, l2dis_3630_offset   @ may be too distant for plain adr
> +       adr     r3, l2dis_3630_offset
>         ldr     r2, [r3]                @ value for offset
>         str     r1, [r2, r3]            @ write to l2dis_3630
>         ldmfd   sp!, {pc}       @ restore regs and return
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan%40agner.ch.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkyOW6RXTOCt1xMp2H%2BuH28ofByQOjyx776t8RDxTED2w%40mail.gmail.com.
