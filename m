Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFN56GEAMGQECAKUS3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 330A93EF733
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 03:12:54 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id e17-20020a0562141511b029034f8146604fsf970828qvy.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 18:12:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629249173; cv=pass;
        d=google.com; s=arc-20160816;
        b=bR5dyF35BfTlBeF75k8c3+3V+4LsnJK2cAK/idYpTUu1QSSGpb0EhWDz9H1fLw4ZRN
         k1lzTDqVL5RlJ6dUKWZ0ztxlsUgrdODJ7Xln/6fB/4B8kJn7HPhJfWevK+gqOwvAinDW
         P0bxCWUC6RPa2FVctfF6i0vgQHQeD2fDM10QJA+w9EUxLfnkWCJILlWDp2ZFyoPmeB/Y
         bLTFfgmjG+YtE+Z1H/J+9Tf0EFXA218DXD6FlQVPAHfM9zC0hKIJf6QsUyqojWsEzkHp
         2VZFxtc/oSBC3FvxASA870lAc3kc1MBjzo2+gtVlYxprgitLlKwyzL9yiXSbHIZcROUt
         PQTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=KA0NMbCue/2vRQDlQXZRp7ecop+/YeiAM+0hw7hbYl8=;
        b=LHT3NMbhexHFZ65jsDUz7KH3TNK1kueMgXauGcaTh50BM/WyVf47O8vQ+P5cEOyO+z
         DREkcW0zhMnfoxmuK6YjIU+kmhmqhldc4jnC+GAC2jLxbbAxhy48D+ZKHwgyWHZQTxBw
         SSR7omQEnIrSdotqM7gZaoiUSM9FN+gJs1k52htv4UVdvqBmtJWwi+t8hysyjexPQIfO
         apw6y0NaBw5ICuPESq3CVW3XGt9Y/jv8YCY2oruoEBoTAYYt4QSns+6SXR0cEyKsS5Eh
         YlA+IVkAIobZHqRyrrptDxarm1p5qstRLlskkYpyWoFCelUN9KRxQJ+qQuG8BynXs4Ks
         d/Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J91kq0ua;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KA0NMbCue/2vRQDlQXZRp7ecop+/YeiAM+0hw7hbYl8=;
        b=YKb1w4bWgd3IcQXWJDklw6NFGf5s/CBFtsGdxQUARfz6SkGjHR7RtWbI69DBVPy5Q0
         uuD+9j61cAOf7VQI0V8I/McfyBUsxKdMNBAMv08UcdlqURgKEvi3J/1obsn/AVDmsuix
         ZlSpSzp1Y5J9zmJ5E6C+7JHX67kd5eu7MbsfzUdJLo7JqXm3/oY6WeMlatZNNnZNBrg3
         4Y2QMELRLHp0aqz65JjPwIcwRKKr8KyognqdrQgQduh7/7eyoC7TXWSD6YUvnYf4Ei1N
         QVbN2tz4E+HQii8ry+KAd7/XYOf3W4960jbwjIp2i886oxJKtqH5ldZ3Gsou2Wk22cj8
         Sa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KA0NMbCue/2vRQDlQXZRp7ecop+/YeiAM+0hw7hbYl8=;
        b=q78ofAQdKzWqemXcSIIm+vcUSmKVUm/sRfv30mBMpddNznLrQYpIOStxvKnGZQ1ck8
         hQ+vZrRdKyXqg7CPxfJqx1a5fRni/Kn9xCd3K2zdmR/GAfTRKLZ3C98lJ5Tqz4GzGJQs
         q1bWmq1vi9TeSOkewi2T29XjGW73lqSRxMBGVmSV43po4xwJ3yzdklOXyGPIyJ8lBpCT
         1B6VyAYvuednPaNKufPdpBCQsgYaWlV+wuD92hpR6WlKCh1s31m5eSvOSZYbE4w3Imm3
         ykpujNZUUgdinEdBQMsghm99Q/hM5mxmxbM90SSAkMnaWFmVnVoMK0wNcjIN03k2SsTx
         ckmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wYTWIo/vEEiXBhsqpQ4IoHFmUl17/gxuRlm9g6uzFbhLS0ajd
	S+g8DqAT+lZKv+PcOL7m9ks=
X-Google-Smtp-Source: ABdhPJxSkKSo4VjSHy4vhibFZNrKI65XBQYVebWlKNITz/iRSU+xT5BWHP/hHI6qpM/wU3qTbCIzeA==
X-Received: by 2002:a05:6214:1933:: with SMTP id es19mr6469925qvb.42.1629249173305;
        Tue, 17 Aug 2021 18:12:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e605:: with SMTP id z5ls391092qkf.8.gmail; Tue, 17 Aug
 2021 18:12:52 -0700 (PDT)
