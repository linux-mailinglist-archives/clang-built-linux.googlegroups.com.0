Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBW5OZLWAKGQE3CYQZZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9048DC2B23
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 02:01:33 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id t19sf10024579pgh.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 17:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569888092; cv=pass;
        d=google.com; s=arc-20160816;
        b=bHQwyhuoc/wPeJuqVppuJetHatZsOTHDqjsDIl1mdYQgW2kzCYmPSeub1gPT31dkBb
         MhWAj/gMx19CNoxvHkwa7bPuFRhtrTIWwXHWiCT2dHlk648vnclCaBcPthA2bilTbVWV
         /dvjvyGoG32QVb5vtiF2CfgykPYQ/kv+WurBmEj2ffPKv5wF3CKqDGq+rJA5LhQF9Bje
         X1Q/5zaWthaxyvbBcox2y5IsnFGFJuMxdBRaZTJEOgfgiLboLzhEIlhKQzbui87wAYS/
         27dawopGPeHwqtt/acJyuOpQYB/jukraQmynNiQGsaMAEpRuOn9d7q7xKdzTWk244CMr
         k8bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=k3dQjOZBscClWyOji+zD6n4rWLe1mZXNe+t794+4tqk=;
        b=EPtgHFXLCfoPaU+yUSiRDqtlAFOymQ34qWuqIdjctC6QiiEM1XKx0YJNPsmltRkW7B
         G+YcE34XDAg45yGHEp/ahXY27Ta74cHqpbS+BuxXmkxjBkxrakJPu6ZsDReMekVlKBAk
         PdQ+NBnDmtnH0XRN5omU2e8roaadwwJPIafdquPWmTGBBtdOAfiAT/t0VKvNRip/YasS
         o7CkWrM3FtxsXNFQ34IBCub7A4ZsTgBYDzxAg0JyldYDYNJ4mg40EiL8+3NdTEHEjUd+
         xqR3uetbbW8foU5iiStGchxTHOjIuYTBMPG6ypoJU3Pq2oPPC1eF+/p47ep9svo8Wuum
         E96A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JVGK/YZv";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3dQjOZBscClWyOji+zD6n4rWLe1mZXNe+t794+4tqk=;
        b=ge3f+sfpP1p9Lvti4fief6Ri9BYHabiDcSz1lMODAjj0XKwZOvbzPNbcQ/iEeSUsA6
         FfIWzOd33+tQBAwmHcB+mcrQxBwyC1sxrfPmvTiq7yHaXiB2ZzH9N1EO8bQf2siif0gR
         6U/sg7NvhTKh7dUAW9/rnWqP53OXF3qroQ/x2t9iDFekTMgQUYyXCV9XeP/D3C4vJd27
         7x9YQhQKzxmgVzd3ruA839zU997rS7/DSteeUsgiQdrSqXrqiFohrQInd/I5QZu+uB2N
         VwKRZkdCuOOd1s9ePfZB2+vhRkHYhmcws43PeOHGw4M1VsBvfF8u3vE+ao0PYpr9Q0aM
         /SQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3dQjOZBscClWyOji+zD6n4rWLe1mZXNe+t794+4tqk=;
        b=LYX899ojxEQ+m/1d2POdqnz96+CYbR2/JcklIPW9tFDZF2zFPWS0+qipejCurn4mXC
         XKPv4FZ0mWUZNZf5Huf6Gp4nf31OodFm38zm9ZlMZOvrQ6+4KIAieeeV+XMyC1t2CYt0
         hT5eSFB6OkkQ1nogE7fSTZZc0+5F9sJ2iAXGd/1DNxt3+YxoZt9fApbUKbRN7eIkwNdc
         zZaXrZcEKWTSu6onr+L5Fg/j5j4pKfYe7UGlE0I4CVPFDuRAtCL3oDb1WTFCxfiNcRxb
         qr1HmRdY0feQegbfhHvr8Kr/NcH2S3kbBwETk93djQuRH7zUX8nCaA/mv30cX6N665R8
         hLNA==
X-Gm-Message-State: APjAAAXCE41CZ15+oNvZdhOCisBsRWaAPMiEm+IcZGtPglHbhWeCgi61
	lI2/N/XsjEt/nfU/+BL2wUE=
