Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBPHK7GCQMGQEKDIJU3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E21C39E78E
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 21:36:29 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id v7-20020a0ccd870000b0290219d3e21c4esf13951346qvm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 12:36:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623094588; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJBqqWl0ZYKMgGDQqEuEn95C3kOSRzkRZINN8EUy8dmRbr3nqd8QZ82C3a6N0gxpJG
         emEGMM7t2timeG2EABhx4LBEQXs+DvMSz93WqTIAs85pWY0ZzcwFHkiGjWLBUZkzaUYY
         bsr5onP1mDzKHAGLDQJdDM0fFOVyRHVIZlPlk1UJ93giTsb24mQHjitZvZCBOwX0OTOm
         LcxpGiheSeXfqo7nPfJoZt6W9Dte7Jq55MR/dBc8qiSOCmWIMbFs27IHTmLY8xirYPRW
         pOBmf7yompZVWJy5e/gYQOnguYyMixJ5CnXylc3YXsitigXbu33cJsxrjSy4IFc+gfzA
         prOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:to:sender:dkim-signature;
        bh=XxIs0qbxyldj/hAP5nrMW5AUWA6eiy2DvvcBVXaj6rA=;
        b=gIv2M5DHC0Z0zxGy0T4bqf3Oa54W/JAmzAQsyIId+ivEOrlx5umWLBeZ01JNvodLX4
         58RDKoH4yO5HwXrNsdzEUnEF77yL4NSGYxx0H7jRPEk4HxbH5/EtEekzw1Pfh5cyIGR1
         GfKSbrP5tfCkwykuxw4NebrzxomGiFoTsNNVlQ/g6CUbMIUarQ3COe4lqiu34rSIIN+L
         VpW/pTRXbTO9MRwzWfLjk9Os+ED96R4wPB3ihR29mTqPKMgyuVBrpoLY8i+FSTLKd7+J
         XodhulF7kFpTiqQiaK9PCOjK+ZD0E5VL3v+KumXzHFgFmEAxD0uLL5QyXW/H8+G8x2UY
         KgIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dAoAydUf;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XxIs0qbxyldj/hAP5nrMW5AUWA6eiy2DvvcBVXaj6rA=;
        b=OKbcvL2jWXKqXD+2QCZEVuO5B2gnr1XibZ2f5ptFJcUtK85zQ4fwOuo5LofiRUDZzS
         zP9hnC0VsquDV1tCMWMyeCylE/y+TPDcNrWCQfApVNMAin/C3kPuT8lLykbOAs39dHdK
         uybZgkap8mDfc3lwIxNjgMbhLBdX0XLEbuuHZwkaHqlnT2dsqXEvCMEBW3voXek/tfLI
         3qvJdlev3wRJJ5OkjOJvANYrlvdDmeJgy+L6eBF23+GDmSVh715TqFLPZnoIaGUGxGrQ
         Vgy/qeVz9YaXPqLKYngHWXHivukqevCHGBBggRxW+mdUgDrda7NyLlp6FyWRm9EOGgTs
         ofWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XxIs0qbxyldj/hAP5nrMW5AUWA6eiy2DvvcBVXaj6rA=;
        b=WW4AD6ppK6K4bwBI/LfN6iGOd5E1V49RFJ5RIORlSkvgRkM1hX6fXDxYlAxVoFAWAg
         cC7pG5raFWlAI7EhdbrdOwvaWOfpq1fgqIieX/5GHyU0yrwN3BNh7bq2d98U5KzWB19r
         +A1RPrE7iZGt/KellpE8zv41BIFLPaaw1GFLF9UQbBQ5Fxfx0WsWEdID/ohpy5mZ/9vE
         OgX1ALC6gVegPV+17Nnw/4PBra+EigYW67AG3LWd3pqmXpqdx+j8UeLnxr348YKpNTtf
         Fr/lb6146X6O4TUspJ2I/X9d2HKE+ihuyXz/ByJMmuwnReP7Q1YIr3B6MwoyV06876Gg
         7/nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IAIN7Pik8CnnqY3pKc46GQJv3IeZqNABAI30TZmD0VHfA4BFq
	ru3/oa7IgWaGbfSz7BnFkeA=
