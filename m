Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRNRXP6QKGQEYLQYQBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 055092B243A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:04:39 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id f19sf6917228pgm.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:04:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605294277; cv=pass;
        d=google.com; s=arc-20160816;
        b=bXQxoslztri9Fh0qNi6uuNlHOmjOVz7xi/bcE3N1B3efuscJ4DMGxKHmVjI+2talMe
         Yh1NFJVFkb8/iIzWYVdaX2c3wDudmtlTFtv3NgE1jD29Pq6HxyukFR4WUY3GSyDXEzyj
         0QryqOjADW1vcB2jqo65sTHVFAZ/AkKtJLTQEBxLMeQSk/Ay8Es6SJgqH7IOxz8KAgQi
         Ls1kPAZmYonlUJly1FEhq5gWHuq4dcp0qgNr2laIx7ZwjbsU/5MKZHDKOsbuO/XU+/lj
         Z3SaEdqvLtB8sRX63KizZTJNmRcdtXMFrrxUPs8RBYtHfuO8KYi+iFIo3maSSotzIx2g
         R7FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vGRX076Rdxct7UHGZ7HZfvSrDzfdUFGAn9BSWwVQnOE=;
        b=IvF1DjGKK1PnoHpdvC1of6RsssRvynsJH3vDSI8s0Q4wkBSfh3GtiAR1yYblsSMWX3
         ad8Vs8+b5Nmm7+jo8va208s5gDRtXMVoZf04bTP5arVdgZL4BmbUOuCVYV4W4ubfVB+e
         3/qbcEnt1IUc5mD/5ziUnVDqgKHHd1Xtfg8j0JnedbZQAQXVowYVuBzzKb09zEVjruHB
         lfDf/L4lk6G91HbMHNwjLOv8WgWMnsA7KM6o8x82cvPC0Dsa1lTObzJg5EE2a7ktDYXC
         c+Epe451Mmo4/ZJuEBm1QAurCI6WuWjce30xMrMj1fCufcjUekCcGPxUFjdhVajjzwEr
         Ypuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NqKLq2Sp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGRX076Rdxct7UHGZ7HZfvSrDzfdUFGAn9BSWwVQnOE=;
        b=AZ90RFFCoAL35sfLXfTVaNj5gvmhbzwWylZ5It/8DNFjWDE6pFW9BvPb/7N8lXh7lu
         TyOGP/OI1egpeZqhyQ4smIZxSLKPMefXiMlqplEP9sdE/ZSH22F505c08bVc/q0eeZ3R
         PsZ6VOkbhhp+WMxwSYrFVjq9RCBy7Sw0g8ObCwCIB2T2InDdOuoVj5Op0NDxRvwep2ap
         YWfDCK4D1V/QRBYc9n4DBbqhMGymQpHUSWH4RyaqF1YSOXvKpYuazIjS5FQaY+jbTvKl
         7OPyA86mboDQeVShBvWRW7IBx44+xDIJmPD7qPBb/uRRwnus6q8uMxKRl3kMCTzJ41UG
         t8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGRX076Rdxct7UHGZ7HZfvSrDzfdUFGAn9BSWwVQnOE=;
        b=tyx5jIK3kHlPtHkeLC42f95SVPirEAXCRFjMnebQ2XE1EEMpfd4nPNyDNJopsS/HYu
         5QaaH6xD0R5WHFKoWjrN2064h6UH9VRZjiJkMK6RqkDeQJXZvT6lcoNE3AQq106VtS29
         MSvYYS2y1nrX8Th/I5NQK243TlcExJ3iGp240YqNZ9VvJhus4+/ct5FYn+lLb3eAzMf0
         IMgk2Wmt8uEdP+WiyJnoiqLaQX1uiKL3QxQUHY+cgH1L6kQR0oCI8vCTAPuT+v4o0YCJ
         v2pMv5TEVa+EQbFXLvnVA75rm6xDKkshVyIyb0CxcDfm1oRvwatouj8/wZ1FoDGgE2eJ
         8IsQ==
X-Gm-Message-State: AOAM531ceXAoqcJiwFSS29Ix570tmbhuYnb7cyCrrAqF0gc996mzLKqF
	Diu8TajIV59OpV8UlsCCL1w=