X-Google-Smtp-Source: APXvYqyBzP/31ni6joV0Djj8ze1YTPnCSrdhodEjEvvjRSDy2itObXiUpB7deDMgCBH4Og9gB9IUZw==
X-Received: by 2002:aa7:928b:: with SMTP id j11mr24793107pfa.237.1569888091991;
        Mon, 30 Sep 2019 17:01:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:76d1:: with SMTP id r200ls3215944pfc.3.gmail; Mon, 30
 Sep 2019 17:01:31 -0700 (PDT)
X-Received: by 2002:aa7:8edd:: with SMTP id b29mr392650pfr.138.1569888091491;
        Mon, 30 Sep 2019 17:01:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569888091; cv=none;
        d=google.com; s=arc-20160816;
        b=j08qzRnRKWJoUILgaQ+Lg8MPvuG6DUerOY+1idFRe8x9pfzaWzwyawRz1dX2dzV+2l
         I+voKSkkdg0rX1nA6yyRZDysKI9YdX0NgeyRjUA+DGRBrMK4kWuFBl/K3i7As8CI6S6R
         1qWDcNfuxYNqvfA34jPKwNnL01fqS16X5/YQ1l9NJjTlpNOlpVCrcvvXgsnng1y1pXcg
         hJyY2SnUmXhxK9Chy4KjOsctKhh9wnMfdKwg8n2lgoUGyAiFnjUeh86yyKg+NJ1tbL37
         lXjq62fmH8qCy7V3xC+7i6YylE311rQOPQGpZQvhtMKPXQQU2hNDEuNsn+o3DDpuKj6w
         n24Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=S1Tcvw53vTIhG8BDZpsK1nMUL0vc/+3Wm51G/BAKoSM=;
        b=ly7wK1NGl7SEaproEofnk4/FMJoKW65T2Ccd7BI2vVSYm4x4WF+bnMgNsiRUjvcjcQ
         rjcl2CAapZxBo0HCqr/rPurEI2yS57yDRMHFph8xF+Pd+GiEc7d5Xr660TUzfOOexxBa
         TN/3cO2vg2bjHUXa9WJGmcJcUiVuKac9H2hSIyRG344Uqg+I6879gKm6IGEGljPmEnkG
         ENacRqMJuS7Dp9JMakDftavHRB4wQy5SMe1b0zqVm6eVxyxciSXQtCpjjTDQAcBhluW0
         OK0PgXTy/JOHVeTlujl8WBuHT/z+NLjMI9BAm3l83YGOYB29YqYoITb/c1Op7C/9+HHj
         i4Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JVGK/YZv";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i1si20144pfr.2.2019.09.30.17.01.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2019 17:01:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id a2so6551014pfo.10
        for <clang-built-linux@googlegroups.com>; Mon, 30 Sep 2019 17:01:31 -0700 (PDT)
X-Received: by 2002:a63:1e16:: with SMTP id e22mr8392746pge.413.1569888090966;
        Mon, 30 Sep 2019 17:01:30 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id p189sm13003597pfp.163.2019.09.30.17.01.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Sep 2019 17:01:29 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com, jdelvare@suse.com,
 =?UTF-8?Q?Tomasz_Pawe=c5=82_Gajc?= <tpgxyz@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Henrik Rydberg <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a2e08779-e0ba-2711-9e0d-444d812c0182@roeck-us.net>
Date: Mon, 30 Sep 2019 17:01:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190924174728.201464-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="JVGK/YZv";       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::441 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 9/24/19 10:47 AM, Nick Desaulniers wrote:
> Fixes the following 2 issues in the driver:
> 1. Left shifting a signed integer is undefined behavior. Unsigned
>     integral types should be used for bitwise operations.
> 2. The delay scales from 0x0010 to 0x20000 by powers of 2, but udelay
>     will result in a linkage failure when given a constant that's greater
>     than 20000 (0x4E20). Agressive loop unrolling can fully unroll the
>     loop, resulting in later iterations overflowing the call to udelay.
>=20
> 2 is fixed via splitting the loop in two, iterating the first up to the
> point where udelay would overflow, then switching to mdelay, as
> suggested in Documentation/timers/timers-howto.rst.
>=20
> Reported-by: Tomasz Pawe=C5=82 Gajc <tpgxyz@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/678
> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * The first loop in send_byte() needs to break out on the same condition
>    now. Technically, the loop condition could even be removed. The diff
>    looks funny because of the duplicated logic between existing and newly
>    added for loops.
>=20

