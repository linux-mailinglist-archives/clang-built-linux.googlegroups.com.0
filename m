Return-Path: <clang-built-linux+bncBCFYN6ELYIORBHEPUPUQKGQEEATLEWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8396749A
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:47:08 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id b6sf4610269wrp.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562953628; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJ/GzS/rh8RQAmQzQF2nEJhd9DWcI1vrs3Q2aaFaIOQRYj3+uvBoMKvuynHTVuiVMn
         B8FbwIY3hRpT5iz/umFdDKhvApEzrcHxHYdX4hkeamtLyDaU/UUtVYWginwfncswM5yJ
         +HbmA1xz3oOTwgACGm3+CENaUso+EQO5uxW1FuOSbGmPuMVlPHGmw6LOlIuDthSFM7NV
         irWMaR7nsLbmQsOoXLw4qgWsxQQfcbsVK7DIbujpxk2tFIMN5bSw2BQOn1FOw5VjnRWo
         3XbMfpnLwFXSiM81OAEHV0OPZcJXTBquSAEISI10BGBIAU4gtVgvyopoAQ/f6fUXoZR/
         XlQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:openpgp:from:references:cc
         :to:subject:sender:dkim-signature;
        bh=QuvVsb4kRCu4Rn3L5tn+KdVNbpVzToPRLOQ9ZrGLt6c=;
        b=F1oAsTh0VtM4+6769a7YSBAqmZ2g0zFNLXvSvPM5LbpC2Y6aWM++NjVFLlTYabOwFM
         oQwPwCvcrHQpJk4FLEbwiKJgq4/1dyp1GDR8knHAuLrZ+Y64UUM8/JB7xRucIYlDmnpV
         NclNtI1lzLu0WOinQsaE+cEpgG41yMwn7krfn8g5JpA3sEhs/J098ALn55TpeMJ+3yYR
         1/JJ0OLsOxdGPgn+Zdm6H3roBO8oOs7lHUq2gZAVrIsnbfKPi3y5GDL6UcI00AHlbS2i
         uEiFs6UqsTq21+eJ6Fgib8dnlnUg5hyn6WIosf0QW4xrcONBjCxGKIQvYHpIR6m5wuNZ
         JwnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 209.85.221.66 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:openpgp:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuvVsb4kRCu4Rn3L5tn+KdVNbpVzToPRLOQ9ZrGLt6c=;
        b=J4GPJJl8XW5GpAZabu3w5wlHKyUi3yQ3NRM/xA4FB3Gl3L22vNNgNKfcv8tg+Sikal
         0sRFwOBnDx7LqkX5xgRy01YBQZaMdrZaTE/No867OwT7+Lv05ywtPWepoozIBi0vJWOb
         CyNf3/BAiDwWBdlcWotHVH/5rKbOPTGeRTrmyZjrOkNKklBEdfxSsyh0b0f5ibsy3/fx
         d/PLxjjEv2AiK9FRMg2rpSufgv8BikZLjTffD0zZkxwOQszKXqOILrt6xBKwCm+cx/u8
         hLABVn/CXBcYKjks3e3Hp5qi9Wk9FW4A5+ZHZaMwAkYXDjFB3aTg3blYfpmHXNqWJIPX
         Zu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuvVsb4kRCu4Rn3L5tn+KdVNbpVzToPRLOQ9ZrGLt6c=;
        b=YSi1TbmcqN41T3IQcQuCJFL3XgorSwy2KMGg7vTfqfPF2BIkAHsjC7tfFxCiaOTklB
         7KtxpU9H24qz41xntrjQKhphHjaGL1/s1LkQz7xSXSpCt6p58ICTmLe0zwFdc4SvLI3g
         zqxA+I35nWi9PO61cbP57peX3ldoDD52p50RIxwZqShkjCDodCrvDzzdPEnKqdCXEdJW
         XzLtCL9zqcdLgr4DnRSZ/o00ADacOHj4ECX7LbNZN97LZZzTwGcdGGqPeE/nyKz6/Ivm
         vdYE92wefmex1wyA2LSmSN56oL6Oz0J5iLlYmK5ExcES22ZwxLw7dAmvybNbQgec00d+
         twNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUn2fbJ6XhhebQ8Fv/t0ZRa2COJ73jFk+itiMypaKCbDPkejLcg
	ofJDoLot/JPLcY7RqMxaa7c=
X-Google-Smtp-Source: APXvYqxukJB1ae/corTSxL28NI08Sb65Pr45uwd+Qdva7bDXKdYCKfwW/Qyairkeq9st8zsl5LMLrQ==
X-Received: by 2002:adf:b60c:: with SMTP id f12mr13050862wre.231.1562953628738;
        Fri, 12 Jul 2019 10:47:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5144:: with SMTP id u4ls3405440wrt.4.gmail; Fri, 12 Jul
 2019 10:47:08 -0700 (PDT)
