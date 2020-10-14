Return-Path: <clang-built-linux+bncBAABBZEXTP6AKGQEB37AOYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B8E28DE2C
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 11:59:01 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id e82sf562265vke.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 02:59:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602669540; cv=pass;
        d=google.com; s=arc-20160816;
        b=CrYr6AOsy9LyW/4BGeiscxYgEQKgUVMtiAEhgTo3AEVzNUZfWXURTQWicKHwTdEldI
         yCPIctS2+ylhoS8HdFp+LMJLlgTx7xydbM5CU5luV5oT3wqImht7A716N+avD/x8vvQC
         LQArFSpVbo3DItuyjE1LUuMri+K0h7DeUTsiDkAzd1V/45yxGR2g3SVXegnw+duyf53o
         PlHEoX3ykYv2fhmWFMCHTex1in/EFf3BPSPlONQXTKO0pFU762WUG8UAxhCUnbu1BGS3
         /qHkk+vmfcz4Bc/SX8N+6SsjXq910HbkkGCoR++4i7v+mb0dTGKGU+DksYSc3CA71dsp
         U0HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=N7TiIlyEBHdtF77EeVeUy6KsiCfKh1eQ8ySHn/F6fYo=;
        b=03nZP5EBs3roNv/oue3gmJ16euSS8xtnVHsIR8vVrJN2SXVv0sRKAg1tr7rrm2S0tS
         kjTb55Rpb3B2ZXBKmhvujZRkNO2AkZ0ThQWMHGaThNXVgJO8924XuTLs0X5Sf+A6f9hy
         PAwdaxf6CeHrsjHWQgW7KnHKt2FFpKbiSvXLNI/KAtUB4vOg5mOuiE4yyrD4Y58p9GXn
         HZu2KyUayapVmol5TcQ7V31I6P+acpw3Ff0pY5p/UiuqZSM2Lyt7/pcV9gZI2BCKyWJa
         CtOPcTa8p+VlZlPl0ZZeLkE2aK2KNPwSSTAZB4xJ3OwjmJOXAMxlk+9c0o1SFUI2IBKN
         yiuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vivotek.com header.s=dkim header.b=CsPTuZZ4;
       spf=pass (google.com: domain of michael.wu@vatics.com designates 60.248.39.150 as permitted sender) smtp.mailfrom=Michael.Wu@vatics.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7TiIlyEBHdtF77EeVeUy6KsiCfKh1eQ8ySHn/F6fYo=;
        b=s4/G40pDn7OvXUxYHkyCn2spuTmP/UezjjYpSsRU4J9OAOUyjO0mSnTnBwbPkyhAIS
         CBWpx9RoTlBUnvR7xXzoUNmAI/EpJBfuM29Kif2F/0IY/0Y+u+JsbLGTDSnPiQwEW+55
         kWcRbmkiXTUEH/cv9kPj1EaAlsfz2AMSUxZdzCN6X93BibBN7mhv0aEDI80tgdMaydln
         VyhBKfWjkX/zIxGM06oRFBnrwZXIIh/LG2rzoQTxM4O/612zpu/yiijqv44reiGYGO0A
         qWtSHtaBhI2NUBYiHeNQrILuvBi7oFDiD1MS6UN//121eR5zLwmLfYDlPK52lx2XHuyu
         1mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7TiIlyEBHdtF77EeVeUy6KsiCfKh1eQ8ySHn/F6fYo=;
        b=CxmQra7FMIUBLCSKWSeI4Io6x+pyZIC2I+3uczgSo6zeFl3fc8j/bjVKFSbvcf2Nll
         LrsQ719Hb+vQvUcbdoN/v5WrfdTy5R4fCeIXQvFCYlH3HtOE5/8Tld7cpwTuP1oGSKKp
         8SOn3OxitRvRDr7XyKnF1FPBIf0p2rZXWdCZGdAehAB0WJ9YzFPitIqiWflOtfrKKcOK
         c9+PW+oHSg/RYjEDqrx5XT5a1RmZwjV9eqNCObGY+numWXKuw2hQmagBeM2dA0VkhGWF
         5zMuG8IZZtrbB19/pLtsu3qv2f42Atn4iGu75W3Jk9ZIyMW4SWHLQIrJll4HTqSK+5K9
         Eb/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320Y0Jk7Ba2mAHIyktzPUGsVv7s7ssQlK0PVgZbSHaGqqO7Covb
	psHSqmKsbyaCQ98AHudnjEs=
X-Google-Smtp-Source: ABdhPJyjGpq736+rxOPi5ZYddOVbtMf4Q9JoMFloS25TkTnKx5MZy8jeS2g64jrK/h1B73rjMMcB8Q==
X-Received: by 2002:a67:3108:: with SMTP id x8mr2769973vsx.26.1602669540522;
        Wed, 14 Oct 2020 02:59:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6144:: with SMTP id v65ls139458vkb.5.gmail; Wed, 14 Oct
 2020 02:58:59 -0700 (PDT)
