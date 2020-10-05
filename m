Return-Path: <clang-built-linux+bncBC27X66SWQMBBOHZ5X5QKGQELP2EFJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id A92F528405A
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 22:06:18 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id bo4sf412893pjb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 13:06:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601928377; cv=pass;
        d=google.com; s=arc-20160816;
        b=ijhWa6TZaEgozYugcvCWwOgO6xx3ZYgl5pKGSKSvI0QGXznQwHAvjFLme6wAys1UEH
         yhrCy4lMY58O8CkJ3DIHZwGUKYKevETxlvafVWao1srmzIEhKi93eOxzSERe5QaaQ9Jy
         Twypwwx7zt9u/93Rrh1nN1cR0Rhr0Tvg5LxPifUfc4dSnhvrSRaD/fGSkPy8EevvBcpd
         Ls77xaBjBWGWk0bbr4WyYdUTCWApvJhSHrPF43QpT1ER3e1I8aVD7WmJesXEmKHOeH7Z
         FAW3qOOS5xQU4BIKfE+vUF0C0rF1Q+ggClM92Qgz3/hPeK1D/fdkQ6+6HtDAQn1S+YId
         ktVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GLeDraJGDHDUSjtdD33qmHAm/9lqYN2hyNx4Etp1pXA=;
        b=HvksFPkRdEf110nKXkKRgeemqi7ZXq5Oyn9fakWYdq22UcKPzScOEU0DO63kavmXm7
         JpoYFdSoA3L/K3JQhU9icoPT95Q4rujCthAvu/6ISeiGmfpJvHLfZEOaFDAdea+7vSda
         TD5TT4JKBWRN3Xynay+ut9XnWFC70449SpUBsqpyk/rLcIkdQGPPRiiZ3FZBD8cOCk9K
         dKRjJZTT5/W4gHwcQDzkh15+wvZoNpmo5xF/5MncqaURG5cSescJJgJOwOfl4PGcggF5
         +QfcB6y47ZZaJy6P/afX1BxFy3eEfcEI2MnanTvwKNbCYNMxieUAr4QgMKqtpbiFPYKN
         WgwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ioTzZPJ+;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GLeDraJGDHDUSjtdD33qmHAm/9lqYN2hyNx4Etp1pXA=;
        b=bWhX7EzGHiCAMfaknJSdeBxOS9Q3qTkjrRNYhQ3PlaFoFRTJZ4MoXejWiCquubk8P+
         jfn7EzVJdQHb4IcNtYFvtK+hhFHX2Jd06SdlQ5VtZIanNrHmasnMx1Ls4wCVot76ST6o
         3oEzXOdWQWAniH0RpCw0rbp0LONwW58oPhMO2IAmssLTMFUEc1BQvLBgDW8iKAex8mdL
         sX9vNodoKb/9VLqVvGZSSc2wCGdrR6W8/ITu7ufDlmq15msupuCyxgh98DM+rUYHZ5FC
         plSfpBf2DzT4K4S4VQ9g3c0+uCTo2MVNn/Qo7Es9wYYLrWZoilKScPlpeJg4bMS069mV
         70sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GLeDraJGDHDUSjtdD33qmHAm/9lqYN2hyNx4Etp1pXA=;
        b=eyyuJdF3jEh+gxLVuy8xkLJG/0M8vwdjbNLmOjcIdUHYJ3HAuXrARKE7rl0eeIGrV+
         iTroFSZHUdVT+fdQzXfkqu/pSp5Ui6V7MnSwEzTMEaVws7+QsAehR8yP4zr0JuQwSHdw
         53tDZFk5jzHddhk0NOQr4645PbTYUluLR3H3SkHomEhZPYRQXibcfEncMmKohLFGGyPz
         zPBKt+QTUGQt+aGsK4/phXU/mt5tcl0S4AfJP9gPSZoUnJ3xJwwG9/wl7WBefn54Qd+U
         /XgERHkwqdvIRJQEtDse3NuXkcHfQAYXqtfmFLxO0omaDi6NjOkMUiRik140t/bvXFsO
         0xXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323Cx1kSk8U/Li5DOhxMhSNoX7WVelO/9mbxUJ9wv7puwiwujEt
	wNTUntsyb2Ndnmd6lvJ/uKk=
