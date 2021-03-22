Return-Path: <clang-built-linux+bncBDS6DTHSSUKBBQGM4KBAMGQEFDNWSRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E75693446D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 15:14:24 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id r12sf26176621wro.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 07:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616422464; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNBCc+BA53FV12QFHIS0VeSkVLeINzSKZVo1Dh79NI2d0kXEcVTcaUhkoX7ie8XxNH
         QuG+fTsGLIZxop6rCUOLzH+EpjjTOY1NA6tnIEKvBq84sHCh+DSp18WZKrHebfBBHRGE
         /cBg3KzFBSGBtQqqqiaJlfqJSN48EP/eg+ZsKk1YaGaDxs4t/M/aj3twdtYML43TQZwU
         IaMOjWiNIFCmZh93rspHWuDe6Kqxozo3poG9pDOzBpIQTabG4Fqo8Zck1xaXdAAo/iJY
         TyGlYgZm5BRgCsL6DqqRedq62m21YpA2NFEJsooSfCg9Yzykmzi3PllCUvGL3Q3Ijxx6
         p6fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NV+jkG6YUlINmJBYxixB+bCbwUj9/dVDMgwgduN2Nkk=;
        b=b4b77IdTr7aV+s1R7mbGOdoAMGWny5WfzaFk/k7+avMwEuDOvIC7KbbtOCJIhvwpWR
         ZjAuQcX/BgRZti38IZIeiqFJGPiYgyA7zac9xvwWD+JgbHCIvH3tquHdvDkvVzJBSPix
         M1SkmMXhUjOlw62t3PSrP3x0C/NvGWZLBhmXtYAcPnmZhAYhTwYC6M9DHlRxaqEcsOW9
         +XwjiI+Oihb9K+8dHS/MiB78YH4G33URumVZEkWs8KOy7W+D5BJDa9fV67htZO83irOt
         LE7lwhTbTbNUvzeJJHeiqrUuAp5xWZNKgbk3xYwSIAXk7xZOwGODHfl2SnjHZbpUA9Ag
         8IUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UwXgYWiz;
       spf=pass (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NV+jkG6YUlINmJBYxixB+bCbwUj9/dVDMgwgduN2Nkk=;
        b=GO3F8CJbU7L0hZWNssPlsMm15aLuohJUUG+XcpjQI5lRxsbg7stNa0IFFtzvrp/bfN
         UeUukUmtLRXIaidzx1JKsROJTOpFh72fei+iW5qjxxBCyIrLr09kxp4gh2HjS81x/qZc
         Qnlxd5ROUODYS7F/QcIDm6+DwnvqnCF/5zq071glaQx9709dYc30MRN7utb/qPunWo/l
         v06Gk+9hkpDOc4b1pzjs6FPGXrKroIjZP24s6YN2T5uesWazXA6ABBMPC4TFdbBFo8YA
         lCnoJsjWi+ywJZA5eH0937dn3JTS/jetqWzeXApBV7Gu+6KQdmEU43QJoYNcINd+YTvg
         Qypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NV+jkG6YUlINmJBYxixB+bCbwUj9/dVDMgwgduN2Nkk=;
        b=KQhsigx/JcHgPdGiUsE75VI0REOeYS+dZMqFA6haDzxijAScViHBcM1NwkpuGb/kni
         HL4J0EoCpqJmgfZKAqp58Y/QuT+5Ltiw4q5QLXcnGcuh8HZ2jl+jskWca09ntuiSNdNn
         V90OLiMc0So/VcAPyYl9pXP8R6b1h/uKC19F7UowQ1nyc9/TFRO0WyiS9xV0RclhoUqk
         FkT8/zUT9D3GYh38yhHGAFzNbiz0AfY+rm7pYSBk2MIQfSp76KK7PFoIOdkRL0UHxn9a
         nAgQZ6CZbO7iYbN0txcxqomJed+shOIpWI1cioNtfJ7UEYwATRXl0i7AfMvcTIS/aMk2
         mrsg==
X-Gm-Message-State: AOAM530EXW78TMDfjrf1SV3l8luc3N2y9FanuXxT6Me0TWUzsGMHhefg
	MPzRkdbXzhrQ1eQUMjZRmBg=
X-Google-Smtp-Source: ABdhPJxX31Z6VDva6o/zDnqN3mrUp1MG6tLhH42IBzLgVStIn4Ikob598SBUfy2uSIGJbdq4+B5Igw==
X-Received: by 2002:adf:ce8a:: with SMTP id r10mr18475127wrn.17.1616422464659;
        Mon, 22 Mar 2021 07:14:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls2133398wrb.1.gmail; Mon,
 22 Mar 2021 07:14:23 -0700 (PDT)
X-Received: by 2002:a5d:58c9:: with SMTP id o9mr18713368wrf.181.1616422463727;
        Mon, 22 Mar 2021 07:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616422463; cv=none;
        d=google.com; s=arc-20160816;
        b=jeefVcWR1DiPCT1zbEX/U4ugep4ncvAz7BWBYPddTkCbKI1nV2WQ68362dMDAYBLP0
         0RBiFA4VN2Oqkohb7t2BAFC6BJwLtdip4HeaUpx+FMnWNYTx2ITZZ6KOwS9y3OjtXF8J
         XRinZ/8YapCnxtSu31v2xgm3EMdueN8/S4+JdleafSEWD3oNdEubPwgFW13hDNsr8A58
         CKdTDc5SNa138/H2l7JdJy+7kHdxeUks0C/fEBWHeQw2Dn3X8ruMs7eedc0Nejg9Pab+
         Ap7L4rrKjPmXBHaCNHZSVQF+amoz8A1mMPOvGmJeDpvZbge+QrSz08qGidenBKfFdA28
         0Ozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=//tPuGWWU87DrG8mckDF+aLQVmpkf7JGyamDC0ugRSQ=;
        b=XtKmAweP30fv5bNcFX0ls+yUhOb9kZchXc5ZfpoFTz5e7nu53cmPajngnF8fr6V5bh
         bCmQnwTNdRvasDB0eqeGpluFMxQ1SiddjWzDU9VrAXYGzqJq5/xCUapGUhBb4u0Oby3V
         s5NaCEdfK+ZDkypYHP/BiK0K4KGmi5xajjwzc0/GFvMi4YPV52nmbjw75/CbeXim2zVn
         pKub6TyrY/JlXYhHH6Ltk2uRUCsoFfFnBiyOPP6c32gslGcE+LVmQe3HXWHl0GO+gZOk
         gj+ZzzFuHywEL4v4SMOzehThg88Z9vAkJPp1Grg3MqK7D1Q0/pF7WBwaOkOWeO6AFh5B
         caFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UwXgYWiz;
       spf=pass (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id s8si490190wrn.5.2021.03.22.07.14.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 07:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Received: by mail-ej1-x631.google.com with SMTP id b7so21553971ejv.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Mar 2021 07:14:23 -0700 (PDT)
X-Received: by 2002:a17:906:90d8:: with SMTP id v24mr19290806ejw.547.1616422463216;
 Mon, 22 Mar 2021 07:14:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210322115602.4003221-1-arnd@kernel.org>
In-Reply-To: <20210322115602.4003221-1-arnd@kernel.org>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Mar 2021 07:14:12 -0700
Message-ID: <CABXOdTdePLDV91z4st2vErRLHEDn1ZD0x0AyO+JOwpatDQb17A@mail.gmail.com>
Subject: Re: [PATCH] platform/chrome: cros_ec_typec: fix clang -Wformat warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Benson Leung <bleung@chromium.org>, 
	Enric Balletbo i Serra <enric.balletbo@collabora.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Prashant Malani <pmalani@chromium.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>, 
	Guenter Roeck <groeck@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Azhar Shaikh <azhar.shaikh@intel.com>, Utkarsh Patel <utkarsh.h.patel@intel.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UwXgYWiz;       spf=pass
 (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::631 as
 permitted sender) smtp.mailfrom=groeck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Guenter Roeck <groeck@google.com>
Reply-To: Guenter Roeck <groeck@google.com>
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

On Mon, Mar 22, 2021 at 4:56 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Clang warns about using the %h format modifier to truncate an
> integer:
>
> drivers/platform/chrome/cros_ec_typec.c:1031:3: error: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
>                 typec->pd_ctrl_ver);
>                 ^~~~~~~~~~~~~~~~~~
> include/linux/dev_printk.h:131:47: note: expanded from macro 'dev_dbg'
>                 dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
>                                                     ~~~     ^~~~~~~~~~~
>
> Use an explicit bit mask to limit the number to its lower eight bits
> instead.
>
> Fixes: ad7c0510c99e ("platform/chrome: cros_ec_typec: Update port info from EC")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

>
> ---
>  drivers/platform/chrome/cros_ec_typec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
> index 0811562deecc..f07b7e946560 100644
> --- a/drivers/platform/chrome/cros_ec_typec.c
> +++ b/drivers/platform/chrome/cros_ec_typec.c
> @@ -1027,8 +1027,8 @@ static int cros_typec_get_cmd_version(struct cros_typec_data *typec)
>         else
>                 typec->pd_ctrl_ver = 0;
>
> -       dev_dbg(typec->dev, "PD Control has version mask 0x%hhx\n",
> -               typec->pd_ctrl_ver);
> +       dev_dbg(typec->dev, "PD Control has version mask 0x%02x\n",
> +               typec->pd_ctrl_ver & 0xff);
>
>         return 0;
>  }
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABXOdTdePLDV91z4st2vErRLHEDn1ZD0x0AyO%2BJOwpatDQb17A%40mail.gmail.com.
