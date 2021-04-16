Return-Path: <clang-built-linux+bncBC4JBM6XX4IRB35V42BQMGQEMDGRHOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 562353621D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:10:56 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id t21-20020ab027950000b02901e849561482sf1866038uap.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 07:10:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618582255; cv=pass;
        d=google.com; s=arc-20160816;
        b=NEwY9eFXmz0rXr/hD71tvlorMteqjI/cg42H5Daq77nWduNjka51EIL6sLBrbxiCu8
         33OnJnrqhcqRZOIRUDSUG0pdr46YWBFCio7TiZ2gHmoT2YOSNnIZ37rhdQIramUPjFQH
         mDE/asQ4ICAkgN6+TR8Z2sc6jqPws38r1J0tMyuRexY0oQL8fA3KPw47oyUZySvu6bYr
         wqtajhDn8ozKOQC9lwb0P7IBCsF2JsRTuTfbWsoWrdXB/11TuEIQW0f6o/wv117POmEi
         9NrgEcFibUjFxw3rAsYyqkDE4VDZLMbAdW6bFLu87/pwhLGoc4Nhygt/DOIfQW79zPSl
         C2CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qT0CdpHNrBO2OvV0uDIIWBruase4NUJeeDxDs0b3gVM=;
        b=umkiCvIr5cHg1QQIf6obGe2OQjDWe7fAC4mjIPzzKyDlrajHKvg30HpIAPq8HhIelT
         gmvukC3oh09yXpyfyHpc4izMxAB++2NPYt925QM80GCllaOIiUH8LCwPTs/HmQke1DPb
         tCUHHL9NDtVg+pAYz0st0uAKS8h2E80WdA3d3mYoR4Im7AO+onV58ypjjZgsFrQWg0dy
         msg/4t5edQlRL8RaulInw+C03sF30WukNXp0afWSpJllxX9+8Od4MKKfDT31Tf5qWrJk
         nr/1absMiqHTPxgUBMAvCwYzoyt3bistNyc7T6qbFjD7JmiYTqk8yzwm4Qy0Yc0t2PMs
         Ciqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jJxMI97e;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qT0CdpHNrBO2OvV0uDIIWBruase4NUJeeDxDs0b3gVM=;
        b=FSwiPfbhkkjZWyJ1OreAvUp3NLaeb273//B8iHBnOANoHzEb8i5nMck07fWAETJaiq
         R81fU6BZnJVROF84nvaV4neZS9iLYyuVtw0agM+gsoQUvFfKqVKHzeQ18rT6cV7TWgWx
         4E+4oKUm0lBKe+P14YfpI25HfMvqMQxf//gRCy65sWueGKBoR5THklL6xj/nt+kKoXN8
         ykmfndivC31f+TYYZkAXl7EReEJMswiSoxIw6B6BDFc0ZVFcYzZ+bZD4kb7lxccmBsKv
         sDd4F3UxI+eaD78SuVyajIef2qczrcYnWSOPd/PApt3vciI4JnyV8ULB0Y24+yl+2Jz+
         CGZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qT0CdpHNrBO2OvV0uDIIWBruase4NUJeeDxDs0b3gVM=;
        b=IQnRbSOVAYeY8rT8gioR3O9mQPrzlzAW8CtyGFKmGqbGoDhlZCSF8qmuMi/aAaATgv
         tbQrH9QDuGXVaIOnJOWYEvGycZTq+PHMXPbpF0V4/HgXcsN0YfhF559P7j0LWAG94edz
         zp10XxSMcOUeEHAoHaVqriJK80P6a5gRsKb2J/L4R7rGzVoIqEeW1rmbXVjwMwlv/h4q
         X4jFzdIlC4yxSMfOfT5Zt7gXJ24tAtPZfJVSrW0suT0QjuFYAr4N1uDcz+zrjuuEAqvY
         XXmVcT6sQkJXvCrRXWEAXTRdpp9YX8H8Qs0hehSUgFIhc23PoVTIJ1Xz8/ccGiMCZvQh
         oeow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qrc8+u2OhpxrxOotRoKM/SM3VKGoF6mJLjIAVxXLC6wy0FaKz
	QfEf7FomsBRNukqADY9xbXo=
