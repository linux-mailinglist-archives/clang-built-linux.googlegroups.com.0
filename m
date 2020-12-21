Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBU7FQH7QKGQEJQLPIYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3165C2DFAB5
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 11:03:00 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id h63sf5267289oib.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 02:03:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608544979; cv=pass;
        d=google.com; s=arc-20160816;
        b=VkY+DXHeI0WMP7/HdkOCyRAfu+lIfZ2UnhLcPZJXLcSJGHoOrIsuhAUvPL2BywvqQr
         yoe89DIczlHG7Bj3Vgb4YYWi50DcIzezjIYu0Zp9riGX+Ssp/PRb/WiB40H8kn65EmHb
         QQ10kWro0OLj56Der2+RT7eHrwQrz8G6nqF5f0CzEmaMTqT6rxCO8dVwGO+Emky3Ka+8
         nrBXxe8OJktDtfpbKAQP3ao4UpylAV9DbAVEY+6sSCHW/gSYU10iC5Xr1RwIbS9hvLXL
         7/z2ueTqVZthFlK3q5rUg1GTbXbbPbEznNbZDbsQt6/6M22gP8rcY9ukKkPO7pHKRAzZ
         2wSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=RjT2BwsQDPGhArPl9fabHE7DRSDsbsSssL5ouVjM72Y=;
        b=BrNnlYpP0s0FU06IL2wG36oYotmo/WaAKW1fRnCYj3dXue4O3vjoaaFief6HZZKIo+
         S8R8bKdcXk7kDL86V5PLnQRR6EhN3w3HU2ZaU97S7Q23JAkJuqiMU5hnrpDsrQuOnAj0
         p+JUXCstIr2Iv78WJeBVWg0KVSMlZmc1eZEVxF/Agp7oi/tiVwmA3XT3/RLVodWjdnVA
         Y3Iqk8xm89jSTSFNJr4kewz8uCXrkplpRCcRaLbosngQyOIo81Y29TDl6QntWE4eybkM
         cR7UkJm3aKnm3Ipe4C0omUn+9q+aD+ptmbCI35/LBHb4DtJoroo6SBKuejpqxc6+IOBY
         ZH3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aAoi4mNL;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RjT2BwsQDPGhArPl9fabHE7DRSDsbsSssL5ouVjM72Y=;
        b=fkvi7rahhV/ZCtJOIt56p+HdcY7BuQtvJtOsqp5nrCAeYEC6VxMpbnJsKYfOC80/5E
         zW2Ay8GnjZze4/NLx5/NloyZyM4j5KMwFom6mFhYzNyYAgk0HeOsr6T9kAF1bDNxQSqb
         UOq9wK5fWUp1XJhl9JfiQ5rJGz7D8eGYW/jV6zOAqcJjd1N3036bphzQ0QPWxL79fKcZ
         1zG0qdTk5hisKcnkhTycg7HYfKqEIpdd0mS6wCJGcZVQf8nxRcUWZPsncAw8K9wOTCMD
         WFF8/uTMLvWboUv3EOFSoF9co+QDjkh4kusAUXGUjmkH0+ZcmJjxzHziuBYSB336QAJR
         eg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RjT2BwsQDPGhArPl9fabHE7DRSDsbsSssL5ouVjM72Y=;
        b=GXMtiwGusPKJXRbjASuVWBJ+c8BJrig/RQoyRYGeO0JeuIOceQAHqVVmeApYB7MzB9
         774ze7O1X889F6cM7YZ/ggGWok9O/goC9TBstgmk2ncLQ5YKM1ANmjgj4dRAJ2jmO5S8
         x54dafuprEiVJxQbRkrh78N0MMfKdANAotOcHkOGquGoZpvuz2FUsEwNzuJau4zm+bRo
         RVNo62U94UQYheatq39+QJQQDdV5pRxL84RNUUCvXQt5rESsqIhZBMkrcH0noy5D3B2P
         r5LM7okj9c9AjrMV8Zl4Tkzx0y+LQttVnnqE1ylUV31tfMBYRVnpKdnLiF5JdyY+8bn8
         YH9g==
X-Gm-Message-State: AOAM533ZfEcv64WUFORFCjInEdBw+TKTF5YjlVcUKCDf2VZih6FlWtXk
	XsFtz+WvwDJg3gAb+G1Ow8M=
