Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJ6FVHWAKGQER47Q52Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C5443BD1EC
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 20:38:31 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id q185sf822871ljb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 11:38:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569350311; cv=pass;
        d=google.com; s=arc-20160816;
        b=UfOd3HYe5yh12yXtqyucrqoz1lu689Faqa+sthyb15umtc8tYeukiKIoRKADeKcu/V
         JKvNJn+YzeBA3wAL30mYCAHuGapQ/tB+hbSI2bX4h+0EjQOpn+ynfmnqeyGQtJVFBGWf
         9VTQtza1JzME/YXhegfX46IvB142WpRxBWZxJmzkc5Kc1RzNrIV+k6FaiD8ixlBVOsuJ
         uk7PxMjNCXBTUj+sdxhGxhs8VSuOx7DHnb8gHSzwE3A4kWYmVSC/hw0aw9Da2pSs471k
         Aj+vc1Kp6ItaJU0LsAKXhTsDFcxkngMF/nvztt3PL2lYIpqDd6K0CJWOUMD5HDy/7mQL
         tdUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=hofsRva2cdXvNPEQFQXtD62JNn77QvgV6LVkT633rOs=;
        b=D+vWJy/YnxXV6iorxoh0PYZaUdF+hnLWNiJ2kTWVgCd8gtrS9fFxmum2/CQ+cyC6cP
         QVRbovWGb1KxcM+DLUn7gBIR7GZHNT1s70Dk2YWRppmIgSFRjWTetp2Mva5n8nsgNX6a
         pCOyuH72xJxvurQguhh4QEzDRcEF4/ZbJkQW2l6tJqXHtVH01fDbUt53TTTSgDlL6K8l
         s3TDvvvDDl7RbEHDjzcSeXHJbpKhvDnWTuSzPtaKHkfBdIBwYJOpKVNdvIwFFzE0Tzef
         k6JTg9qp4uHcYUbDjLaNLbu5tnj1VDHTPivWQqnrTuVDvly/dR0pIh0QDDLcHCl4OFxC
         WpdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D4DyYPgI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hofsRva2cdXvNPEQFQXtD62JNn77QvgV6LVkT633rOs=;
        b=jiz2GZZ0CpuVi1Ib/0jmue6Y/+yVJolHlu4wW5B/DpIKnb24Gcp8d6n4UKr7gq7PVX
         8EjKo9UH1BPkGIki1l8+B4shRnc+6xTChBf1YExvYDPTVGmBicUPa6oixtHgxYmhcEzF
         y0+f7e/ouBM6oxI5jClDS9gKWpafok1AUq6rYWKAT/FwBz5yBeHLoSQpNcD7V4Psz0v9
         1EEF+FOxjrk56dkIyM0s3zhZ+E9qYyHvAnbq1bMsqGz4/CkfPtC4q3K98vh3/zC6plGh
         X066ZFCQG+ZvaJFtizQ7LUupRSy27d3nbYZa/y1vpz33eRvzUgOOUwIfh0zKm8ZlZ9os
         XqkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hofsRva2cdXvNPEQFQXtD62JNn77QvgV6LVkT633rOs=;
        b=PFLOryZHpUwWf2KilDYBgXqeW5YPVRO7eJJ4KaEQYYuGE+wXnvplD7+ExlzOglMhvU
         k2IRLZEIigELj0v99SH8AVTV0Z7Kl+wlTnvV11wN9HnshJx+EUWX7zvD7Wq7QeU6n/et
         1F5+Waj2IBquMmgfn+FaiOdImvKQzqK5EYYJZ+ecYdw9WVHWnya/rqKktyL21qpK7hlz
         oZet7zN5yE6YzuKTzMtY4FdIP9F/6lko7omI7+o4qZNpURD8LOdYYZKTklLSDDgkxEfE
         64DIfpW0OJBnJgDB1/eEWc1gCNuILKiCuLVPNDUt1ZZHjdIWLqFX8tD9leEYXJASPBHw
         BlLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hofsRva2cdXvNPEQFQXtD62JNn77QvgV6LVkT633rOs=;
        b=uACnlcC5WnMtFp25Js1mz1QOFxGPByMTxbxJNQOANt/ips0p66QXOEGi8k8d6Fe2KR
         Grr7EFnaepDvdvXn1kShoxhCfQNqyhB2Y2uf4oEuWgakSjmJ6MfS1OFMvyvhKK85bKqg
         1KMT+fG0tcOVLkToN9rrnExeYpNr7XP3bSn0XggJAK5sLKm4jk4t+HcyEOAaWFoY0I9w
         Jiw5EWRYAlsIb0vX+U9QrlASCOeAMzTpoEjncUp2hEXfjSvg5x3pWf5qYbsfXoxIMHRW
         JuYi+ANoiqEhCjEHUgH6C+fxz7Z1/1drDe+cPneuNJTA83sCYd81uu36w/FH8fnPt+xH
         lYBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgc3/c/GD1CqwzPifVn/ZwzvVmsCSgC1EbQmcoBomBO3pcYLHQ
	d5h82WfxOTKsFsTDp0P5WTg=
