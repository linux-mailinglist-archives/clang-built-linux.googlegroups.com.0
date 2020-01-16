Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBYNSQPYQKGQEG3VLDMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5BC13FBAB
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 22:45:06 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id o13sf17093812ilf.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 13:45:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579211105; cv=pass;
        d=google.com; s=arc-20160816;
        b=XK1jqW4Req88qLePsZ9LCFH3PvjSnFH7Wq4Uq0Z9nYa3EU4nMPo5C8/nr6TZ7enWNB
         b1+DxmNvIsrlyovAxpYLv5H604ojXxb/52DvmhVdD13C4worgMcFrXlhmNx3VSvzvHt3
         pwOyZl7+NCjwuzWQBmcdVf+IlG/qRgxds0eTtkGg1AvCqeUYJQoe+0I/8HlViczXEqxr
         kCg3bc2jGmmuKmpOvfQdN7OLhmX0uMChUCHA4rY47VysahERhQY8McqxnLM3v0X8JCKj
         HqR4ZDSYY8LkQk/VXgcA+CjVv7NaLKgM+YE1KECqazQstgkd+/r9Bsci271iZ/Ks1u1l
         2uog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :user-agent:in-reply-to:references:subject:cc:to:from:message-id
         :date:sender:dkim-signature;
        bh=aVWTJNesYTbxPKwe2H2yCssDdXN2IbB+YdBbHsJ0goM=;
        b=Z3a4SzUz6GW2vQKKHVcGMUFArUQbSuSWxoIqV8qVt+vJ0u0xltIQ+UK2VUaQbfgJuJ
         pToK83/nKUCC+s/2eM5Q0gs3hExEt27eW6QmvvL6IDwv/LRLfu7LQvx+fxBzXZvD+8C7
         TcKyofnTUlkPTQle4NJte1i1UGzc8xYI6PwlRWD2pCUn9xEHQ3wYlW0bEIJ+wxPt86xg
         Ouj+BkrsMOxqTp0GERB8r3qoJGMVYa5LzEHdzmxsAm7vHmgA7iRHJE3iM3zoNSzmo5Bo
         5Yi2so5cwpEK4LQ7/DGP91S/xmU+KmGy8D+KDI9aEtq6vk8BAQzS4Mh1+Ii2sE5WavXV
         s9IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=jA97zYVT;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.47.206 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:references:in-reply-to
         :user-agent:mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aVWTJNesYTbxPKwe2H2yCssDdXN2IbB+YdBbHsJ0goM=;
        b=pb9Emwr5lVtxgC5H/vcT60PX9odhn2Sy9UH5MnDrF/2+xYq/nzOXz1vj76BmJyMH66
         GxQxeARLx1ETxvKBUKAnp1O/C93QhHqV8XS08mICwH+p0HCE/rgpdKmSkdmN10dnnqKv
         GlcaSZeayzpuUESfmKREXpo7+F/UAtkBk7HyjbqjbcK3jBnLe32oyqhT8+tNxVXJn+ka
         n0EiX4DcamcSSZF5m+KpYeZw0DPW4GWRU+DBfUIEwyvnaMRC6hlkjaI8SqbTenETUhZV
         XCD22zwjwP+F2NNUpftV+p5F5g3jtQaKG8t58QVyRG+fgG9JXzcJVIQVewtXWlYp+MY2
         UvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :references:in-reply-to:user-agent:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aVWTJNesYTbxPKwe2H2yCssDdXN2IbB+YdBbHsJ0goM=;
        b=GIa7gSV1nNwNTSRLHhvjwNFvetTkA9oYSpRhmgOtD4LK27+Ao/E7OQ2PdYsezKmYYb
         j2Ay0srPg7S/K+COxnWaXgTfmaziEKuQBEjMQk59F7KKmUxaqIMnOxgakYoRfhriKY6K
         QyMNk3naSMqTUNUaYlIp7ELIhOgfrt3aH4IecRWQXxBu/5cAzo1Yt4VeZkJJSbtZ1mj4
         RwmLPoVN9bAHuQvortog1de4nBKp8+avl5wwt7dIiwHO2VbXlka4/deII9yBl6dYoVbt
         BDfUm+5A39LrGgme96WixigP8O/g4o50d/p79dF8BX30NxJt6e48z+WcNPF+T5zkFyPD
         L9OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWWQ959e2SHwFeFFjNeinqZ+dJqPaQ14b/+AXPGh0O3jnxme2Pk
	Zelcv2C2FhLOt5dRc0gmj3E=
X-Google-Smtp-Source: APXvYqzwE6q+3h9528VFdYwbvZuO/8CZuG2UFnlTWZpCPrZCYs8JZwRn3/o3r4dA9cUUAVLRToai5Q==
X-Received: by 2002:a92:84dd:: with SMTP id y90mr316263ilk.99.1579211105401;
        Thu, 16 Jan 2020 13:45:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9807:: with SMTP id s7ls3749057ioj.13.gmail; Thu, 16 Jan
 2020 13:45:05 -0800 (PST)
