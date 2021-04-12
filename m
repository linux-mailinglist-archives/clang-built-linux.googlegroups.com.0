Return-Path: <clang-built-linux+bncBC4JBM6XX4IRBRMM2GBQMGQE4SOUAUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 221E535C704
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 15:08:23 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id t1sf4000725pfg.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 06:08:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618232901; cv=pass;
        d=google.com; s=arc-20160816;
        b=kivv2BiXdhIXnHEvnNG7Vw/BrhtxOu1CrQ7F3SP+qUdn7v9Y35L5YIIHL934egyHry
         lpvQVgYU9cgpoZYPj0A2TIfAIl7/gWFTIgazU5xTXlCtv4cCFCMkncqT31U2rBpyGFOT
         LpK2km3DNgGaTez6RkyKlB+zOWWBfH1g2EIC/Qcx00519aZSi5otizIH1BoTlSK6e7eR
         2EcJG6rr7pNE7F1BJj0Kc3WtO3KTWc0G/JaGU1Yt25x2tHt/vQjLHzcw7pLEr2/PLvHG
         tVi+cJNTW5lDO/yYl5ff+7v6NnJNfbiNtpACYiu0t40jMw97xdi79kRjsCZh1t2hHDs8
         waHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/bdSI8GCrtK3Qug+su0sO4IcVq5rU5rjSYfBVkdZPlk=;
        b=Wnmt4tgSTeA+/LYZTIpc4abqOeeqmo9oGL7C7XFHCfKsb7cGpmJ6JWFOFkobJrABM7
         38Qz69l+vtBHIM5dKl4E4S3SbvzCOB1XB+ePNjzuhoAP2jUO6n55dFEMJROjoeealv91
         R5U9J6USby84UjZZ2ylihyKaBm0Pnsd/xmm025XYsYvsNgRwpmHemZQuTVUZtFtzi+S1
         SHHtArAqPS9LyWsZKok0SlvETmcbNfLKcihcXl2tC9YLcx+bHqzXTY6CI9dxVWF0v9Ja
         Q4k1qk+2MSUbPu9XSuMCo42UDhyF27qjxgCCVGMP/tCNJjmrP4wqc6sembfZcD1Rpqcs
         9OEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SbwiRoVs;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/bdSI8GCrtK3Qug+su0sO4IcVq5rU5rjSYfBVkdZPlk=;
        b=eyk9HmUdXvNxPisoT6XEJCVOAItMdHSF5sVSwvJNCvo7MZbeeImtOxomBKJZqcvFTG
         GPQ2jq+olZrTXQkAjaYgbtIqWzZ3gknq/dmOZrvqh6HLegoVHSCv8O8T6VNewPn0JeQu
         hwkV/mCcvKRA8D9i9nZks7avji0zsYKEZ3Sb8/h7IWSpVbmgqy0e3reDWLFtaGFv2cNw
         DHn7JXQMi8K1EevRNpyteD7KanQ+mxTKOJbxJdWMVPyJKE8IY18LHd3LS8aJDIuC7vY5
         kXQWvQUD6C2BOmC1BaxxIYKPdxb+NLQ0SIyyZdL7RpPov3XGxExXNHyJ4D9Gtrdj8oLa
         sxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/bdSI8GCrtK3Qug+su0sO4IcVq5rU5rjSYfBVkdZPlk=;
        b=ZhLz8bbDOBg/c9eM8snxOa0pjAnvZLb2Ojs8QP/5x790J+q9uJgseCRkD4o15VOO2a
         phIuBUzSCOy3wbQdxdZJjy38VnfYBQdHCNOcNpSIRzt7H5FM1cScyDMAUmg5jCBliw4a
         W8lP+Xd3o1lRhe2qttA7p7Edjer1M5YYG0rFHSeihEYFlnr3ME+BSEgYJ00OXPoZYD5f
         0amy2tU81Z2Ae21NZbtLmlFwBNrGKM5p6FA7c2iC7JpFJwrCh08dzer0pedsaTUPCNYY
         Y/oVPvH/l8ycz9L0ORmVS6czTXGZSzZSBZCW2/RM4/xsuZAlAN8x4/m1ME/EOy2jgQGo
         5RKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TYGIJN49VvlD0nNhQCrd1xhNzDZdDVpJSXxq06IL4FhMnGoLS
	ggx7hIJ/+qY2GLJI6fva/h0=
X-Google-Smtp-Source: ABdhPJwaQwqixV9AZJhC96g8zFNE+GFQrNQ6SKScyAdFtQNj49FmlC7mbC+BccaD8IwJoH39swtBwg==
X-Received: by 2002:a17:90a:2e86:: with SMTP id r6mr28430166pjd.106.1618232901336;
        Mon, 12 Apr 2021 06:08:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls9682674pjq.3.gmail; Mon, 12
 Apr 2021 06:08:20 -0700 (PDT)
