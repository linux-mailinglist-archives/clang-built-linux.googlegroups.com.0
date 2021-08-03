Return-Path: <clang-built-linux+bncBC4LRUE64IIRBR4ZU6EAMGQECVZOKAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FFA3DF841
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 01:10:00 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id l14-20020a5d560e0000b029013e2b4ee624sf33102wrv.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 16:10:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628032199; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTbaDrmwiA14vJQdqCRIZNYU15lCp6z3IlGRo1Bb38DP6KfH5IUxgV2SSCwPDkV/Bc
         P/uTcF710DUjHhOc2Sn/Q13LZu76+0Mn4t8Gj0IMBPKzViKlrIjRq5+XkbbdOI0IU6ID
         vWl4qIaVyIimjDcur1PbXtSWh5n+VFjx7NYUHlBzgMXEBHHPiWVK4kL/NEXxuXd9ioAh
         gn2YDqXuKLMxf9egtUFTq4BqPWGHCYMAaOYjrZS8fxHByzQvhy3JWR6wc+ITlasXPxBZ
         ErBw1UWrDaP36iJycHbE8aAHwKqL/r3j9gsNRfGP+YVdj73KIimSPYIWnIzuDYNInCfG
         /1lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AhoTCOvkSzkzEfaNzyBKodCOep1sIFz1ycN05sShG7E=;
        b=lgpobt7A+n+YhWt/rrcNLw/N6fGiNU1zvrEXxZFthffwjSRJovaA1rpogDarekimqb
         np0+rCWmqjdz9bRiB2RA2UgdDmXwo7YiXfwsenN6PKZREb37Yj/bt0ObjrD/hmqk4UFY
         9buXgG70gETHUg4tbNt0PcZ34Qwq+YTiEp1j34gcIZM8OqXoMidLRL3Is0XG2tq8XPgh
         iEQlTu5TrG6EXtinpWLl/kizrg57yIBnpjTbBpw1hKD5RJEmMXg/+FPCM3jqdLexavsV
         zv3ONjNm9O5lN/kCnSz6GNRE9s5Glq3c5xznvcmplZmIWAhj+n8ZkdZZ/det3ZfNULIz
         2UXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of kswilczynski@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=kswilczynski@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AhoTCOvkSzkzEfaNzyBKodCOep1sIFz1ycN05sShG7E=;
        b=eD+b0/QfWVZjXGz2MLPylY/jjPHlR8jQdXok4Oz6P4qEPr0wtR921P/jV/XfUI7dm0
         K3CruxWIY2JS1nlymxBaNfGph+ScmkW4PyQ5oxd34ydIbKfcyuoN3f6M60vs6FGAWKco
         byMFGMP1hcnVFvgRRPYmiP0z8UtPZ4geIGele/5Py4yeuNA7kHCNYDhTzCHVTt9A3dDD
         8VzsmWwyH/VZZKDVgeQ+DqeMYNjxLbul3LIASogD2O6lwjN4K1zdWzNU8W9V40YJHfuD
         l6aBGl7FAxQ7sO97wUVjm0G8BnWmQCTyUzMT997KDDCrrArZ0V4LK6dA7KA9urJD0vOD
         IX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AhoTCOvkSzkzEfaNzyBKodCOep1sIFz1ycN05sShG7E=;
        b=eZQqPKzWCmV3gMZvU7OwZnbKhKWLS8YqO73b9uWdsWtitjmqxm50Hr+JH4iaO6Vi6L
         ISbyef1EKzsUYZG2edax1W+11VMt0FVvcqsWdvLQ4wGzlwbWZWWL+iW5OpM3bbfSiq/3
         DOJBu1YvCrW/F8IeEpom84/jNP+0ujLoCWSt0CI+tk+JxZPvWv+sdOLw4vBUcft7VQpJ
         uPoMqpRzekCzcdvkYR0hy9lnIvOmOEs7C65DxxlDDoiwbO5cIhdVuROfcRdHpXbz8lYV
         T+Krx8zPwUKX67X9ZI+zsrXXFsJCIxsKxirq+8L+ZSGb2YZ8xHGfedm3ZqPgS5sav/LH
         dR0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331V4ZFaGjf8fjiXa1sBzqEj6SJNu5aV1Gn8U5F2yCA1hXKQ5o3
	K+h+IcXm56TcswtH2JpwhFo=