That is a delay()-internal dependency, and completely undocumented. This co=
de
will fall apart if the implementation of udelay() is ever changed. This
also depends on the architecture - in some cases, mdelay() is implemented
as udelay(n * 1000).

>   drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
>   1 file changed, 31 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
> index 183ff3d25129..c76adb504dff 100644
> --- a/drivers/hwmon/applesmc.c
> +++ b/drivers/hwmon/applesmc.c
> @@ -46,6 +46,7 @@
>   #define APPLESMC_MIN_WAIT	0x0010
>   #define APPLESMC_RETRY_WAIT	0x0100
>   #define APPLESMC_MAX_WAIT	0x20000
> +#define APPLESMC_UDELAY_MAX	20000
>  =20

This is not really a problem in this driver; it is a system problem.
Anyone can call udelay() with a parameter longer than 20,000 us.
We can't add code like this all over the place because the implementation
of delay() is broken.

Besides, calling delay() with a parameter of 20,000 or more is a strong
indication that something is really wrong with the code. More on that
see below.

>   #define APPLESMC_READ_CMD	0x10
>   #define APPLESMC_WRITE_CMD	0x11
> @@ -157,14 +158,23 @@ static struct workqueue_struct *applesmc_led_wq;
>   static int wait_read(void)
>   {
>   	u8 status;
> -	int us;
> -	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +	unsigned int us;
> +
> +	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D 1) {
>   		udelay(us);

>   		status =3D inb(APPLESMC_CMD_PORT);
>   		/* read: wait for smc to settle */
>   		if (status & 0x01)
>   			return 0;
>   	}
> +	/* switch to mdelay for longer sleeps */
> +	for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +		mdelay(us);

Shouldn't that be us / 1000 ? Seems to me the above will wait for
at least 20000 ms, which is a a tiny bit long.

Also, mdelay(n) is by default implemented as udelay(n * 1000).

Also, at the very least, this should be something like

		if (us < limit)
			delay(us);
		else
			mdelay(us / 1000);

instead of introducing a second loop. But more on that below.

> +		status =3D inb(APPLESMC_CMD_PORT);
> +		/* read: wait for smc to settle */
> +		if (status & 0x01)
> +			return 0;
> +	}
>  =20
>   	pr_warn("wait_read() fail: 0x%02x\n", status);
>   	return -EIO;
> @@ -177,10 +187,10 @@ static int wait_read(void)
>   static int send_byte(u8 cmd, u16 port)
>   {
>   	u8 status;
> -	int us;
> +	unsigned int us;
>  =20
>   	outb(cmd, port);
> -	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D 1) {
>   		udelay(us);
>   		status =3D inb(APPLESMC_CMD_PORT);
>   		/* write: wait for smc to settle */
> @@ -190,6 +200,23 @@ static int send_byte(u8 cmd, u16 port)
>   		if (status & 0x04)
>   			return 0;
>   		/* timeout: give up */
> +		if (us << 1 =3D=3D APPLESMC_UDELAY_MAX)
> +			break;
> +		/* busy: long wait and resend */
> +		udelay(APPLESMC_RETRY_WAIT);
> +		outb(cmd, port);
> +	}
> +	/* switch to mdelay for longer sleeps */
> +	for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +		mdelay(us);

Again, I fail to understand why waiting for a multiple of 20 seconds
under any circumstances would make any sense. Maybe the idea was
to divide us by 1000 before entering the second loop ?

Looking into the code, there is no need to use udelay() in the first
place. It should be possible to replace the longer waits with
usleep_range(). Something like

		if (us < some_low_value)	// eg. 0x80
			delay(us)
		else
			usleep_range(us, us * 2);

should do, and at the same time prevent the system from turning
into a space heater.

Thanks,
Guenter

> +		status =3D inb(APPLESMC_CMD_PORT);
> +		/* write: wait for smc to settle */
> +		if (status & 0x02)
> +			continue;
> +		/* ready: cmd accepted, return */
> +		if (status & 0x04)
> +			return 0;
> +		/* timeout: give up */
>   		if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
>   			break;
>   		/* busy: long wait and resend */
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a2e08779-e0ba-2711-9e0d-444d812c0182%40roeck-us.net.
