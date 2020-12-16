Return-Path: <clang-built-linux+bncBCHY3YXHRQOBB5NU4X7AKGQEB6JVOXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB4F2DB800
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 01:53:10 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id t16sf15511558qvk.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 16:53:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608079989; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxKXRfptmatig9ApJ8daUihT7B+MMfj4nqGR9d6f34vQx6+5SDX2KSKtSzydVTId0w
         zVN6SH1Oc6lQCAAt2xFN7r9t2/b6CYCXg/IvE2ijQW070K2a45yhY0meex9W5Yoprxkz
         WuoMMdLvKMEUdqpu4Lxc0HhTfrMlCPlfzSJFuiusOhX3Na+J7nLyi40PGP3kRBpsUxIZ
         I6u25HEODJCXbyD28XiROV1G+VL48JrsRgcSXyI9UwkUynU8uNBpuyYhXuEs7/tUUawI
         UHq6US7yelzDtqa9kIHVxgNkb6j+aXNKXmzoun4cwTSWN2aEhtzoSvLhZAhHT6FAweLR
         3D4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jV/xuOZoQz3QbP89lnZ0OQwDH0evz1mwhK8ZOlwyxGM=;
        b=DB+Z09P5USQNVbYSYpAmLUS9vFz2bxVD868IFVr3By8I+4RMvjCCsvJy1bef0bs1Fx
         MqjivODWhErIwJzm/eDgZ4qUhdntZJuvTBJ9QRZvApQzVoHypH+BS7Vg/wfhCsZmy8BF
         5+REQem0UixFsP48W2kKt4jQS8RpBzvDaq+tIGB70Ojty+bQnekO6kR/T48OTTl6Ybsp
         aPAG2eM7upIqVRysw1mgUoLejk6Ide713MIV0IAIbXCeYfmmRCN6lxbPOIb4KcFlHlVC
         aB5QzvpXl5fUAU3ZlT9oNCM3RJzW2O6dCzF/rKj+nLnXmC9e40TAEIrSZeGjAr2go/7h
         YPjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qjOqbqvm;
       spf=pass (google.com: domain of orsonzhai@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=orsonzhai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jV/xuOZoQz3QbP89lnZ0OQwDH0evz1mwhK8ZOlwyxGM=;
        b=QL8eTOvGdBsW0rNKl15Lz7nhQPih6llFQb0zyR6pAySMfeLvNtOiGEySYa/3fRXqZ9
         vPXaXqofPdF0/nxarRr0yDRAOXiOCKoUYszcc8KbLrh5ah9ywriXj8iIYC07jZb6eh7Q
         QDbFHhIDrWxTr3GK9b5Q47tS69rxKsx4Ugk7pzW31qJBhQiKXnRdoeHZGxNL+Nx6ubPO
         bQ50IaaX/wYHX75uD5oGOXxmSBt2Nh/lRo9VfN8A35voU1MQqZeJjdL/6j7tq86bMfj6
         nE/Nq/s+CwmcKTmZaoyjBM/ERQRDFwg88QOxFyOcCysCoT3BF/aHao18EknwQLVdBDMI
         XeCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jV/xuOZoQz3QbP89lnZ0OQwDH0evz1mwhK8ZOlwyxGM=;
        b=R9qdIFFjF+S5CY428+21z+Yx4JLfo9aBOHs9MRz//kPCJFiRsf/jq/iM6yzG1VJU+y
         7zCxpwx37s/eBJWeq73oF68FxyhMspe8I+2NIg+8kIa4VnJ7lL2jFbkh2tOVKR4Ch1O1
         InNBQkN7ejulg3MkLWqYvk9mA2yTLTWcjf+fBtTrRV+P+miSAWPu1zqkF8sKH2ThRwwo
         ZrM5yIpSLGTRCilzrlRx2jRjjMXIjMx66SSRsOG+4Qr55/OZR3wKqN+tBdi8SIE9q/XE
         rU4mWzlxGnM6wN4urLI30K9w4fHfINAJtTePlOralwMQrco4/fAAm3o1DwOa6mNNHpL0
         qCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jV/xuOZoQz3QbP89lnZ0OQwDH0evz1mwhK8ZOlwyxGM=;
        b=EuthSrn4uisxHuA6JjekZ5eOe/Gn79UtxEO22uqOUp+IHr469OqS1fnjl0vMynN2g0
         /LJUAs/8JrJQWQP7WG9Zb0OQAl0630wGZMclbdFTpE0MXcdnETGAxb4i9vDANkCiNUQn
         nkgTz5S2iyq3QgrhIM6iy6/OjEF4p/8NqMS5PwhDASSfNaVEk9Hhzk/N9k7K7Vpzn+84
         +PwbslPE4ecjFFQ7ISa2+4bSBQ2d7BnfQ7riJQhlCY1744M2udkn/wxIvtVJOaFjWryp
         8jtC2sWkYzwRlvqrIYMdT4k0t1OeVA1h08e+OsVUEamf+CxnczDvYKGVZbaVCUcEhO1M
         7iBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xykipDx7VtlUPTbNvqNooc4RISCmkWMSUBjAaYPo1IhPR7vfK
	WPfxCxx0rP7ZPOY6C91aUPg=
X-Google-Smtp-Source: ABdhPJydJFM4s0K2LWTepTZ6trpQsaKbiGSrwWOL5Z13naNeDZ6pcHF4hKHTtwVZCe+5OuxnslON0A==
X-Received: by 2002:a0c:b59e:: with SMTP id g30mr40883816qve.30.1608079989517;
        Tue, 15 Dec 2020 16:53:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:49d0:: with SMTP id w199ls10789333qka.2.gmail; Tue, 15
 Dec 2020 16:53:09 -0800 (PST)
X-Received: by 2002:a37:aace:: with SMTP id t197mr41751070qke.175.1608079989010;
        Tue, 15 Dec 2020 16:53:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608079989; cv=none;
        d=google.com; s=arc-20160816;
        b=LUnsB9Jy4DGqvrl++wWRn9x6Km/rx02fRyU8gZqPCmPRbNzQKRXlw3KB+wHqq8//hz
         tMo0ek/Bnika8oExFfjd4saeB72ECLkeSNNTyJsy8LCLKKKH5nMkqS4QlKQJLmkvLGhs
         fGyJAvOecwJJpqNIpTWAouaSg0Pp962tSmfW4sTtirrEYzfWOYSfvr3CgYxNUuhqpcmT
         y/SZif8lG8UBB7JAyf16a5VutcPC1TjXRVOn4EkM/MvalZcJM3//kW4FNvIhTkyEXgjT
         XpJE3hcQp3wgwG8IPXMJ3C8Ax8VvwSW2Y2jnJjQGHANWPVVVvRgzUNOYJSls1mTAAcoF
         IfUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=paoJueyjUsqTHW+YzWAihW2inHK2I1VayCAuunEnJu8=;
        b=Zm5LkLfVestyzEqXc+dGGYtESSIawLFu/trKlvTmNY84Isp0mtGqbJ0llT9ffD9L1i
         Dkru7S0BSfIQ9Wxv4bCJSg72pFA8T32f+8uK8YDAyFa4hg6ISxSaaqaLPZ1t/YitXBFd
         k4UHII+9mP/hcZl+yCVJcMKzUXl4icsBKFGg7FVUQglEzDKVrLoX93wnHrvZ9vcOQZUj
         KLiRedshmphXjPbdTcLvgY+mGNcoHqNNb7mMQyuxhDWB2FMtEzbLpVyfY23oPa0d7TQo
         m9HGuGPt8clSKGTVnZU7zwEVR378Kz5nnZXKus+imW7QA3ZI9Vmqys0fg5w0lyQyZ0Pf
         v4EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qjOqbqvm;
       spf=pass (google.com: domain of orsonzhai@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=orsonzhai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id x8si19569qtm.3.2020.12.15.16.53.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 16:53:09 -0800 (PST)
Received-SPF: pass (google.com: domain of orsonzhai@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id z12so548786pjn.1
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 16:53:08 -0800 (PST)
X-Received: by 2002:a17:902:43:b029:d9:e66c:bbfa with SMTP id
 61-20020a1709020043b02900d9e66cbbfamr29868441pla.61.1608079988236; Tue, 15
 Dec 2020 16:53:08 -0800 (PST)
MIME-Version: 1.0
References: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
In-Reply-To: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
From: Orson Zhai <orsonzhai@gmail.com>
Date: Wed, 16 Dec 2020 08:52:56 +0800
Message-ID: <CA+H2tpGgHSOfX_5o66LRxZ_KGJgzAQAOwBLfJ6NSdzoFvoA-iw@mail.gmail.com>
Subject: Re: [PATCH] add chan->cl check in mbox_chan_received_data()
To: Haidong Yao <yaohaidong369@gmail.com>
Cc: jassisinghbrar@gmail.com, natechancellor@gmail.com, 
	ndesaulniers@google.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Lyra Zhang <zhang.lyra@gmail.com>, Haidong Yao <haidong.yao@unisoc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: orsonzhai@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qjOqbqvm;       spf=pass
 (google.com: domain of orsonzhai@gmail.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=orsonzhai@gmail.com;       dmarc=pass
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

On Tue, Dec 15, 2020 at 4:48 PM Haidong Yao <yaohaidong369@gmail.com> wrote:
>
> From: Haidong Yao <haidong.yao@unisoc.com>
>
> mailbox outbox irq is coming, but mbox_request_channel
> is not be registered, so cl->rx_callback is NULL.

Both "chan->cl" and "chan->cl->rx_callback" should be checked for being NULL.


>
> panic log:
> [    9.852090]c0  Unable to handle kernel NULL pointer dereference at virtual address 0000000000000020
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
> @@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct hrtimer *hrtimer)
>  void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
>  {
>         /* No buffering the received data */
> -       if (chan->cl->rx_callback)
> +       if (chan->cl && chan->cl->rx_callback)
>                 chan->cl->rx_callback(chan->cl, mssg);
>  }
>  EXPORT_SYMBOL_GPL(mbox_chan_received_data);

For the code changes,
Acked-by: Orson Zhai <orsonzhai@gmail.com>

> --
> 2.28.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BH2tpGgHSOfX_5o66LRxZ_KGJgzAQAOwBLfJ6NSdzoFvoA-iw%40mail.gmail.com.
