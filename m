Return-Path: <clang-built-linux+bncBDUIPVEV74KRBX6IRGCQMGQEIIAA7EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C050A382C5F
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 14:41:03 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id h6-20020ac24d260000b02901c679f8f74csf927129lfk.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 05:41:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621255263; cv=pass;
        d=google.com; s=arc-20160816;
        b=KB5E7LCHAYnLjCQwSK7RGGQquq7BlaLOWlnrjOHV4bHcARfvOg2Sf9yRB5JDZTykRz
         D43eXfR6MjtsHvDf72IulJcT2IIIbeoPTR5atFT2L2tdllJU1KMdPqwcxgEw0244OSH5
         GOHZdiZLQ4HzYbG42oKg96KLJCr+sp+Bsx7vhqtWfN0z+dYEmh/TKBASng6O55sIYh0D
         LpobCHeccqvYECw/zLE7uzyliu2Zxvk78S4evW75jgW7ckb3nyPgpTIiwbCWSDJSEXfX
         Uq6wXr/g9Sgto2aOtX7hU2fN0Q85L3tF1azipDOW9lUCS8dRWk4/hbuVymToUgNNglAL
         ewSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=e/7+Hc93DrVpQj/cebB0DeXabjERvAAiDQUgBvRzhyY=;
        b=wPI2wMtnGzt5Hr2phuOw0DDfS7q3B6X9jG3cLNQGk8tDJ//S3V/CtjwgyypUDD7WyE
         KRjfsxfBanTFbSI43V8skpCB0uvNkJ7LkB2FwYoxjBDNJubObllEVsVgdb49Cn4w3oaM
         7q1TCtNp0iSAFDWzXgCzHF/PlcOYZuHkdoDNb91vqJtdUTRO8qxj7UW5fgAgFhvI4xFm
         Swq5Jp0NHHi2fzVYLfT16yRGsp18h8/6PttUZjMaU7ZSV57ql698gzMM+WFlFC9OfKl9
         Lhvs9lIeoHtDqEH/X5ArkJdANoWYvEhggFy/7nYm9rKuYSvTtjsZkWVwCtfBIlxrSWEM
         +ong==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oe11LZD8;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e/7+Hc93DrVpQj/cebB0DeXabjERvAAiDQUgBvRzhyY=;
        b=ID9TBZVwFmt2GSe/ZKpdSt/ukMuXeQVITWYgudGlV3RzS+lb7NdMAy7a625LdNhG8P
         J6Oqq5hbe17ebQuvNqR0L77V21zZx/UspARFLDfgE5MYsBhK9bhoqsrz/5LQaJhJ1Y/C
         jmVYRMNUoYY7fkF7O0uqiG4DEoOM5dwjYNNl7FvxYhC0QaamozDL5o6mgrJTtJ7ph1bX
         B29hbA469u3MZAOhQM4EjRWtE0i+ntsjE1Mr9NFfmMZsmhPYlh6dko+w0TRzpcZrF1nv
         8CYqcBj6lH+XrCUhINCf5oRr5DvGXx0hlZdYeq4ipf2kCRRkYIMfFgSXypDs7WF0uJPI
         Ywdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e/7+Hc93DrVpQj/cebB0DeXabjERvAAiDQUgBvRzhyY=;
        b=hyZkO1eaxpmvJeNPz+S8mpbPeKv3+1qoNljqVfoJDORdBeHmEHDvDlmQHMLD626kyh
         IMuuHQgeJMzcz71Cgknq+Z7dtBKjYleavKy1Eo2gaODIMwCoX8su0JyCmBt9NExod5dx
         3Z8cm0EdfCOcOuHfy31SgRDKDSsNLNNdXqTUnxZegkLZEMapsjv14rw8CTTqUDh7V+kv
         gUUIQy2hs3W3wuKGe3shs2tjnyRZtX/ViDIf157ufvZZFRkw9yoacfrvl/ArAmm6C3EU
         jOnQOoADDNnuZ/y5eQT4Yu0swg1UF1uWa8Z+AxPEkr93FegdkP5In6kCYJhyI8d5nS77
         GgEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e/7+Hc93DrVpQj/cebB0DeXabjERvAAiDQUgBvRzhyY=;
        b=a17QIBtsyd63c+h5rRcv/q8YK2YTts/zXSooAz61U0HnN8ICZ3MusEBGXaQpaQ1bjP
         5Sy8ClEfNW0VxCmrtIc6FqGNz9/ZfHC0zgPhQwu+N5dxzXztkkPpRlQgeHzimNw9eD8V
         /aCIotgZGX5vUJHeVUK7zt7AjffT02fovM2UD0jufDqYO7Wyy6OIujSNk3Pvx1Kyc3Ni
         n/F5HNuTJZ+8Xzll+wilAXBSp6TGgpSUx6tjNROaREZ6+Me4goKk3aBGgbCMJN8MEfZ+
         dfYrEnv8kw1I8j7ONQ9DeiB8mPLSLj9E3vDjr3iglyFFn9XE+eLeqtbcXEpOhcpboMyI
         xbkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xUIC7/ykyCqrQxDCXXSyOQn1ESiyOxX5kePt74afMAsjnrR7A
	Pl5rdwirJDMzzi4PluhPQqI=
