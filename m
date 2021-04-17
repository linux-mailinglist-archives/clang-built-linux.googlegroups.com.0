Return-Path: <clang-built-linux+bncBDBLP5PQSQLRBUF35OBQMGQE7OCCBJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1288D363024
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 15:08:34 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id l185-20020a1f57c20000b02901d909b5e911sf3673133vkb.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 06:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618664913; cv=pass;
        d=google.com; s=arc-20160816;
        b=maraKYS6CwF+9WfgPzFzJQ/asCDrLkOq8FghUQ0cvp7EsHNWrJ1tpZ35Vv0vA9+2tm
         yHTq4mfxGrurUj9BBOi8sFR9jYuA1uE2kAzqApRUl6HETBMcoLspuHhr4PJZVixO0V14
         RlQl8d/1M8AE70/0vqpztm1Dryz42DekcV1WETTuJXC1FfkyLN+R6koqAqpQ29rjCkkN
         zStGyyCQ75WD9/G7x0/8HkQ8xxHRxnggZ+HXt1HA9tWIYJuQifpUWyhEfaN/yNkRC3nP
         dfuT5wIoD3K3f3z7e0/XUd5GJeVnUkkXdH/PPcbtpQGQ2km6f9/zX6kMWuDM22cr+p6h
         uSoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=uJwrNlfT1p1p5x7ZwMzpmwt0Md0oQc4uyxU8pLa2qGw=;
        b=yUBMllfmxz01QQeHGxKpjz3LU4N6U6NIw2rtm8Nig2ztRYyZci0Hqte91g/xF52zKV
         qmvtrEEwGvsYXmNTD7C2fKSR7XrN7wrMBSyepLDjeObK+F7RK+z68PPBQSJZdXKEhfwl
         7kUAxdxWZB7EWkole/7p8DcXNC/AI4QVAFezuuXDXGeOmXrom3giFFsE9EeG5MDarmj6
         lSs0UckUo6o/D9Eg7Kij9xXjm4jF8cO0ylOtRn2RP3bmaWMe5hEAJTwBQTO7juxDorUz
         qeXNv+GmcKVkDX8UKQYWmxxSkDUFvizgbQ01yJOXB+hG5ZMDxxJ6MIVM6wdUhuh4OP+I
         wFUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iul605Du;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJwrNlfT1p1p5x7ZwMzpmwt0Md0oQc4uyxU8pLa2qGw=;
        b=L/AhaKLqYCPRPh5kiZT4Nl57BuQ52z8wSM+m6hJ2dhMdCGLKrmi5e6R9iVvRrA82Aj
         hIV5bG8Mb7uZjprdip3IJL7KQzuKfiyLKCHAPFzuG7wvUGeaHpccDN4p7y0wW+kCfG4Q
         Me33ArmftAoBvYlACZJzE26BelObkfoYi3CqyAh6SVREyZsUM79A5YI8pgEUxZ5DbjYr
         DmkdpjF3RVkIm6zGhR+iZsYqCZAWPGcBPRPV4iaayZNJNzExXQN8lB6xbpkVSmsvd6vH
         yxWjJ3dfOV7gvf3XNyMq7UdNdTNGZb5qk5NCiOffzhJymScndQbI8cAObiXc/YSi+1Sh
         IYHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJwrNlfT1p1p5x7ZwMzpmwt0Md0oQc4uyxU8pLa2qGw=;
        b=rmdDVXn5iVyLMhnhCoX7Q+FQDHJQkpGhw2+BXxawKswRL8VLHYVkJ/4JJLA184Jwky
         e10/x1qPyi+/lTamG4mIiXyDIKQ08zw61qW7QEs/l9yd0KKdA663dBMRMffCqfKxwHxe
         k6MD+AS1V/F3CslcMmAWIBG5D7BxySw6lNVre+gAil2vVADPZ5XWLBu9+awBRuDRz6Gy
         uFyHYq3L2nwINBjgsQzM4NP0A5/9clEka3rtEgnLDGB29rcWWwCOLBrr/DJ9Eh42SC07
         XkjWIUcLCDS6TRRXJChWlqKid8ykcaqoBibmro6m1hmYCWxpJH9b6bHY3dbsf+GXyJfT
         QPsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJwrNlfT1p1p5x7ZwMzpmwt0Md0oQc4uyxU8pLa2qGw=;
        b=hGPAcusY5Lc8pOtcTyA3hGXFFDIBjT16cRtvUem01UK4p0pNLoQNsHy20Tg609aUS1
         G9yH0j77nA67fGpriS9KM6GQqiNkmjXIFBjmLugBCoLLvkIeyCKNMLUdUD+NQBC+cuv0
         JodnKWYH/xeDbj62SlksnTGRRWiWd68Up0yxpQ5YvAE6gTm6nr06uddtXkfAudd4HDXk
         p+SMFSz1182Ck+TXMkS4MohQPwwbFSyGvbES747M8HPOy99aVkzLg4xJCwcEnsNTGwZ2
         VC1VZ+oOTWoWefhxZeM6vZig3izKY6A+nqBr/Axmbw+PQoP1yjxbh7yXmSF8J8VkFhtA
         D2XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322Umx8X6vTM0fCvJrakHGXSQ7lwLvzcPHTFhc19Y9Ikq4qd78i
	oqMTD9UyZkxqeVQccNK6XyQ=
