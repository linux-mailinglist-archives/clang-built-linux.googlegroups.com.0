Return-Path: <clang-built-linux+bncBCTZ3GVV3UCRB5H4TLZAKGQE57CLODY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8366115DB0B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:36:21 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id 50sf4259686wrc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:36:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581694581; cv=pass;
        d=google.com; s=arc-20160816;
        b=QjoOGNlma4dncslY48fEUxW9PPXX78SWBJrMoGN6go4gQQkZGcDK/Ik2L6wr5xX1ZQ
         i9/0ug+FK8su+sOvMIeK/gBr9dQQYITNbcBrbWg+BO/iUOmrXD7Eg4otSy4ebYwsORhm
         K4fC4S24E7oE79HSsQISpGBdPF9hGu50jiZHG5aUAY2nObHWs2ulzX/7ufoO/q5CcVy/
         v3Lk0UznWU69j6QygdBZBUzy5VnFAxhQecCfTV3+xxrI7gjnF/P8GlYAYd5R3a/zkipA
         NG/LRH4iKYCUt8UwQpCB8543xBDNyQoUfQ5gcKlh2x1SyDUiQ9pbMbQ4xEfRiY4XnJPH
         ShLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=j1TuF0Jdr2REdkVRc2e2yu6Hg40IV81ilgtNsN1v9QU=;
        b=fzsSSTF9rDDq8Pm/bffXuOC1ZpkiTPjxvGXWr/pXZpK2huS0PImKHfIa9NUzNd9YNC
         feTTgw3GWlQ3vfN+dlqjHT86UwmdMsrqM6IAVOGON6fhrSekDylQR6MfXIy8a69K50uy
         fa4bRY+spdpr1ytPyRU2IWYb4aqLGsEp3Ba8J8ae/xnSC8rmJq8J8W5CH/ze+/k5hgNi
         BY0bVua1anSdv6xBDLYmL34hx4/JrIoqpOct1c9QNd8j1gxX9EFx7ZdwuG4g2x2P53JC
         xnrvRdOYushe4/qa0weSjBlJnN6vgfMVFPVk1CmQMYBtesGWBE9xtCTGulsEdfYDgoVj
         AAEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1TuF0Jdr2REdkVRc2e2yu6Hg40IV81ilgtNsN1v9QU=;
        b=KLtiobZt7/xbFo9qBNjxa1qfC8Ftz2gSv/WJ4BaMMxispRXxWg6roDIR1LiTMDHdFW
         Cw/O8F4cktx20EPl4vddB9Kf37BsZIRcYt/iKWlFbXMxX0VaJfZLQS4tkibW3CnetEWo
         DiQjY0YNhR6O0Jt6caAZcJVk47HTgjeASH/T6WihegwTUs5K4wuBcUvLDY+Tgj0ezZnV
         LI28PDpC/SQ/w+uZb250NKVTk54LmyLaelIqbb21QlvfWXhu+s2HCDhK3cmWcAvihw/Z
         AlX30HfHmmmASNtu2JMICbzwUjAID2KLBSLyJeQxC2uK8NtZxXwSywaM8iHHK3nUig1j
         Mtrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1TuF0Jdr2REdkVRc2e2yu6Hg40IV81ilgtNsN1v9QU=;
        b=fZjOzgpQoPOrY0gppbiNOet514PXeeNPcwK/JfLI5Y1Az8LClrPderSKExb2hGMpnX
         R2OrGLYBuVMGyh8+OhKU6p3ompYJ5xH7lA7D8aOh5q4Hp4pgHcOKSBX86c0UBVGCJ2uC
         RQqcvOJAk6MuE8WWYYz237a9L2ZSRGJcTDb8twRf6OfbKd/J+akFrXCJDkavmkSPNHsj
         HAn7Ge6A0IJCvYl3Q8Q13nCBX0+qKQhQjO7JsWhXBkKuNjRTvYNxL5M5fA5oVIojf41z
         YVxqeCzXOIxpr5gE94SJwe8PsoippoyfE7tvngf5/27draTg+5ScS30AQu1BuzEhIW5P
         1ppA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWYtxFYhjitTDqYX1ba7q/wXgnAqIaVEjtJWF2ZgMAfw8vgTGBr
	kDZKqmp8O7NTRBootzZD4TQ=
X-Google-Smtp-Source: APXvYqx6RgwDbKXOOe1yfngKnO4RmdN20TqL9be+ZfData0TEfEzDrsWHxWsV3mNFZAqpC906nTFAw==
X-Received: by 2002:adf:a746:: with SMTP id e6mr4559301wrd.329.1581694581249;
        Fri, 14 Feb 2020 07:36:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls1334838wrr.5.gmail; Fri, 14 Feb
 2020 07:36:20 -0800 (PST)
