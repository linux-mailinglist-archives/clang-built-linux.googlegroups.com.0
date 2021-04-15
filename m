Return-Path: <clang-built-linux+bncBAABBQXG4GBQMGQEGD7MYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF04E3610C8
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 19:09:22 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id b12-20020a2e894c0000b02900b6dc362639sf2065346ljk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 10:09:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618506562; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKkJsS9OX3uFXCz9jk9REzd92vSqdOIpxKMQ8km+MJaF+l8+ohUaO+kmk0E0hRM5EF
         XxmzdAHhCIQk++LU8NlJSLLwEPd5tw6CuMkZ3qG/FSdgn2cgYWrx+zeZ7WSThbB9+qvh
         bvM5jowdu5rTAzfhgT16JYNjpTKUFulVipOsJK6F2kwGvUokbORnAp0K076HJk4xuGS3
         Ngi0u8kkQGw86gPNn+Ea31Ajf0+2wtgXRF4QUJpLg8PXv0CSZM3DK+yHsC7bh8hfFhPJ
         NyJT8aloYj3uOv4e8F5jXx3gEABy8B/2+/omc0o+tOZ+vTwDfvYSRXxiws8v7gEzXZ34
         5htg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Cth5RDzLje8pLv9tQD7z81vt+BnpruMrl/Pv4dRLzqQ=;
        b=xJBM8KZQfsqg7k0nzP/nPw4YEIivrAAgoJi8lE3JQeq32qCP0GSoLezP/iWqKDYedI
         Ftap4zhiT7Dl/jbsqlGUuQWSzg8up7jS05ylxRg92aNiL8hhEQlJosS/QFSMp7lAkkUH
         FkSh3A/w6w8fkX7Y1NeqG1DH1zR+FvbZyJyfSQbTJLt23SWFlZJz3y4TXFuGIUD2zQvX
         jXcNDPguuULFXdQiB34lXmxeJs/ZlwcChjLgunApMj9aR0b42Ec4Phw83vHyjnuZlbw6
         Na8eRJSxcYiftOMJpZG9+pH2WxELdzHP9QU2yDD6xnIPU0tL56Tt3RXWsNweJ7LPvBbr
         aAdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@foss.st.com header.s=selector1 header.b=RHLBOLsB;
       spf=pass (google.com: domain of erwan.leray@foss.st.com designates 91.207.212.93 as permitted sender) smtp.mailfrom=erwan.leray@foss.st.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=foss.st.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cth5RDzLje8pLv9tQD7z81vt+BnpruMrl/Pv4dRLzqQ=;
        b=WhkLA7nN3bSy+N/B5jrUFJkejOoX2GnLKDLO835h68QOP3NmcdRU1HvPxSKJGukEtF
         f/fUyhcWQTP4FeokgRboqkXj1lwDXOaWHWYaiDGAqwUjuaoEXmUY0AYQYdPjpejwZtgw
         bZB5X1IXJl0XOSc55jgmkxxSXpMw3aR0D1T1tuF8uZvGO0OnXr/k1QWWpw6+SMfif27k
         yW/2BOTLRpZqPXHP42zMHXRMMAz4uCkorHupJAl3Pg5wa4E4GcJXHyZaomLitSNdLumI
         DD3svmmhMDmCx6G0a9fc9khD7k89SrrDMpPKxFQ1YbxEkjpqumwEYLs3zDPB+NaaHdDe
         OGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cth5RDzLje8pLv9tQD7z81vt+BnpruMrl/Pv4dRLzqQ=;
        b=uHWXuYp//aZOC4idedUxQ9k4zGtcpbPlOdhIOPS+vXXST4q0O0kfFJ7NcPjhhj3RuH
         I0VaAJ6QPHWRfUPYVuqwUSFHjeUYXFyI0W5ee9ZJNHzm+1QdxN2p4fXsy7ZoxkO48ian
         Qunij2arfmM8bzrxcAFB0v0XOXffIcimN+cVIyQxgyWyrJoZXIbvQPon3yqSr5GwKK/1
         QHa8L4DuKrMmK6IfSTalLMdjYs0gtSeritrS2cM2u6YEU9XznqGdFjki4R7tgLLr7tHg
         Ey3m3cloCHqbYAUes+Euzypd/FT02ZHP1yi7DzjjgJGXujdD0uhHEypLu5NkE/XeqCVA
         gOnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rQhYGawSL/DVVjkxLV101XZ7K2/21K8Gb5GWYf0593Oub5p7G
	ZA8ir5wGA29xyPu5A4hTECY=
X-Google-Smtp-Source: ABdhPJyVNZSQunkBAHc+6Xnctn5fdBzPCXKAcNhWVsq9gxKsIVaOMnt1/Fv9tWtYfuhSUGfAQuVK/g==
X-Received: by 2002:a2e:9e88:: with SMTP id f8mr139638ljk.88.1618506562489;
        Thu, 15 Apr 2021 10:09:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls1364051ljf.7.gmail; Thu, 15 Apr
 2021 10:09:21 -0700 (PDT)