X-Google-Smtp-Source: ABdhPJy6jU2zeTSNjASaFAES+6QQIjYss2Q4Ks8q0otV4ZUF3EypBm9C2ei3A0Gd1LhxQ0f1DOCHYw==
X-Received: by 2002:a37:bd81:: with SMTP id n123mr6796042qkf.169.1623094588460;
        Mon, 07 Jun 2021 12:36:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1319:: with SMTP id o25ls1206328qkj.6.gmail; Mon,
 07 Jun 2021 12:36:28 -0700 (PDT)
X-Received: by 2002:a05:620a:13a5:: with SMTP id m5mr18067151qki.119.1623094588064;
        Mon, 07 Jun 2021 12:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623094588; cv=none;
        d=google.com; s=arc-20160816;
        b=nvPbyM+Bm3GUu2ZaAezW10kg1su8ztvCpra/bOY3gO63CBQO2RoXO33dDXSXvUNkQM
         ybjeuT2t5Qnap/DfQ+u8BN0iGsBmyTjbT+NPF+IHsrFuf2UC78LICizt9rLlygjcXNls
         cD9U6hJPidZ587Zqr6CCV5jjoS6PMKR2ScyPIhkCg1+MEj2zc6NhGAL/cSHFU74X1Lh6
         r68lVvFQEjKNsDo8nRyFlteJs2k32wptphqySEtkMeawm5wnP6RlUgn2o9NzW3K4Sx4t
         iEDpcVcZLSoOxxic5n+cA9W6NgMm7UyNjol0IjbTRbPIfo0Me5B7XPb+0t5X1dj8xNi4
         93zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=V7ZiXHfuVkcUI9I2Kb76QZ26c+Vdf+L76fdnAovlyVo=;
        b=dGi3h2nuVjDQDnSev4+PPwhGwj+58qSCxiVRVvVXPUXZo7bVMR2+H6Kevg0qLu2b02
         k1TTbKTIQu4Tff7kjWgdZY3huHwE3v/bIBHCfD/5Q7rsM1oyaGRHH5zHtiyARE5AnWjv
         DroRuVzPa8dXTKWBnqSBIjdgeADR32MpkvpvrH6dGLrp1VOHfkdtUWEYcMTOjOfDSnmt
         TMHuTLKZtyNorJOfmDwjQVRxW2df/oCHiqVItXJbVNNEFGmX2RXVmbszDoT3gFTAikGL
         S+FYTQfX/7wZsqFrvrDIOCOjxBeI2w3s+YxHCFq7fNRJFdYp5pfugIFK7gQrXmva+N54
         xPaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dAoAydUf;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y24si1441741qtm.0.2021.06.07.12.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 12:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-BRUKY9trMHetkfmHTkoF0g-1; Mon, 07 Jun 2021 15:36:26 -0400
X-MC-Unique: BRUKY9trMHetkfmHTkoF0g-1
Received: by mail-ot1-f71.google.com with SMTP id w3-20020a9d67430000b029035b9aaeeccbso2921731otm.10
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 12:36:26 -0700 (PDT)
X-Received: by 2002:a05:6820:611:: with SMTP id e17mr14702346oow.0.1623094585646;
        Mon, 07 Jun 2021 12:36:25 -0700 (PDT)
X-Received: by 2002:a05:6820:611:: with SMTP id e17mr14702339oow.0.1623094585349;
        Mon, 07 Jun 2021 12:36:25 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-191-69.ptld.qwest.net. [97.120.191.69])
        by smtp.gmail.com with ESMTPSA id k14sm2335483ooi.21.2021.06.07.12.36.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 12:36:25 -0700 (PDT)
To: clang-built-linux@googlegroups.com
From: Tom Stellard <tstellar@redhat.com>
Subject: Recommendation for LTO type (thin or full) to use for Fedora
Message-ID: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
Date: Mon, 7 Jun 2021 12:36:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dAoAydUf;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
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

Hi,

I'm working on adding an option to enable LTO in the Fedora kernel builds.  I'm
not sure if I should use thin or full LTO, does anyone have any recommendations?
What do most people use?

Thanks,
Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8aae1be7-d9bc-8a55-0bbb-0d94e6719baf%40redhat.com.
