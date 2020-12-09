Return-Path: <clang-built-linux+bncBDU475XUS4GBBCPWYH7AKGQENDSSQFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A1C2D3C15
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 08:21:46 +0100 (CET)
Received: by mail-ej1-x63b.google.com with SMTP id m11sf247951ejr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 23:21:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607498505; cv=pass;
        d=google.com; s=arc-20160816;
        b=hDR5rbSBneQzz1OYFrNCe16f/wAdxcALA1hXxQ1d2u8gmlJk/Qj4FL5iTghB1LBUuQ
         /tHKDH+JfvlF3X3dnHlGU8CHqfh2Xj6TE1FxBOhcVs9QgBZP+ID2z/QqvlblxhfVLQJP
         qO1MLHOXV0MM4+PB2mjWF40R4XKD3jIAZB7ZdU0Wm0D3IN3XYp50heEiZn9tyXTdKaTr
         GL6pBU04dtAgQxHysO1jsvOKSZvOyuMER4neW0YJ2TueTu222MEWzfFLuQBaTkXBrbEN
         B1cAnMoteLguDIIQQsSt/HKoccgFBENeHsf+Z7nRjXcP75gWHZ6W7AnLsLFuxPrfeIhf
         17pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=LuKfBTBP2stXYnxR1CyC3XBMEhkEn6UinvyEbabLC5Q=;
        b=Gau6cDpI9jpL3Tk2sGsDSfN5e498L6iRDoU0P3jDYqEcwmCzC4z8ZA7BnulRf9IP9f
         lty7gcmsfrIP1JhmufYwzVRizKIJAL+XZBl/Xvk+BoGy+hEXMMaTef7UcD3vXAAfuObQ
         3S56OAPhl7qRxIJLnOyAJkDltAL0J/CNuWv1PRSOQ5bv8unXclkaEYj/rCtwyUljMbB3
         oOeV/an/irAZLEJ4LQrk1lAMLbq6jSFllEN9nlS0uLz7Cp4EYElB2QPdUwNheFkFheCJ
         qyXU7Q6u1UsUGLDPouLXf2hxO+xBSVuqYquYRrKgX8E+Rv9yT/hYGbhm0Hl5spQ/JFdC
         kvUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuKfBTBP2stXYnxR1CyC3XBMEhkEn6UinvyEbabLC5Q=;
        b=A1Jh1xSTgWCDUJ5/Z2TZejbbi2lfGI4fabpLaNsL2A7kILx+X74REwxGOY2gfSqdbr
         Mxu407AQ5lQ1+6WxYLZbvhRQQtpFPqDOCmrzorqJhzldmxhd68v4MabgUmk9cTfocarQ
         M8Xz6QUjSS6C3f2M+BgRq9yNCqG9KGp4UPLb5F3iHtK8frj3zpJW/FiqWLFNMO7IWmYG
         uqYZRvYswxWv9eObMaxnX2Mx6BfAkewoUU37oR0M7pNwk1Z7x5sXJ7fO6cNOk/GI2jU/
         rkeklb97l/AEX9ot3x9FXUuB61OAY8cpSSFeuJ+Ee0CglJIX3ff4Ii41N+S+TSgUZAVx
         /4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuKfBTBP2stXYnxR1CyC3XBMEhkEn6UinvyEbabLC5Q=;
        b=hjPyTah2oKt+RoMdP103Wdti39M0Focan+fXapMdc94AyVgwzOB3qcnUNkZXSV1z09
         1pHupFDx9pZBTfG+ANt9wwriofrRlVruhGOeK9SrjXgtmBCfhV0Hq1XmtyGcmSo3Z51L
         vXLjOaCJd0XHlip6eG/AmuaPvXXiCz+En95qjC5pkLaEBSAqjy9G3ZlY8X16KEo6i7b1
         XWGfe7vsI8vQy8oAcPRa5E1Rtox0dhcD0385KPyti2mARixLYwDpJtcnpSteTlR5V/1/
         071AZExeFKfYSOT5+LgMWIzCQJYgLdP0ZYxEABQkymAaY0wwX+ymnvKWpKP4+RI8VZu4
         QNvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iw0NA6V3wRf8QnJqaArE7Pao5MxQoQERvIo0UTnYFWb6H9QI9
	+eR7uFy1UeEZpK0pAbSLQIg=
X-Google-Smtp-Source: ABdhPJyP8iPqNXw/JUGV78Yhz8+Du24jP/DA1Ehe39G0e6JwgVQD3AyWxPe+X+kHKxzSeqRn5IkhlQ==
X-Received: by 2002:a17:906:4b56:: with SMTP id j22mr939722ejv.443.1607498505845;
        Tue, 08 Dec 2020 23:21:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:22d3:: with SMTP id dm19ls728203edb.2.gmail; Tue,
 08 Dec 2020 23:21:45 -0800 (PST)
