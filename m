Return-Path: <clang-built-linux+bncBAABBXEA6GAAMGQEDMPZWZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 118BE30FBBB
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:43:41 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id d7sf3348667wri.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:43:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612464220; cv=pass;
        d=google.com; s=arc-20160816;
        b=kvv1jLCKluEiShkiLfZMMwygQK1ouFsCKC2D6/YhxfH1npo7ROHpnYaWOk7CvTdD2u
         TPm//xwZI0k5QpA11QFWtTfZ3yL9V86ZDdH394yPXOYUWeuoXIvDmXVA0gknGCjkVaQq
         ICpLCk3bz7TGZ9pnofI5sdOt4S2gT3Zmxff8R7PHQUdmP1uMssQWkbYy+VSpZgi6M4uf
         YXPEWsMhFNrk68168YcRNTeFn+tLHCv354Bru3P9j9RZA5x83onEF22vYnQRhDFmjZGM
         yiO+FxqRGuMPxjdf50dkQ6eQaSdnBY5gVwNtGmNqkx6M/X2skLMPA/MVqmsd0mvBYSHs
         GRPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:organization
         :from:references:cc:to:subject:ironport-sdr:dkim-signature;
        bh=1ExcGScmJbuFIm3imd3SUaxqGm9MeXIthAHdnxTiHhU=;
        b=l4aepIUYfGzc1FLaGfAu6GI2Aoyc0bduDJ08nCbw9AF0Vgkbx5Rrm4zCsWn6HjVG//
         wzbgeERqYSLeIWObqnOK2P7luwYJFhO4Ro+0iRXCE87vMdpre3NXQGzYZq8Dqd0UdsS0
         QJLzHKN33URknMjrJA0+AhP8q7AT6Z8K0zkPt6WAlG2wAY79D3V2e/CLxpg6dfWgl3sF
         +LsXx916YwdFeV0rmjau8lkkacTe2t3agozuEIVxn7yjEdS6oLV0MRuBk5wPnk02pD9y
         ju12bXfI8TX7dbDzrx+Z4Lsi6Dm4uXPpTKOC57irhCZ22SwkE1yBreMBz4JSfgYJdDFy
         ovkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=ETj4cJWG;
       spf=pass (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Nicolas.Ferre@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:organization:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ExcGScmJbuFIm3imd3SUaxqGm9MeXIthAHdnxTiHhU=;
        b=QQ3UHfu2Of/W1AQB9DN7pkjAwtmmxYNlhVayGsUyUSgOIFCZgGrd9/mVttf/djVfGc
         83bpvSPX7VGXzic3MgPgk4qbQtxVttv4n1MOmAfvXIDTWB/ulRnuRn1yTFoYwOJgKC4W
         8RTJ7Ri7/IK5rmzv5Q0ovlACV8yB+tlh1k18aMy9i62AQyC5n9zmJL6+dj5ELzeHo+KV
         xBou3BkOGGzrdm8WS8xEFHbQhPFUZ6D+R0o+Xpidg9JjgfeQfuMiEe5NlfjlNzX+nhsS
         BubvHlzVFkbw6NQKcHTwb+QUq2RSxXLGHWCKmQKTxuelaMpuMrQfdovrtZnv50DMeM3f
         SLtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ExcGScmJbuFIm3imd3SUaxqGm9MeXIthAHdnxTiHhU=;
        b=B+H5JaVwjrrLcx1PbWMIjk78cD71VI5YEpqqbuINAHtscZ4F9JfYgivVj4ZKcScMl9
         kVh91uDwI/lKRITblANMEb9E1WO1ex0L4c2Efdikw+y4QTcxsXm1Ribl1HGGv7gEtvjd
         Jg5UkfGlUBLGNKTae6i76etokTx+zB69kgMJZKSICeSC+lD4qLXytQEBB41DZ01pPmqr
         PKu3QIICPvi9QeHTCNSCsRkdxbrc00gdDvL8LK3PSLIExlDLO6mEWs7ACSMCFZ7qVDgS
         wGPMzCVKuH6roKJBgzgdbmoKJl3RtbTcNAm1hXCdkn/V9k0zyNVYcVBxnnFmkjPCKsn0
         Diiw==
X-Gm-Message-State: AOAM531s9Ux6nXrbpqLc14S+lLOJz6s/RxHjQY7G+XnG6Zx4yA068brk
	uKduRkxzLaVi55Q0Jk9rrbg=
X-Google-Smtp-Source: ABdhPJzIh1yHQi3dfpS5M9JA8VNY+Gmi1qcw7cABBfaBWFfE4ZCNkO3kPud+Uxpzq8uJoqJdxcIRRQ==
X-Received: by 2002:adf:ffcd:: with SMTP id x13mr789454wrs.149.1612464220816;
        Thu, 04 Feb 2021 10:43:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f852:: with SMTP id d18ls1238922wrq.2.gmail; Thu, 04 Feb
 2021 10:43:40 -0800 (PST)
X-Received: by 2002:adf:f8c1:: with SMTP id f1mr830008wrq.76.1612464220163;
        Thu, 04 Feb 2021 10:43:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612464220; cv=none;
        d=google.com; s=arc-20160816;
        b=V6oZx6E/m3BLErwAfoy1Y5gA9+6Nniwo1b1dK+sJs3mr/dRIcJKhMc2rbEBtOoy8+Z
         MpK73+RpWiU2f2DGcep5iFgPVWw7+gJNjVJAR7xMX1PenzTH4y7pJLDYbbuCVR4HEkSb
         YEE6Lw54nNeRExcxe2GfyC2+HOBtdrp5UivhSfmTtRiKTZbCKfk+W5CmAehIZR9TAErv
         mcyjkCj0oTDYdMTzJTYqRjl9YLmfdeEdHmmRIvFwIPQ1q99UviYSXc+rTOyiXbB8oGu5
         fh/57otM+/Ys1eWoKIhYSQnuV9bQU/X7ofiofcH/UksmLeu0TOFPg9zPVsJsOXmFn73D
         xalg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:dkim-signature;
        bh=rNXkrpeIh2LfUOVilwcJH+Xevmnh/DrQlSFjwguGqf0=;
        b=zfjPM0sGmd2MkIuHMoyNYRVbvjp7+tZRiuvdalHKBqK/v71jHfAl+r9wDthdWTE2JQ
         +ImHcq333fsVdzG+jc2OSvvW9PP4I46zSBJenmRF+EVVObRXosd4AiqDvPf04RzMifpf
         VsPUSZDgwkWky+IVMMtkHWHw14ooT2tGM92i9usyTt1nKCrcwe60lHWusVnnp5DFVhAX
         3MuIJqGZwRrGC1B0jNUcL+3SDOyxh34WZyqufFHHV5e37mIUtU6lNjxv96B7LKqzCRBR
         8wIz+TMNBNPIoASslC6bzSSA0eXvBAots98QbEZ2D6/eR+1fqzef+uiwQGz1xewZ8JLz
         JbLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=ETj4cJWG;
       spf=pass (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Nicolas.Ferre@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id 201si302580wmb.2.2021.02.04.10.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:43:39 -0800 (PST)
Received-SPF: pass (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: eBql+5flRwgc+oDmGTlZF9RKUq4v1KWEeMtbEx4ZXLcJYkkofIYtx8AbnPU149a+52HFeWaWwy
 OqBtCZt5W4f1jRgAmbNCHQC+wTEf2qeuymTAJifC63KzX4wNqZcu6UOj9wiNc21lveeu/tVp0S
 TqiLjvljRimti5Iv/prihHIgIy3TCgs+d5XlrjQDhNAtwz3lxJFwRS1LJfTV0NFwcLHnj5qRWx
 hvZJs0Dz01fO8ix3KL4Wk4UOpSLcNWW/ev5F4CXRda1DSXWQLAYqtDTU7WeJ52A+Ecoelw//yH
 mEU=
X-IronPort-AV: E=Sophos;i="5.81,153,1610434800"; 
   d="scan'208";a="102622916"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 04 Feb 2021 11:43:37 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 4 Feb 2021 11:43:37 -0700
Received: from [10.171.246.84] (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 4 Feb 2021 11:43:33 -0700
Subject: Re: [PATCH] ARM: at91: use proper asm syntax in pm_suspend
To: Arnd Bergmann <arnd@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Ludovic Desroches
	<ludovic.desroches@microchip.com>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, Claudiu Beznea
	<claudiu.beznea@microchip.com>
CC: <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
	<sboyd@kernel.org>, <clang-built-linux@googlegroups.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20210204160129.2249394-1-arnd@kernel.org>
From: "'Nicolas Ferre' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Organization: microchip
Message-ID: <d5cc7f4f-ef4a-dbe6-6f87-918a1d96603e@microchip.com>
Date: Thu, 4 Feb 2021 19:43:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210204160129.2249394-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nicolas.ferre@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=ETj4cJWG;       spf=pass
 (google.com: domain of nicolas.ferre@microchip.com designates 68.232.154.123
 as permitted sender) smtp.mailfrom=Nicolas.Ferre@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Nicolas Ferre <nicolas.ferre@microchip.com>
Reply-To: Nicolas Ferre <nicolas.ferre@microchip.com>
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

On 04/02/2021 at 17:01, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Compiling with the clang integrated assembler warns about
> a recently added instruction:
> 
> <instantiation>:14:13: error: unknown token in expression
>   ldr tmp1, =#0x00020010UL
> arch/arm/mach-at91/pm_suspend.S:542:2: note: while in macro instantiation
>   at91_plla_enable
> 
> Remove the extra '#' character that is not used for the 'ldr'
> instruction when doing an indirect load of a constant.
> 
> Fixes: 4fd36e458392 ("ARM: at91: pm: add plla disable/enable support for sam9x60")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Looks good to me:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks!

Best regards,
   Nicolas

> ---
>   arch/arm/mach-at91/pm_suspend.S | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
> index 909856c8a8c6..0d467cc40129 100644
> --- a/arch/arm/mach-at91/pm_suspend.S
> +++ b/arch/arm/mach-at91/pm_suspend.S
> @@ -446,7 +446,7 @@ ENDPROC(at91_backup_mode)
>          str     tmp1, [pmc, #AT91_PMC_PLL_UPDT]
> 
>          /* step 2. */
> -       ldr     tmp1, =#AT91_PMC_PLL_ACR_DEFAULT_PLLA
> +       ldr     tmp1, =AT91_PMC_PLL_ACR_DEFAULT_PLLA
>          str     tmp1, [pmc, #AT91_PMC_PLL_ACR]
> 
>          /* step 3. */
> --
> 2.29.2
> 


-- 
Nicolas Ferre

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d5cc7f4f-ef4a-dbe6-6f87-918a1d96603e%40microchip.com.
