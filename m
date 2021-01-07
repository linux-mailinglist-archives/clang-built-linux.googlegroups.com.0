Return-Path: <clang-built-linux+bncBD3PNDEXYYLBBUXM3P7QKGQEKLMOLEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F682ECF21
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:53:55 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id l5sf751172wmi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:53:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020434; cv=pass;
        d=google.com; s=arc-20160816;
        b=zoyHSMSZtjAdkEhQqh5aWK0rcoYBmMzT3rwWPjUv5JKwFkOYgxkGV1jsnE3SzNzFBq
         jYCQj/Qmv5kvNulHFDN1uE1VzJakmJXxQxhuyf7zJg56xnWXFhrMZdrIZjhDpHNV98Gk
         QpARB8RVpdB4269aEF5lY0zMYfp7zTwD2uWOQqvPCoe8YV7XUixPpnKpe0avQqrnit6I
         D4E3+Hh9qE6lcbYVpitP/W1l10lfLy9jlo28pFQc5KdSR6TWqfrq9zXFpRmt9nPgL+pc
         6y2epDEEH0/xxvj0DPQTIJh0DRTnLHbC2XSBqxvsYCAuvS8GCN+EvtbPK2YNWvZPfxRs
         fe8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/u/zHj8o4GALTFDIoLdq3ubVagg8+CNmu8oda+9Wt9w=;
        b=KGJihbHbTeHjF3VMN7H2UNgchKy9IyNo9dZWELOSm2AeaiX1hGIFoMW9pAQHoqkzQA
         Y9sNYb9whbGS9W18rES1dBlAf+e8RXG2pIR9sIlCJAgas0A5RFWzQucRefDaKWc6ApfZ
         Z2ZZOtto2Z56lAFPTO+rcgS6fwbaFuf9/naXM4nFkgrL5nWUY2oHFhN/H/XADKgL08/R
         Er2ZnIVV4NJMdoms3jSFsC1A3lDlEet0Q1i0T4DiS3kqFRESylu33NXZpbTt7nmzxZd4
         Be5oZq1KVAUpREor32XgxGFohD9tftCNn8ZBn08pA6YGwr1/92BjRtJRPtaujSPjhLGc
         QpQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bk5+OqxV;
       spf=pass (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/u/zHj8o4GALTFDIoLdq3ubVagg8+CNmu8oda+9Wt9w=;
        b=hS7DldlBgm9t2z+znSjG2dG0FPGFL5ijqTCYHHzGGVXydQ7GGuJj2sdYiIaeLnZBxT
         b/pktbaHUpt21anbdMgqWGrD+YmHsJ91NBI0XTCEkK300FqvDIMdCzBTfGQ17HvtV9pn
         EdDjN718H134kHBsQn7M+eQYRnGL4L+9GqWZwgD3KlayH3B2+a5O+QZ8Qv9iGZOG+SDa
         LhuIFPYtINruhnw6WlAwpiJ6uncQuWwBGCXW5w0ZLEa8Hf9njbfXzoD7JgxaydG6IZIi
         dyJ7jzL1bm7k6Q4aLEihZtghabuzNj7ZjG5aVOpY5GIFNLxl6C1GYiWf7WkGuhl4ANfy
         Cxig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/u/zHj8o4GALTFDIoLdq3ubVagg8+CNmu8oda+9Wt9w=;
        b=Bc4SktCzd1SpeB10o4W6dwsOgjPFA9GN9wPsQqsujZBInOIoTyYb3XYS6TmOXQXOVg
         odfd/YOWD9g0s7wNUBME+21Vkt1w5dUqQ4Q8xWwvHDovISFaCWsOhkyCeFKIo4WAUxA9
         GeRykZ7E9WGjj+SvukWesTj40UMohYZiCc6KWvtzD56J4FUPMShcy8O1B8JPDgRl1T+i
         gKp+Mwl4cmFJPgpWTlltMcrHchsYtztwmobp4gV2aD8Vnj4sx/etiqdgEIFm5mj9rN9x
         /3konixWcb87H34+O+/1+Jad3uUw7iZG6N2NsuxKNLds+QUHmwbvGyOePbW0Yf6KJhMg
         p9Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/u/zHj8o4GALTFDIoLdq3ubVagg8+CNmu8oda+9Wt9w=;
        b=uUMSikNUIdJ5PowHCn62+hhVZjU+8+SIcn6vfVYE8LNtwjgjFJoyvFs7pEvacg14ib
         /cKsLa9jyh6Sxoc+92H7I21/1I4KIm+IKMfgq4JteA194Crae1ZRwdcgPjX2A82V+Ds2
         9yjr3Ac4xzW1sOuXHMr4s6KWeu3dXMQELvxhsVT5W2zYd6kIBEDL6YkHwkM20Pj3ViJV
         8w9UgQd305L8/kSojaJwe6U9lVC1kYIY17ycVbG6rr0r8MRTqNn+kZuSrw0A5eJubs7o
         mOWordwlJkNlty7CTL4CYFFRGseBTOUhFgvnMs+2sywS93msafRXwtKUGPWhZ6Y0lm7I
         Rymg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302EqjNq/FwwqjUUfp9QgvSqthy8d3yPFwgPsRLbo5oBrABCD9M
	X5uDsnCskrg1ysdk66YgBqk=
X-Google-Smtp-Source: ABdhPJyET26YAhazgqn6soCvSd0L6wMnYfkzejKPshgozfftYF4vVXukD3EFESbDwA0E6Py7LvdJmg==
X-Received: by 2002:a1c:2155:: with SMTP id h82mr7606719wmh.132.1610020434784;
        Thu, 07 Jan 2021 03:53:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:b688:: with SMTP id g130ls2932759wmf.3.canary-gmail;
 Thu, 07 Jan 2021 03:53:54 -0800 (PST)
X-Received: by 2002:a1c:1d85:: with SMTP id d127mr7934635wmd.49.1610020434024;
        Thu, 07 Jan 2021 03:53:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020434; cv=none;
        d=google.com; s=arc-20160816;
        b=uvWxWCBIYAbXRr+G83sm5Yj/6kXS9cnik7fda8qRy5DR+G6FEF9+0YxCWIi7Vuv/Yc
         QJYngMPNs1eDtS89fbZxzeD6aKkdTJfTs4Z6cBlYmOcPfqD4EalzEOTecqtnFBm5NE8r
         UHb2e+kELjyHLaZq2wu/VbQ7iOwdQlw9Y50RKzA4SoHDLm7FvOTjl7J5MgHbFerpXAB4
         gieJtQk+vuucKCn+TbtERqGf+zKcJOh0DTX+cWJJ8e1ujDwsyb6gcpjWth91QqtmKsev
         4uSL5nnozykfWETAz82Ad3Czf9Lj7ejOBS5ZS8ShkwfM+nWw/NzMeHPXS54BPN2NOe+j
         jfOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=rsynHIghsKQJZD4h8BVfrHuvAqsY9Wy0HaJluKpfM9g=;
        b=XgKmd2t3mcSt+WSWgcH7NpWld/0YVIDAeYLL0onQZDWmM1tuxIQbCALw1WBmK4eYPe
         ZidmjXgj1DLp8r9de2g0XeWDExUp2OIG30xFlQ4avfDvj06Y+RGpgEcTkTHmVN4GTRz2
         CwzHOaP93lk4kqqqTI4R2u06It6Ve/sQOto3meSpxvgKGFK89sImLPaGZDQSEutui7hA
         xvqr8ddRJqbtxnDoxkuQ3sQsmVvQNcWZ9HHeKrmmK5OohJzGu+5LNDPhhmrdY/MS6o0z
         QHQsDajBcKY71rClTUrJzpWiZY7V8mOE81yQbkk/aQrG5CrDyOV65Bd/uTMTi8aMCsAg
         u/CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bk5+OqxV;
       spf=pass (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id x12si367274wmk.1.2021.01.07.03.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 03:53:54 -0800 (PST)
Received-SPF: pass (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Received: by mail-ej1-x632.google.com with SMTP id t16so9198418ejf.13
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 03:53:54 -0800 (PST)
X-Received: by 2002:a17:906:52d9:: with SMTP id w25mr5874188ejn.504.1610020433833;
 Thu, 07 Jan 2021 03:53:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:f858:0:0:0:0 with HTTP; Thu, 7 Jan 2021 03:53:52
 -0800 (PST)
In-Reply-To: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
References: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
From: haidong yao <yaohaidong369@gmail.com>
Date: Thu, 7 Jan 2021 19:53:52 +0800
Message-ID: <CA+kUaCeebDNXi12-nNpw4i_auZbM+JQUC5uNhEzXxqa7=W4LnQ@mail.gmail.com>
Subject: Re: [PATCH] add chan->cl check in mbox_chan_received_data()
To: jassisinghbrar@gmail.com, natechancellor@gmail.com, 
	ndesaulniers@google.com, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, orsonzhai@gmail.com
Cc: zhang.lyra@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yaohaidong369@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bk5+OqxV;       spf=pass
 (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::632
 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;       dmarc=pass
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

Hi Jassi Brar

Thank you very much for your reply.

Look at the function sprd_mbox_outbox_isr .

Chan is !NULL.

chan->cl is NULL when the client driver not loaded, the controller
driver don't know the client driver loaded successfully, so, I do not
use mbox_free_channel.

Here,How do you know chan->cl is ok?

chan = &priv->chan[id];
mbox_chan_received_data(chan, (void *)msg);

static irqreturn_t sprd_mbox_outbox_isr(int irq, void *data)
{
        struct sprd_mbox_priv *priv = data;
        struct mbox_chan *chan;
        u32 fifo_sts, fifo_len, msg[2];
        int i, id;

        fifo_sts = readl(priv->outbox_base + SPRD_MBOX_FIFO_STS);

        fifo_len = sprd_mbox_get_fifo_len(priv, fifo_sts);
        if (!fifo_len) {
                dev_warn_ratelimited(priv->dev, "spurious outbox interrupt\n");
                return IRQ_NONE;
        }

        for (i = 0; i < fifo_len; i++) {
                msg[0] = readl(priv->outbox_base + SPRD_MBOX_MSG_LOW);
                msg[1] = readl(priv->outbox_base + SPRD_MBOX_MSG_HIGH);
                id = readl(priv->outbox_base + SPRD_MBOX_ID);

                chan = &priv->chan[id];
                mbox_chan_received_data(chan, (void *)msg);

                /* Trigger to update outbox FIFO pointer */
                writel(0x1, priv->outbox_base + SPRD_MBOX_TRIGGER);
        }

        /* Clear irq status after reading all message. */
        writel(SPRD_MBOX_IRQ_CLR, priv->outbox_base + SPRD_MBOX_IRQ_STS);

        return IRQ_HANDLED;
}


On Tue, Dec 15, 2020 at 2:48 AM Haidong Yao <yaohaidong369@gmail.com> wrote:

> --- a/drivers/mailbox/mailbox.c
> +++ b/drivers/mailbox/mailbox.c
> @@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct hrtimer *hrtimer)
>  void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
>  {
>         /* No buffering the received data */
> -       if (chan->cl->rx_callback)
> +       if (chan->cl && chan->cl->rx_callback)
>                 chan->cl->rx_callback(chan->cl, mssg);
>  }
The proper fix is in the controller driver. Which should stop tx/rx
when the channel is freed.

thnx.



2020-12-15 16:48 GMT+08:00, Haidong Yao <yaohaidong369@gmail.com>:
> From: Haidong Yao <haidong.yao@unisoc.com>
>
> mailbox outbox irq is coming, but mbox_request_channel
> is not be registered, so cl->rx_callback is NULL.
>
> panic log:
> [    9.852090]c0  Unable to handle kernel NULL pointer dereference at
> virtual address 0000000000000020
> [    9.954634]c0  pstate: 60400089 (nZCv daIf +PAN -UAO)
> [    9.954651]c0  pc : mbox_chan_received_data+0x1c/0x88
> [    9.954666]c0  lr : sprd_mbox_outbox_isr+0x1d0/0x204 [sprd_mailbox]
> [    9.967439]c0  sp : ffffffc010003e10
> [    9.967443]c0  x29: ffffffc010003e20 x28: ffffffc011c2f6c0-
> [    9.984918]c0  x27: ffffffc010e92e08 x26: 0000000000000001-
> [   10.140344]c0  x25: 0000000000000378 x24: ffffff80f4064130-
> [   10.145880]c0  x23: 0000000000000001 x22: ffffffc0091072c7-
> [   10.151418]c0  x21: ffffffc009107212 x20: 0000000000000005-
> [   10.156957]c0  x19: ffffff80f4064080 x18: ffffffc010005038-
> [   10.162494]c0  x17: 0000000000000000 x16: ffffffc010e6f844-
> [   10.168033]c0  x15: ffffffc0117abac7 x14: 000000000000003f-
> [   10.173571]c0  x13: ffff0000ffffff00 x12: ffff0a01ffffff10-
> [   10.179110]c0  x11: 0000000000000001 x10: 00000000ffffffff-
> [   10.184649]c0  x9 : ffffff80f40644a8 x8 : c366877097809900-
> [   10.190187]c0  x7 : 207273695f786f62 x6 : ffffffc011d62231-
> [   10.195726]c0  x5 : 0000000000000034 x4 : 000000000000000c-
> [   10.201265]c0  x3 : ffffffc010e9842c x2 : 0000000000000001-
> [   10.206803]c0  x1 : ffffffc010003e40 x0 : 0000000000000000-
> [   10.212343]c0  Call trace:
> [   10.215029]c0   mbox_chan_received_data+0x1c/0x88
> [   10.219705]c0   sprd_mbox_outbox_isr+0x1d0/0x204 [sprd_mailbox]
> [   10.225590]c0   __handle_irq_event_percpu+0x164/0x358
> [   10.230604]c0   handle_irq_event+0x60/0xd8
> [   10.234675]c0   handle_fasteoi_irq+0x128/0x32c
> [   10.239086]c0   __handle_domain_irq+0xa0/0x100
> [   10.243502]c0   efi_header_end+0xb8/0x15c
> [   10.247478]c0   el1_irq+0x104/0x200
> [   10.250945]c0   cpuidle_enter_state+0x158/0x2d8
> [   10.255440]c0   cpuidle_enter+0x38/0x50
> [   10.259253]c0   do_idle.llvm.10091284334483161164+0x1a4/0x294
> [   10.264963]c0   cpu_startup_entry+0x24/0x28
> [   10.269120]c0   kernel_init+0x0/0x29c
> [   10.272752]c0   start_kernel+0x0/0x418
> [   10.276468]c0   start_kernel+0x3a0/0x418
> [   10.280371]c0  Code: f90013f3 910043fd aa0003e9 f9400800 (f9401008)-
> [   10.286684]c0  ---[ end trace b868997a960c667a ]---
>
> Signed-off-by: Haidong Yao <haidong.yao@unisoc.com>
> ---
>  drivers/mailbox/mailbox.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
> index 3e7d4b20ab34..58697298a95f 100644
> --- a/drivers/mailbox/mailbox.c
> +++ b/drivers/mailbox/mailbox.c
> @@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct
> hrtimer *hrtimer)
>  void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
>  {
>  	/* No buffering the received data */
> -	if (chan->cl->rx_callback)
> +	if (chan->cl && chan->cl->rx_callback)
>  		chan->cl->rx_callback(chan->cl, mssg);
>  }
>  EXPORT_SYMBOL_GPL(mbox_chan_received_data);
> --
> 2.28.0
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BkUaCeebDNXi12-nNpw4i_auZbM%2BJQUC5uNhEzXxqa7%3DW4LnQ%40mail.gmail.com.
