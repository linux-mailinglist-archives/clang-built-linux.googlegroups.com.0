Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGWIU2EAMGQER22K7JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E93DF646
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 22:16:27 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id w18-20020a0561023052b02902bc6a514277sf225133vsa.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 13:16:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628021786; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCpJTsBFTjajw3U9wUQuyK9lhVKDb1QAjAAhvQhbUhk25iiRhVIYk6UBdFtVn7EyyY
         VM9Ztf2xBz6gz5MAVeZD8ADR/2bIrwckaZo3wFVO0F5r5zM52UrRWDUP/qeT8LCNBQZQ
         b/nlzu8qeQYj+/CqEJuxddUznqw52bl6AsQ+3VNL8fpE2xbFl2wl8NASjxoRb+fkKuAo
         EdR7Lz1XTXhKsz7jwa/LokKLNYXIFEwvgtudM71rQ8Obga4CIDLvRdzFAdFcE60UI1Y7
         r3O0sO4OfaoRgsXD4cf7mV6eGtObuE5DFX1mcvGqmFEi8c3q9Rp43Hi/f2OKicISIr8a
         ++Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=QryGa06APy23H0aEUrR6WWfyFMtQVXEb5ma1d1fXNLE=;
        b=TzCyiz5rMYLdp1ZHW5q4CVUM6dKai6AtFdQyMqeS3lo4zS6rh6g2Wvj0oC0ghRNmLw
         zmp7kHkIs/2PcYTm82J90s9u10P4qU4azx9vhhSrRsoQx0RPIMowker6bVC65kQT4U9v
         84thOsshz/QqX3q+BR2znrrtwS9UZgtjOP5Fx/nD9RnQC2lyXZE6HmfFzOttN1YbUqom
         h2AWb/PYfPIfKtmIG+hca8n3i/41VsKc6dOcrlKBrchw8XcMhCv6+k9lZ6YCBZSnHTlI
         OYcKFtfPOH7O+cm8xA9xRFXJyouGYkqvYN+fvWpxvw4Ded6haqkO5rync8w5ieW8BRaY
         J7lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JOPFU3AZ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QryGa06APy23H0aEUrR6WWfyFMtQVXEb5ma1d1fXNLE=;
        b=ICwcb5QU7/fqCUeRY+u+t3qzm1iRP+OJjSShJwCAiFxBZRRUq9oaYFTv1+v6ynrJ2u
         dwnaCiRtjQLpLcJJCCAlhc7/YD62Ecng1QT3b7urVcKbEA5yBihVC5ThP4oxkbv7wuDB
         KBQUCnZsGfxE9B0ncXRClbQTzgDOxrRu+UDZ7CXO2Lq6Y5zfR7ceHG/Qu2ORucP1rpgh
         B5jmSgDdUv11dwDXlhVRBIRBPV51mYhnb/wnEq2Ka6GwXIVGkYrutTdQE9MRoQaPsYyX
         CAYZRsnBPOj+duAkG91/1VruJAcwMQc4fU9BUhPuIx6vsT3tNZnEzf1Q/PED1EVhjMWb
         FSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QryGa06APy23H0aEUrR6WWfyFMtQVXEb5ma1d1fXNLE=;
        b=NHOW6wCl2haRyHeJ1GHx+kt+qBkHRNMebWwHb5i+1WhifEbqGBjHwQr0R5ln6Hfmqp
         9Tbbnf0QP4umUN0T0zWU7CbNJJAO+UIGLzTlgcIXxXTvP0rmmdHAFsVepnf/Vsu5RsND
         RnYfVYl1L8+VX1uBob7z8b1156AvLXE46/zELvNksMWsZZh7en7KnXfUeI5OJXuDiKJn
         rG7PxqGb4AQzlGJDhQzdn0dNNmTX4i0WuXKqwyf4RHZwcZlH5bSJY2SlyQERcplMwl3M
         kvTTWuhjjGNoOFosgIPmC2ywWg2vLbjG1hnjn1or5Z3u5Dyqtr2cTeBEzINWynqMLUVy
         RD9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304RqbK7nZcF7ekwj5k9bXWuTHqXMm84Cb1CW6uFcUzXJFanH/d
	elO7trzWqMq8NZ4MfHftj64=
X-Google-Smtp-Source: ABdhPJz0OMtixfXgzu9Ao+PgFEnYIZAqCIRBAE1ZQtLA3c+5udENrqXfeWoj0t7Sk9HSHIiZ56BmZQ==
X-Received: by 2002:ab0:7499:: with SMTP id n25mr16581854uap.52.1628021786238;
        Tue, 03 Aug 2021 13:16:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2429:: with SMTP id l9ls2914255vsi.10.gmail; Tue,
 03 Aug 2021 13:16:25 -0700 (PDT)
