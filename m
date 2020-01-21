Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR4MTXYQKGQEVMNBBZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E117F14447F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 19:43:20 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 14sf2100631pgg.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 10:43:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579632199; cv=pass;
        d=google.com; s=arc-20160816;
        b=FIu1LluaSy40o6xW86dYpGm+7wap5UkByETkdwssLHluISFNXn8c1+1YBu5w52kfi3
         4deNIoalwNDqZE6f8Pdh/ZujZuFfBLS1BW3gSTWUFi15+2N3BRfPeA3b0ZijKlHFQx25
         wxOCMA1+zlzS1X20JJi3S7q8BxNBThrgbh3dpoCODOPA0+U3nrK0ZEWsNhFVnrKgQS2S
         WEsfpIy54X7sYoh89Euk78vZytaX8+3WkJQFkC1DNdYj/l4H5EgMb8DpDei0cxLsTePF
         DsJ0kyoh1LVpeineFka2u1bDktmV1AZlklhR3cSiWTXmxM5U6Wp+U4GL490QXdoQ9Hs8
         oxBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mKgvO4Uq4cTQCIXUk1B35d8YAOXgnDiJzCJzq/esB/M=;
        b=mZ4NO40sq7b/XssvBxuUOOUAUzaLeED2/Uznqy87YXdkGjrT6ibetvsXl+8agFDGnA
         9syLdGKA/ruyjrYQraczaGVU1UsM/q6VkUuFmo6KR1bCGsnfBEspASXdCxy1bg944pjj
         EapJc0KH0lYi/vxxUhRZdk+kD1KFoNzb0kmyhGg6KOJRnNCQ/3+D1oYlPQh3mNmuK6AT
         zJ0H+D2662mnK9frym9NvCzPrJtXohKIE0jY5XzEiOoOfCYvG8gpNuGFDLcWJ9PcTNle
         oTp8Tu2XZYdbtKUgIkcPv4vrCoi7horv6YehxwZg1NMJjQmCT9iRXbygfHCbSOa/hb/W
         ORTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YXYL1i2Z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mKgvO4Uq4cTQCIXUk1B35d8YAOXgnDiJzCJzq/esB/M=;
        b=Udca6ebCN6j6L31QqkjgrVATZHT+c7+mULI77otQr+9Wqe0EF3X/9NgdBbVR1YiFRU
         Af7/SLVVx/5VrEFIVQETMH0Ix0hVP6iPY7Qh29HWRRko6tD8nSOxwkmU6HL794fKgM/v
         O47ROm4MTB5XPXMam4HKUYbFXYmmSrtrVAbHtMmAKjnk8T18Ox5iDN58b4O7ympzoJYn
         1pYPseSc/KZW1lyY9xFuxpK/pqTqivKVD99KoiLw8oSI/FV0JtRvinvHquNgAmHUErRv
         Hlunp+tJvhPqIRg7Sbuf3jw0WmJRJ24Hnmv1BQ151J3ZJiw1jKHNlfIG+a5/gjpboViF
         QeOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mKgvO4Uq4cTQCIXUk1B35d8YAOXgnDiJzCJzq/esB/M=;
        b=F/wccYD4IxpV2Nev1O0rVSbTb6VzFTom3SBl/hGXpUwH1mcGvEf+OobFHmAzCFT5q7
         nMQe+hCitB9IrnZ1VQ5oC7vK8WJaz70zclSEmMOAmDh6JaWmVBp6v0wXcdPenmmjD45O
         Le5Zy8elmNrz1jCHrqurwnQZ0uwe/RlmtxEsXhZY1QmTeD98LGiZYFOfPg+bu7Ar88OT
         69p43AmHirf15H9biwPUeqJXCFf9R9u9nybyiB1vj66ATtUqpMzlsNM0Vcy7vRvxPnPl
         Ule1b2EZghb2MFCiT38C+bkuiGaxPJvje5Dqitax7/chOBRhUlJ9IzL224aRqJBZ0eBT
         +llg==
X-Gm-Message-State: APjAAAWgQTX7hzPq/kdmu2bE8x4DRdN4+UHYlwSm173e6xBTB2l3jgcY
	o8oo7QIT7sQIXLu6E4FPbLQ=
X-Google-Smtp-Source: APXvYqw5hcayXpX9z91wU1lR0WrIsa2UKC6sbgsm0bpaeAhQHvZHCpobCa9okxpMxTyQ3CHC/ZuH5A==
X-Received: by 2002:a63:e0c:: with SMTP id d12mr6684181pgl.3.1579632199567;
        Tue, 21 Jan 2020 10:43:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls11089579pgg.2.gmail; Tue, 21 Jan
 2020 10:43:19 -0800 (PST)
