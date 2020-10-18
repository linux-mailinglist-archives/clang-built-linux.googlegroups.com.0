Return-Path: <clang-built-linux+bncBC27X66SWQMBBDEXWH6AKGQE7ZLK5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E70D2917B4
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 16:05:01 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id m126sf5503217qkd.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 07:05:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603029900; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxryQWvEYvrzWhISQPRCBca181ITprQF6jX1DLqd6v5u9ICpBzAwT9fzj7tvNU8kr/
         z9TpiI6PcAtOBRNdloWBPYQ6CHolwsrF1Ms/gVS9pejh1M1oY0RZ1cGCM2Ec/Zjmftk+
         f7ete6nBaN2TykGC9J9JPAS0alyFAlvQT+IzdPSiVcJAU5dmRDRdEHSJD4gkrHjU/LpF
         hzcY8/QtyKloAhx7lWvoCB1a/jy/CGP74W/EBl7Rci7LeNGkDS35TqmaZW8a4jSWeald
         Sb4cnvAkUcDAfEQy6xew2uZWD7TtdJ+4e0elSrtLXhZqNzp28k83wViE1sv8yV+r2Pxn
         Vt/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Rc5pmeN7OQ3tPbPTIi10qUYeQBee2tER7PTbdysep8o=;
        b=WS+nN5JwhdixR256F3U9+dSFpaeTNjAfxW+L3V5c7Z2+grZYkrKwFDp4fufcmMEwPD
         ZBI0TOb9/Nk2cMk/cG1BjzbigUJv4OELqJkeOjshQh6tAu1QOxwZUb9AEMYuUlHSRqmG
         0VZyC06LD9XqEu5U/y9T8f11obRurRZR8GN4LuxJarARxkqa6pQ9uxAXkEWsQpTBCBPC
         3CKDsA4EVzmJLZsJ5cMrqgloTcKZQDER39E21znFVzwxXSVeFvAT28pmc3HgyB5sJ49A
         gADMFn4HpVinRVvMC6MiW3OSCM4IIFPOwWrFIQqXDk+DQ+Zphz3K4erljVWcUla3lRwH
         2DFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CE3TTm0Z;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rc5pmeN7OQ3tPbPTIi10qUYeQBee2tER7PTbdysep8o=;
        b=EmZ1isvFe+PHVh9lyW5CIVuAK3rA9Jx+dk1WaZ2N8XIoU825sSavvw9s3KpeKPPVXH
         KIsCgAvPpREcFEh3uieopagfiwMD0KgwEYSpw0ye06Mn5FBnoDtr/eGMpqD/iEzC+D9V
         wQS5eUMwfnrHZ7OSdRa001wIiJQP4JzrCoAFovaeuGhtskWvTR5NM5cXeuz5vRS7PMMj
         PKHggdpFY4FhCQAtd7yW3WIY1JhravcqQQtLToA8rJj6uHgINREQrJopUgONqRmV5t+g
         XH4Goag1VTh4D8BTDUNVIOiO+66GT4Yfo3hkaR+DSfvLpC0Ry9wAFKirYZeDKYeUPY/R
         4Gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rc5pmeN7OQ3tPbPTIi10qUYeQBee2tER7PTbdysep8o=;
        b=jARiet4naMYeHMZqC8u61EmKqyhrU5jCOJOAq68pM89YEuYQZmEKBAkoXCnX993aeY
         CMn2lGUh9w6zypF0hurTANAbIYCr1OGCGb1M6G5J6WH2vkVT+pMLbbX3Xmj4DEMbykp7
         t/BQd82NvsI551ym1gruKY0nbBiuAC5vgcQBqvdwuHEYUDmpxYjRQ04vjBp9PlwR0lnx
         rCRhablqVDv9P80EmHFtsXW+hzN22e3u8l2SE4+IArGrRIjxJgRIV0GYJBt8tcs/WFXA
         JO/bh0msuAqMzFW70hzcMLaIinBk7oPwfaPZG7jWXa04JE0xxt96fxIyyhi2zVz9GHNB
         Nrvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312WtMEAAt1WuIj1OH8vg8hyTZfG/f8/VOBVUcQXd22eeDvR2vT
	qcl6zFDBP+yseiRDxdnyG0k=