X-Google-Smtp-Source: ABdhPJycEXjNzpRTlkiGsQnO2EkDcnjBgM28oGd466P2c9U3clPjmddXnuRkns14DSZNINFMCEYSoQ==
X-Received: by 2002:a67:ef96:: with SMTP id r22mr6871860vsp.49.1618582255180;
        Fri, 16 Apr 2021 07:10:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:725a:: with SMTP id d26ls893015uap.5.gmail; Fri, 16 Apr
 2021 07:10:54 -0700 (PDT)
X-Received: by 2002:a9f:2371:: with SMTP id 104mr3669735uae.30.1618582254644;
        Fri, 16 Apr 2021 07:10:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618582254; cv=none;
        d=google.com; s=arc-20160816;
        b=Mxd1GEaunycGcXcdotG2BCxdOu/T2q2aiVh/F/jPY8QDMuFBb4nt/lBifHOBYRq8fC
         jACRcZdC4jkguHryuIBWqMdCKrllqTjmFDY6jxHrifuesBpV0eScYqHXBCMFrUpHbBCu
         EMAwfDmhaQSmDvNWb4HRqOJ3KQUcEGgZAlo0WIC8RQ7AweCtq6AW/QEzt5siftAp8gcU
         Zb+Q1s7DT58RZg1mu5Ad5MTsDZGub96vSQJhSUzzz6w4V3YQQg+dBUVxaSXU9H4/cepZ
         ZGzxVDyHLPkmAtOGI2BqKCMb926vCj1yvjKlGrvfv5c3WS39Dw9K5k1JmQQB2GmUHfqe
         Ej2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7rX6B7H+rQul3gQgNJmnR6pK+/RYb3ej5CGoNA9DLFE=;
        b=Ut2/pKTxbG7ivorBG9f0lijWjmr+NjjWcv8pzxgzDwxWycxQs/wUOtip1MOJPeXC6f
         DFA1XId1jN7fjcI3JxvINRFPT+EDhB6cU0VGx+5a5wyUfTZqFGQkCbYD/pSXJSYARVNY
         Em4r2Vsr5vROW/0vaAxgSzzh1mwk3uxJtme89zCOZ1xweSdDR1BI7YoCQ5Yx80EQneay
         X5xwmfdQ5QIA7nmdU3SKpsghOiY9Fx4YXurQoHgLG/t7R15xBC9hOqzgH8cTkb1t/cbI
         BOF2h9njjg0Y2zCIIKw+0xoaxP0WesUpi9qlTVaGqwWbCpSPBnplllii7F95hES1Xqy2
         yIgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jJxMI97e;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si417078vkh.0.2021.04.16.07.10.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 07:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D1E0610FC;
	Fri, 16 Apr 2021 14:10:53 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lXPBM-0006a1-UI; Fri, 16 Apr 2021 16:10:53 +0200
Date: Fri, 16 Apr 2021 16:10:52 +0200
From: Johan Hovold <johan@kernel.org>
To: dillon.minfei@gmail.com
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	lkp@intel.com, gerald.baeza@foss.st.com, erwan.leray@foss.st.com,
	linux-serial@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] serial: stm32: optimize spin lock usage