X-Google-Smtp-Source: ABdhPJzUudz2qu0l3j550EO0vheMPbB8q+PQ2ThvWne0DzedSMoZbAlVFvV6pnKv0G92s2wcRzXrSw==
X-Received: by 2002:a62:2e47:0:b029:155:853a:80d5 with SMTP id u68-20020a622e470000b0290155853a80d5mr3113784pfu.29.1605294277724;
        Fri, 13 Nov 2020 11:04:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls2554028pfd.5.gmail; Fri, 13 Nov
 2020 11:04:37 -0800 (PST)
X-Received: by 2002:a63:1122:: with SMTP id g34mr3167916pgl.437.1605294277068;
        Fri, 13 Nov 2020 11:04:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605294277; cv=none;
        d=google.com; s=arc-20160816;
        b=XFWeSSvFTiqrE/M2PvYz1a5VXlw4tNE5UP8F/rJduQxqQkSKs2MxGBg7oX0jsjYKoY
         5t8vy3Ln5k6lNMSUBxSfg+8Vp9ruIOHudvRklcvJg1m87cok8opNBLu5YNBWIiPlLgDa
         RlulM6gY2nF5jDLCYFSD7xDsEgzu3a4PD4PTRYjICtz3sLv6X2LNjo0EAwvrWlczDhyx
         dCEZN9ht3aHW3DZDTJEgjpY1y1SlfJk3qReaIEf2T6N1++VbRHFWwpAOKhwrBJzJkXpb
         EwoKTaitDDhpawsSdzKDk+6xTBl2EzsLsZwqRnPWxkh7m9FtMp7FKy9/sol0m72tKTnd
         SWyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cjZ7lSL5HQJ+/VZnSQxT1XKXLJonz/vZukEa9Zf04Lw=;
        b=cgwEy0wmj4akWujtBvPVTdFU1bYYnoceUpOGDo4glsn1IUzy5ts5ZZnO3qS/dwcroO
         4/+VcUjO3Q7GEG7a3U98sPYNyI6tgSSzxKZIIP5vDEawUbNPxsXn7VAcI7mu+WmCmy8o
         y3/WLm9+KJmTE/Ln+H+WC0K0rdp03mtrvhjhZHgprJf9u3h6V9gi+GnqK4KrMryjRnKa
         yt+W4oSBv9BhQNNI2pSUtKXI4ngmuFsGPWKlX2oaUSXuKmIXOlDlpDQIcMPGEv9//bPd
         8hiTEAoO1g4WDFRiORFgkpEVPWMCUf6kWmg61nlwLDw4ZEoUZNi98PuFgKir87n8msLF
         LAqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NqKLq2Sp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id bi5si579556plb.2.2020.11.13.11.04.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:04:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id y22so4987173plr.6
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:04:37 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr3253781pll.56.1605294276571; Fri, 13
 Nov 2020 11:04:36 -0800 (PST)
MIME-Version: 1.0
References: <86zh3lso26.fsf@emacs.strotmann.de>
In-Reply-To: <86zh3lso26.fsf@emacs.strotmann.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 11:04:25 -0800
Message-ID: <CAKwvOd=ufNipsc3Ocs9LQ5dOXmPO3jThNtXfFH-_pc_9QG4CPA@mail.gmail.com>
Subject: Re: LLVM m68k Linux Kernel talk
To: Carsten Strotmann <cas@strotmann.de>
Cc: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NqKLq2Sp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

+ clang-built-linux

On Thu, Nov 12, 2020 at 11:39 PM Carsten Strotmann <cas@strotmann.de> wrote:
>
> Hi Nick,
>
> Adrian told me that you would be interested to talk about the LLVM
> Linux
> Kernel project, esp. on building the m68k Linux kernel with LLVM.
>
> Thank you very much.
>
> Our next evening chat with talks will be either on Friday 11th or
> Friday
> 18th of December. We usually start at 18:00 UTC (19:00 CET).

10am pacific for me, yeah either should work for me.

>
> If you can make it to either of these dates, please let me know
> and I
> will reserve the date and the slot for you.

A calendar invite is the easiest way for me not to forget.

>
> Greetings and have a good weekend
>
> Carsten Strotmann
> http://m68k.info



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DufNipsc3Ocs9LQ5dOXmPO3jThNtXfFH-_pc_9QG4CPA%40mail.gmail.com.
