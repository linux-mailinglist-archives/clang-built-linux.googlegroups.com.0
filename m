Return-Path: <clang-built-linux+bncBDRZXY4CYYORB2PHXD7AKGQEBPZUY5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C972D1294
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 14:53:46 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id c76sf2844959ilf.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 05:53:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607349225; cv=pass;
        d=google.com; s=arc-20160816;
        b=VD9Gs22yCyprlvZJMvBiNgWF/5so5GQq3jR3gyEhnC3osa2t6IU96pqsiCD7kIyrcx
         8ByWtMdYGshA/RkLYfDy/e4ar/AhShN3M80nJePLQD3beCzN3o/IA+uqx/IbsdqjZeHh
         4mPf7mEOZURpnbf8eIgcPsQlvSOqtnpx3zUK+f1AlHz+QHzPN203dsm/qXoac7U4x1HM
         yaGBqAz3L4phCsDEUWrv+zSkaJnsSiuNzrNqAPIH9gPg0T6JwTbTiGElS7Viu+BS3EKT
         PwNd3vO1aJLOkOcYArcj5yoIxilfV6VXOrcp68s+IuouFQ7vX0GE9vSf2km3BKlBvjfw
         cg7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=cYX15UMRpWUekU7xQdSJ1NCmIJfnODcPEQLqJ6feOTY=;
        b=y4bdapKtRjs8ECM6swzz9H6LpWoHZIsEynxPfgiNeYuxZ1E9ztKX56QIc+bhUH8OlS
         CuZMLuSpZZKNle9+MW2ORKBTT8SOQLs/FLA0TaEBqHUBdJ9zsfMSk61LAUCoy6YfHGgf
         hrcuX/1o4Q0jAC/epeWCnF9suEEJ9CfY/JowtfKxBsMwmTQclGh5iLNDzpZ8cBNw4Ym3
         ncdfxWpaWX5stKXJESB4A2AaRHVdIGqzGFZjxwxs5oNhb0gKHhim409Lai2r69aJgkBG
         3HBNYrYPIPMGSynxWH7tCvkOLZTwAsigh1GAmPuMZ1exTWVHuOH4DmrpQTApJ7O5kugl
         kyQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PMwQq9aq;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cYX15UMRpWUekU7xQdSJ1NCmIJfnODcPEQLqJ6feOTY=;
        b=TbA4ptjyplFZyruFZdbiB2yymhg01V0lGlhJr5sZikcQKUXEAFb86FnCzTn9uvNIaG
         wY/xFp3sqnJHsHB0/xPZwvNp9t20gnctGBj1bbfa34VmvamfebUy5unYI/kfuq9mcs2U
         bYkUW4FL2RwlaO3WqMpn4GCy4VmB1fHS8C/OM0yRH2xmSM90GFjtLhLyzHk7BW40Kr6T
         njK/VSdY8qbTbLg2xUjwgDnRJJkadUg+mewdoMheEZVu/xCJEFYLu01rueiB59d6h7ar
         v9VbrrSkJ7CAhAgRPhDYDzfGrFdVbcoN/YwaQDAJo4XrOyc25BGM/UKDne0ojU9LHbfU
         8apQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cYX15UMRpWUekU7xQdSJ1NCmIJfnODcPEQLqJ6feOTY=;
        b=e11qZnaOZycJ/BsO9s+vYWEcrNeCLoyvJ02gLvDvdCRD7pW4dHgEIWb45Ic4RK3CZL
         rLZuMZwcfczMSNAbPg2Q6zvDR+0tNkdXcWWVtt83rdRwkp5RjaITUER8s5uM3Wzdh9c8
         g4tkIrCdtuNzJULeI9zdW1v7IpvlNL5BZpJYvt0Daycc0BGD97A4Vyibxphu4cZJs4z9
         EpauBR7vKqntcr9AoQUjhFY7e9DhxQ0GDjw4IPm/FY4xN8F8VYLQnPdjsYMsDwyrwbaw
         Odwd11VLkGysC6bMCYNBoK2OYwBjkb9LIZbe6PMcB2d3pOz8Dr5EFOMri8fWQ6j3nf55
         xHNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531l1q+AYtJ7g7NZpLWUGnCwsckWOwGdLHbmLcc4nivhHKX38HQG
	jE+TnDmuQHbZS75Up8U0pBw=
X-Google-Smtp-Source: ABdhPJz6SWhGBX8ozGhkhYqjKCkFMmqXO1MTj/YzWQvh08IKaaRYO7ChxzAnWKTXBkXf6sYGAvkARg==
X-Received: by 2002:a92:40c6:: with SMTP id d67mr22644406ill.236.1607349225606;
        Mon, 07 Dec 2020 05:53:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls2664256ion.0.gmail; Mon, 07 Dec
 2020 05:53:45 -0800 (PST)
