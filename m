Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBJNDSDZQKGQEHUU3UAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D0B17D047
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Mar 2020 22:27:02 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id d2sf4089659qtr.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 13:27:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583616421; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wz5jLoatimUTG0PQptL43C5g7EwEjP+eOCwIR0KqwJn3Nw/iXQDAJ3FKPh12wg5wdw
         TUbGuebcgAJSTdGelZR8X0N5PTYJY4HzWZuyWhMDg7aZu/J9cj+U7V4MhJUFqAuxBIKP
         YpyLFXndzdfklYhqiTbslXWIvlUwKiZNAF5KUxkU3CHPsq9FfCED5sw28VImseWTghma
         h4C+Pu7IEEbJ2LEZyu0Vcmia1XLCxGvjk1auzgBieCrLkc9LeN6w1eVstdnGpvNVzrzY
         OPrga8OyBbBoGKl1O0CnDeWP1YYgBdPPc1gchp90SkKfd9Lm4wTasIGbLSJE9+QXBFJz
         u8uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature;
        bh=dJrJaQbm/2YSHMC/SGFDpAY0g/ZS4DD6uocN9BrFX3M=;
        b=lyv9hjFmvW7aU3tzNnA9pZ1+QcLyJKWVVF6swiOY29zr/yjhfmZdYi29JNDsLHy4N6
         kPcd0a3J7uofeRtbwRGfwk7f4eA485JcZSNBDbw/5M5+jRZXH+VYzGvdHvPy5qTi4FkF
         vxU0wHhBdGhJ2XfAt4rhvXW6IgxZ8uoJp78upv/Xyb3TfxFmSHls/F3O/5WESTgzR5il
         bxfQXwXDCKRh8xlzvFObn1yeDWWV7Tu/1pjFfukuMmMY7GxaKRU/+35qjBcN6V9IM3rq
         dfFin+y//VjByIL7EbjvzW27aazG0bmxLxHr9hyDdbVZVdLNGc5CGnbNXs++IY219RTK
         kduw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=X55sENMA;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.143.43 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJrJaQbm/2YSHMC/SGFDpAY0g/ZS4DD6uocN9BrFX3M=;
        b=KSo/l2f8xx6lVhveFWh8s8jvu646x/7iWiHQ9L9hHc+ZTfiQxp2NyZkyaLxiyhScTM
         0/BtyZOdQauCxM9XStp1+PYUJPyXOrKZcGlv8ZH1qD3rdMY4BC0bzox6mqk2MKIAQkFN
         qglrOmxYtj4oV7vZDE/QOQKFZYn/kVMj+TRop12Z549zlrN/8I5WE/QuHBuSUDb2zJx1
         66EKRKqnalDFikV26/jgT8JaLEAwYlWNB8UEOmlwNqzGp1kkghthDjrsFOtTR2lgE+gI
         hZ1uFKH9o5/ghrTN0T0eDJPBzqp8OY2haHuA+9sssCmEb2GRxXAF3/OQEg50g23uBZmn
         Z9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJrJaQbm/2YSHMC/SGFDpAY0g/ZS4DD6uocN9BrFX3M=;
        b=LlLjMdxRU1GBK/67XLS5xRV6fY/0JaLKXm9VjYuSAzTfhi1fqarPOUjtm/2da8yvCD
         zJhZwxh4BhZ3XvO3e+39K92BSxNjSIjARoX2A8oaHney0R1mI9KAyvB4nDfgqhu+v5FZ
         pvCW9euuECDCI5KjcGXYEoKNnfPQm0e4GuV8YbYX1BBkUUpLsaqHZpCjuURLUxBRUxdU
         7MQSL3bYVRCEDmyUWU+7K3ibENfWDCRsPSZ3Dw4FUcEnn9bysy45QqFppcnXMvI1NhyJ
         c4H3OgLjb6/of596L/XEjs5GDiUCkC1ffUz0a76vI81dG4cakisbc/bsNWZSRzvZOwlQ
         v9ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1QMEVnz5TrnNooe5rk4tn0B7bVVxBqRLWkvZCtbKXxa2sNBzIO
	5YkvRG/R4ooOZbE4L+LjNhQ=
X-Google-Smtp-Source: ADFU+vuQ9K+2A+rOS8HihyzaPvJSiMftgeAf25fLP9dNGmqWmhhcPveN8J0aCXrVJrj7Y/Ax0MGAjw==
X-Received: by 2002:a05:620a:15b3:: with SMTP id f19mr8318319qkk.15.1583616421241;
        Sat, 07 Mar 2020 13:27:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a991:: with SMTP id s139ls2220412qke.4.gmail; Sat, 07
 Mar 2020 13:27:00 -0800 (PST)