X-Received: by 2002:a6b:8b15:: with SMTP id n21mr28368428iod.110.1579211105003;
        Thu, 16 Jan 2020 13:45:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579211105; cv=none;
        d=google.com; s=arc-20160816;
        b=OJUW2gu1/DODuO8SFXmI/xZ70eueKpNTbNacUOefk3PZ/+1Nwt7E5bBnUguJ0O0rwf
         6VSvGnUvio8snuDMFAfRc4Ti4KUVKULoL2J9ZFKusdbU5V3+uSQJsY9FF3UrhLtNx8YT
         N2NBBxq2i5xSsNmhM0dPRRMYmx5byxZdscq05xxLmgdfa8k0079CSknVL1d8BFrxDKk7
         jGE3xs7FMsZXu4ok6eO2TVk1IzGjEDHvxwxUb5Cfc+PtTh8xAR9lSRc0Ef4DU93pGDP3
         K9JWkrO+rXbnBRbMQLyaiVELcM6bDiZPrgnI+9fGufuj/Yuoi/kjnxLNBZdhZbxdKwY9
         lnzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:user-agent:in-reply-to:references
         :subject:cc:to:from:message-id:date:dkim-signature;
        bh=Uo2cT09CAUfsX0mNEXeVuvzQ9UQGtxxGE/nVeDW36gs=;
        b=mn8HX1YOvfOMUD0P6r9nLkfFAwXGP7bXyFsabrh2mfvWIk/foh6CuhNQmxUU39y3EF
         wgRp81Cuf5KTvTS3JlTYDgDZZViUAXxXQfVEBmz3o736rKIxJPAv5sBNMOE/3rlM5tgX
         YKShOuN0s2DFlPZdSLWbdDUqYZYjKou6dExrdam+Cg5BCylNG6gaajeltSDL+oz4xxaT
         7kfFhqtiYw0H2HUvnvf/IpIQ2U0u+K1E3IV+yAYoNpck/KLshzNuojTOrJJC6aAeVKQN
         DUdB31PDO6X0lNHYobiPefcmZcA49X2Oi8twgT3saK/vgRS5LHqHdfBXStZBKoWx40Im
         Rl2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=jA97zYVT;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.47.206 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com. [192.185.47.206])
        by gmr-mx.google.com with ESMTPS id z20si1101288ill.5.2020.01.16.13.45.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 13:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.47.206 as permitted sender) client-ip=192.185.47.206;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway22.websitewelcome.com (Postfix) with ESMTP id 672C9BE31
	for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 15:45:04 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id sCwqiqZOP32AdsCwqi1ELz; Thu, 16 Jan 2020 15:45:04 -0600
X-Authority-Reason: nr=8
Received: from gator4166.hostgator.com ([108.167.133.22]:41607)
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1isCwp-000U4i-WC; Thu, 16 Jan 2020 15:45:03 -0600
Received: from [187.162.252.62] ([187.162.252.62]) by embeddedor.com (Horde
 Framework) with HTTPS; Thu, 16 Jan 2020 15:45:03 -0600
Date: Thu, 16 Jan 2020 15:45:03 -0600
Message-ID: <20200116154503.Horde.MnWaeq-f0qzzp8gx01ERP2p@embeddedor.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Dmitry
 Vyukov <dvyukov@google.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] media: i2c: adv748x: Fix unsafe macros
References: <20191022132522.GA12072@embeddedor>
 <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
In-Reply-To: <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset="UTF-8"; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 108.167.133.22
X-Source-L: Yes
X-Exim-ID: 1isCwp-000U4i-WC
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: gator4166.hostgator.com [108.167.133.22]:41607
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=jA97zYVT;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.47.206 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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

Hi!

Quoting Nathan Chancellor <natechancellor@gmail.com>:

> On Tue, Oct 22, 2019 at 08:25:22AM -0500, Gustavo A. R. Silva wrote:
>> Enclose multiple macro parameters in parentheses in order to
>> make such macros safer and fix the Clang warning below:
>>
>> drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
>> has lower precedence than '|'; '|' will be evaluated first
>> [-Wbitwise-conditional-parentheses]
>>
>> ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
>> ? ctrl->val - 1 : 0);
>>
>> Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
>> Reported-by: Dmitry Vyukov <dvyukov@google.com>
>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com
>
> It doesn't look like this was picked up? I still see this warning on
> 5.5-rc6 and next-20200113.
>
> If it helps:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>

Thank you, Nathan! :)


Friendly ping:

Who can take this?

It's been almost three months now since I first sent this patch out.

Thanks!
--
Gustavo

>> ---
>>  drivers/media/i2c/adv748x/adv748x.h | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/media/i2c/adv748x/adv748x.h  
>> b/drivers/media/i2c/adv748x/adv748x.h
>> index 5042f9e94aee..fccb388ce179 100644
>> --- a/drivers/media/i2c/adv748x/adv748x.h
>> +++ b/drivers/media/i2c/adv748x/adv748x.h
>> @@ -394,10 +394,10 @@ int adv748x_write_block(struct adv748x_state  
>> *state, int client_page,
>>
>>  #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
>>  #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
>> -#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
>> +#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
>>
>>  #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
>> -#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) |  
>> hdmi_read(s, r+1)) & m)
>> +#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) |  
>> hdmi_read(s, (r)+1)) & (m))
>>  #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
>>
>>  #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
>> @@ -405,11 +405,11 @@ int adv748x_write_block(struct adv748x_state  
>> *state, int client_page,
>>
>>  #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
>>  #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
>> -#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
>> +#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) &  
>> ~(m)) | (v))
>>
>>  #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
>>  #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
>> -#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
>> +#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
>>
>>  #define tx_read(t, r) adv748x_read(t->state, t->page, r)
>>  #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)
>> --
>> 2.23.0
>>



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116154503.Horde.MnWaeq-f0qzzp8gx01ERP2p%40embeddedor.com.