X-Received: by 2002:a5d:9c91:: with SMTP id p17mr20232579iop.36.1607349225147;
        Mon, 07 Dec 2020 05:53:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607349225; cv=none;
        d=google.com; s=arc-20160816;
        b=DJx/AXZJWmPW6dRc8auykz2Kkq7fLnx0OVqeKNHmT2/89UWVJB5o76Uym7KpyF0tmm
         H2TxJhMsm8+Su255BDAC/bPUV9koQi3+6Q822UB5/KMLgPXrAHWGjWtuAP6El3m9eayL
         I7Ncqxdrr7c+dHmEjR1XuR+fTZc/xxlO9yza9uG4JzYe/ZU9e6y6/uCwkUwtLJzQqD5b
         gvQM17zz1vvdUSR8wVv4pchNVtY7YdX/D+wOJxWDOd8tx2IBUgf6MasCmCiv3jMbmZkV
         D3iiDHbuUoNuAKp9O9u3d3st9Kn7zIsNQCDDNvXTpWAygtaL4MPNQ2hrgScOGHOoR3BT
         mRiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=z0LkzQwUfy3VSXbaI0zGos8FMVr/WHmEntut1gHn3+k=;
        b=wZWnuKI88qALKEsPD7dI1hlpjEphxX7O3TOQAZE0E7SerOYXHxRFBG0NrwPbcJTj22
         oVTz6TjhQWxCHsBYp2vEGj+wbnKpJC34O+1viaxzuTfWSnPReFygDnRCraE8X++SLOhN
         z4EoIWis+gRJJXOOohpfj0UuZVCYYri5Q6abSbaAblWjeZC7BjR1q0IdZi42XOjFQB9e
         3lWZqzjuLYF3dTNvRg/Ge44eUbLV/APgpxnPT/AMHKRAWro93LVSoXdmRRm8oNrtORVd
         Pino/4/xeSQxYVrhLrYOvuiRv7b2vF39aU19UNsiAdTyYWfayNYVA+TWeSINREEQa5cn
         GYDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PMwQq9aq;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b8si346403ile.1.2020.12.07.05.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 05:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-d7LnXJHeM8amhWRxlg9FLg-1; Mon, 07 Dec 2020 08:53:41 -0500
X-MC-Unique: d7LnXJHeM8amhWRxlg9FLg-1
Received: by mail-ej1-f71.google.com with SMTP id t17so3890569ejd.12
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 05:53:40 -0800 (PST)
X-Received: by 2002:a17:906:3949:: with SMTP id g9mr1614670eje.493.1607349219578;
        Mon, 07 Dec 2020 05:53:39 -0800 (PST)
X-Received: by 2002:a17:906:3949:: with SMTP id g9mr1614646eje.493.1607349219349;
        Mon, 07 Dec 2020 05:53:39 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id p22sm12230242ejx.59.2020.12.07.05.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 05:53:38 -0800 (PST)
Subject: Re: [PATCH] platform/x86: mlx-platform: remove an unused variable
To: Arnd Bergmann <arnd@kernel.org>, Vadim Pasternak <vadimp@nvidia.com>,
 Mark Gross <mgross@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Michael Shych <michaelsh@mellanox.com>, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20201203223105.1195709-1-arnd@kernel.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <64393b7e-ba81-1545-dfe8-bc3567dd534b@redhat.com>
Date: Mon, 7 Dec 2020 14:53:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201203223105.1195709-1-arnd@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PMwQq9aq;
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

On 12/3/20 11:30 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The only reference to the mlxplat_mlxcpld_psu[] array got removed,
> so there is now a warning from clang:
> 
> drivers/platform/x86/mlx-platform.c:322:30: error: variable 'mlxplat_mlxcpld_psu' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
> 
> Remove the array as well and adapt the ARRAY_SIZE() call
> accordingly.
> 
> Fixes: 912b341585e3 ("platform/x86: mlx-platform: Remove PSU EEPROM from MSN274x platform configuration")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thank you for your patch.

Note that there are 4 more cases where the foo1 and foo2 in:
.data = foo1 and .count = ARRAY_SIZE(foo2) are not the same.

There are 2 cases where .count is set to ARRAY_SIZE(mlxplat_mlxcpld_pwr)
instead of to ARRAY_SIZE(mlxplat_mlxcpld_default_pwr_items_data)

and there are 2 cases where .count is set to ARRAY_SIZE(mlxplat_mlxcpld_fan)
instead of to ARRAY_SIZE(mlxplat_mlxcpld_default_fan_items_data)

If one of the MLX people can provide a patch fixing this then that
would be great.

###

I've applied this patch to my review-hans  branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans





> ---
>  drivers/platform/x86/mlx-platform.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/platform/x86/mlx-platform.c b/drivers/platform/x86/mlx-platform.c
> index 598f44558764..6a634b72bfc2 100644
> --- a/drivers/platform/x86/mlx-platform.c
> +++ b/drivers/platform/x86/mlx-platform.c
> @@ -319,15 +319,6 @@ static struct i2c_mux_reg_platform_data mlxplat_extended_mux_data[] = {
>  };
>  
>  /* Platform hotplug devices */
> -static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
> -	{
> -		I2C_BOARD_INFO("24c02", 0x51),
> -	},
> -	{
> -		I2C_BOARD_INFO("24c02", 0x50),
> -	},
> -};
> -
>  static struct i2c_board_info mlxplat_mlxcpld_pwr[] = {
>  	{
>  		I2C_BOARD_INFO("dps460", 0x59),
> @@ -456,7 +447,7 @@ static struct mlxreg_core_item mlxplat_mlxcpld_default_items[] = {
>  		.aggr_mask = MLXPLAT_CPLD_AGGR_PSU_MASK_DEF,
>  		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
>  		.mask = MLXPLAT_CPLD_PSU_MASK,
> -		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
> +		.count = ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
>  		.inversed = 1,
>  		.health = false,
>  	},
> @@ -495,7 +486,7 @@ static struct mlxreg_core_item mlxplat_mlxcpld_comex_items[] = {
>  		.aggr_mask = MLXPLAT_CPLD_AGGR_MASK_CARRIER,
>  		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
>  		.mask = MLXPLAT_CPLD_PSU_MASK,
> -		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
> +		.count = ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
>  		.inversed = 1,
>  		.health = false,
>  	},
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64393b7e-ba81-1545-dfe8-bc3567dd534b%40redhat.com.