X-Google-Smtp-Source: ABdhPJxuW3JwIi10oVyeV72NKB/KBcraZivZGofikGa2Kw2u6ywzyhEl/Tdy2PB9oYfUhG+md89BUw==
X-Received: by 2002:a9f:2aca:: with SMTP id d10mr2334654uaj.35.1618664913111;
        Sat, 17 Apr 2021 06:08:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3346:: with SMTP id z67ls1764481vsz.7.gmail; Sat, 17 Apr
 2021 06:08:32 -0700 (PDT)
X-Received: by 2002:a67:f945:: with SMTP id u5mr10225261vsq.2.1618664912439;
        Sat, 17 Apr 2021 06:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618664912; cv=none;
        d=google.com; s=arc-20160816;
        b=hz6FCpELtcNJL2Iw/ATOD0JJi1kF03egQ5+cxe7wYs1VZAxO7QdWy5gl+5zKhZFo/X
         /KaKdts3eMWa2Uvm1tgff8hHEgX62/Flt1PT3EHgooB2o6BgrOyLyxKQ8OYtvKrmrnOA
         QQnpJ9QJwh2aOAA1WJ5ptpi1JjikBGS+Snz+7qYERJDHSEa+86sy9I+18u8E0CB9szuW
         xYWech4zja7C42y8FT1faUxYwX46cH/hXUPsUib2S0lGncR2Pln5PEW+sXgrvxPBmGxT
         3SG1qUiKkd6VtaD7n/SstdwSO6YRv4yrlKn+MHwnfWjX+cFY9fUVW5T/wxonRfy03ZlM
         O3Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ulpGsJT6Bh0rpZeIediYCiOUyp80TRAFcGdkV8FE+eU=;
        b=W1NW0aMBk5ACo4BbujL9jA0Y0jc4iUiRancmmfEfKVpGZHagS7tfD7WFKh6yk3KL+H
         tIF+wjh9C8FsRWSOUCZ2HqdEZtLkOBNcrLdefy+n5b5s5M18axhWoDhmt7c2+ZcIfbVR
         igp/0QPOAFonHDvgjZjbyZbVC0I4pQSFVq655FMD8vsHv35NR2RyRAhtSTtLoJUr3xnV
         E3wlaNxBZ23lKHexNsiesxJfyCiQVhUG/wO5M4ceqwD9ydqqZyvk7VrQtYPW768FMWCU
         JWaE9IPGc43eY+vV3RGNuFYtGbnvQekdjbD4qh230iPu+3hmEmldb+qh3Yg4+Hf2atu3
         HQUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iul605Du;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id x24si826611vsr.1.2021.04.17.06.08.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 06:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Received: by mail-il1-x12d.google.com with SMTP id r5so17224783ilb.2
        for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 06:08:32 -0700 (PDT)
X-Received: by 2002:a05:6e02:e0a:: with SMTP id a10mr10537215ilk.271.1618664911976;
 Sat, 17 Apr 2021 06:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <1618567841-18546-1-git-send-email-dillon.minfei@gmail.com> <YHma7H3RoLyeH650@hovoldconsulting.com>
In-Reply-To: <YHma7H3RoLyeH650@hovoldconsulting.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Sat, 17 Apr 2021 21:07:55 +0800
Message-ID: <CAL9mu0Kxny5JOGDk67ByMCVAJFOCF44rEOjbt68VxHz_2gZHrg@mail.gmail.com>
Subject: Re: [PATCH v3] serial: stm32: optimize spin lock usage
To: Johan Hovold <johan@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	kernel test robot <lkp@intel.com>, Gerald Baeza <gerald.baeza@foss.st.com>, 
	Erwan LE-RAY - foss <erwan.leray@foss.st.com>, linux-serial@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iul605Du;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12d
 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;       dmarc=pass
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

Hi Johan,

