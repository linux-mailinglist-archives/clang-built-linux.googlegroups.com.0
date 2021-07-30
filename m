Return-Path: <clang-built-linux+bncBDRZXY4CYYORB47ZR2EAMGQEA666D7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 542F93DB52B
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 10:48:52 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id k7-20020ad453c70000b02902f36ca6afdcsf5546454qvv.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 01:48:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627634931; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gy3GjK07bFKSPPS5owXwwCYy0ZuQdX0n0t2FbQyMr6kfbYPzY7KsIQ9V9d/sJzvvWg
         E3iOZRIMoB5c81EulS7/jvccAbzhObon1vuaOBJPrOyEXYLQ+WPe0SDDsDxRFyF5OZHm
         sz6gjbLWaSju50AWqE1YwW1F7XR32Y1Nq1Ru8YXQqyBUbNw0BY/phmUY7PiySJqu0/re
         PRJxZas7+eG6df9Y5U6Be6wFNuL6u32r03DFGvtL18f//M/EKmjPgPHIvjFDmdMIBlL3
         Qu4WXgkNrb9yJ5Z5JxMbCDnlwyCkAEtHeQ2WeFPu/ZymYq5dbZcvr/RdYK7+/IlUZO+J
         79og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6Yvk9tpQO2WiR+DIRxmMSpcKlTXv6HsdDw9sNDJwOwA=;
        b=bfqEMinat0JIVLGvOhKKKzwnsdU9xzqL/vLjQVk8KndGVX8LuD393GJr/tJGpWntTV
         HQMjnh9ALHL9nCH/LTy8Byjl8WleNdOEstINWDajd5Dqr5SacBP4eqf3BeZrNvd42X1m
         uSBnJYYYSFz92h/WRXzAMJoWpfcspv08qMw5H5TLTXkruIW7LyRhrmMGv8Fk9jnruq5q
         eG54+ryXhiBTsVNT6gemF2Ns0Flov9TT7Gl54Sa3hAtH2FDai7SLLhzlCvFfM4mDYJZX
         9+/ds+ECf62yNTmQU3tGTSFcWB1Iby/IFgfLunXAAdpW4BbfFcLChXmzqEvU2ojZQcM6
         p9wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UBrRiz47;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Yvk9tpQO2WiR+DIRxmMSpcKlTXv6HsdDw9sNDJwOwA=;
        b=QcdtwkBYTulsW1tW3B1YU9zkIprh8jW6tTwHQyiXCKN/Y9w3NQDkfVUq99YA5ttZdN
         +60RdVvBzTCxPuqbutofROYR8HdxZix4pUcoEZiI1XuEj334cZ387oSAUOWrDpGmB3iF
         SlGyDxcvaUngf55S9AnZyTU2O64qfLOF083QluvAMidDePiE5ZvIyA1AngJeCh3s73FH
         isL5cHrWXNetduldZc30s2vCP9zr8k1fRYqTB6oIujY6bj1x08lLEFar4WzZumCargMY
         ErAblLPe36N3a+PMRsTA3bnKib08gAk/zhVBJ/Smn2SwWHMqtnJ0N4rsonvRLD+h6M6u
         dQhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Yvk9tpQO2WiR+DIRxmMSpcKlTXv6HsdDw9sNDJwOwA=;
        b=LWvIeecR7ta37N7od+cWZrH8CwBC/mm2KdULUUAiuyvec2uYIef/CjgFSXh7OjkRRF
         sTsodRK49WsR/KWrptXt+5PmSNyD7Sc7aj7vipQgC4/u2XIJn6Rmtnp7Pf6r2LEJ86ZP
         bL1Ed9DGIYEbPtfh9k9+wrpuwQXtKDb4//DI+sF+2a/hktlPfjkT39rKZHZabp6aTg/w
         qZ9gaQmBPfIoJ78bN2+8442wjoerHCHk3UPHgediEanu8hEmH/NQu1KNpHMYUNl5xRoU
         d/pK4y1/UErO42qy9e7C7xuy2RjjIpJe/JQw7qZPXEdUB5Zuq6fg3OnEHfmjS6tHXVxk
         MBVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533URYrieazv2pqRO5s/KqHqFuD+r281xWm3e0z24mZjEM4c6a66
	1mmjoRVpl5QWoafMH+y2/sg=
X-Google-Smtp-Source: ABdhPJzkhRFIAzvgD0zPge1otmGCZOZuphm0uAO3HBEEhGp7HrCaxg3zJXrsFziM+cUVIMlyA1qDzw==
X-Received: by 2002:a05:620a:c86:: with SMTP id q6mr1253421qki.278.1627634931188;
        Fri, 30 Jul 2021 01:48:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:240d:: with SMTP id d13ls553130qkn.1.gmail; Fri, 30
 Jul 2021 01:48:50 -0700 (PDT)
