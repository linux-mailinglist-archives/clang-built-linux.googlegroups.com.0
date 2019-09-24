Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBNLVHWAKGQEWW3CQYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 97901BD0CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 19:42:30 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id b187sf1524829oii.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 10:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569346949; cv=pass;
        d=google.com; s=arc-20160816;
        b=cFBD7URQz+VnkRM2MhLxsIDuSJ6Fti7s4RSFK2r60Pcvn4NEbUm00DxWDzZ4ud0cKD
         u+NFoHF9aMmOxxY157MBgzZJuusavCwtl0qG6hCHdgay5y6ywcwtDUL53o5b16lvIUeY
         YWciUeTQVwJUKeGB9YjLqOaLesFU87iKzwfRL+LYZTpBaykw718fVqJXfg0C5draOt8R
         VqxSFz3y/FnnV4PTCptWlcazWKw5CWJiRXVCSgX5LYCmV5m0DnDZvNaoP7OD7hXOBC0c
         2A5QkljoLTs7XNkhLHc1UX7vRyO5taaErBo34iYU+awdagIFm5TyktyYTaZ9nJpqKGof
         shgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3dwdzNBerM2mO3aDJYtdgZ/cPMmJ2nYckBmah0SqJe8=;
        b=XH2cjxbpY54xMbaHndvU0gBL/+dgIKTK5cubfKP/9tr4Gj+jkjVtVSC0wwsXOG3cy9
         h0UnI+DixdxhP7cKEFMtavv3JZWtDyDoMNNd11ruUjvj7Xsq7dvI3pmqc/ls2/kWrLeh
         mRJo+PKyLXlh+R6a4z1rUTJB5y0wkAOGDBkuxD1dxpM89RQWW5ptLHFOK61lLBDl82FR
         UOyj0/i6BF2Wig8575npV7KN9kpHy6T0jHZs4FJiUBEX6fVNBz/3j7dKbCNYDKcGMUZM
         0CBTTBM2olYDpDkrlZGfJWFzIb9V32jUNCAIwZ7b72MGjBj8BUXcmHo2kTr6d57vMXYL
         bPHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vA6EZ1Bw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3dwdzNBerM2mO3aDJYtdgZ/cPMmJ2nYckBmah0SqJe8=;
        b=cGUjPW5TtykXYtHZkKWD6ITndjhP1BBsrHz8qr+4UmJkr506JjhHuBRTowTEY07VzE
         zEkvvRhbsnb/W/n3Q7NFIp0Do+aPcMM3yeU3IQilK88WejzmxUWIlhBwmdkw4eWOYXgG
         5D91BnhdxaOVFPz5QJ6ZJ+a3aax0J5t//rrdgLL2ROFOQxdQ4Vhhw6XI7jD3fdFVrYdl
         AhnbHb59l6lOiUg0X3l7k9W7yBkH9ZJqctQ8DGbKru7tEsJrjEJ8hhftV1+U4lcT6HPp
         OpdiL+vqkTE3n/hHQLf3WFNie8IiVUHwBAPgK0K2UFEcCiEZ1MBW8cGYECaSZjZrbWrq
         UVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3dwdzNBerM2mO3aDJYtdgZ/cPMmJ2nYckBmah0SqJe8=;
        b=J4V4JeIr7ssX/67bmiiMhH1yqnHQdGBaJwJtcxLFiNcUJ6CxNzHkguvVxZTKRzk/Rq
         2erleHEiOWpWGjdtToA/jYKzd2cIUCRkpuQWU3oh6pqR6stuSWy0+NM/lhPK5094xOq3
         Hz2TSLjlJgWmo+H4dCiJ84DkUIMNgAQ4MArw0U5fY6I4byQTAytYX3xjIjbFr7wg8Wif
         fIv//4/lB8VWXMvApeTWmka5s0BuYPYfBMxQroWTrfYRASXKwOV3RiF3id8wkmdyWvSx
         KvI53/iP1TXvFoA2K2vnG+BpqL0dJvJBsBAZbdoFP05SFFMa9nO4iUz176oIFJsskOvC
         tdKQ==
X-Gm-Message-State: APjAAAXQ8YVIF2EbDrzXfeYd8VeMWALEvieaGJLmFbI5MtuOxREJI40U
	NvDfPr+rp69H405st4nDwXY=
X-Google-Smtp-Source: APXvYqyviD2T0l3kksEFIcl/oKK14f3XHI4TuIlcMBj45z8oIOFfG0NHdBTMZLqFAVz111OxseLAeQ==
X-Received: by 2002:a9d:730d:: with SMTP id e13mr2878290otk.145.1569346949512;
        Tue, 24 Sep 2019 10:42:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4783:: with SMTP id b3ls616796otf.5.gmail; Tue, 24 Sep
 2019 10:42:29 -0700 (PDT)