X-Received: by 2002:a2e:b00a:: with SMTP id y10mr118012ljk.11.1618506561603;
        Thu, 15 Apr 2021 10:09:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618506561; cv=none;
        d=google.com; s=arc-20160816;
        b=tqO9/rIddzM4y8RNflvJhU4u1BvXtavOiRVDy0dn/yUjXYvrjEfPZ4DCKKVp6635XM
         IvCBT2w8DEUhaqC0qIAqqcojn8jp8fQPd3jrQTt5jQ+ipKjIYvlPdRl0Q2xk6DjHVmO/
         2YrMVYNPv3i5EtEssR91KoJIZkgBGOJdN1AZ6HLp526i0lM4WKa9KlOI4Z/V5MD+cCBk
         JMUqQ3a4nMRmGjFsLUIgEH+cOE1UTEtTGigH/lhiutSlCLK6UXYXTtN4djFE6Dl5VZmj
         AKfWCkB3LZgNvNLyA/EuAAno0F/7MJsuuMPi+n1bZ4DRkNDHLdJPbdrbjBEg/5Se9oTd
         hhlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=7NI+mNA8ea+Ydi0rbf2dSjfAozC9MiaZfSB0WmqIqJg=;
        b=aRBEsjm5+RSR3M5TPguDF6X726C26E89qA4iBInUhq48Yn/uChvdzLaOMRU9I5yViY
         94xE7l7N2DrF/Yesoi2YfzPYIE7cm1A19XWYNH5856OXaMnS2PQPKgqRwB/mR0TSjykG
         X6FQ5akB6x5AapJYKGl/bHPwyB0hEiarrST4rJyHO1ImC/acLWG7jf5KBJg/l6Zh+m2M
         fO4jgZwn8uibC9bUFyxcoRvKEw3rX+Y43xY0KUhLDoO7n+/uyLOWbdrC6fP+uNXjUiC+
         A7xeQWfJJSLjpiK325Sc6pWqhFeAnFzgZxRAk96li5PVviHc3INCNuUL1TydedTUnqPT
         mjSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@foss.st.com header.s=selector1 header.b=RHLBOLsB;
       spf=pass (google.com: domain of erwan.leray@foss.st.com designates 91.207.212.93 as permitted sender) smtp.mailfrom=erwan.leray@foss.st.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=foss.st.com
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com. [91.207.212.93])
        by gmr-mx.google.com with ESMTPS id u2si41457lfo.2.2021.04.15.10.09.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 10:09:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of erwan.leray@foss.st.com designates 91.207.212.93 as permitted sender) client-ip=91.207.212.93;
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13FH3SQj006343;
	Thu, 15 Apr 2021 19:09:20 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 37wx401hb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 19:09:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE49410002A;
	Thu, 15 Apr 2021 19:09:15 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 94E512C38DE;
	Thu, 15 Apr 2021 19:09:15 +0200 (CEST)
Received: from lmecxl0566.lme.st.com (10.75.127.46) by SFHDAG2NODE3.st.com
 (10.75.127.6) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 15 Apr
 2021 19:09:14 +0200
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
To: dillon min <dillon.minfei@gmail.com>, Johan Hovold <johan@kernel.org>
CC: Greg KH <gregkh@linuxfoundation.org>, <jirislaby@kernel.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre TORGUE
	<alexandre.torgue@foss.st.com>,
        kernel test robot <lkp@intel.com>, <linux-serial@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>,
        <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        Gerald Baeza <gerald.baeza@foss.st.com>
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
 <YHRGPpQ03XgBMkiy@hovoldconsulting.com>
 <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
 <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com>
From: Erwan LE RAY <erwan.leray@foss.st.com>
Message-ID: <e17fddfb-f9b8-238f-da74-a4746f33134f@foss.st.com>
Date: Thu, 15 Apr 2021 19:09:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-15_09:2021-04-15,2021-04-15 signatures=0
X-Original-Sender: erwan.leray@foss.st.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@foss.st.com header.s=selector1 header.b=RHLBOLsB;       spf=pass
 (google.com: domain of erwan.leray@foss.st.com designates 91.207.212.93 as
 permitted sender) smtp.mailfrom=erwan.leray@foss.st.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=foss.st.com
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

Hi Dillon,