X-Received: by 2002:a37:4042:: with SMTP id n63mr1210191qka.425.1627634930718;
        Fri, 30 Jul 2021 01:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627634930; cv=none;
        d=google.com; s=arc-20160816;
        b=mYBzvPG7yLAbgjXSdETseBp3Bi6RF37z9nw3+Ri/DgvN0vU9U7GxL1bqkHL+2Cly60
         prGdxEGbQ5dAbFtr9wWEBMt71gcdIosG2KyhjWX99WB77woUYdbhSBJxTwWl1LD7IVZB
         eTp8D7qu5iKrmVnrfLfo8oxZ6Qppjc7hN1wVqy4rh+81tZBaO2rVm7QoA6bFyuWeQ1i9
         9D+B6OONH/FvRHq1bs/UWscYrInzH7n/RGqioGOMom/yb+XCkRsg7VS02kQQ1HVMsl4U
         lAj6Ycmft2uMeHS6Yhq52SyT8GxtJo3Cxk/kogxQxmujRwPjz5NhZ9xACAHM/S8CbkqR
         iPPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=KwlwMG0bIm6lkV3XMLR/jIZjkoPwYVtdep1zcr5OxlA=;
        b=Lwln1ptxylfT6S9P5yOgoeAMRS+vWc+gDhlT2zyUMndbl6ptWw3uC9M217V+j4C7i0
         OQAQSbO104mSxjpvyisE4HnnuA+BfsGhp5Oe7dJOLNW5yRPguSTxEdio8Hk433WNz3h9
         IWb4IJhB92/2QF5DvwXD2Z9lgmkxL6x8m+gbVDqloOHV6YI3nIIkjg99tlGDgmvfiRhb
         4np87XL2iVlzy8Fdn3dhMeiCrXCSK4MqIgIKXyVa2yjjjjW03b27KQJQCYV8lJmI9CjS
         G8rHP4epFjG8YVKQoShJ3Ep0aVWRBraFOnChuO70vXi7KyDNeFZxyRGEwuz1zMJiOx2U
         N5Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UBrRiz47;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o13si55107qkp.0.2021.07.30.01.48.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 01:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-pdZtssnIMBaRWMdtekj4pQ-1; Fri, 30 Jul 2021 04:48:47 -0400
X-MC-Unique: pdZtssnIMBaRWMdtekj4pQ-1
Received: by mail-ed1-f69.google.com with SMTP id de5-20020a0564023085b02903bb92fd182eso4321729edb.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 01:48:47 -0700 (PDT)
X-Received: by 2002:a05:6402:34c8:: with SMTP id w8mr1710987edc.182.1627634926364;
        Fri, 30 Jul 2021 01:48:46 -0700 (PDT)
X-Received: by 2002:a05:6402:34c8:: with SMTP id w8mr1710977edc.182.1627634926243;
        Fri, 30 Jul 2021 01:48:46 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id o17sm328779ejb.84.2021.07.30.01.48.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 01:48:45 -0700 (PDT)
Subject: Re: [PATCH 08/10] power: supply: axp288_fuel_gauge: Refresh all
 registers in one go
To: kernel test robot <lkp@intel.com>, Sebastian Reichel <sre@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Andrejus Basovas <cpp@gcc.lt>, linux-pm@vger.kernel.org
References: <20210717164424.274283-9-hdegoede@redhat.com>
 <202107190341.gWNWWfOy-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3c016b6e-4f3c-3b23-01b1-c314dc1cf758@redhat.com>
Date: Fri, 30 Jul 2021 10:48:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202107190341.gWNWWfOy-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UBrRiz47;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi,

On 7/18/21 9:52 PM, kernel test robot wrote:
> Hi Hans,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on power-supply/for-next]
> [also build test ERROR on v5.14-rc1 next-20210716]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Hans-de-Goede/power-supply-axp288_fuel_gauge-Reduce-number-of-register-accesses-cleanups/20210718-092951
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git for-next
> config: s390-buildonly-randconfig-r005-20210718 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)

<snip>

>>> drivers/power/supply/axp288_fuel_gauge.c:24:10: fatal error: 'asm/iosf_mbi.h' file not found
>    #include <asm/iosf_mbi.h>
>             ^~~~~~~~~~~~~~~~
>    12 warnings and 1 error generated.

Ah yes, asm.iosf_mbi.h is a X86 header file. The AXP288 is only used on X86 devices,
so we can easily fix this by adding a "depends on X86" to the Kconfig, I'll submit
a v2 which does this.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3c016b6e-4f3c-3b23-01b1-c314dc1cf758%40redhat.com.
