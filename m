Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBCMXYP6AKGQEQZHCJ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0709E295560
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 02:00:10 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id r27sf278656ljd.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 17:00:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603324809; cv=pass;
        d=google.com; s=arc-20160816;
        b=qz+NaFd/vzRvFEePiicgdK8+v3w/d8TCm1RpjA+XKQz9HUir1kc7u0xCmTU3SV2JBF
         0n0bstJv2GKFlDC9su/ffUXbnnZi39WJ4n3mK7yQ2brtkDAT+y7VcIbw9NQHmiNlh6Aq
         i/MSLl+qcCzTjKYz3CqP7kOAbP8I+qjQ9kM+KgSt9LGTSBQZhnp0/8W0AmTyBBnRgaE7
         zyfybU2Ccc9ij1wntsvJwqiYOBVln6mvPR/Ndr/W0ys5W/zrfs/wY4QZp8qbEhnNAhGR
         t5uoNw9GFaJoZdMSBkDHDj6R5mxGCnliD+vhj4m166ByS2x9682rOJbFzCWJkoskU1C/
         2GAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=S23DSxkuyoRYG3ID+aypP9QI4mW7rXZo4yU3gNHl3gE=;
        b=EqAt7QabWcmxOO9TUlQ0/qV+lMzZ2qa6hDaHOhVh5sizD/b6moX/QaZj009eqLwrIG
         OAay2q744cmqC76dynZ/QZbWBE5arRNKGh7nwEsAlJemRBFcUzJwyEc49RX8c1Z1oKD6
         Y1A5CB7ZNiO7d8knTfFz22Ur36EMR8esBf7yIlwwd0pNBerjLn34oCHlVvE5wo0Okppx
         lvRwIRUUxjoXqahRBXreBm6ICW6MhfGd9roioLbMiXafdo/PAl3EUqTIDVPdkrVhGuVO
         j9hIoiuhxCIfV/EVG6tZFCyfLrvjiKZnD82X5I+t2LxiOQwXFfdLXjRhuxlW3b7JUbA2
         A1tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lT/X0ZYC";
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S23DSxkuyoRYG3ID+aypP9QI4mW7rXZo4yU3gNHl3gE=;
        b=qlvgI+f30n2tz6g7u2aH/ym9mV/b7PHGEqV0InxpLxR7WSGAFa1/z3okrSbd6fVgcx
         Wsn7/u0P2Qf6lXyIDURAFMqXRSlUmoLseO5z1Vi5CbijccH61Xj5+GdnMi/TLleDBR2v
         deDbUgwGYWXqZPtvtd8J7u0R+SzDWGEOHY+yFaaGWuFWuF+PWxeYFOUSK3ETvmwiJuD7
         j5qDMdnRzsAvj35xRU4X724Yoit8SJKi9JnhPKSBKDFzaWOVlSjp/kQYinQeHV5D579A
         809mKyAWfK4M35piGhiwhBhGdQRyRxfANwBFLJ3Clt6UuGmX99Sq77+vhxCXtNS4yb//
         rGzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S23DSxkuyoRYG3ID+aypP9QI4mW7rXZo4yU3gNHl3gE=;
        b=bnyQf+sYJyvoDd1seHssnbrDfLVkyD0WtUZv6WK0Wd4HGd7UhLD09MziziUJj9ePV7
         b71dvZLZomNeKrr0vizpfePbNWFmhV50agK5E1Iq4EUdSlT4fRGdgPI5rY4BdHRp1be3
         H65Fmz2nAGCd/vMSIuou3U53++QSVQ+jT/YtetQfKj4pN9RYL4Po+24rQXA5FJqqUx0g
         JGagIkSTm4nzOYCMc91toERiU+wgMGC8rg66SFFRo4cM+LW2wwZFILhTuAOI5D2hHSIy
         AJLd2ER/DWmzUSD9IYJCT78/T9Fripu9BydS7IvtdXO7leP6X9A0I7Ybkhnu6x413OGI
         La8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S23DSxkuyoRYG3ID+aypP9QI4mW7rXZo4yU3gNHl3gE=;
        b=uUYTTRvab0D05HdNuTYmYKailLr+WnwSuxMpsZk/Dh7uTiEmjFoHHhrhIPWvtBJnho
         cgoW5c0+ZUD9SENXGjxbz3xLPlimB8zjeWulVbltJEwPnHY7yKswCORC7p04cZ5wrtZS
         u5jkUtUrTVvgRX9+HY9JXBndJxEkUhpXQuPJiFx35pvS5J3DPY+WdJ4zU/+7YQejGCO9
         unY3MxkrNrspNbT5BmkqXq9jAHfuGObDfKY++3kPTi5ffoAGY1fXYcvL/Os+rXGo06zI
         utIF+JVP1tenlAi0AAv25xvwHyBO3CaIP/PLNlwrCANJxVnuA+WFTyb/UWlL5vdTlmUj
         BECQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BtDFq+I2rEv4JfACEyfhqf/sqLkE9UJLSoRxdpYFOYTl0wd8v
	8WcBTC4Tia3OYaFwWjBr8wQ=