STM32MP151 is mono-core, but both STM32MP153 and STM32MP157 are 
dual-core (see 
https://www.st.com/content/st_com/en/products/microcontrollers-microprocessors/stm32-arm-cortex-mpus.html).
So your point is fully relevant, thanks.

ST already fixed the same issue in st-asc.c driver in the past (see 
ef49ffd8), because a systematic deadlock was detected with RT kernel.

You proposed a first implementation in your patch, and a second one in 
the discussion. It seems that your initial proposal (ie your V2 patch) 
is the most standard one (implemented in 6 drivers). The second 
implementation is implemented by only 1 company.

It looks that the solution is to avoid locking in the sysrq case and 
trylock in the oops_in_progress case (see detailed analysis in 
677fe555cbfb1).

So your initial patch looks to the right proposal, but it would be safer 
if Greg could confirm it.

BR, Erwan.


On 4/13/21 1:44 AM, dillon min wrote:
> Hi Johan, Erwan
> 
> It seems still a bit of a problem in the current version, not deadlock
> but access register at the same time.
> 
> For driver , we should consider it running under smp, let's think
> about it for this case:
> 
> static void stm32_usart_console_write(struct console *co, const char *s,
>                                        unsigned int cnt)
> {
>           .....
>           local_irq_save(flags);
>           if (port->sysrq)
>                      locked = 0;
>           .....
>           access register cr1, tdr, isr
>           .....
> 
>           local_irq_restore(flags);
> }
> 
> if port->sysrq is 1, stm32_usart_console_write() just disable local
> irq response by local_irq_save(), at the time of access register cr1,
> tdr, isr. an TXE interrupt raised, for other cores(I know stm32
> mpu/mcu do not have multi cores, just assume it has), it still has a
> chance to handle interrupt.  Then there is no lock to protect the uart
> register.
> 
> changes to below, should be more safe:
> 
> .....
> if (port->sysrq || oops_in_progress)
>        locked = spin_trylock_irqsave(&port->lock, flags);
> else
>        spin_lock_irqsave(&port->lock, flags);
> 
> ....
> 
> if (locked)
>       spin_unlock_irqrestore(&port->lock, flags);
> 
> For current stm32 soc, it shouldn't happen. just a reminder for future.
> 
> Thanks.
> 
> Dillon
> 
> On Mon, Apr 12, 2021 at 10:04 PM dillon min <dillon.minfei@gmail.com> wrote:
>>
>> Hi Johan,
>>
>> Yes, there is no deadlock. my fault.
>> I forget the local_irq_save() plus spin_lock() is spin_lock_irqsave().
>>
>> Thanks for your review. please ignore this patch.
>>
>> Best regards
>>
>> Dillon
>>
>> On Mon, Apr 12, 2021 at 9:08 PM Johan Hovold <johan@kernel.org> wrote:
>>>
>>> On Mon, Apr 12, 2021 at 05:31:38PM +0800, dillon.minfei@gmail.com wrote:
>>>> From: dillon min <dillon.minfei@gmail.com>
>>>>
>>>> To avoid potential deadlock in spin_lock usage, use spin_lock_irqsave,
>>>> spin_trylock_irqsave(), spin_unlock_irqrestore() in process context.
>>>
>>> This doesn't make much sense as console_write can be called in any
>>> context. And where's the deadlock you claim to be fixing here?
>>>
>>>> remove unused local_irq_save/restore call.
>>>>
>>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>>> Cc: Gerald Baeza <gerald.baeza@foss.st.com>
>>>> Cc: Erwan Le Ray <erwan.leray@foss.st.com>
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
>>>> ---
>>>> v2: remove unused code from stm32_usart_threaded_interrupt() according from
>>>>      Greg's review.
>>>>
>>>>   drivers/tty/serial/stm32-usart.c | 8 +++-----
>>>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
>>>> index b3675cf25a69..b1ba5e36e36e 100644
>>>> --- a/drivers/tty/serial/stm32-usart.c
>>>> +++ b/drivers/tty/serial/stm32-usart.c
>>>> @@ -1354,13 +1354,12 @@ static void stm32_usart_console_write(struct console *co, const char *s,
>>>>        u32 old_cr1, new_cr1;
>>>>        int locked = 1;
>>>>
>>>> -     local_irq_save(flags);
>>>>        if (port->sysrq)
>>>>                locked = 0;
>>>>        else if (oops_in_progress)
>>>> -             locked = spin_trylock(&port->lock);
>>>> +             locked = spin_trylock_irqsave(&port->lock, flags);
>>>>        else
>>>> -             spin_lock(&port->lock);
>>>> +             spin_lock_irqsave(&port->lock, flags);
>>>>
>>>>        /* Save and disable interrupts, enable the transmitter */
>>>>        old_cr1 = readl_relaxed(port->membase + ofs->cr1);
>>>> @@ -1374,8 +1373,7 @@ static void stm32_usart_console_write(struct console *co, const char *s,
>>>>        writel_relaxed(old_cr1, port->membase + ofs->cr1);
>>>>
>>>>        if (locked)
>>>> -             spin_unlock(&port->lock);
>>>> -     local_irq_restore(flags);
>>>> +             spin_unlock_irqrestore(&port->lock, flags);
>>>>   }
>>>>
>>>>   static int stm32_usart_console_setup(struct console *co, char *options)
>>>
>>> Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e17fddfb-f9b8-238f-da74-a4746f33134f%40foss.st.com.