X-Google-Smtp-Source: ABdhPJxaeV7gn+CSPZ1XxhommHrXSE+BxibK2ZdDr7KJdjAbjkQiYcz5k4ENo0N96IS02yGGjRc3xg==
X-Received: by 2002:a17:90b:384c:: with SMTP id nl12mr1117301pjb.166.1601928377081;
        Mon, 05 Oct 2020 13:06:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f993:: with SMTP id cq19ls405897pjb.0.gmail; Mon, 05
 Oct 2020 13:06:16 -0700 (PDT)
X-Received: by 2002:a17:902:59cd:b029:d3:c592:b28b with SMTP id d13-20020a17090259cdb02900d3c592b28bmr156318plj.3.1601928376531;
        Mon, 05 Oct 2020 13:06:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601928376; cv=none;
        d=google.com; s=arc-20160816;
        b=VoW/Soh8JKQuUKOy0oeCo3LZ9HKHslj3S3OeebBPZIH5j8+IjKgjUSx/qTUTWUrfQU
         7dCEgii1N/F+4Je3or9Z1sAU8lQl7m104UiM35b3G6/GkXdIzh4NMX67aX/PPfNaeHCx
         3SxY5kJ7fyTaSo5LtZwXWXy5GX/KaLZeJMj8d5+bym8vWIxqDe1gMSPRFZh8G9jY9u1I
         GpEJmQ8IKby6EQBX6BpzzoE0HhaWN/bn2w4YDVv7yP4PLk31lEhUebhJ1TF2DBvHRGxg
         zPnLWdvvcMd5ERC2NTlcf5kCoTcVX0G3Ii7J5CC2BH5Jydrtenc6K0sostXeNm2Tp7+M
         /FLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=wIcXEegcZJSPDOHcaJJqfXgfOt3bkFzixxxHYSMoD0o=;
        b=MmMy74DeqltQepAUz60bT2KlVg+WFoFf5Dvg+W8ex/CHgZtuXjiIMQD3uC3ffwcWDk
         xxsd2no++nabqMpkuiW2f/2bzNbrIgV24HqFtxlIHD93rNPt79m8INW33UUIc5JDT9Wl
         4VT13YbFzfHpu6+tsEvuBLdetmGs5+G4HGEFU8wOWmuox7Q6wUQxBSdWE+1AIZ3v0F63
         2xj/mA492ucZOryiDAA0Ur6NV/AvDU17lZa9V+Xzw4RcWtWTzkRHUH471wywaT2hgYUe
         kpDc7+ZH9L/OxABQpgjRvqAdVmQQzya47LiZUznBPxTja/ixu6xMvWPwDu0j7KAPl66N
         crqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ioTzZPJ+;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id oc11si90903pjb.1.2020.10.05.13.06.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 13:06:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-rwL9smCDPXqFqjw_dr9RTw-1; Mon, 05 Oct 2020 16:06:11 -0400
X-MC-Unique: rwL9smCDPXqFqjw_dr9RTw-1
Received: by mail-qv1-f72.google.com with SMTP id h12so1466333qvk.22
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 13:06:11 -0700 (PDT)
X-Received: by 2002:a0c:a085:: with SMTP id c5mr1400839qva.30.1601928371157;
        Mon, 05 Oct 2020 13:06:11 -0700 (PDT)
X-Received: by 2002:a0c:a085:: with SMTP id c5mr1400816qva.30.1601928370846;
        Mon, 05 Oct 2020 13:06:10 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 198sm829560qki.117.2020.10.05.13.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 13:06:09 -0700 (PDT)