X-Google-Smtp-Source: ABdhPJzImdDpXeTt4BcLCVIf3t8jZP7sw5XbhlLAOzZL9Qlhto7wErBLIvL2lV8ixmOUl3knElA9Vw==
X-Received: by 2002:a19:8654:: with SMTP id i81mr2288070lfd.250.1603324809541;
        Wed, 21 Oct 2020 17:00:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls14673lfr.2.gmail; Wed, 21 Oct
 2020 17:00:08 -0700 (PDT)
X-Received: by 2002:a19:68c:: with SMTP id 134mr2241192lfg.188.1603324808539;
        Wed, 21 Oct 2020 17:00:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603324808; cv=none;
        d=google.com; s=arc-20160816;
        b=OPoGOdof0DuqAbAL0drA6iWM0utDtEsm3bBH/mI/3FJ2yiBnmeRR/er8v1LDUJr4N1
         25mluiKESPkFotr3/Bu9dH7yAY0X9HsT65G/9eMgSBV3sqNKzgvMHrYauNGYdnZEwg0d
         dWF8CdkjpbE5KLZTepirIdI9nDtymEosiCanwHMlC6ZUhoeh4dQv5PImsZE3m3iSI/g6
         z5fyT4hyy2tsnyJ+4p4sS9g+lGPMMzlMiV6AXJ2g8kmNl6d3Pg1WPsl6F+MpvQwL3XSe
         vJYhOVZJi1gpJo70KixShjOArFUhM/TJIWqstJQRXHiD2cAyGSYhdcT33MCKMnYg95zY
         ZZUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VIh3TuwJJ9Jaaqf99SgJSQYuun5wyPpxsSyTdnHSMRY=;
        b=jPLnChYo47Czd9ECq3FWyAy6kSMgIuVsPjVWc+mnD/+vV9dIG58yafSwPG36GunxC1
         yvxUaNEt560YAVidEORPOvVac9POK16zcXEPlFQpVJrO+sjS2Z543lCGRpHNdVfUM2F2
         4JGLFFFxoVvlqqXzGze0XmfPuJC3fp4KSzH9SRxU+CZo7Y3YzM+vVqdnYT2iAkMci/Hw
         aRG2dQXG4p7G0x/Hl7+jyjaOGK3h8vuFvP0IF2IlPAYAg5T54qdoS3F00ZCxsKnpPRUH
         5gRp6q1NRrK7U4y8Mf3n3VUNRw+qwJAjMy+YqSnx0Aw6qUZLRzDrtzxDtxytBrOLAygD
         cCug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lT/X0ZYC";
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id p1si518ljc.0.2020.10.21.17.00.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 17:00:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id 77so5384796lfl.2
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 17:00:08 -0700 (PDT)
X-Received: by 2002:a19:60f:: with SMTP id 15mr2104046lfg.163.1603324808081;
        Wed, 21 Oct 2020 17:00:08 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-186.dynamic.spd-mgts.ru. [109.252.193.186])
        by smtp.googlemail.com with ESMTPSA id b12sm633663lfo.177.2020.10.21.17.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 17:00:07 -0700 (PDT)
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Kees Cook <keescook@chromium.org>
Cc: Russell King <linux@armlinux.org.uk>,
 Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20201021225737.739-1-digetx@gmail.com>
 <202010211637.7CFD8435@keescook>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
Date: Thu, 22 Oct 2020 03:00:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202010211637.7CFD8435@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="lT/X0ZYC";       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
>> The vfp_kmode_exception() function now is unreachable using relative
>> branching in THUMB2 kernel configuration, resulting in a "relocation
>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_exception'"
>> linker error. Let's use long jump in order to fix the issue.
>=20
> Eek. Is this with gcc or clang?

GCC 9.3.0

>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections"=
)
>=20
> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sections") ?
> That commit may have implicitly moved the location of .vfp11_veneer,
> though I thought I had chosen the correct position.

I re-checked that the fixes tag is correct.

>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
>> ---
>>  arch/arm/vfp/vfphw.S | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
>> index 4fcff9f59947..6e2b29f0c48d 100644
>> --- a/arch/arm/vfp/vfphw.S
>> +++ b/arch/arm/vfp/vfphw.S
>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
>>  	ldr	r3, [sp, #S_PSR]	@ Neither lazy restore nor FP exceptions
>>  	and	r3, r3, #MODE_MASK	@ are supported in kernel mode
>>  	teq	r3, #USR_MODE
>> -	bne	vfp_kmode_exception	@ Returns through lr
>> +	ldr	r1, =3Dvfp_kmode_exception
>> +	bxne	r1			@ Returns through lr
>> =20
>>  	VFPFMRX	r1, FPEXC		@ Is the VFP enabled?
>>  	DBGSTR1	"fpexc %08x", r1
>=20
> This seems like a workaround though? I suspect the vfp11_veneer needs
> moving?
>=20

I don't know where it needs to be moved. Please feel free to make a
patch if you have a better idea, I'll be glad to test it.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/773fbdb0-5fc4-ab39-e72d-89845faa4c6d%40gmail.com.