X-Google-Smtp-Source: ABdhPJzWHonTzLnRVCfRIPcIOegsovPCou6lsdS6/LaYbZAscIc4c/RlxiZEBIqzulQTfIsEiR6j2A==
X-Received: by 2002:ac8:397a:: with SMTP id t55mr10838456qtb.105.1603029900177;
        Sun, 18 Oct 2020 07:05:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:68d8:: with SMTP id d207ls3708894qkc.7.gmail; Sun, 18
 Oct 2020 07:04:59 -0700 (PDT)
X-Received: by 2002:a37:51c6:: with SMTP id f189mr12439080qkb.276.1603029899430;
        Sun, 18 Oct 2020 07:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603029899; cv=none;
        d=google.com; s=arc-20160816;
        b=is36gqSBcvhOOcqHqICklodQCzu9JDRnQe7OIoESY+bJ9O3jHcOo0aF3Rnr7W5Jdgk
         fum7byodDsDRn8Sb3Fo32ZQdTXSt/j2CToeejwEGeEK7VyVnTtpH/RBTJTR9z7vms63W
         uJG6eLjtuLbaSjPdl0U4iYyeRApxW5+DPdT3HLODLWl2fPtm/b9ZNmEdBb9NYOFzxkWj
         VoNDKqC2hECSbscpLGQWy7AsBakNJGxuii0J7hy+n0asthLhY7xd0RtGb+CHXkWmQvCK
         j3I7rWnW98avKf97AVULiQfzUXeLYtBOxWBojmWC5rb1mWcRS9WEoieI5MOOsXdx8gJH
         xTQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kBVMPnQfqrYuRmZ0mFLSkNqYWCaxPfshC6ZYuKW12NQ=;
        b=pxpQubFzFebZKxgkOulaQoAQ3C4MlFnCK73TMbHeX6/rODOhR+08mv62/xjnA2UEVl
         /Gy3eoYZQLs77LX/f6wsDbvGQWuNJbZg4H6mSEfJ1UsmTkSn/QBvWGYAIii9UXbzqQQ3
         XozFwCVRMI1SokXl9f3qFxXuvJ5jcnvzQ1dktaSHuwo7KEjGORnzIRbh1aBmrEE1Owki
         EKl0hOHFNbOeNanVm6GCXRtPh8fbZAyxtnTlZqZ3Si52H2xukwfdHjprEHlSfrHCnDDJ
         yzhwL+t/H7BA1rLOaJFWlXq9ey8faz7k9guNmfJE/b2MsT3LheGEorbjZrzBg55OXd4o
         EziQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CE3TTm0Z;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id r40si438610qte.5.2020.10.18.07.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 07:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-R9X9MveZMBWJf_naEy29Sw-1; Sun, 18 Oct 2020 10:04:57 -0400
X-MC-Unique: R9X9MveZMBWJf_naEy29Sw-1
Received: by mail-qk1-f200.google.com with SMTP id b7so5490389qkh.20
        for <clang-built-linux@googlegroups.com>; Sun, 18 Oct 2020 07:04:57 -0700 (PDT)
X-Received: by 2002:a05:620a:1287:: with SMTP id w7mr12724330qki.436.1603029896381;
        Sun, 18 Oct 2020 07:04:56 -0700 (PDT)
X-Received: by 2002:a05:620a:1287:: with SMTP id w7mr12724258qki.436.1603029896034;
        Sun, 18 Oct 2020 07:04:56 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id u16sm3288927qth.42.2020.10.18.07.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 07:04:55 -0700 (PDT)
Subject: Re: [RFC] treewide: cleanup unreachable breaks
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-power@fi.rohmeurope.com,
 linux-gpio@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-can@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-nfc@lists.01.org, linux-nvdimm@lists.01.org,
 linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com,
 storagedev@microchip.com, devel@driverdev.osuosl.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, bpf@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, alsa-devel@alsa-project.org,
 clang-built-linux@googlegroups.com
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <eecb7c3e-88b2-ec2f-0235-280da51ae69c@redhat.com>
Date: Sun, 18 Oct 2020 07:04:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201018054332.GB593954@kroah.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CE3TTm0Z;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/17/20 10:43 PM, Greg KH wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> This is a upcoming change to clean up a new warning treewide.
>> I am wondering if the change could be one mega patch (see below) or
>> normal patch per file about 100 patches or somewhere half way by collecting
>> early acks.
> Please break it up into one-patch-per-subsystem, like normal, and get it
> merged that way.

OK.

Thanks,

Tom

>
> Sending us a patch, without even a diffstat to review, isn't going to
> get you very far...
>
> thanks,
>
> greg k-h
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/eecb7c3e-88b2-ec2f-0235-280da51ae69c%40redhat.com.
