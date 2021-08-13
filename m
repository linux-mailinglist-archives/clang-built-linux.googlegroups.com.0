Return-Path: <clang-built-linux+bncBAABBL5R3KEAMGQEMQJ5REA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCCB3EB9BD
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:07:13 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id q7-20020a0568082007b0290267cebbbabesf4583862oiw.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 09:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628870831; cv=pass;
        d=google.com; s=arc-20160816;
        b=HaSb8iaAQ2/HWt2peUeYfsoF/3+QoxYWY2hoTVFh80lncHBkhLofyC6pAUFvHpNW5o
         hEjTjjLqKZUSBMt1bFN6uWUCoZ/AvthtwnskT1cOqH02GnlcuQFJqF6+drRyKZIRH6oL
         4XdVlYd7Sdcdb4of/7KoDP6dpwWCjOHVrJEzYGd6oZ2iPFSrwIRgwfCfwE68R1f0ZHgp
         +8LTjoT7ZUVIS7LFQ1hC8IXxcCs50fmyBmUD8Dcr+JpkVDsleAlJIsS9pf3uSb8hgjlY
         wD/rtMWKhd3vcMLiUWUvFNXnezRYio2A/8v4n8VdYaG0fVP71VU96ZUaDmgTaZzsTKgr
         wNTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=q+dExKTb7dWQMN28wRxqxO8osQWj5tEVhrjI9HgeD24=;
        b=bfbE3I1+TcJdT7KTk9Bg1JxmkBcFHl5XJcL01UKEaAc56Y4bThzcYuxEPb3XgzIFbu
         3/LnIzmq8itn1luZ6aSd+7+PLkT+xs9nddq7eIldBjRgrC3ZQ+OG5EQ6COTSXbFUN2QW
         G9njmMsWJQoQhNHCbutnF1uBHWQPKCGtZQDpferpA7E1xYDrqD2gvVzYdfSAhQXyNxGU
         8iOjIRcu8WaV8s2GVoUXRmPG0DWHG1MO9yr+t5oe0r8un5qSHsknnMegKE3hPNDOfBsV
         9c24am33rwxBF7dFBtutR7wsceZoua6yuQJFfyHX5SCLoAO5BN4m7U5QSlzmQMPLiPrV
         ixOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of xianting.tian@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=xianting.tian@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+dExKTb7dWQMN28wRxqxO8osQWj5tEVhrjI9HgeD24=;
        b=bx2Q6dfrvr4u1bTPqZ8L1gy7aiBMN9NX3AQkL+0sXHdSg+GPN4ccMSxRV4zMtKNX5k
         Ez5ivWCwwNU0cKhxQyB58n8yqJbKvzc9CMW8w8mM67Q4acd0VQ/Yk7Yyl6GXw9A/YmMB
         h7LMULr6YfN00J8cS6+fvKZoaCH6TUtvKWFsZpt7HWCr5QVRtXtNYKxhDBGlaLLMJD+5
         Vh2ulDZW2kZ+oQmSiNSu0Wqv6zkdqUuTajzR/pJ+FUgRmTEGJGRRQ90gX7kCfZ8Ea56z
         u5CFKl1rvQuCxX4Buz30WvZbIZIoiEDj+ebi1a1hrBPPOqgMET6Q2ImloQOARCz+tVud
         jlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q+dExKTb7dWQMN28wRxqxO8osQWj5tEVhrjI9HgeD24=;
        b=P2bEla6lj/GCDhVrWMKh22pdAYx9cWkSHxg+UYFQlgrS6lLg2OshQ4E68WZAURREwo
         17UOglaB1EQXGx3AhD5wUPBeT13L3obBpAvOzcrJYtPu6W9bxa0TNfNheGbw6JF4A7cs
         pEBMhTRgI44HWmjfYWHhf/Pf5Z2bmPaXeiEeXjPdCSJgZ0xq1Oq86yQDO5I7JXbcthvA
         J5ELtuL8lJcF4zeI9iz09HhLB1ulIwxgv/cYte/EF8MQvqLPM9Vmgbl7Zc/W59k3R+MO
         4hJDdmCdYUpRJ3Ught9CLUPZKOHBUpyaEI2mrudCoOI1QxSGVSfauiEuZ0pqDI8YBs2b
         TJwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329/qcwZL6Wx5DfZYjCan8NRgKzbfsTHNZHaSLZq+QOITdmV9Gq
	bd/Nz829+y5K6RGQvIDsZNA=
X-Google-Smtp-Source: ABdhPJwxqwLdftS5FcUpJMnG+HsPzE0qYC4aX3eLWzcVGuMT9j6wYlHWMaI0v/0JgsVOMaMbAao5nQ==
X-Received: by 2002:a9d:222:: with SMTP id 31mr1341055otb.79.1628870831754;
        Fri, 13 Aug 2021 09:07:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:18a5:: with SMTP id bi37ls532371oib.9.gmail; Fri,
 13 Aug 2021 09:07:11 -0700 (PDT)