Message-ID: <YHma7H3RoLyeH650@hovoldconsulting.com>
References: <1618567841-18546-1-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1618567841-18546-1-git-send-email-dillon.minfei@gmail.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jJxMI97e;       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 06:10:41PM +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> This patch aims to fix two potential bug:
> - no lock to protect uart register in this case
> 
>   stm32_usart_threaded_interrupt()
>      spin_lock(&port->lock);
>      ...
>      stm32_usart_receive_chars()
>        uart_handle_sysrq_char();
>        sysrq_function();
>        printk();
>          stm32_usart_console_write();
>            locked = 0; //since port->sysrq is not zero,
>                          no lock to protect forward register
>                          access.
> 
> - if add spin_trylock_irqsave() to protect uart register for sysrq = 1 case,
>   that might got recursive locking under UP.
>   So, use uart_prepare_sysrq_char(), uart_unlock_and_check_sysrq()
>   move sysrq handler position to irq/thread_d handler, just record
>   sysrq_ch in stm32_usart_receive_chars() by uart_prepare_sysrq_char()
>   delay the sysrq process to next interrupt handler.
> 
>   new flow:
> 
>   stm32_usart_threaded_interrupt()/stm32_usart_interrupt()
>   spin_lock_irqsave(&port->lock);
>   ...
>   uart_unlock_and_check_sysrq();
>      spin_unlock_irqrestore();
>      handle_sysrq(sysrq_ch);
>   stm32_usart_threaded_interrupt()//stm32_usart_interrupt() return
> 
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Gerald Baeza <gerald.baeza@foss.st.com>
> Cc: Erwan Le Ray <erwan.leray@foss.st.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
> v3: add uart_prepare_sysrq_char(), uart_unlock_and_check_sysrq() to move
>     sysrq handler inside interrupt routinei to avoid recursive locking,
>     according to Johan Hovold suggestion, thanks.
> 
>  drivers/tty/serial/stm32-usart.c | 24 +++++++++++-------------
>  1 file changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> index b3675cf25a69..981f50ec784e 100644
> --- a/drivers/tty/serial/stm32-usart.c
> +++ b/drivers/tty/serial/stm32-usart.c
> @@ -271,7 +271,7 @@ static void stm32_usart_receive_chars(struct uart_port *port, bool threaded)
>  			}
>  		}
>  
> -		if (uart_handle_sysrq_char(port, c))
> +		if (uart_prepare_sysrq_char(port, c))
>  			continue;
>  		uart_insert_char(port, sr, USART_SR_ORE, c, flag);
>  	}
> @@ -457,9 +457,10 @@ static irqreturn_t stm32_usart_interrupt(int irq, void *ptr)
>  	struct uart_port *port = ptr;
>  	struct stm32_port *stm32_port = to_stm32_port(port);
>  	const struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
> +	unsigned long flags;
>  	u32 sr;
>  
> -	spin_lock(&port->lock);
> +	spin_lock_irqsave(&port->lock, flags);
>  
>  	sr = readl_relaxed(port->membase + ofs->isr);
>  
> @@ -477,7 +478,7 @@ static irqreturn_t stm32_usart_interrupt(int irq, void *ptr)
>  	if ((sr & USART_SR_TXE) && !(stm32_port->tx_ch))
>  		stm32_usart_transmit_chars(port);
>  
> -	spin_unlock(&port->lock);
> +	uart_unlock_and_check_sysrq(port, flags);
>  
>  	if (stm32_port->rx_ch)
>  		return IRQ_WAKE_THREAD;
> @@ -489,13 +490,14 @@ static irqreturn_t stm32_usart_threaded_interrupt(int irq, void *ptr)
>  {
>  	struct uart_port *port = ptr;
>  	struct stm32_port *stm32_port = to_stm32_port(port);
> +	unsigned long flags;
>  
> -	spin_lock(&port->lock);
> +	spin_lock_irqsave(&port->lock, flags);

This essentially turns the threaded handler into a non-threaded one,
which is a bad idea.

>  	if (stm32_port->rx_ch)
>  		stm32_usart_receive_chars(port, true);
>  
> -	spin_unlock(&port->lock);
> +	uart_unlock_and_check_sysrq(port, flags);
>  
>  	return IRQ_HANDLED;
>  }

You also didn't base this patch on tty-next, which has a number of
updates to this driver. Before noting that myself, I had fixed a couple
of deadlocks in this driver which turned out to have been incidentally
fixed by an unrelated path in -next.

I'll be posting a series that should fix up all of this.

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHma7H3RoLyeH650%40hovoldconsulting.com.
