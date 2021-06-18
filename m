Return-Path: <clang-built-linux+bncBC6JD5V23ENBBPXMWKDAMGQERKK4A4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E80893ACE3F
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:05:34 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id c20-20020a2ea7940000b029013767626146sf5190167ljf.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624028734; cv=pass;
        d=google.com; s=arc-20160816;
        b=wZtL4ykfcuGSt9M8mZng6vGy6i1tbx8/b1243tMCJjnMJZolpFDStKR4kYFJjvw7DR
         Ei6AMYjH3zQWHF5P8T4N8FGTrVo8OpPiUfKOMub8RkYi6SevIXLlzrPdrkzMGaFYY0G6
         1MrPHAS1EDsixgqB9lCzzBdXrgvT6kdnJj6ICo9ebj/ePgpB1tdawt/3sQmnPs2Y+11T
         laAjN6hTXBTdmZfiiJ7MUTageXfJLtTaXbEhbSnmeqsNRoX9LeAV418hjiLwG3p8e69I
         T59ZKE97khvQVpjBj3nviGkPgRsptKQNgi0dFR4j3DbVe9sdm/xHlJv6T4zSqGaW4u89
         TiAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=opH7URNamG5TZswa6+WFG42lACS1p1P87YN93asj5hI=;
        b=LeGZweTq7Ksoz9fhdiLZe1m0iaiGMviDWh1ZcFaYPnvy8qOwNyEON4aHkiC1oU9Rye
         EKCJ2zypyD4uxfF+1UzD9PFN7iITBYXE2Ikir3tvNW6pAc3VxEKVkbwWpuGM8e3ihCKm
         pJGq697oROjEPsBnshblH6eZI/X/ArnVb4A6tTnUggJzpJQ3nKnKneV5rznpPnan4qjF
         uyCCHjJ4i8zVQ6hFnB38CFEsix5KUzkDIAyYaarahtJ8pOKlOFjDVVawVm8mP8Ow+EMA
         u8WQuSx4IFupEh4UnXQ90xEIUHowDCz9VMi5NLEoatqvtcNkOr52KdSLKhnu2yEqbF0Z
         LUTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.49 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=opH7URNamG5TZswa6+WFG42lACS1p1P87YN93asj5hI=;
        b=UXxO33h/j/tV/YaZbGQ4n0d9wnerZLgEKo5yCvv+Wq0kNpGWQsMafaZfuLPMDUWucr
         YtI/AFixPYMFcqCPFmtXOoae71f5GiZ1jUPmi3XJF66bYFKieqhUlXcHAn005pUCK4rU
         YC75nRuaJfwIK/NkNeavxvzbIiEdJeO+VlGcWjpfZbVg+94gUCr217/AjXt3QWYork1B
         AAx+1XmMnUKj7jueU7aZn8X8zIyKg9CKJ5ODRD33kQ6vSvyX18GEzHYY8iMT+3oLu5/b
         +GzYe21OCmXERGIVaBPtItKxlQg5dHP/D9Zj+MK9bwOmyLW5wAUSn+U64nJyiUwq5inU
         9+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=opH7URNamG5TZswa6+WFG42lACS1p1P87YN93asj5hI=;
        b=b1HKGdaT2Q4d/Osl47y9PUjP55rJPtOYlPEavqo+KGtvOLocNYP3BeXtbQSqx+iy6q
         cXuFmkcLMACWqILUZ7bIsdvAmO82zTa7szCzJRUw0ly6nUGtbM/M3l+wAkgu+a9G11gZ
         fVWlOhr+IIPah060YRh7A2c36J6dSr1LdHYa9tZC91+5hpkwxuSWQl8c0XulR965nZD0
         d675BVbdWVfRk6YG8U8uiWiWntJBizprvKcugjDr1Vl2fABrUHPTHxJ5Fc8RTOTC+VoX
         yeW9tIUk44vOrFapF4FEcCYXqA65hVtbOr5mwieIA1aCY56/t2pCXZ7tsiV4F55KuZx8
         phZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531q9fCwBtMA5lNzD74g1uhQDGutgYupSVtJ1FTgxGzhNKj/v2fC
	fm0EdfKbbnQf6ymoVl2iNj8=