X-Received: by 2002:a1f:38cb:: with SMTP id f194mr2584614vka.22.1602669539736;
        Wed, 14 Oct 2020 02:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602669539; cv=none;
        d=google.com; s=arc-20160816;
        b=cLUYhXdU9hqwCdAoqITfx3viUOWQr0zrAqS7Zwhh2W9LVB66pWhB7oTiMmtn0CofF0
         hi3BoWzgMiI64svbz7+sgQFI2EFcn/CxF707+Y8TnMZW6avZ0J8FnWxSHclPjhetWDq/
         OXvF703rOe+oCim3syu9sA051ZG9V/wUJGVSk6v3avZhZcMiY+e8sqN1I8CyftMYZgx3
         3tcOjc0e0T1GnJK7CkC/AgQk7NG1VzkrJkIdMcxfdZXx1up2Hqmp9TbnM7dGbCWXN5QY
         RgV3KF4MMZ3I/WoxhlRZQS9z3MEfJ0Qx1WQdAalD6nWBL72Xk5Eqp3zXug1w3Qy4U8L3
         I3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=6t584Djr53EQcXcU6K+QSE638Sh/1JOwCPQkAczbV50=;
        b=Y0P2Ns8rjaW2Kr0eh8ZrzUBwiUnAv2Ye1g2pPYFkXV/lv1h94zxEYW0ypgnFl4DNKC
         s8w5gjJy7QHHwDgd61q6sJ8n9BfYQtj3NjowJOO0b/LlHXeBMhyUVIPFO4pudQJNXUMt
         DQOzpc4STy2uxNazls5mF5hJK//ZBohS3/pfXDDkPdfwIMxRtMYhj1SQGyHB+3oATNxm
         dkCvAwjE7w0E5H6J9ev03Cb2pZ7EZZ5VJVN2o1aYoLCo4We1rf3xgCky9aZl7nXyUqCF
         ze1FsJORuvmMLn0dT8dfYFpMQfnHfI25M8Z802bW4zjjkmrj7lgjoA20tETHqggUIfli
         HzhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vivotek.com header.s=dkim header.b=CsPTuZZ4;
       spf=pass (google.com: domain of michael.wu@vatics.com designates 60.248.39.150 as permitted sender) smtp.mailfrom=Michael.Wu@vatics.com
Received: from mail.vivotek.com (mail.vivotek.com. [60.248.39.150])
        by gmr-mx.google.com with ESMTPS id t24si308591vsn.1.2020.10.14.02.58.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 02:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.wu@vatics.com designates 60.248.39.150 as permitted sender) client-ip=60.248.39.150;
Received: from pps.filterd (vivotekpps.vivotek.com [127.0.0.1])
	by vivotekpps.vivotek.com (8.16.0.42/8.16.0.42) with SMTP id 09E9uik1021664;
	Wed, 14 Oct 2020 17:58:56 +0800
Received: from cas02.vivotek.tw ([192.168.0.59])
	by vivotekpps.vivotek.com with ESMTP id 342yd1auhn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 14 Oct 2020 17:58:56 +0800
Received: from MBS07.vivotek.tw ([fe80::2027:4d67:6c01:78d8]) by
 CAS02.vivotek.tw ([fe80::157e:3677:ef5b:27a2%11]) with mapi id
 14.03.0487.000; Wed, 14 Oct 2020 17:58:55 +0800
From: <Michael.Wu@vatics.com>
To: <andriy.shevchenko@linux.intel.com>, <lkp@intel.com>
CC: <jarkko.nikula@linux.intel.com>, <mika.westerberg@linux.intel.com>,
        <linux-i2c@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        <morgan.chang@vatics.com>, <dean.hsiao@vatics.com>,
        <paul.chen@vatics.com>
Subject: RE: [PATCH] i2c: designware: fix slave omitted IC_INTR_STOP_DET
Thread-Topic: [PATCH] i2c: designware: fix slave omitted IC_INTR_STOP_DET
Thread-Index: AQHWoeqZ3WHFhjPhe0qk+0HSIl1FPamWMHSAgAAUZoCAAJcqsA==
Date: Wed, 14 Oct 2020 09:58:54 +0000
Message-ID: <5DB475451BAA174CB158B5E897FC1525B1294238@MBS07.vivotek.tw>
References: <20201014052532.3298-1-michael.wu@vatics.com>
 <202010141551.Y4x2qiN1-lkp@intel.com>
 <20201014085251.GS4077@smile.fi.intel.com>
In-Reply-To: <20201014085251.GS4077@smile.fi.intel.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.17.134]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-10-14_06:2020-10-14,2020-10-14 signatures=0
X-Proofpoint-Spam-Reason: safe
X-Original-Sender: michael.wu@vatics.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vivotek.com header.s=dkim header.b=CsPTuZZ4;       spf=pass
 (google.com: domain of michael.wu@vatics.com designates 60.248.39.150 as
 permitted sender) smtp.mailfrom=Michael.Wu@vatics.com
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

On 10/14/20 4:53 PM, andriy.shevchenko@linux.intel.com wrote:
> 
> Wondering if you compile this at all...


I'm very sorry that I did not compile it because I only have ARM SoC with my
linux 4.9.170, but I've verified the logic of this patch in my linux.

I'll correct these two syntax errors in next version. The reported
warnings occurs from drivers/i2c/busses/i2c-designware-slave.c:13 seems
not made by this modification. Please correct me if I'm wrong....

> >    include/asm-generic/io.h:1017:55: warning: performing pointer
> arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic]
> >            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE +
> port;
> >
> ~~~~~~~~~~ ^
> > >> drivers/i2c/busses/i2c-designware-slave.c:181:42: error: expected ';' after
> expression
> >                            dev->status =
> STATUS_WRITE_IN_PROGRESS
> >
> ^
> >
>    ;
> > >> drivers/i2c/busses/i2c-designware-slave.c:195:22: error: use of
> undeclared identifier 'STATUS_IDEL'
> >                    if (dev->status != STATUS_IDEL) {
> >                                       ^
> >    7 warnings and 2 errors generated.
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5DB475451BAA174CB158B5E897FC1525B1294238%40MBS07.vivotek.tw.
