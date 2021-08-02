Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2E3TWEAMGQEZVPNNFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id C49EE3DCE91
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 03:44:09 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id j6-20020a0561022406b02902bb26ec3d8asf1235335vsi.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Aug 2021 18:44:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627868648; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVR0YY7Z2ivw4txblAGyRRrX4IcDfc4Z/aNH8I9DvWTXfG2LWZThdJbqsxFOhBzKZi
         e/rksVtUMftSFpKAORXIrBSYIoUNGxp1oTnkGg0k2Nc52XzOituE3wHxgKbY21mduswB
         StWkpaqW2kqylp8fWoKiFJBuvJhBSFasHafEiGsClG7GWOptSOuRG1KvjulcTaVkhHeV
         w+eFmR+PB7g97tSDIaSgoVSnTfjU/LjbrKwNQYTYpXM2Lv45y1NY9ywK0TchOdXGn2KN
         H/aCMdjOVLdvAVdDibxLhuJ/EmWa9pT6ilbP1O+1k+Ik+OxKXfvosRGIPJVVKBYUA2GR
         P7PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=beLqOOEnL9jrPGp+gOevHgJ59Y/6wTHLP7bamqWr5I4=;
        b=o/FM6lC/rh9hzK/ruP+O1BOHlw1miYc7S4w8sRGYK8+/EqOd7Sf6/wifyZ48N9N+/Q
         Hy/iHotqycwK5256WheqxXDazOmfcTTCf7dxh0lchnmmTL15SGDu67briI4glx13bZJA
         Qb4+ydfONg3IZ2PfQERQft63DvmjdJv3WaWnZdfSr+7Ttemw6iGhX+JuLwH9NopUEIK7
         el3xkL/D/hy7kk1TO5UpLKXcBWPEwOmZxMRy8HYhJ7opmPFi8ChDp1RKtkJ3RgSF5jMO
         JoCqzdCqThx/BnVdwIQx1Ru1/OtIdsrVRRiqCoESDZZow7YH4wnAYPWtm0ZOYdHJgd4C
         JrFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FDK2ou9V;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=beLqOOEnL9jrPGp+gOevHgJ59Y/6wTHLP7bamqWr5I4=;
        b=jiU3rplY8sp2VUQ9xq48/fGI0yhjd1iHFWMoBK6ixUiOq76RllURyFb7EtwnO0vDPx
         PJZUWvxpsoXJsNHH8q5Jq4vEyzAwc8C4d/g0i4BQGawiguFYOAZzmKDpQCPPYq82AIj2
         fZIjVta9unimP0DQ5eKbU8zzCAfHjE5fYVsDGk1NMOQNE+4IuZc9MO8gDtUWxj3jQZx5
         v1gXMayIUcV/HRvZN5Wvh8Vlc3+lh8xlbvacNiL7jXUPyuxgtajote/Z5vmxn8IcoHij
         2tcFv4Lt5QmQOEesx0IoJ3HYt8e+QXuUEf2FNl84jgxnF3szjhWqSScgGZc8ZgZrQAOl
         1Lpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=beLqOOEnL9jrPGp+gOevHgJ59Y/6wTHLP7bamqWr5I4=;
        b=kd9o5bItA8XJ262iRU5/2jBz9szVpHGT+JIyxkA6V6orzMit8IhvLKyawJD98zSP8s
         nOxPV8tl/o2U6dwKymLlESZI/32PVooTZZ3BxbibI112nNQ1iPztHiPsjtnYgf6pYjMr
         cNwTvU3pxVWshHI1kK3amUBB2eX7Swd6wxxNHHJk8OJKaijPc5WG8gy+Z9MPd0VGXOM+
         JXPAgqDMRNq+Ti4Pz6esEBXVFK5graqQm1qYlemruX/V37qm+c1TzICYccVM3E6SEZCq
         lTixMEo2UGXhpuruo76NxAJ9RpOWbJUwByMvx6Os1j1OiSYFLNn81u7HXgbamXqD5X3e
         RGKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53270ChMArAap/Htvn5by05liMNqXglyCQWU5KY7Y7FY/b2WPXbr
	kxlxsf6EQy1GGBNldPJfqCo=
