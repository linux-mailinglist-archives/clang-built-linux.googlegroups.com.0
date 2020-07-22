Return-Path: <clang-built-linux+bncBAABBUF64H4AKGQEXQDONAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E69FD229BB8
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 17:46:24 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id n4sf839546lfe.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 08:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595432784; cv=pass;
        d=google.com; s=arc-20160816;
        b=NaXDWBFd8AKuqx87I36VKg1uxpmkszsUoBrA/4rVqyjHIN17aujqvVB//pIUEzb2On
         csHjApl93ZWISLTBwKDyZ3fU9/8HvAPMd85pKrvGfRVHWck4teqFxXYHOQ11p2iUU6KG
         qaa+A2m3IAJmNjM1l020Az223+a0GYex1sBAR2XQzKTHjRQiZxS+l0V9yZXLCBqDMSia
         3ZxJ/WgTAdLpXdxUWt1dFAt0tgzdwkq1HVTmRQdG8DMLs67kCknMWQG4N/hK60i52YBH
         XjccaXae6gCTn8IzfjzG8oSRIgWNck+iZSGy851ySK1DpIHHg31buCvQ1oCCw1BCndoH
         Ns/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=IOtAuCnv0nFmGKtz6w5HaC5L1tYiuR+IXDvyYX9FjcU=;
        b=YxZAqlsuZzPx7xb+wFFwsyDojaeTnrZdQrCITsm+HDbh4bc0Zyh6aWINvgc8JZQlfK
         VIANdcFc7UVUVSOrjrg42Do9HGx0F38v/vaJwT6IrlOmnScVyrHpP1/cdgq2a3qbtdJ0
         iKNv4co2YT/RHdw9Vo1MpGWxcR/Lnnsyj1ZoQy7X3M5pUuoW1necpJYDPBgzUXHVa64x
         SqLMdNkRQM1SZ2jHydVnIpprJZvN4Zib5iT4EeJp56rMeSVO5OmjbWQQdxBWM9vFmrp5
         enWzHi1iJqgClPbISC3lAWrPdeRsg2eATjInHG1zdVjbveA20hee+FTENjrSt7xRogCb
         YHeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IOtAuCnv0nFmGKtz6w5HaC5L1tYiuR+IXDvyYX9FjcU=;
        b=VKjTDPeRk8p9m+juUrXB39/MEuHqjCJGE6XcFFsOUkr1pe52Bmrq1EPBeM2DNtH+p7
         rGqI+Xo3ucpbohly4+dfWOEDHybMLN8/Mi5jueDmjCcL0tGaTrhZmaaV3jWE9ZdkrG3t
         Le120xnfNbiR21sg+srfqtQ15by7SrhwOpm4q8NF5RiDPPsx3nBjlYNx9dMuoZYDRrQy
         978PYcMXDrzDlwEsJIUq1kSoe66d7C45XYyeVPWnCIl1JTPGBuoYcQcWqCFDHCJVZpMf
         XDw92lpjL0LcGqDyekZ1EWOYAptrbfwQ/VKP192Hr91jhrQyQm/nbDDxTPivs5rmGly6
         JyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IOtAuCnv0nFmGKtz6w5HaC5L1tYiuR+IXDvyYX9FjcU=;
        b=IvuuOczvJlymF52se1Yww3MoEWEraIyXSxW103/PoAY/5nC8WHCtzAvqVB0W6c6vyc
         OR1zR2KbxchDTO0VDLthoPdQnHxMXd1rnAsjixlpI5/XYrE8st9vA8YAQVKfv2FdfxvA
         OKFNFQUIq1jba3+fawHwXpbEYj7P7EsSX/aJSYDa+P/BFRtqq2+T1YuoB2lKWNqwnpwU
         GoerTMPWMxj9rZeUuGHG1EAHUkMwtio9RuOQe/76mfk6G089mgYWd4lpj+JMRv5YLLvy
         mQ7A8ntO9tT9AvOTC81ph5+z5EXXPO7jps3z1mvt6zXI4b426n2xdggnoM5UzOBU83Zz
         J/JA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532s6I1tq3kpq3W5/VtTCnKCf7jU2elV7xtYYvk0MaMj/UzjsMw4
	CxAoDuskmPW40YIQ72GrrEk=
X-Google-Smtp-Source: ABdhPJza6tgaENw0Wx894zGTYv8XagXqfR6T1+LtoAlKuaYDSs4MgtzYEZZa91dj9Kh9Y8nP70uwzQ==
X-Received: by 2002:a2e:991:: with SMTP id 139mr14748982ljj.314.1595432784432;
        Wed, 22 Jul 2020 08:46:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8610:: with SMTP id a16ls509113lji.8.gmail; Wed, 22 Jul
 2020 08:46:24 -0700 (PDT)