X-Received: by 2002:a50:e68a:: with SMTP id z10mr801255edm.66.1607498505075;
        Tue, 08 Dec 2020 23:21:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607498505; cv=none;
        d=google.com; s=arc-20160816;
        b=RSfkL3nteG4nltTpOCIIx+qeZpALEvWCXl/YpCn03+TGhKc2HEMZ0kG9NlCSjVbpit
         JitP2O46AzPILM0aHVoxLt+I6DtzOSqY+2plnIOjcW9cHFLdRx0Wto8cHJ8Y+0aZvJTz
         /FcK3VFNzhoa49lD/wOlsV+ZQ+y+OMI4nrymcZ3NfGFtBNEDJWfwo+udIC0gRHAwiw+0
         X/y+IiG2AslIG+ZQPM7ThiDLbUUdtz3uhlfobHpQQ5T8YUXGSulIwk+3My7o/+nzAlRW
         x9RUi21zg2mRgXm+qk7JFZQBKGVCLtaD/85v6D2BPuMWeMW/BYzD9PNuEsLD0GiiHUHR
         8yLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=zKreOXQg8Zew2FOkd7kR5R18DPUcCLB8b6VPYDaoryU=;
        b=BPhH7K8WmWceHVO9K+kYagnaK4Bw7y5LniiCLwu6X0TC59WQQoXDNIoSZ/Z9hwBJis
         90q5bFrl3BtbX/fPfot4xzl1wnvWMqouHD7qlkCr356ry4XsSTi4H3x0Gmz5rpP/hOfe
         DOBWr2zgw43YmQ6JQITUfn70UdVVlcTsCmn0s3HJgsbvCsXaXw5nv5+JjwWTbWDzRZDf
         4orPSM43I5UkeAbvE8lQsOsAZBTIf6hcSbTbleNEN5Y279NArY7pxuWws0E0ooNuuEHM
         84GJX8IqQGII93JaQZCkMJNzJX3WAR9wkPlTavObnNoAwlUx/tjEO++4D46ewln1Ox8R
         czgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com. [209.85.218.45])
        by gmr-mx.google.com with ESMTPS id i3si20770edy.3.2020.12.08.23.21.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 23:21:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jirislaby@gmail.com designates 209.85.218.45 as permitted sender) client-ip=209.85.218.45;
Received: by mail-ej1-f45.google.com with SMTP id n26so624988eju.6
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 23:21:45 -0800 (PST)
X-Received: by 2002:a17:906:1c8e:: with SMTP id g14mr941266ejh.5.1607498504678;
        Tue, 08 Dec 2020 23:21:44 -0800 (PST)
Received: from ?IPv6:2a0b:e7c0:0:107::49? ([2a0b:e7c0:0:107::49])
        by smtp.gmail.com with ESMTPSA id be6sm675122edb.29.2020.12.08.23.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 23:21:44 -0800 (PST)
Subject: Re: 5.4 and 4.19 fix for LLVM_IAS/clang-12
From: Jiri Slaby <jirislaby@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: stable <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>,
 Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>,
 Borislav Petkov <bp@suse.de>, Nathan Chancellor <natechancellor@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com>
 <a3b89f95-2635-ff9d-4248-4e5e3065ff85@kernel.org>
Message-ID: <e9695da9-8b83-39a5-8781-47ae4c7d2e51@kernel.org>
Date: Wed, 9 Dec 2020 08:21:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a3b89f95-2635-ff9d-4248-4e5e3065ff85@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jirislaby@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jirislaby@gmail.com designates 209.85.218.45 as
 permitted sender) smtp.mailfrom=jirislaby@gmail.com;       dmarc=fail (p=NONE
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

On 09. 12. 20, 8:20, Jiri Slaby wrote:
> On 09. 12. 20, 1:12, Nick Desaulniers wrote:
>> Dear stable kernel maintainers,
>> Please consider accepting the following backport to 5.4 and 4.19 of
>> commit 4d6ffa27b8e5 ("x86/lib: Change .weak to SYM_FUNC_START_WEAK for
>> arch/x86/lib/mem*_64.S"), attached.
>>
>> The patch to 5.4 had a conflict due to 5.4 missing upstream commit
>> e9b9d020c487 ("x86/asm: Annotate aliases") which first landed in
>> v5.5-rc1.
>>
>> The patch to 4.19 had a conflict due to 4.19 missing the above commit
>> and ffedeeb780dc ("linkage: Introduce new macros for assembler
>> symbols") which also first landed in v5.5-rc1 but was backported to
>> linux-5.4.y as commit 840d8c9b3e5f ("linkage: Introduce new macros for
>> assembler symbols") which shipped in v5.4.76.
>>
>> This patch fixes a build error from clang's assembler when building
>> with Clang-12, which now errors when symbols are redeclared with
>> different bindings.=C2=A0 We're using clang's assembler in Android and
>> ChromeOS for 4.19+.
>>
>> Jiri, would you mind reviewing the 4.19 patch (or both)?=C2=A0 It simply
>> open codes what the upstream macros would expand to; this can be and
>> was observed from running:
>=20
> You don't have to touch (expand) __memcpy, __memmove, and __memset, right=
?

Also, no need for doubled p2align.

> thanks,
--=20
js

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e9695da9-8b83-39a5-8781-47ae4c7d2e51%40kernel.org.