X-Received: by 2002:aca:3c44:: with SMTP id j65mr2649539oia.35.1628870831464;
        Fri, 13 Aug 2021 09:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628870831; cv=none;
        d=google.com; s=arc-20160816;
        b=DAuXmPg8CXk1nB7zpDmBx4CUEdLIEbB0fLvbXGYEmbtou20T/3ybS2qK2BGKHgi8AX
         UaDd3g3fU8jNJ42p/ExOQAuw5YsL0vmlP9osxD3YdY18A1pziYoMZpxFl5RVHaUXfJan
         qNd98zYorlZoGvnsqEV4/mCPpQDyFRKtt9mmcW23MhrCXteVYQiTvccBXvPtSMR+Z3Uq
         ELeHrVoBqkJm87jXFc9Vi/kEw2Pt9Za2kZJhT2MvFiH6L4CnwUciHL31J9BH8kOaNweF
         /OvGHVE20eL/5KYe78tgpN1jXCFVhxcx1o74trS0VM36VG+gwSxyQmpJNzwtymVhhu3P
         Zj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=ebAKl0jat3NaVD7XiTEhxvzBYKy4ch7+8DoQhpZ2Gfs=;
        b=0pVlHTNs0HTndHii9tPBHq4odODIGLGBktvene3Z+GrJV71YCPGoW/nAj0rJ68glZd
         Hf2JRKkhUblB2G10AnF2tkQ3tRpQXH5TAJBRlfOX0C1a9v+M4d6FEomf4SRw2uF+hPQx
         0K5WKIQG2hmasdPBrnZT4g+4N7mX9S6r4sFygn7czoFejFAgi1DNMP99nGrDfYopgBSq
         fUJnhkW3G46GxQ94iVEu6lgB7gIATbHmUTPowE+LUl5oF2jlYL2KzJRMZ8jZ2+NLDJx0
         ps/lzQYJrxtQGVa/nPBLll2WY7Fi8N80eLVyQApdZLe1+/e6yTAcfK10OyM75hEnHKmC
         QfiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of xianting.tian@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=xianting.tian@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-45.freemail.mail.aliyun.com (out30-45.freemail.mail.aliyun.com. [115.124.30.45])
        by gmr-mx.google.com with ESMTPS id p11si164895otp.5.2021.08.13.09.07.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 09:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of xianting.tian@linux.alibaba.com designates 115.124.30.45 as permitted sender) client-ip=115.124.30.45;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R441e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04395;MF=xianting.tian@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UiuMApe_1628870823;
Received: from 30.212.146.149(mailfrom:xianting.tian@linux.alibaba.com fp:SMTPD_---0UiuMApe_1628870823)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 14 Aug 2021 00:07:05 +0800
Subject: Re: [PATCH v6 1/2] tty: hvc: pass DMA capable memory to put_chars()
To: Jiri Slaby <jirislaby@kernel.org>, gregkh@linuxfoundation.org,
 amit@kernel.org, arnd@arndb.de, osandov@fb.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linuxppc-dev@lists.ozlabs.org, virtualization@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
References: <20210812094532.145497-2-xianting.tian@linux.alibaba.com>
 <202108122040.lBf24DNp-lkp@intel.com>
 <0c808001-7643-fdcf-66ba-738654ec0c21@kernel.org>
From: Xianting TIan <xianting.tian@linux.alibaba.com>
Message-ID: <9f6b0b31-b2fd-0706-b40f-d7ffc5c48737@linux.alibaba.com>
Date: Sat, 14 Aug 2021 00:07:03 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0c808001-7643-fdcf-66ba-738654ec0c21@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: xianting.tian@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of xianting.tian@linux.alibaba.com designates
 115.124.30.45 as permitted sender) smtp.mailfrom=xianting.tian@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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


=E5=9C=A8 2021/8/13 =E4=B8=8B=E5=8D=881:53, Jiri Slaby =E5=86=99=E9=81=93:
> Hi,
>
> On 12. 08. 21, 14:26, kernel test robot wrote:
>>>> drivers/tty/hvc/hvc_console.c:190:26: warning: variable 'hp' is=20
>>>> uninitialized when used here [-Wuninitialized]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 spin_=
unlock_irqrestore(&hp->c_lock, flags);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~
>> =C2=A0=C2=A0=C2=A0 drivers/tty/hvc/hvc_console.c:149:23: note: initializ=
e the=20
>> variable 'hp' to silence this warning
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struc=
t hvc_struct *hp;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D NULL
>
> So you clearly didn't test your change as it would crash quite=20
> instantly. I wonder, where do you intend to get hp from in the=20
> console::print() hook?
>
> thanks,
According to analysis, this issue may can be solved just by adjust the=20
alignment to L1_CACHE_BYTES: =E2=80=A8
#define __ALIGNED__ __attribute__((__aligned__(L1_CACHE_BYTES)))

Our analysis as below, the original __ALIGNED__ is sizeof(long) which is=20
8 for 64bit cpu.
char c[N_OUTBUF] __ALIGNED__; //c[16] __ALIGNED__;

For 4K page, c[16] may cross the page when alignemnt is 8.

In the case the physical address of c[16] is noncontiguous.
|------8----|..........|-----8-----|=C2=A0=C2=A0=C2=A0 PAGE_1
..........................|-----------16----------| c[16]=E2=80=A8
.........................................|-----8-----|.............|-----8-=
----|=20
PAGE_2
But when the alignment is L1_CACHE_BYTES(eg, 64), or at least=20
N_OUTBUF(16), we have no dma issue as c[16] won't cross the page, the=20
physical address of c[16] is contiguous.
|--------64--------|.........|--------64---------| PAGE_3

..................................|--c[16]--|

Could you help comments this?=C2=A0 thanks

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9f6b0b31-b2fd-0706-b40f-d7ffc5c48737%40linux.alibaba.com.