Subject: Re: [PATCH] net: mvneta: fix double free of txq->buf
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
References: <20201003185121.12370-1-trix@redhat.com>
 <CAKwvOdmQwumUuPEHV5D_aMVAbGuy03HmapNDH4KPj+28pi2_iA@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <71ab2b4c-626b-db9e-cc1f-7c31dcab55fb@redhat.com>
Date: Mon, 5 Oct 2020 13:06:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmQwumUuPEHV5D_aMVAbGuy03HmapNDH4KPj+28pi2_iA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ioTzZPJ+;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 10/5/20 10:42 AM, Nick Desaulniers wrote:
> Hey Tom,
> Thanks for sending all of these fixes and using clang's static
> analyzer.  If you're interested, you should check out our
> bi-weekly-meeting, linked from https://clangbuiltlinux.github.io/.
> We're skipping it this week due to LLVM dev conf
> https://llvm.org/devmtg/2020-09/ (stop by the Linux kernel BoF if you
> happen to be attending), so we'll be meeting next on the 21st of
> October.

Nick,

I will at the next bi-weekly.

Thanks for reaching out,

Tom

>
> On Sat, Oct 3, 2020 at 11:51 AM <trix@redhat.com> wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> clang static analysis reports this problem:
>>
>> drivers/net/ethernet/marvell/mvneta.c:3465:2: warning:
>>   Attempt to free released memory
>>         kfree(txq->buf);
>>         ^~~~~~~~~~~~~~~
>>
>> When mvneta_txq_sw_init() fails to alloc txq->tso_hdrs,
>> it frees without poisoning txq->buf.  The error is caught
>> in the mvneta_setup_txqs() caller which handles the error
>> by cleaning up all of the txqs with a call to
>> mvneta_txq_sw_deinit which also frees txq->buf.
>>
>> Since mvneta_txq_sw_deinit is a general cleaner, all of the
>> partial cleaning in mvneta_txq_sw_deinit()'s error handling
>> is not needed.
>>
>> Fixes: 2adb719d74f6 ("net: mvneta: Implement software TSO")
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  drivers/net/ethernet/marvell/mvneta.c | 13 ++-----------
>>  1 file changed, 2 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
>> index d095718355d3..54b0bf574c05 100644
>> --- a/drivers/net/ethernet/marvell/mvneta.c
>> +++ b/drivers/net/ethernet/marvell/mvneta.c
>> @@ -3397,24 +3397,15 @@ static int mvneta_txq_sw_init(struct mvneta_port *pp,
>>         txq->last_desc = txq->size - 1;
>>
>>         txq->buf = kmalloc_array(txq->size, sizeof(*txq->buf), GFP_KERNEL);
>> -       if (!txq->buf) {
>> -               dma_free_coherent(pp->dev->dev.parent,
>> -                                 txq->size * MVNETA_DESC_ALIGNED_SIZE,
>> -                                 txq->descs, txq->descs_phys);
>> +       if (!txq->buf)
>>                 return -ENOMEM;
>> -       }
>>
>>         /* Allocate DMA buffers for TSO MAC/IP/TCP headers */
>>         txq->tso_hdrs = dma_alloc_coherent(pp->dev->dev.parent,
>>                                            txq->size * TSO_HEADER_SIZE,
>>                                            &txq->tso_hdrs_phys, GFP_KERNEL);
>> -       if (!txq->tso_hdrs) {
>> -               kfree(txq->buf);
>> -               dma_free_coherent(pp->dev->dev.parent,
>> -                                 txq->size * MVNETA_DESC_ALIGNED_SIZE,
>> -                                 txq->descs, txq->descs_phys);
>> +       if (!txq->tso_hdrs)
>>                 return -ENOMEM;
>> -       }
>>
>>         /* Setup XPS mapping */
>>         if (txq_number > 1)
>> --
>> 2.18.1
>>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/71ab2b4c-626b-db9e-cc1f-7c31dcab55fb%40redhat.com.