On Fri, Apr 16, 2021 at 10:10 PM Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Apr 16, 2021 at 06:10:41PM +0800, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > This patch aims to fix two potential bug:
> > - no lock to protect uart register in this case
> >
> >   stm32_usart_threaded_interrupt()
> >      spin_lock(&port->lock);
> >      ...
> >      stm32_usart_receive_chars()
> >        uart_handle_sysrq_char();
> >        sysrq_function();
> >        printk();
> >          stm32_usart_console_write();
> >            locked = 0; //since port->sysrq is not zero,
> >                          no lock to protect forward register
> >                          access.
> >
> > - if add spin_trylock_irqsave() to protect uart register for sysrq = 1 case,
> >   that might got recursive locking under UP.
> >   So, use uart_prepare_sysrq_char(), uart_unlock_and_check_sysrq()
> >   move sysrq handler position to irq/thread_d handler, just record
> >   sysrq_ch in stm32_usart_receive_chars() by uart_prepare_sysrq_char()
> >   delay the sysrq process to next interrupt handler.
> >
> >   new flow:
> >
> >   stm32_usart_threaded_interrupt()/stm32_usart_interrupt()
> >   spin_lock_irqsave(&port->lock);
> >   ...
> >   uart_unlock_and_check_sysrq();
> >      spin_unlock_irqrestore();
> >      handle_sysrq(sysrq_ch);
> >   stm32_usart_threaded_interrupt()//stm32_usart_interrupt() return
> >
> > Cc: Johan Hovold <johan@kernel.org>
> > Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: Gerald Baeza <gerald.baeza@foss.st.com>
> > Cc: Erwan Le Ray <erwan.leray@foss.st.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > ---
> > v3: add uart_prepare_sysrq_char(), uart_unlock_and_check_sysrq() to move
> >     sysrq handler inside interrupt routinei to avoid recursive locking,
> >     according to Johan Hovold suggestion, thanks.
> >
> >  drivers/tty/serial/stm32-usart.c | 24 +++++++++++-------------
> >  1 file changed, 11 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> > index b3675cf25a69..981f50ec784e 100644
> > --- a/drivers/tty/serial/stm32-usart.c
> > +++ b/drivers/tty/serial/stm32-usart.c
> > @@ -271,7 +271,7 @@ static void stm32_usart_receive_chars(struct uart_port *port, bool threaded)
> >                       }
> >               }
> >
> > -             if (uart_handle_sysrq_char(port, c))
> > +             if (uart_prepare_sysrq_char(port, c))
> >                       continue;
> >               uart_insert_char(port, sr, USART_SR_ORE, c, flag);
> >       }
> > @@ -457,9 +457,10 @@ static irqreturn_t stm32_usart_interrupt(int irq, void *ptr)
> >       struct uart_port *port = ptr;
> >       struct stm32_port *stm32_port = to_stm32_port(port);
> >       const struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
> > +     unsigned long flags;
> >       u32 sr;
> >
> > -     spin_lock(&port->lock);
> > +     spin_lock_irqsave(&port->lock, flags);
> >
> >       sr = readl_relaxed(port->membase + ofs->isr);
> >
> > @@ -477,7 +478,7 @@ static irqreturn_t stm32_usart_interrupt(int irq, void *ptr)
> >       if ((sr & USART_SR_TXE) && !(stm32_port->tx_ch))
> >               stm32_usart_transmit_chars(port);
> >
> > -     spin_unlock(&port->lock);
> > +     uart_unlock_and_check_sysrq(port, flags);
> >
> >       if (stm32_port->rx_ch)
> >               return IRQ_WAKE_THREAD;
> > @@ -489,13 +490,14 @@ static irqreturn_t stm32_usart_threaded_interrupt(int irq, void *ptr)
> >  {
> >       struct uart_port *port = ptr;
> >       struct stm32_port *stm32_port = to_stm32_port(port);
> > +     unsigned long flags;
> >
> > -     spin_lock(&port->lock);
> > +     spin_lock_irqsave(&port->lock, flags);
>
> This essentially turns the threaded handler into a non-threaded one,
> which is a bad idea.
This change is only to adapt for uart_unlock_and_check_sysrq() need flags.
Found your patch has removed this parameter from
uart_unlock_and_check_sysrq(), so this changes should be removed.

>
> >       if (stm32_port->rx_ch)
> >               stm32_usart_receive_chars(port, true);
> >
> > -     spin_unlock(&port->lock);
> > +     uart_unlock_and_check_sysrq(port, flags);
> >
> >       return IRQ_HANDLED;
> >  }
>
> You also didn't base this patch on tty-next, which has a number of
> updates to this driver. Before noting that myself, I had fixed a couple
> of deadlocks in this driver which turned out to have been incidentally
> fixed by an unrelated path in -next.
Yes, my submission is based on linux-5.12. based on the component's
next branch is a good idea , to avoid conflict. thanks.
>
> I'll be posting a series that should fix up all of this.
Thanks
>
> Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL9mu0Kxny5JOGDk67ByMCVAJFOCF44rEOjbt68VxHz_2gZHrg%40mail.gmail.com.