X-Received: by 2002:a2e:b4d8:: with SMTP id r24mr15416525ljm.19.1595432783990;
        Wed, 22 Jul 2020 08:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595432783; cv=none;
        d=google.com; s=arc-20160816;
        b=PUklw5bVm/iJARLm0IpOkZa8mbUx5t+i/CSKiIMLhNhej1sfMg50k81wSJlGsImju+
         /KGWDQh4BzmsGrO8wL1FD/Dbg2EbcZxCAs9x0yrWSDj8MXOD8zxCsz8eLZ8UgXDDyhw+
         JMpw/aWylhYE3uN1RPuBLjX3lzXkN/GwK2nlCQSdmygsh+JD7G3KtKskkQ9Jay2BA72b
         g9XB5XpqwZAyp2VbACOsMh0PBj9ViBsAXYLuU6BZg+pU16ehC9hKNNTqg63021QrDYg0
         aIr9KcV2l35sER/jMA9j7nwu1+RI2Ek4PeCj4WX+KgeaStp/6+IJQDZlDTPHLXRJdMN0
         yj3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=EWv83PxDD1XR/HESAA9KbiJouE2H1v0rKjO1jVDwlFM=;
        b=on+JRC+9cnOKvIMpOzE6lXd1354RWLQztVKhO9/eihSnP7zXUbSUqI09EMFy5Ya68z
         Rh2FozDsRsYC8NaFsj8U5qk8aSrhFzE4wb+oLpZy417Esb9hfhFdKURhgU6uksF0zSeG
         Zm5KxGzG+nVme6+IKp5qcMP32ddB33sEyUGFHI+RdJZ0PhMhgSuh/cmjfn1qLZ1z0d8K
         i8DklWloiDP8arOSXo+OyFGD7HXHnMCdQQfSjLIaK0rkqq12S/46nKLoFSXH4yA1B6tG
         EY1j9E81mODnl3Wak4/LbwA1M0VICqchnBUTVRxgohAtJjgCgMpqoUQKwdHSiyTlE7nX
         zjpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id k9si9490ljj.5.2020.07.22.08.46.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 08:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id B5431AC83;
	Wed, 22 Jul 2020 15:46:30 +0000 (UTC)
Message-ID: <afe9b10adee7b6085d0e880be84bfa8446b2a6a6.camel@suse.de>
Subject: Re: Issues attempting to use Raspberry Pi 4 serial console on
 mainline
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Robinson <pbrobinson@gmail.com>, Nathan Chancellor
	 <natechancellor@gmail.com>
Cc: linux-rpi-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com,  bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Date: Wed, 22 Jul 2020 17:46:22 +0200
In-Reply-To: <CALeDE9NCjMzzhdwR=oMh4wYjZXf8ekTCi8t_DVq0PLw5xD+8aQ@mail.gmail.com>
References: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86>
	 <63244277a1c8989f87906746742141eba01d8bb5.camel@suse.de>
	 <CALeDE9NCjMzzhdwR=oMh4wYjZXf8ekTCi8t_DVq0PLw5xD+8aQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.3-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: nsaenzjulienne@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
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

Hi Nathan, Peter,

On Wed, 2020-07-22 at 15:41 +0100, Peter Robinson wrote:

[...]

> On Wed, Jul 22, 2020 at 2:27 PM Nicolas Saenz Julienne
> > For reference I just booted linux-next with this setup:
> > 
> > boot partition:
> >         ...Latest firmware files taken from the RPi firmware repo [1]...

Natan, it seems I lied here and been using an outdated firmware version. I've
just validated what Peter comments below, and the last working firmware release
with this setup is Feb12[1]. Given your use case I'd just use that and forget
about it.

> >         Image                   #Copied from linux build
> >         bcm2711-rpi-4-b.dtb     #Copied from linux build
> >         config.txt
> >         cmdline.txt
> > 
> > config.txt:
> >         kernel=Image
> >         enable_uart=1
> >         arm_64bit=1
> > 
> > cmdline.txt:
> >          console=tty console=ttyS1,115200 text root=/dev/nfs
> >          nfsroot=10.42.0.1:/home/nico/netboot/root,vers=3 rw ip=dhcp
> > rootwait
> >          elevator=deadline
> > 

[...]

> > 
> > The issue with the mini UART is its clock, which is derived from VPU's, which
> > is itself controlled by RPi's firmware. Changes might happen behind the
> > kernel's back, and the mini UART divisors will not be updated accordingly.
> > This is an area the we could do better, but no one found a good solution yet.
> > That said, for now, when using the upstream kernel, VPU's clock should be
> > stable as we forbid the firmware from performing frequency scaling on that
> > clock.
> 
> There has actually been a regression in the firmware here, prior to
> mid April if the enable_uart=1 I always had clean output on the serial
> console, since that date on the rpi3/3b+/4 I get a whole bunch of
> junk, revert to an older firmware (I've been using April 1st ) and it
> all goes back to being fine. I've not had time to actually report it
> yet, and it's still a problem with the latest firmware but a quick
> look it likes similar to this issue reported in late April:
> 
> https://github.com/raspberrypi/firmware/issues/1376

Thanks for pointing it out! I missed that bug report. I'll try to get the gist
of it.

Regards,
Nicolas

[1] https://github.com/raspberrypi/firmware/releases

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/afe9b10adee7b6085d0e880be84bfa8446b2a6a6.camel%40suse.de.