X-Received: by 2002:a63:a4b:: with SMTP id z11mr6640097pgk.97.1579632199064;
        Tue, 21 Jan 2020 10:43:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579632199; cv=none;
        d=google.com; s=arc-20160816;
        b=hVk0YH7lFKjGPAnSTIe+TbtyMBiGKGlIRjXy/cSQXS9UrOBWT6xibgJPKbz5OW1x2+
         siN7Z+ep9jPDHeJGqF3W6/hPNpRtV9LcJzEGFbcKWgwDChSpoWovraKuoM9i3G1bFcyl
         eqnWklTe4v+y9Q9PAl0fPFXb/PyMvh6LE326I04Xj9s+svyzfxGkhx46rHyDDa6s50tq
         s/zYTWyfsYsYJ3qZkGzoEKz8yzCV6E7miUqQw0XCty6sZhcJ+UP4aT0itU5o8svl45Fe
         HQUEDI/kq7lrt+mhFvAvGN0y2Md1cYWcBZtKI2l3ZH+/jBpjvjWYkYRb1yBYzFNrGGqP
         GNtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VyNyygHT0l+kavkO9RtMQ33c7cwt2wna2HwrRhI5FxM=;
        b=OQZqxymbewACw+cYDnkKyDQ2muliFgMbuVPcr3JsEBZU4WEXeyq1iamIgnKe2ww2uz
         9WXweGNpq0fAdtvrI4mVnhnj1p6aSf+gxeXA8NajMRCAWmTyu0FQes5NsE0pvFmfd0X2
         /SS2P2MqC1QhRfwSokzGvzjqSnrVD+fMKIgKOh9j1COdG/d0m0F+dFsQqXFr+FAI3dAf
         lpHXOlscCcTg0xyg7u0wFnzWDIEKCZ2Wcfe4QW8MsFEc74Utyks8zxZXEU5ZriwJIFER
         Y/5oQd0ml8kPClJm9kS2yfShyfUQ114oTTca7qYVNM5LspuYCqDwnzT6tDAhEgspNmof
         /iQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YXYL1i2Z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id h18si3131pju.1.2020.01.21.10.43.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 10:43:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id d5so1784589pjz.5
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 10:43:19 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr6664939plt.223.1579632198484;
 Tue, 21 Jan 2020 10:43:18 -0800 (PST)
MIME-Version: 1.0
References: <20200120190021.26460-1-natechancellor@gmail.com>
In-Reply-To: <20200120190021.26460-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jan 2020 10:43:06 -0800
Message-ID: <CAKwvOd=30bpBXqrT6LfwDb+YrTcGtTg5NL34dpc3Vkfe11KvFQ@mail.gmail.com>
Subject: Re: [PATCH] scsi: qla1280: Fix a use of QLA_64BIT_PTR
To: Nathan Chancellor <natechancellor@gmail.com>, Thomas Bogendoerfer <tbogendoerfer@suse.de>
Cc: Michael Reed <mdr@sgi.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YXYL1i2Z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Jan 20, 2020 at 11:00 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/scsi/qla1280.c:1702:5: warning: 'QLA_64BIT_PTR' is not
> defined, evaluates to 0 [-Wundef]
> if QLA_64BIT_PTR
>     ^
> 1 warning generated.
>
> The rest of this driver uses #ifdef QLA_64BIT_PTR, do the same thing at
> this site to remove this warning.
>
> Fixes: ba304e5b4498 ("scsi: qla1280: Fix dma firmware download, if dma address is 64bit")

^ The above SHA is valid only in linux-next. Won't it change when
merged into mainline?

> Link: https://github.com/ClangBuiltLinux/linux/issues/843
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/scsi/qla1280.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/scsi/qla1280.c b/drivers/scsi/qla1280.c
> index 607cbddcdd14..3337cd341d21 100644
> --- a/drivers/scsi/qla1280.c
> +++ b/drivers/scsi/qla1280.c
> @@ -1699,7 +1699,7 @@ qla1280_load_firmware_pio(struct scsi_qla_host *ha)
>         return err;
>  }
>
> -#if QLA_64BIT_PTR
> +#ifdef QLA_64BIT_PTR

Thomas should test this, as it implies the previous patch was NEVER
using the "true case" values, making it in effect a
no-functional-change (NFC).

>  #define LOAD_CMD       MBC_LOAD_RAM_A64_ROM
>  #define DUMP_CMD       MBC_DUMP_RAM_A64_ROM
>  #define CMD_ARGS       (BIT_7 | BIT_6 | BIT_4 | BIT_3 | BIT_2 | BIT_1 | BIT_0)
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D30bpBXqrT6LfwDb%2BYrTcGtTg5NL34dpc3Vkfe11KvFQ%40mail.gmail.com.