X-Received: by 2002:a17:902:c183:b029:ea:c15a:c6e9 with SMTP id d3-20020a170902c183b02900eac15ac6e9mr11911382pld.14.1618232900778;
        Mon, 12 Apr 2021 06:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618232900; cv=none;
        d=google.com; s=arc-20160816;
        b=atrO70+6y87+yB7PeYJYUdoTYFVyhyh24QMdCaWbtNiOJGZtDcWbSQrY7o5/IvGu0O
         5RKZiCTUtfdU63VwQb3wIizgRblbipngUcU1jIh8XOeGpexDQL043S3IErq89J6rnFro
         +8hjigTc4AyXaEZv+X5lMnRt8e19jtXVL65RXFhdVWIeam3zF6dcWjUujXYi2awKim3a
         9zSymL4SZ7QC9OevN64klE8fczwJkaLkBPLGi33u3yF+psQwrh9M7r6XHo8H86DloQMk
         rTrC5h3ol6V4DoNmiZyGee0/Attmnn6i8F3agXgmL75LNlU4B1XSvDpC2ucBHJTdmbIH
         WUJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7X4FSGMtSEIiVTP18iylk7+x5nrN8Lhpzt2K9pgP+yg=;
        b=aBh/BgBVgtKUWezdRVOCinHsqeldXfcJvzShX0rIYree+AYbOUXTz9ItXjPMHCeJ2S
         xNH9Mu6LNyVLL2REHerVz7X5RqcnKrz22MoGwVzzpPdimDVUCrB7zmK95KL7nN+EmcHN
         0HWYmIJIbwl12yVnYfcEDeLczQG1X7Bnx8WIfwXX996Q0pXauWCpBj2KTzRgtTgowsOy
         UWUMtoAX2qrNGASqtN5MeyA2XPylvpb/qyvYNshcf00YuCRznvt00e6lbvuIvg1LGdIj
         lXh87rwtmpweaODWQcF6Znucxu4PLklWryV6LNqKLrbvhMBYglJysNfMcsRfMoKIGd60
         2smA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SbwiRoVs;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e15si664212pjm.3.2021.04.12.06.08.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 06:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A16F6128A;
	Mon, 12 Apr 2021 13:08:20 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lVwIY-00028W-Bh; Mon, 12 Apr 2021 15:08:14 +0200
Date: Mon, 12 Apr 2021 15:08:14 +0200
From: Johan Hovold <johan@kernel.org>
To: dillon.minfei@gmail.com
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	lkp@intel.com, linux-serial@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Gerald Baeza <gerald.baeza@foss.st.com>,
	Erwan Le Ray <erwan.leray@foss.st.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
Message-ID: <YHRGPpQ03XgBMkiy@hovoldconsulting.com>
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SbwiRoVs;       spf=pass
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

On Mon, Apr 12, 2021 at 05:31:38PM +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> To avoid potential deadlock in spin_lock usage, use spin_lock_irqsave,
> spin_trylock_irqsave(), spin_unlock_irqrestore() in process context.

This doesn't make much sense as console_write can be called in any
context. And where's the deadlock you claim to be fixing here?
 
> remove unused local_irq_save/restore call.
> 
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Gerald Baeza <gerald.baeza@foss.st.com>
> Cc: Erwan Le Ray <erwan.leray@foss.st.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
> v2: remove unused code from stm32_usart_threaded_interrupt() according from
>     Greg's review.
> 
>  drivers/tty/serial/stm32-usart.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> index b3675cf25a69..b1ba5e36e36e 100644
> --- a/drivers/tty/serial/stm32-usart.c
> +++ b/drivers/tty/serial/stm32-usart.c
> @@ -1354,13 +1354,12 @@ static void stm32_usart_console_write(struct console *co, const char *s,
>  	u32 old_cr1, new_cr1;
>  	int locked = 1;
>  
> -	local_irq_save(flags);
>  	if (port->sysrq)
>  		locked = 0;
>  	else if (oops_in_progress)
> -		locked = spin_trylock(&port->lock);
> +		locked = spin_trylock_irqsave(&port->lock, flags);
>  	else
> -		spin_lock(&port->lock);
> +		spin_lock_irqsave(&port->lock, flags);
>  
>  	/* Save and disable interrupts, enable the transmitter */
>  	old_cr1 = readl_relaxed(port->membase + ofs->cr1);
> @@ -1374,8 +1373,7 @@ static void stm32_usart_console_write(struct console *co, const char *s,
>  	writel_relaxed(old_cr1, port->membase + ofs->cr1);
>  
>  	if (locked)
> -		spin_unlock(&port->lock);
> -	local_irq_restore(flags);
> +		spin_unlock_irqrestore(&port->lock, flags);
>  }
>  
>  static int stm32_usart_console_setup(struct console *co, char *options)

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHRGPpQ03XgBMkiy%40hovoldconsulting.com.