X-Received: by 2002:a9d:19a8:: with SMTP id k37mr2925732otk.172.1569346949227;
        Tue, 24 Sep 2019 10:42:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569346949; cv=none;
        d=google.com; s=arc-20160816;
        b=sSm6IJWHg3fzmnkHAHSgg/nYq+VoUojgwnX8WAOPcDtgLTuAW+6JQ7egwdD4Jk9q7i
         uX2ZhFMLnl3ESfNld2xq3rS71WDRAI/IGjpEwRmeBJhR7MX4vLW2oSyeKSTnEVLfuGte
         V3O2nlMA2gk8o21NwiY17DstsgFSagj0BODnNair88T4o15o1xIYMowd4jwIp2ztVrkN
         CdboUQc25ejLlq2AYYlia9KjIYtSUz++fhdioVCnkSg/qxnhwfB8dRQKYHmrvQx3UdWA
         Mptgy/PgbT8JHdOpR25gLMmXjNFHFwGHw/8IDgpyoLoya0QquVeGiJFMYe0a/bO20Zyl
         hdGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=b25PjZ9f4KQf91gHoZ/sA7aRK+24UL8wYgxN5Qi37+s=;
        b=gjNX+iJARdNvGe9D6dMz6dCwBabh6dJw1665Wv4f71i10iqDFNm/vAdAVgDInP9gF9
         UOsn9oab3i5eVSA398Klm/rY2ZvFQjD/mhbVkPZ/r0ix9N87+AE7BwXH7IdhHvtAsAl1
         W73zLuw8C34iki0okfZmOoxOvShw4erm0NwzISfdoVn9+k2U5+9Xfzhr41Or05jdk79D
         kpxmPsLO9uK7ghxvpb+Bfn/GvcdBcjvXhjQEn9qtcaxX4cnZEGalC0XRSXdkSGFfRQ3K
         m8/vkeylUtWVBfNQnce1nEelh459Joy9OyAlwwUrszIpEZSMI2TjYzWlYMzvnMrH8Tfr
         0w2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vA6EZ1Bw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k61si120985otc.1.2019.09.24.10.42.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 10:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w10so1700505pgj.7
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 10:42:29 -0700 (PDT)
X-Received: by 2002:a17:90a:154f:: with SMTP id y15mr1299955pja.73.1569346948095;
 Tue, 24 Sep 2019 10:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190924173717.198637-1-ndesaulniers@google.com>
In-Reply-To: <20190924173717.198637-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Sep 2019 10:42:16 -0700
Message-ID: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
Subject: Re: [PATCH] hwmon: (applesmc) fix UB and udelay overflow
To: Guenter Roeck <linux@roeck-us.net>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, jdelvare@suse.com, 
	=?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Henrik Rydberg <rydberg@bitmath.org>, 
	linux-hwmon@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vA6EZ1Bw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Sep 24, 2019 at 10:37 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Fixes the following 2 issues in the driver:
> 1. Left shifting a signed integer is undefined behavior. Unsigned
>    integral types should be used for bitwise operations.
> 2. The delay scales from 0x0010 to 0x20000 by powers of 2, but udelay
>    will result in a linkage failure when given a constant that's greater
>    than 20000 (0x4E20). Agressive loop unrolling can fully unroll the
>    loop, resulting in later iterations overflowing the call to udelay.
>
> 2 is fixed via splitting the loop in two, iterating the first up to the
> point where udelay would overflow, then switching to mdelay, as
> suggested in Documentation/timers/timers-howto.rst.
>
> Reported-by: Tomasz Pawe=C5=82 Gajc <tpgxyz@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/678
> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
>  1 file changed, 31 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
> index 183ff3d25129..2bc12812f52f 100644
> --- a/drivers/hwmon/applesmc.c
> +++ b/drivers/hwmon/applesmc.c
> @@ -46,6 +46,7 @@
>  #define APPLESMC_MIN_WAIT      0x0010
>  #define APPLESMC_RETRY_WAIT    0x0100
>  #define APPLESMC_MAX_WAIT      0x20000
> +#define APPLESMC_UDELAY_MAX    20000
>
>  #define APPLESMC_READ_CMD      0x10
>  #define APPLESMC_WRITE_CMD     0x11
> @@ -157,14 +158,23 @@ static struct workqueue_struct *applesmc_led_wq;
>  static int wait_read(void)
>  {
>         u8 status;
> -       int us;
> -       for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1=
) {
> +       unsigned int us;
> +
> +       for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D=
 1) {
>                 udelay(us);
>                 status =3D inb(APPLESMC_CMD_PORT);
>                 /* read: wait for smc to settle */
>                 if (status & 0x01)
>                         return 0;
>         }
> +       /* switch to mdelay for longer sleeps */
> +       for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +               mdelay(us);
> +               status =3D inb(APPLESMC_CMD_PORT);
> +               /* read: wait for smc to settle */
> +               if (status & 0x01)
> +                       return 0;
> +       }
>
>         pr_warn("wait_read() fail: 0x%02x\n", status);
>         return -EIO;
> @@ -177,10 +187,10 @@ static int wait_read(void)
>  static int send_byte(u8 cmd, u16 port)
>  {
>         u8 status;
> -       int us;
> +       unsigned int us;
>
>         outb(cmd, port);
> -       for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1=
) {
> +       for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D=
 1) {
>                 udelay(us);
>                 status =3D inb(APPLESMC_CMD_PORT);
>                 /* write: wait for smc to settle */
> @@ -196,6 +206,23 @@ static int send_byte(u8 cmd, u16 port)
>                 udelay(APPLESMC_RETRY_WAIT);
>                 outb(cmd, port);
>         }
> +       /* switch to mdelay for longer sleeps */
> +       for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +               mdelay(us);
> +               status =3D inb(APPLESMC_CMD_PORT);
> +               /* write: wait for smc to settle */
> +               if (status & 0x02)
> +                       continue;
> +               /* ready: cmd accepted, return */
> +               if (status & 0x04)
> +                       return 0;
> +               /* timeout: give up */
> +               if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
> +                       break;

Sorry, I need to modify the first for loop in this function to break
out properly. v2 inbound.

> +               /* busy: long wait and resend */
> +               udelay(APPLESMC_RETRY_WAIT);
> +               outb(cmd, port);
> +       }
>
>         pr_warn("send_byte(0x%02x, 0x%04x) fail: 0x%02x\n", cmd, port, st=
atus);
>         return -EIO;
> --
> 2.23.0.351.gc4317032e6-goog
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DGVdHhsdHOMpuhEKkWMssW37keqX5c59%2B6fiEgLs%2BQ1g=
%40mail.gmail.com.