X-Google-Smtp-Source: APXvYqxaEB0MT1yK6eb6ijmDHPk/0JvDd6ac9pgn8SoQUlAlDpBHelI0WpSbQ00onGdxWDZotSIXKQ==
X-Received: by 2002:ac2:59c2:: with SMTP id x2mr2535268lfn.125.1569350311347;
        Tue, 24 Sep 2019 11:38:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:51de:: with SMTP id u30ls330909lfm.14.gmail; Tue, 24 Sep
 2019 11:38:30 -0700 (PDT)
X-Received: by 2002:a19:f711:: with SMTP id z17mr2764534lfe.58.1569350310889;
        Tue, 24 Sep 2019 11:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569350310; cv=none;
        d=google.com; s=arc-20160816;
        b=fe3TLNG/mi9sQQNTDw0E9nWmU2aHj3tMVFGkJv/eGEuCRerJRVKmo2IEpbXO/1KfHJ
         E1T4s5ReWsaD7wmQMm3tZGpm22FtKMIs35wxrKioifznIXhSkz6dTgwRERKfZfS6Sywx
         NjjpJbZXqAqmGHhRPka2CPHfF0RWOmetqyn9Qx5GF7P+fTmtCEuu0pnVaoNBDhyONgCR
         Wv9QdcDQVi/+ERvqfV6jgJQKG8fMxweZhOhINsbKbIAHYtcLFoU9POw+n0XiL+nMP9rR
         nTtBCenK7MegDWu+1CliVmaY9pGSFR0l1VCe3ktWcFYNMK0/+lhwMDFur4FprL78Q+KS
         pb0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HLu8vpceEOnJOAJQ9RhyxlImOiyyYOYIlhMAs4JJqtQ=;
        b=C4giM73E2aCxojTTD3Ig4qUsEruPObb/quQtaLh2vPV57H5daf7DHGtiRsE6ruUY2y
         5U6Sra4VeVOBshfXiWn9XgUc/sU4taUVdIphplFQR9FFjCIDNY7W1wkR3lOozUfUnjNE
         nUK9vFHfvl5aa3pwC459ko0aDjHT75JCaa/xW6qCEUS+zEXTQ9wya4TborNKgcae49/D
         bRnC8nDmCdOS3DaSBXM8bC0toesMnv9QGnBY3RXIr+wrn6GsOp3WpqpxuuCz6CDCEoiC
         7Lu030MblXO5ghVQTLlA7BQt9jJneQbT56WG55597pZuOIeog9w/xOquF8I4waWuw49m
         7L3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D4DyYPgI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c8si173420lfm.4.2019.09.24.11.38.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 11:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 5so1319699wmg.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 11:38:30 -0700 (PDT)
X-Received: by 2002:a7b:c451:: with SMTP id l17mr1534682wmi.61.1569350310368;
        Tue, 24 Sep 2019 11:38:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a6sm3404899wrr.85.2019.09.24.11.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2019 11:38:29 -0700 (PDT)
Date: Tue, 24 Sep 2019 11:38:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux@roeck-us.net, clang-built-linux@googlegroups.com,
	jdelvare@suse.com,
	Tomasz =?utf-8?B?UGF3ZcWC?= Gajc <tpgxyz@gmail.com>,
	Henrik Rydberg <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