X-Google-Smtp-Source: ABdhPJwuzO8a6luH4+Qg+cOAH2TTHMACRDzhwJg3+3ss6LkfP7y+Z+vCLWSU3GOO7heS0UeMAvDXmA==
X-Received: by 2002:ac2:5d69:: with SMTP id h9mr3341617lft.603.1624028734497;
        Fri, 18 Jun 2021 08:05:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls1306493lfv.2.gmail; Fri,
 18 Jun 2021 08:05:33 -0700 (PDT)
X-Received: by 2002:a05:6512:3713:: with SMTP id z19mr3459489lfr.438.1624028733336;
        Fri, 18 Jun 2021 08:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624028733; cv=none;
        d=google.com; s=arc-20160816;
        b=ngu0k5XbRtL4jM4xIBUYWI1P6quWfGkrZ/eUPdjqwQGwRHC0QOQb2z8tUYGzGWOwX2
         HvNHQdwP31XOg+NByTyzYitFeTBlKbC4MgwiKEfNP+sirnMq6GoOK3WbI1tihh6tqEtj
         nmVjpeCftshDYVNh1UtIsytB/yRaOxoOA8Oqh8e+PMyQZ1rHw1BbuEGiVPvhZGKcPjjj
         lr965uodFCPamIzLbKA8AieQbuKRK+jJOJQcFasLvvUGG5sHuAEpEPjTS9JJAHHC3YJ7
         lVIgmP2oct0mF4AsOcjaTqCxWEFSGbCRWM0Y2LbbAJUutB5XAGk7SBIx1KAVusV6Cg+O
         Dj1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=prdsdfPTd6kdHuwHKgGCQrIzOGq15Vmt2xMVKd14MTI=;
        b=PC4MnyeI+Xe59rewOfhcZE1x+/Q7VdAt5Q69VSRa9VKiEVvptZ2mbDRv0X87883sBM
         6avO2CmP/KK3jHkq3ai+X4fdpsBzm6fpPoimmbPGbohz7T3Yi0CIjnhWPppXKUs7GDs9
         x8KRMmF+UilmYCkObzh9sACtyIfAELqiqoGpAT/f7MzYCxCXMfAFLYv5P2cVr7m+tscH
         A7p03Nd9CtlEx83b6D3CL4ME4vujEaRXUOr6Av9EpWOmQ4OXQCot1mCHmQ6ng/+AaPDu
         hXcCaMvFohlI9zni2sdjMCp5WuTB2WDqmTmBbtFTVkBj0IAkbTrJ67ZrVCQCSQSwXQJe
         IsjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.49 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com. [209.85.218.49])
        by gmr-mx.google.com with ESMTPS id f17si464074lfl.4.2021.06.18.08.05.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 08:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.49 as permitted sender) client-ip=209.85.218.49;
Received: by mail-ej1-f49.google.com with SMTP id og14so16408384ejc.5
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 08:05:33 -0700 (PDT)
X-Received: by 2002:a17:906:3a0e:: with SMTP id z14mr11489892eje.289.1624028732599;
        Fri, 18 Jun 2021 08:05:32 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.googlemail.com with ESMTPSA id dn7sm5875300edb.29.2021.06.18.08.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 08:05:31 -0700 (PDT)
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
To: Matthew Wilcox <willy@infradead.org>
Cc: Thierry Reding <treding@nvidia.com>, kernel test robot <lkp@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
 <YMyzKmDO+SJt8n4N@orome.fritz.box>
 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
 <YMy1DpeyrYm/pwYF@casper.infradead.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <6188a28e-8184-fbb0-6e49-1c674dbf84a7@kernel.org>
Date: Fri, 18 Jun 2021 17:05:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YMy1DpeyrYm/pwYF@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.49 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 18/06/2021 17:00, Matthew Wilcox wrote:
> On Fri, Jun 18, 2021 at 04:55:23PM +0200, Krzysztof Kozlowski wrote:
>> These are randconfigs, so I don't think Linus will hit them when
>> merging. Therefore assuming the reset-stubs are applied (and tree is in
>> next), we should be fine, shouldn't we?
> 
> It's a bisection hazard.  Please fix it before the merge.  This is
> exactly the kind of thing that linux-next is designed to detect.

Still hazard for a compile testing configuration, not a real bisection
for troubleshooting bugs. You cannot hit the bug in any real case (so
!COMPILE_TEST).

The only way to reduce the bisection hazard is me to take reset stubs.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6188a28e-8184-fbb0-6e49-1c674dbf84a7%40kernel.org.