X-Received: by 2002:ae9:f005:: with SMTP id l5mr7071818qkg.355.1629249172796;
        Tue, 17 Aug 2021 18:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629249172; cv=none;
        d=google.com; s=arc-20160816;
        b=hcyQ1EjIGxUiGn+16CvODudDxmErzRMQ8atOT/4jwlXIUixub0CT6h+uxrxI8XQXgA
         Rro8NlG304Cz2Y0Hs5cS7mtt71d2YuOoL9AyGPZ4NThiWDaatqIuAX5Uo9CmFSLkTn3a
         fy0vEVscPZL0DjI96wqLo5qe5gK7yykDlCST2cS1WttpuTgEXj0aYiCWg8RFWFu7nNnV
         t29XKzp4SAh2X+tZx7Egha+BUD55M7UmGs0wmQZZhMGzMxV4L1yL8lNhYOFsmqqf4V9n
         Nyc8bAV4FZnY70S6jhjg3mjzEz4veADApQh1FTNCxdoRd3UvbOA44lt7pUAoN7V8Iza9
         7DOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=nxF4uWoqKlS3T+jVQqBlxu0+GEWpiT2RvHNSG5nn5+k=;
        b=jiJcepkgqF0i8H/TwuV413SGgRcgnOByHU9Ier5CjUoxznRPNK0SYr6ZegcNUm0ktO
         Y9m23BibRve87uOuMKEhtbjmULaxLIgWG+9sphFxkdxV421QmuZSScyTyyvh2VjjW//P
         hSG+uTZe7EPeJ94B6lLMk6Uy9P+gEuDJo84v4CDnxzpMbReAe3u+TEyPIhW1345I1gut
         G3qrZYqGSwL7Jm1obafzFfxBLyANgstNaopvM9L4vzxESekqynGZ+InL4ZHBWDSJDxNN
         UzDKP5KmAStfrPZE+br0TG3FYiYXXXbcTnii8avInK723kJkZk5wsjWZjWQ3DgQ6qaYZ
         0eLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J91kq0ua;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 10si253475qtr.1.2021.08.17.18.12.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 18:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BFEA6101A;
	Wed, 18 Aug 2021 01:12:50 +0000 (UTC)
Subject: Re: [PATCH] scsi: st: Add missing break in switch statement in
 st_ioctl()
To: Finn Thain <fthain@linux-m68k.org>
Cc: =?UTF-8?Q?Kai_M=c3=a4kisara?= <Kai.Makisara@kolumbus.fi>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210817235531.172995-1-nathan@kernel.org>
 <7843ce6b-92ae-7b6c-1fc-acb0ffe2bbc0@linux-m68k.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a3499a19-d9ed-b8e5-341e-0aa02774b645@kernel.org>
Date: Tue, 17 Aug 2021 18:12:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7843ce6b-92ae-7b6c-1fc-acb0ffe2bbc0@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=J91kq0ua;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/17/2021 5:54 PM, Finn Thain wrote:
> On Tue, 17 Aug 2021, Nathan Chancellor wrote:
> 
>> Clang + -Wimplicit-fallthrough warns:
>>
>> drivers/scsi/st.c:3831:2: warning: unannotated fall-through between
>> switch labels [-Wimplicit-fallthrough]
>>          default:
>>          ^
>> drivers/scsi/st.c:3831:2: note: insert 'break;' to avoid fall-through
>>          default:
>>          ^
>>          break;
>> 1 warning generated.
>>
>> Clang's -Wimplicit-fallthrough is a little bit more pedantic than GCC's,
>> requiring every case block to end in break, return, or fallthrough,
>> rather than allowing implicit fallthroughs to cases that just contain
>> break or return. Add a break so that there is no more warning, as has
>> been done all over the tree already.
>>
>> Fixes: 2e27f576abc6 ("scsi: scsi_ioctl: Call scsi_cmd_ioctl() from scsi_ioctl()")
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> ---
>>   drivers/scsi/st.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
>> index 2d1b0594af69..0e36a36ed24d 100644
>> --- a/drivers/scsi/st.c
>> +++ b/drivers/scsi/st.c
>> @@ -3828,6 +3828,7 @@ static long st_ioctl(struct file *file, unsigned int cmd_in, unsigned long arg)
>>   	case CDROM_SEND_PACKET:
>>   		if (!capable(CAP_SYS_RAWIO))
>>   			return -EPERM;
>> +		break;
>>   	default:
>>   		break;
>>   	}
>>
>> base-commit: 58dd8f6e1cf8c47e81fbec9f47099772ab75278b
>>
> 
> Well, that sure is ugly.
> 
> Do you think the following change would cause any static checkers to spit
> their dummys and throw their toys out of the pram?
> 
> @@ -3828,6 +3828,7 @@ static long st_ioctl(struct file *file, unsigned int cmd_in, unsigned long arg)
>   	case CDROM_SEND_PACKET:
>   		if (!capable(CAP_SYS_RAWIO))
>   			return -EPERM;
> +		break;
> -	default:
> -		break;
>   	}
>   	

I cannot speak for other static checkers but clang does not complain in 
this instance. cmd_in is the switch value, which is unsigned int; as far 
as I am aware, clang will only complain about a switch not handling all 
values when switching on an enumerated type.

Gustavo, if you are already handling all of the other warnings in -next, 
do you want to take this one too?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a3499a19-d9ed-b8e5-341e-0aa02774b645%40kernel.org.