X-Google-Smtp-Source: ABdhPJwwiIhKW9jcCfLZeb5Uab8e2qOtV6LhhX7E2MDiQshLZaZO+GCH6ilR6eksDCiu5Q/0u3Z2AQ==
X-Received: by 2002:aca:4f97:: with SMTP id d145mr10385388oib.123.1608544979182;
        Mon, 21 Dec 2020 02:02:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls3956105oic.4.gmail; Mon, 21
 Dec 2020 02:02:58 -0800 (PST)
X-Received: by 2002:aca:5594:: with SMTP id j142mr10815471oib.164.1608544978724;
        Mon, 21 Dec 2020 02:02:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608544978; cv=none;
        d=google.com; s=arc-20160816;
        b=Rpq0RVK1viQvC5+v25QSqcnuSwel+TxYI9c0lth7g2gm41kiAWHCEOeuezsz71KCfp
         ST26NP1ayzmhkz32JWWPFp43+Jdzb4zIxVZaXt/oSbJMLSWwtwB9crUjVdzkbZRrhEp7
         +DOiVVkFrRrBm6P/ZtDuw/Un1vT4HZZrtP4/ovmaG7d14BfCxxRhTl1Qw//G7Y+8xvrT
         FI5FMm8c/M4fhJHwEpjXlVH4xgPk5QnSf32KHCeuK1Zli/3gmYagUxA4acLpCah+6Hv2
         POBz8XBi1xtehrKI9KHq9Us9NHagUKBybgs75LwmOVb/NjUriJCXTBBMJfLYEUqJ07M3
         BMeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=1443+lWFVVr9sW1ieQ6dMKPKu52PYVGdhFAGnK3Ssb0=;
        b=DpDjdQuSENch3mCLLlmzKqkh60v1PutduaMXvkWL1ZIgZyKczyjvoOXWSegYDbCKvU
         Kvaka5iK8dCuYCJnmFe6eAWuit049egwu24IdS178SsyOm4Jq9X+0r0oFau8Q6KtGLC+
         OULGPQJXB430AX8pZC519iQeEw4Q1GPoR5nl8nRTXappXTrLur3pcfKsqxwfls3/+leI
         NkAu+Xt7Gw0/2Bmpt7qhDipzfPUqzRuv/enNqzLrHaZ6cEDj1POVmts7zl1q5R88aqEN
         bd/ufVakchG/7HSb4ZlA1+yVcxLJfffd+sdyBNxcq5zXnlmxRZLihUqhShwMXZb0L2V4
         +bbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aAoi4mNL;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id e1si1671405oti.2.2020.12.21.02.02.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 02:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Received: by mail-oi1-x22e.google.com with SMTP id 15so10740242oix.8
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 02:02:58 -0800 (PST)
X-Received: by 2002:aca:b145:: with SMTP id a66mr10630983oif.92.1608544978511;
        Mon, 21 Dec 2020 02:02:58 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d124sm3616669oib.54.2020.12.21.02.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 02:02:57 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
References: <20201128193335.219395-1-masahiroy@kernel.org>
 <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
 <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
 <X9YwXZvjSWANm4wR@kroah.com>
 <CANiq72=UzRTkh6bcNSjE-kSgBJYX12+zQUYphZ1GcY-7kNxaLA@mail.gmail.com>
 <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <55261f67-deb5-4089-5548-62bc091016ec@roeck-us.net>
Date: Mon, 21 Dec 2020 02:02:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aAoi4mNL;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 12/20/20 10:18 PM, Masahiro Yamada wrote:
> On Mon, Dec 14, 2020 at 12:27 AM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
>>
>> On Sun, Dec 13, 2020 at 4:16 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>>>
>>> Because if you get a report of something breaking for your change, you
>>> need to work to resolve it, not argue about it.  Otherwise it needs to
>>> be dropped/reverted.
>>
>> Nobody has argued that. In fact, I explicitly said the opposite: "So I
>> think we can fix them as they come.".
>>
>> I am expecting Masahiro to follow up. It has been less than 24 hours
>> since the report, on a weekend.
>>
>> Cheers,
>> Miguel
> 
> 
> Sorry for the delay.
> 
> Now I sent out the fix for lantiq_etop.c
> 
> https://lore.kernel.org/patchwork/patch/1355595/
> 

next-20201218, alpha:allmodconfig:

fs/binfmt_em86.c: In function 'load_em86':
fs/binfmt_em86.c:66:2: error: ignoring return value of 'remove_arg_zero' declared with attribute 'warn_unused_result'

With a change like this, I'd have expected that there is a coccinelle
script or similar to ensure that claims made in the commit message
are true.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55261f67-deb5-4089-5548-62bc091016ec%40roeck-us.net.