X-Received: by 2002:adf:e8c9:: with SMTP id k9mr4723456wrn.168.1581694580335;
        Fri, 14 Feb 2020 07:36:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581694580; cv=none;
        d=google.com; s=arc-20160816;
        b=Yfcdh6UlIlV1CTCWtDREJggv1nAjBlOvlOm3stYwmq7AjwrT79CvM/ePamPJuM3wGX
         L545rIuuoYwsMulKG3vda1BhhfDNCBXpIy2tllKpTG68LBowgmHG0DP2EwssctBeCR30
         QRnWzppdEV5tDycpfyRh9b9kvW+Mq/JF3w4vhhduCAA44Q4SMqxIYXjfkRUtfBsAaC40
         Wg11MctwvjOXvFFmxJaV6xa0rp8umShtto5ImBxmjnf0i9pTsCt5XdQn04XNM16/ui0D
         z671i6jzMGWMVj/d1CMFSx6PlhUpd74aZugAqBseLT1JUmI8VjfTZhrLpV3IH8WpzZlF
         DKLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=5/YMGbcVxrKES+tSdpaFaI7ZCYvsepdC8GfJ2T7UFlg=;
        b=YiZK3QW2yMAAZ03JNCdRaQzFVFYXQ935EGpJrzN/WXIKPrQ4k95Qld1hXdwCrlKcvX
         clQMr7p+9jafW6lYRO/V2Xe9kNtKP6ZK4E6wOAGpKVmN6ROfadwFf7yub0E2L3BbpKW8
         AYAJ1AIS+psUsbcOgDO/GpjaxLE+fSaUxbbP9WHS8BbH0Hp6bUdmK0OD3ep3nVJfck5P
         gB86O4JGijFUJ3mCXK6TDPdBiQWTM5WkILmVxJ7BF14CHbwG7GAQx/bcjkUzfp96kY7p
         bs2XkWTu1CTF29CMg+4Gqek5o1q2ITBZw446rvl+HZV2BlDC+hJn5yWEQa322ta59+LP
         v17A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
Received: from netline-mail3.netline.ch (mail.netline.ch. [148.251.143.178])
        by gmr-mx.google.com with ESMTP id d16si24592wrv.4.2020.02.14.07.36.20
        for <clang-built-linux@googlegroups.com>;
        Fri, 14 Feb 2020 07:36:20 -0800 (PST)
Received-SPF: neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) client-ip=148.251.143.178;
Received: from localhost (localhost [127.0.0.1])
	by netline-mail3.netline.ch (Postfix) with ESMTP id C35892A6046;
	Fri, 14 Feb 2020 16:36:19 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
	by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id hkjvpc2T5O5o; Fri, 14 Feb 2020 16:36:19 +0100 (CET)
Received: from thor (252.80.76.83.dynamic.wline.res.cust.swisscom.ch [83.76.80.252])
	by netline-mail3.netline.ch (Postfix) with ESMTPSA id 2BE0F2A6045;
	Fri, 14 Feb 2020 16:36:19 +0100 (CET)
Received: from localhost ([::1])
	by thor with esmtp (Exim 4.93)
	(envelope-from <michel@daenzer.net>)
	id 1j2d0r-000ACQ-Qm; Fri, 14 Feb 2020 16:36:17 +0100
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com
References: <20200214054706.33870-1-natechancellor@gmail.com>
 <87v9o965gg.fsf@intel.com>
 <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
 <87o8u1wfqs.fsf@intel.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <ff302c03-d012-a80d-b818-b7feababb86b@daenzer.net>
Date: Fri, 14 Feb 2020 16:36:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <87o8u1wfqs.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: michel@daenzer.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 148.251.143.178 is neither permitted nor denied by best guess
 record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
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

On 2020-02-14 12:49 p.m., Jani Nikula wrote:
> On Fri, 14 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> Quoting Jani Nikula (2020-02-14 06:36:15)
>>> On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wrote=
:
>>>> A recent commit in clang added -Wtautological-compare to -Wall, which =
is
>>>> enabled for i915 after -Wtautological-compare is disabled for the rest
>>>> of the kernel so we see the following warning on x86_64:
>>>>
>>>>  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
>>>>  result of comparison of constant 576460752303423487 with expression o=
f
>>>>  type 'unsigned int' is always false
>>>>  [-Wtautological-constant-out-of-range-compare]
>>>>          if (unlikely(remain > N_RELOC(ULONG_MAX)))
>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>>>>  ../include/linux/compiler.h:78:42: note: expanded from macro 'unlikel=
y'
>>>>  # define unlikely(x)    __builtin_expect(!!(x), 0)
>>>>                                             ^
>>>>  1 warning generated.
>>>>
>>>> It is not wrong in the case where ULONG_MAX > UINT_MAX but it does not
>>>> account for the case where this file is built for 32-bit x86, where
>>>> ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
>>>>
>>>> Cast remain to unsigned long, which keeps the generated code the same
>>>> (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) and
>>>> the warning is silenced so we can catch more potential issues in the
>>>> future.
>>>>
>>>> Link: https://github.com/ClangBuiltLinux/linux/issues/778
>>>> Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
>>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>>
>>> Works for me as a workaround,
>>
>> But the whole point was that the compiler could see that it was
>> impossible and not emit the code. Doesn't this break that?
>=20
> It seems that goal and the warning are fundamentally incompatible.

Not really:

    if (sizeof(remain) >=3D sizeof(unsigned long) &&
	unlikely(remain > N_RELOC(ULONG_MAX)))
             return -EINVAL;

In contrast to the cast, this doesn't generate any machine code on 64-bit:

https://godbolt.org/z/GmUE4S

but still generates the same code on 32-bit:

https://godbolt.org/z/hAoz8L


--=20
Earthling Michel D=C3=A4nzer               |               https://redhat.c=
om
Libre software enthusiast             |             Mesa and X developer

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ff302c03-d012-a80d-b818-b7feababb86b%40daenzer.net.