X-Google-Smtp-Source: ABdhPJyrXp3TtkKmi3Bdb6mUijrVZFcHzAaw2/TmOw0HpsfvVRRF+Pl5wXUImnrYnj6F9NdyPmdd+A==
X-Received: by 2002:a05:600c:2306:: with SMTP id 6mr24439513wmo.115.1628032199856;
        Tue, 03 Aug 2021 16:09:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db90:: with SMTP id u16ls504757wri.2.gmail; Tue, 03 Aug
 2021 16:09:58 -0700 (PDT)
X-Received: by 2002:a5d:5410:: with SMTP id g16mr18676069wrv.374.1628032198921;
        Tue, 03 Aug 2021 16:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628032198; cv=none;
        d=google.com; s=arc-20160816;
        b=Ms//eKGod85RM7NFpKuYRde4dFVvZC4P5e/lSAkjDAoT1mYBhUbJ+MCEqd4G13SfM3
         V1py15JUm/SxyXP1OEvJXrAob/m5mw7/s5b2/r3bE3nlbd45g3/edN/+4UKMscRjdnFg
         Lm8EbrahjMX0uOGlUqtI/n67X93d5iajDBC8UhJW1sjcc149+R5jHvpB6kWB1AapCZ/u
         +55prhGozG1eYW1R01zkBEH6CbxqMk+Wa8vX8ip1063z+hUHI595ExSH4beo6iMReKRL
         mKsmIdsVYgEkRXnRuWPEn5ZSxyebhQQjwLB8+3uLyqojFaVSe17F+5e10bosFa3egDJc
         LW/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=trQM0Hda030RDfLIu2oPMAoILMKZsnY/bU/76uuHF2k=;
        b=GjTP8WMrpgD4d5/6HL8wyVa8QhX32hjD68GgKvF9HWQXauHwFYZoAEFBIa9Trb/1KT
         pyjqDEUvmmz8cLWLhoPMnqlKYD/k1j5LPZDGjW7gHH7TdBiP9NnmzAgM6bchAz3dS+D5
         i9kFolbFnh6AbZ5utLhQrPeCoPmNKA38bmQxmG/60uqziCRGj85iEIC9XKl0ZXPAbgB7
         DdIo6A2wPmgQV7jO6HcqmToY/gRuefwek4ZMxCotpzFtRjfI/zzIjrG3tU5ZaiiuvgdT
         qohLVMWnv0eZILHZAlDXo2AgNGYdpr7ULpuuy3K7tiCIzai/sp0dKZXm3YxuIs2FeCTU
         KYvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of kswilczynski@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=kswilczynski@gmail.com
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by gmr-mx.google.com with ESMTPS id 2si12838wrb.3.2021.08.03.16.09.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 16:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kswilczynski@gmail.com designates 209.85.208.54 as permitted sender) client-ip=209.85.208.54;
Received: by mail-ed1-f54.google.com with SMTP id x90so1128780ede.8
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 16:09:58 -0700 (PDT)
X-Received: by 2002:aa7:c489:: with SMTP id m9mr28666485edq.256.1628032198680;
        Tue, 03 Aug 2021 16:09:58 -0700 (PDT)
Received: from rocinante ([95.155.85.46])
        by smtp.gmail.com with ESMTPSA id c13sm167217edv.93.2021.08.03.16.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 16:09:58 -0700 (PDT)
Date: Wed, 4 Aug 2021 01:09:56 +0200
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] PCI: Always initialize dev in pciconfig_read
Message-ID: <20210803230956.GA65526@rocinante>
References: <20210803200836.500658-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210803200836.500658-1-nathan@kernel.org>
X-Original-Sender: kw@linux.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of kswilczynski@gmail.com designates 209.85.208.54 as
 permitted sender) smtp.mailfrom=kswilczynski@gmail.com
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

Hi Nathan,

> drivers/pci/syscall.c:18:21: note: initialize the variable 'dev' to
> silence this warning
>         struct pci_dev *dev;
>                            ^
>                             = NULL
[...]

Nice catch!  Thank you for fixing and sorry that I miss this one!

	Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803230956.GA65526%40rocinante.