X-Received: by 2002:a37:b0d:: with SMTP id 13mr9064369qkl.9.1583616420835;
        Sat, 07 Mar 2020 13:27:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583616420; cv=none;
        d=google.com; s=arc-20160816;
        b=oc/Hy6Pfr20K8+HYXt0sHmVoFZq89HXTHCg7QZSS8d62x8P2Wvx7gu1FxQk3324xWG
         5NlWrBnTCCekyYANRUiS48QEQfVDOdinc7NWqiphcwGbAIwf7UMCODfUiso8PGsyg9Vv
         CDv2r3Gwk0hryBBS8+26c4FoHIhINBFyo02PcwhKpGZPAbmUapACUsVwvtFJOmQo+v85
         oN3S8pfb2Wpb38y9IZjVODYsqdWimD5yQt9QUXA0ee4cOVxx29QrVuXpeJP3juJlq/9H
         CiFtLTfiRG2I5ttnoNjYg06eC5PPzBVA53qLmw/jVTVJwdldm3PbAjyUwo+lgKhTlnQo
         F8LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=XwyM+ZatNXxB3GBL7eiAfhT26Y/M/YbA5DRN3dXF2zw=;
        b=JU7d9CDM0ASexGSIDevpzYMBS6XgCgFSZ1wb0qILXJaSJ7sz2OnhqaaOkXhqH13G1d
         XI5DapVUkZ7m2l/RKMXTiFDVQOZaJpP0djlQygwvhJBP1TsZU35s51U8YzUm/2cB+4QR
         1AtmHODYKiX9Q7kv0/+GIC8+Nv+KfvtrpxntDjCcwyiq/HBN+KTeOQaCNRs28PXdzfof
         PMi0kVELs0FfIPoEplSdD/oObMT1ZwUZqhwB1ZPIFjXUbtVQTEA0k+jv1R0vZtbhf2am
         MuckYbPX9g1BmRNtM/uNGAvKUH6HparmGtCApla6bNi8WCob+qsWH6vlJJeS/0Yit4tq
         NAiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=X55sENMA;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.143.43 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway31.websitewelcome.com (gateway31.websitewelcome.com. [192.185.143.43])
        by gmr-mx.google.com with ESMTPS id g42si425179qtk.3.2020.03.07.13.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 13:27:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.143.43 as permitted sender) client-ip=192.185.143.43;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway31.websitewelcome.com (Postfix) with ESMTP id 2B27142CC4
	for <clang-built-linux@googlegroups.com>; Sat,  7 Mar 2020 15:27:00 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id AgyKjoTdZRP4zAgyKjBKDb; Sat, 07 Mar 2020 15:27:00 -0600
X-Authority-Reason: nr=8
Received: from [201.166.169.56] (port=21245 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jAgyJ-0033H5-5a; Sat, 07 Mar 2020 15:26:59 -0600
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
Message-ID: <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
Date: Sat, 7 Mar 2020 15:30:07 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.166.169.56
X-Source-L: No
X-Exim-ID: 1jAgyJ-0033H5-5a
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.166.169.56]:21245
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=X55sENMA;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.143.43 as
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



On 2/20/20 14:30, Joe Perches wrote:
> Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough
> to allow clang 10 and higher to work at finding missing fallthroughs too.
> 
> Requires a git repository and overwrites the input files.
> 
> Typical command use:
>     ./scripts/cvt_fallthrough.pl <path|file>
> 
> i.e.:
> 
>    $ ./scripts/cvt_fallthrough.pl block
>      converts all files in block and its subdirectories
>    $ ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c
>      converts a single file
> 
> A fallthrough comment with additional comments is converted akin to:
> 
> -		/* fall through - maybe userspace knows this conn_id. */
> +		fallthrough;    /* maybe userspace knows this conn_id */
> 
> A fallthrough comment or fallthrough; between successive case statements
> is deleted.
> 
> e.g.:
> 
>     case FOO:
>     	/* fallthrough */ (or fallthrough;)
>     case BAR:
> 
> is converted to:
> 
>     case FOO:
>     case BAR:
> 

I think the script should only replace the comments and refrain from removing any blank
lines:

--- a/drivers/usb/musb/musb_gadget_ep0.c
+++ b/drivers/usb/musb/musb_gadget_ep0.c
@@ -739,8 +739,7 @@ irqreturn_t musb_g_ep0_irq(struct musb *musb)
                        musb_writeb(mbase, MUSB_TESTMODE,
                                        musb->test_mode_nr);
                }
-               /* FALLTHROUGH */
-
+               fallthrough;
        case MUSB_EP0_STAGE_STATUSOUT:
                /* end of sequence #1: write to host (TX state) */
                {
@@ -771,8 +770,7 @@ irqreturn_t musb_g_ep0_irq(struct musb *musb)
                 */
                retval = IRQ_HANDLED;
                musb->ep0_state = MUSB_EP0_STAGE_SETUP;
-               /* FALLTHROUGH */
-
+               fallthrough;
        case MUSB_EP0_STAGE_SETUP:
 setup:
                if (csr & MUSB_CSR0_RXPKTRDY) {

Some people consistently add blank lines as part of their code style, and if I were
one of those people, I wouldn't like to have such lines removed.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/576fe2ab-7937-4698-b32a-8599813d6ad1%40embeddedor.com.