Message-ID: <20190924183827.GA2800937@archlinux-threadripper>
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190924174728.201464-1-ndesaulniers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D4DyYPgI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 24, 2019 at 10:47:28AM -0700, Nick Desaulniers wrote:
> Fixes the following 2 issues in the driver:
> 1. Left shifting a signed integer is undefined behavior. Unsigned
>    integral types should be used for bitwise operations.
> 2. The delay scales from 0x0010 to 0x20000 by powers of 2, but udelay
>    will result in a linkage failure when given a constant that's greater
>    than 20000 (0x4E20). Agressive loop unrolling can fully unroll the
>    loop, resulting in later iterations overflowing the call to udelay.
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
>   now. Technically, the loop condition could even be removed. The diff
>   looks funny because of the duplicated logic between existing and newly
>   added for loops.
>=20
>  drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
>  1 file changed, 31 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
> index 183ff3d25129..c76adb504dff 100644
> --- a/drivers/hwmon/applesmc.c
> +++ b/drivers/hwmon/applesmc.c
> @@ -46,6 +46,7 @@
>  #define APPLESMC_MIN_WAIT	0x0010
>  #define APPLESMC_RETRY_WAIT	0x0100
>  #define APPLESMC_MAX_WAIT	0x20000
> +#define APPLESMC_UDELAY_MAX	20000
> =20
>  #define APPLESMC_READ_CMD	0x10
>  #define APPLESMC_WRITE_CMD	0x11
> @@ -157,14 +158,23 @@ static struct workqueue_struct *applesmc_led_wq;
>  static int wait_read(void)
>  {
>  	u8 status;
> -	int us;
> -	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +	unsigned int us;
> +
> +	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D 1) {
>  		udelay(us);
>  		status =3D inb(APPLESMC_CMD_PORT);
>  		/* read: wait for smc to settle */
>  		if (status & 0x01)
>  			return 0;
>  	}
> +	/* switch to mdelay for longer sleeps */
> +	for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +		mdelay(us);
> +		status =3D inb(APPLESMC_CMD_PORT);
> +		/* read: wait for smc to settle */
> +		if (status & 0x01)
> +			return 0;
> +	}
> =20
>  	pr_warn("wait_read() fail: 0x%02x\n", status);
>  	return -EIO;
> @@ -177,10 +187,10 @@ static int wait_read(void)
>  static int send_byte(u8 cmd, u16 port)
>  {
>  	u8 status;
> -	int us;
> +	unsigned int us;
> =20
>  	outb(cmd, port);
> -	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D 1) {
>  		udelay(us);
>  		status =3D inb(APPLESMC_CMD_PORT);
>  		/* write: wait for smc to settle */
> @@ -190,6 +200,23 @@ static int send_byte(u8 cmd, u16 port)
>  		if (status & 0x04)
>  			return 0;
>  		/* timeout: give up */
> +		if (us << 1 =3D=3D APPLESMC_UDELAY_MAX)
> +			break;
> +		/* busy: long wait and resend */
> +		udelay(APPLESMC_RETRY_WAIT);
> +		outb(cmd, port);
> +	}
> +	/* switch to mdelay for longer sleeps */
> +	for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> +		mdelay(us);
> +		status =3D inb(APPLESMC_CMD_PORT);
> +		/* write: wait for smc to settle */
> +		if (status & 0x02)
> +			continue;
> +		/* ready: cmd accepted, return */
> +		if (status & 0x04)
> +			return 0;
> +		/* timeout: give up */
>  		if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
>  			break;
>  		/* busy: long wait and resend */
> --=20
> 2.23.0.351.gc4317032e6-goog
>=20

This resolves the __bad_udelay appearance at -O3 for me. I am not
familiar enough with this code to give a reviewed by though!

Also, for some odd reason, I couldn't apply your patch with 'git apply':

% curl -LSs https://lore.kernel.org/lkml/20190924174728.201464-1-ndesaulnie=
rs@google.com/raw | git apply
error: corrupt patch at line 117

It looks like some of the '=3D' got changed into =3D3D and some spaces got
changed into =3D20. Weird encoding glitch?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190924183827.GA2800937%40archlinux-threadripper.