X-Google-Smtp-Source: ABdhPJwId4AW4dV07GRJgpzGRXo8j7kpWisX2/AjATUOg9rXYe2o7rxO6uwEchEcOvi5m5fC0lMemQ==
X-Received: by 2002:a1f:d943:: with SMTP id q64mr7150903vkg.23.1627868648564;
        Sun, 01 Aug 2021 18:44:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2429:: with SMTP id l9ls1492741vsi.10.gmail; Sun,
 01 Aug 2021 18:44:08 -0700 (PDT)
X-Received: by 2002:a67:7f09:: with SMTP id a9mr8590591vsd.52.1627868648029;
        Sun, 01 Aug 2021 18:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627868648; cv=none;
        d=google.com; s=arc-20160816;
        b=YrG3QVZ7uUwqocn2zHufTfIUxzgEe+zpMhTYc3geX8ctBzLj48w7o8nMFUfYEThAQ+
         JWH9fRcqV6drQRR31595E0TGBgEksC/bbPoRcYNl7GxAz5O4VwKqm99BqVQUhJ7jC7WE
         QCZP/QzU9yVPjCy6j6PO5+C3gHRK/1OuhoSAnMxJIqrA9eLcgERIysNs3LSJHb40wzbL
         dO0j9EWlucpugc+fCXG5UHJ92VzuVxg+hy2yWx9x8mWNZlMpzGrYey03CiOkewek1oZQ
         oq06TAlAzDEr8IQCbDwl1CDgopSEkP9gFFUp42v9VTFdCr8cyuprDryxCMq0xIhsI/h5
         tcvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=duZ8h94HaaXe0savUAr/p9zDLpY89lMo4Jy7eUEXVwk=;
        b=QJyiCkcVzergJipSzBWr3mCpEIxQjl035I6POASXzsSEy2M02l2geUFDXX5WlmZGbH
         gPMaRf7qbX2hFfd5dVrKz+w3Kmu8ZgAZeCFMxGJAa2x+SLfK22eUH1xpmbXhALQGQiW6
         MdWBYXh5sFES6VcBe33nJ1o24lixWxGCYT6owxh/RfG+G9j4y+0xQhND0MDHyxBFmTbJ
         zQVQGbuXFSVRuS0O2e42TkYI0VtoWiSQ1CY4RrqcmOWb0MDiwvnyxnQaEJVDNIHMCS6L
         mU1/uhkCsMEQdSb5Uqtcgg+Y38zw7osE3sDaYYuF6R7pm7pgNHptrcq+vQj5R569GKHX
         vakw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FDK2ou9V;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l10si80971uap.1.2021.08.01.18.44.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Aug 2021 18:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B42E610A5;
	Mon,  2 Aug 2021 01:44:06 +0000 (UTC)
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 26 - Successful!
To: ci_notify@linaro.org, tcwg-validation@linaro.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linaro-toolchain@lists.linaro.org, clang-built-linux@googlegroups.com,
 arnd@linaro.org
References: <1584769729.679.1627868136620@localhost>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <90abf79f-5706-592d-c067-fa3fb88a45f7@kernel.org>
Date: Sun, 1 Aug 2021 18:44:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1584769729.679.1627868136620@localhost>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FDK2ou9V;       spf=pass
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

On 8/1/2021 6:35 PM, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
>   - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
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
> 21802
> # First few build errors in logs:
> # 00:03:45 drivers/nfc/fdp/fdp.c:116:60: error: passing 'const char *' to parameter of type '__u8 *' (aka 'unsigned char *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
> # 00:03:45 make[3]: *** [drivers/nfc/fdp/fdp.o] Error 1
> # 00:03:49 make[2]: *** [drivers/nfc/fdp] Error 2
> # 00:04:01 make[1]: *** [drivers/nfc] Error 2
> # 00:09:25 make: *** [drivers] Error 2

I believe this should be fixed with the following series, which is now 
in netdev and should be in the next -next version:

https://lore.kernel.org/r/20210730144202.255890-1-krzysztof.kozlowski@canonical.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/90abf79f-5706-592d-c067-fa3fb88a45f7%40kernel.org.