X-Google-Smtp-Source: ABdhPJwN1qGp8VLupq/x2qkp/tOUo6ci7NRqznBXqFzNP3MwpLmZG8VsQHXshffz/l6goV7gpVuq5w==
X-Received: by 2002:ac2:592a:: with SMTP id v10mr5815225lfi.400.1621255263372;
        Mon, 17 May 2021 05:41:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9806:: with SMTP id a6ls2816580ljj.10.gmail; Mon, 17 May
 2021 05:41:02 -0700 (PDT)
X-Received: by 2002:a2e:9615:: with SMTP id v21mr24469752ljh.184.1621255262336;
        Mon, 17 May 2021 05:41:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621255262; cv=none;
        d=google.com; s=arc-20160816;
        b=rb94ZLqxXVXxR3ARsrnXsIryIG9nyVMMhgT2EKNiTAPoLKWK7KOOQXI9GaJvcCLTQ7
         xex/9Zw3apAEpQcy/B+HyRLDhcSmEd7Pym/otA58JQCGdXrIathgMSUMrbkOenTzudPd
         6KQIW216e8zlnxzqA3zQ+7qWHW736MX/eJLY60vtbr7kM5cBLtW3PBeKAa8MenLsqFG8
         xvUGqZnBrrpgSQix8rNDqgpz3ZZnnkwHeL1IQXfZStTvmTgJHXc513CpugcEK5CLCHOw
         jGC5x/d8LZ6GEQzep83Qw3OMF8cLoL/eQrq3flL4ERUuXpL4fOQFovpwEWZ5SpwtcvgD
         EXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BKNJl3CTQE28crMB0S78wwTNmE04FcrERIrJTJfVd0M=;
        b=YnVUpElWZ1faM9b++KbailqOs7BTrB8Q+dtXP+2ap7SdnSim4QhqKnXodew2FmiVcZ
         TyQ3TLr6BQ6GoZQi+ylV4HLcFoK3kltGjLsd2gZvRzyeAyVRzaZZG7twJoY2abV+y20E
         X8Nde9/Bo7pmvWaiFzqkC2+JKfUo65ttRlXqnRrFBIH2w84kt2jVyNyEPg3CLZ5iy6y5
         dHdMguX2BQR/YSKdpTaC7s9+5X32rvDrFPjpalB5DB1Fblm0tB2z+KSp8UTCYI0Apm5K
         q9pQrNRtJ/OwaDQDJ7I5ee1h2Vjr0CMrtfFPHbtc7BrWwHhrH0sjZCZTprdBI1vHMs/6
         QzuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oe11LZD8;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e9si652555lfs.4.2021.05.17.05.41.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 05:41:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Received: by mail-wr1-x42a.google.com with SMTP id r12so6255661wrp.1
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 05:41:02 -0700 (PDT)
X-Received: by 2002:a05:6000:52:: with SMTP id k18mr16210709wrx.419.1621255261294;
        Mon, 17 May 2021 05:41:01 -0700 (PDT)
Received: from [192.168.2.202] (pd9e5a577.dip0.t-ipconnect.de. [217.229.165.119])
        by smtp.gmail.com with ESMTPSA id k9sm14723984wmk.5.2021.05.17.05.41.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 05:41:00 -0700 (PDT)
Subject: Re: [PATCH] [v2] platform/surface: aggregator: avoid clang
 -Wconstant-conversion warning
To: David Laight <David.Laight@ACULAB.COM>,
 'Nathan Chancellor' <nathan@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <20210514200453.1542978-1-arnd@kernel.org>
 <057b5568-c4b8-820c-3dd7-2200f61a4d58@kernel.org>
 <16280aaedc40425295d202431ac3adc0@AcuMS.aculab.com>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <eb2f2897-6e94-7fc3-fc9c-d48285c4209a@gmail.com>
Date: Mon, 17 May 2021 14:40:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <16280aaedc40425295d202431ac3adc0@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oe11LZD8;       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::42a
 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 5/17/21 10:31 AM, David Laight wrote:
> From: Nathan Chancellor
>> Sent: 14 May 2021 22:23
>>>
>>> Clang complains about the assignment of SSAM_ANY_IID to
>>> ssam_device_uid->instance:
> 
> Has this been raised with clang?

I believe so, see this earlier report:

   https://lore.kernel.org/linux-mm/20210311185154.6uysryumfho73zlb@archlinux-ax161/

Regards,
Max

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/eb2f2897-6e94-7fc3-fc9c-d48285c4209a%40gmail.com.