X-Received: by 2002:a5d:6389:: with SMTP id p9mr2418095wru.297.1562953628268;
        Fri, 12 Jul 2019 10:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562953628; cv=none;
        d=google.com; s=arc-20160816;
        b=yr+JSQZguG2OfMvX4NAWjNCykxQ0Q4a+cATKVh5Q0u6kF3YVjs1JN6Bxw9BWpZkm0P
         w9Zn/jxHtUjBFHqBOdxNylmx5TtZlUb+9nRxRvj+tEJlR8iio7yDTDkzl4Qt9wEb0Zbv
         45TB966AyGoYVIvhozmcp7IY5LtRFiUc1UNVTXTewJhx3MFXgVWaD0T4Skj0/89rxG0Y
         2R8g/ToO6n4uIJGNBWC1ce81GJefp++CWFJ178U7Ke5Y1+HJFvDsT1yG9hgAV96+otKD
         i+CTicwSYk+teEhtH4do9kqtQzXxVANnMtntzgmZE1Fa0sIpDCLhqhXcUpnGw3JJpyU2
         ODgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:openpgp:from:references:cc:to:subject;
        bh=33ROaBIziKCKc1mhqPdQtlXJvh7o/Q/v1uM0fuHCI78=;
        b=BJC/cLGT9INxbUdYPidIgUoVDaXQ+3bOovohqOUvSpW6icODwKhJClvYkzF8eM09rc
         eqOBKlYo8OW0kvzBHWahoCcCbrgr0cdHwIQCv/oSjKH59dvlRBYwb/wZp2KCWyW3GyJV
         xrH8OhWW2R31/AtGDmpXnGtN57oQae0dLiPWYXSYeDhh31ECA0iLs3Pf1bnkLH+k+GHJ
         US/M6wx9JXBaae6UHLPfvw6B/F6od+8niYUZ50TR7qlyOyGmswuarkaEkjjboQZosU//
         GujBssgo9esqTDJwdxCQ9/hkxS5S2p+efrbl0OHJXP7sRKfa455q2ZWb5pzh5ptIukpp
         gaEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 209.85.221.66 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com. [209.85.221.66])
        by gmr-mx.google.com with ESMTPS id f13si733150wmc.3.2019.07.12.10.47.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 209.85.221.66 as permitted sender) client-ip=209.85.221.66;
Received: by mail-wr1-f66.google.com with SMTP id g17so10798826wrr.5
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:47:08 -0700 (PDT)
X-Received: by 2002:adf:9c83:: with SMTP id d3mr226717wre.160.1562953627498;
        Fri, 12 Jul 2019 10:47:07 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:d066:6881:ec69:75ab? ([2001:b07:6468:f312:d066:6881:ec69:75ab])
        by smtp.gmail.com with ESMTPSA id d10sm11228180wro.18.2019.07.12.10.47.06
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:47:06 -0700 (PDT)
Subject: Re: [PATCH 2/2] x86: kvm: avoid constant-conversion warning
To: Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 x86@kernel.org
Cc: "H. Peter Anvin" <hpa@zytor.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Junaid Shahid <junaids@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Lan Tianyu <Tianyu.Lan@microsoft.com>, Wei Yang <richard.weiyang@gmail.com>,
 Kai Huang <kai.huang@linux.intel.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190712091239.716978-1-arnd@arndb.de>
 <20190712091239.716978-2-arnd@arndb.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <4694728a-a2bc-a681-7084-476a7bc28dfd@redhat.com>
Date: Fri, 12 Jul 2019 19:47:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712091239.716978-2-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pbonzini@redhat.com designates 209.85.221.66 as
 permitted sender) smtp.mailfrom=pbonzini@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On 12/07/19 11:12, Arnd Bergmann wrote:
> clang finds a contruct suspicious that converts an unsigned
> character to a signed integer and back, causing an overflow:

I like how the commit message conveys the braindead-ness of the warning.

Queued, thanks.

Paolo

> arch/x86/kvm/mmu.c:4605:39: error: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from -205 to 51 [-Werror,-Wconstant-conversion]
>                 u8 wf = (pfec & PFERR_WRITE_MASK) ? ~w : 0;
>                    ~~                               ^~
> arch/x86/kvm/mmu.c:4607:38: error: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from -241 to 15 [-Werror,-Wconstant-conversion]
>                 u8 uf = (pfec & PFERR_USER_MASK) ? ~u : 0;
>                    ~~                              ^~
> arch/x86/kvm/mmu.c:4609:39: error: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from -171 to 85 [-Werror,-Wconstant-conversion]
>                 u8 ff = (pfec & PFERR_FETCH_MASK) ? ~x : 0;
>                    ~~                               ^~
> 
> Add an explicit cast to tell clang that everything works as
> intended here.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/x86/kvm/mmu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kvm/mmu.c b/arch/x86/kvm/mmu.c
> index 17ece7b994b1..aea7f969ecb8 100644
> --- a/arch/x86/kvm/mmu.c
> +++ b/arch/x86/kvm/mmu.c
> @@ -4602,11 +4602,11 @@ static void update_permission_bitmask(struct kvm_vcpu *vcpu,
>  		 */
>  
>  		/* Faults from writes to non-writable pages */
> -		u8 wf = (pfec & PFERR_WRITE_MASK) ? ~w : 0;
> +		u8 wf = (pfec & PFERR_WRITE_MASK) ? (u8)~w : 0;
>  		/* Faults from user mode accesses to supervisor pages */
> -		u8 uf = (pfec & PFERR_USER_MASK) ? ~u : 0;
> +		u8 uf = (pfec & PFERR_USER_MASK) ? (u8)~u : 0;
>  		/* Faults from fetches of non-executable pages*/
> -		u8 ff = (pfec & PFERR_FETCH_MASK) ? ~x : 0;
> +		u8 ff = (pfec & PFERR_FETCH_MASK) ? (u8)~x : 0;
>  		/* Faults from kernel mode fetches of user pages */
>  		u8 smepf = 0;
>  		/* Faults from kernel mode accesses of user pages */
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4694728a-a2bc-a681-7084-476a7bc28dfd%40redhat.com.