X-Received: by 2002:a67:2684:: with SMTP id m126mr3183253vsm.42.1628021785679;
        Tue, 03 Aug 2021 13:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628021785; cv=none;
        d=google.com; s=arc-20160816;
        b=wVc6SSISSiZJpPGqur4360cGEmnY4xSmKLGRJ8HXgVujUjoRMIVWj9kOOEN5H0qIX2
         yfdBTSHEFGTp65somJYp8pjsdqusGNHjUYYmiM263gXKn9lZcCPRB3vM/ZNtEW8JmxDp
         pO35tvUO43NBu5WPkHB2ay7bbaOwyowR7MDWTuj3PqAt2Fwpxc8B4PofXOeOMePxI0Dj
         aBaENx7t/U8MAgL+Z6YbvSwa95mlWBBl+XeC+g4F8BLGfDy3Gmw4AbU5jKT613kCPWXw
         7HKdFCs1a9jRs4t39xiXW1N/VJliPRIuuvBJWMjPlZ0O1BXxGklMNn9/n3tQRvNNclPZ
         nD/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=mTpM9pYwObWgdKNFouY4KhUdRZl8S7f8c7a/zFOVt18=;
        b=RWwZ9y3oSluT2Azd7pdl1fK7EEUGY1/2i2tpNPz1l1pjcxpRLB84cI8L2Fj9S9H3of
         0RMwjz5To0fZckQKDq+ePJgNJgOImZcbT25XqEcuUVHN/1h6VUU9aXISIhWd2tYnjh9P
         6ItGmMFGHt0h5wjOIaytKahgAPxRBUKi3cY28VLAHlW5TM6xbYUeu6+0IyF2Rzchaa7l
         khHhTSG/orO2hcF9erZGuiibkrdOf97i03vJu6ATiQdVzePC9/im6jWANZweyvS/jOua
         m18MVkT1Rsz2jAGb5/EHfZ5SUqDbNBoC4ri5geh9ZKH2riyahgOlvvqzVcwj718G47BS
         ivRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JOPFU3AZ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l10si4706uap.1.2021.08.03.13.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 13:16:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 36B6860EB2;
	Tue,  3 Aug 2021 20:16:24 +0000 (UTC)
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allyesconfig - Build # 14 - Successful!
To: ci_notify@linaro.org, tcwg-validation@linaro.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linaro-toolchain@lists.linaro.org, clang-built-linux@googlegroups.com,
 arnd@linaro.org
References: <725376535.1725.1628020339453@localhost>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <da59ffea-1d76-c56e-d64b-3fe9e5a686fc@kernel.org>
Date: Tue, 3 Aug 2021 13:16:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <725376535.1725.1628020339453@localhost>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JOPFU3AZ;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 8/3/2021 12:52 PM, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
>   - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
> 
> Culprit:
> <cut>
> commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
> Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Date:   Thu Jul 29 12:40:19 2021 +0200
> 
>      nfc: fdp: constify several pointers
>      
>      Several functions do not modify pointed data so arguments and local
>      variables can be const for correctness and safety.  This allows also
>      making file-scope nci_core_get_config_otp_ram_version array const.
>      
>      Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>      Signed-off-by: David S. Miller <davem@davemloft.net>
> </cut>
> 
> Results regressed to (for first_bad == 3d463dd5023b5a58b3c37207d65eeb5acbac2be3)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 19928
> # First few build errors in logs:
> # 00:02:04 drivers/nfc/fdp/fdp.c:116:60: error: passing 'const char *' to parameter of type '__u8 *' (aka 'unsigned char *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
> # 00:02:04 make[3]: *** [scripts/Makefile.build:271: drivers/nfc/fdp/fdp.o] Error 1
> # 00:02:05 make[2]: *** [scripts/Makefile.build:514: drivers/nfc/fdp] Error 2
> # 00:02:23 make[1]: *** [scripts/Makefile.build:514: drivers/nfc] Error 2
> # 00:04:16 make: *** [Makefile:1842: drivers] Error 2
> 
> from (for last_good == c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 20000
> # linux build successful:
> all
> 
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/build-c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468/
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/build-3d463dd5023b5a58b3c37207d65eeb5acbac2be3/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/

As far as I can tell from these links, next-20210730 is still being 
tested, whereas there have been two new linux-next releases that have 
had this fixed. Would it be possible to tell the system to test the 
latest release, which I believe should build without errors according to 
our CI?

https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1093846606

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/da59ffea-1d76-c56e-d64b-3fe9e5a686fc%40kernel.org.
