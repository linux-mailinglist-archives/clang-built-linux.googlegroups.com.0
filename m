Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFMPZP2QKGQE2RSN3YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 246131C72A8
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 16:20:06 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id b5sf892211lfg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 07:20:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588774805; cv=pass;
        d=google.com; s=arc-20160816;
        b=xd9skDaFUncRQ7gXYyit9E2Jk/bDCA1AaZQ/OfcK8Fy5HUs6bUj58J8tpclsibJUFe
         Hd9bMhUhz83KjzdMNA1JpU2vU1cArVXAb8Ccqt0+9NsjgNgpYwYpxMP0GY0xoAloEINy
         s/J2kH0yKpA6jqg9Fsx0ZD0WhWUjHbi5uvCiNwznk2sETyD0uml1GscIFD3MqSlRcivy
         K9amrKBxl7b78J4yTBe98nS3RF493hO22a1Cyu1h0/1ift0i28ofEmeA/nwyoYkE5eNj
         fv8Frxl9AgWHR0RPpVfqc9DlXHDxDNtMgjjVmkHZ5b4VG6YW99bpU7pKN6PztQcG/BPs
         WIPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3WccvZpyrqNrbqrAsfDIG7ztaoiZbPGdB31JB9ZMw/Y=;
        b=gKT2bwcnKXWMwvzTUvwS71dCaW6mvPSoSCBwBhlPfNXTP0KH3tXyPRcDmXYl2DMYmW
         A4I6Sae6cggJhClCoNJFALmB41oRRL8Va2LuIbdS0fYcvrcf1T5rZo3cLCxiCXrjgkLZ
         6diZVkrsA0btRWNuvcaufh65GIhGMlUlg6UQ+/kZnNH5fL6QtVlmXXaEBqzV3I24QeRF
         1XygsigjBikiykwRV6AcX5OS1M4l8gjUS0EkeTmO9LTE8b45Q2FuOf3U+lZfgHtlFVOs
         fhFTeuWtl1BV72v/9yZjJPS6u7/xMRfaYFLYhk4mjExwYkORDnGNZrRdflL/9eO6gLMn
         aQgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3WccvZpyrqNrbqrAsfDIG7ztaoiZbPGdB31JB9ZMw/Y=;
        b=hfywD9p8DPnWgOCPo9MVjD1QprIWy8LqyoNg0Y4OoiPkU5ceiQyZTBFOOJVN7RmhBy
         L+EBG/w8feM/NBqjt2HSVxvpK5rGuttcKcpOhk62KsIKElnhx6tPz6r5Pr9/bWX/S5oy
         rRgTBI69m7Gq9cvgrzHTNjWmiToEFq5bDl8uRRlvx3TdDWwHbxSyy1GBymvhcztdMAqx
         acSpmeGTJ6d35p3lcAO1p2uGkazstTjaBmFuZ+Xg2WGGHPLYA7yUvhYE9Ox1rIZHUNOO
         qMBqMBXZtp9QtdUqKBuFvwJnhWnAc8PLRFvP90uVPL/A4B/HGhn6NG0ok0vrt1Qw8S8+
         FFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3WccvZpyrqNrbqrAsfDIG7ztaoiZbPGdB31JB9ZMw/Y=;
        b=kyc5H7cVCxgtpTxL3yzQxLhSrqZfYrCU5yQ4svnoPNHBoZ7j13CdeSHQ8vatquNanz
         iYHm5IMLHPaRcFJh1sDPZZJG6EMEf320ZQwjaqEfHlF0KwVwS2TOBvcTR8eHSob9JZ3c
         CpiI8xiGQH0pXK2fVxyyEzSJaceHW4iBBRRzgvk3+Sq/gPmwcxRr8oCv9OOpGJukxolM
         qev4ZJjA+MwUc6XKV58jJuzXN37b79HkdVZvAvaN/9BKyR+7+5nLLDKMcHxd8i6GjuTQ
         zpJxj0KW3UYK2rpGz3wx5ZRsj4fr50dLBXqFfRZEb1j0Zp8of4MHFOT157k9JkpxHlf0
         Jwfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZZLcDkH9pVhzQTgpwaI703iaTY9hQ1mfyiQ2dScdnWJfppEOfh
	9w6Y0J9sBMZrPeaw6NKkXfE=
X-Google-Smtp-Source: APiQypLNEIFZhASwNvItXQO5DZqtwKvJdme12CPtVp0ne4i4//uTn9IblfBjTCdGjZng0MGstQ18MQ==
X-Received: by 2002:a2e:9c9a:: with SMTP id x26mr5267927lji.44.1588774805543;
        Wed, 06 May 2020 07:20:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c09:: with SMTP id r9ls379349lfp.5.gmail; Wed, 06 May
 2020 07:20:05 -0700 (PDT)
X-Received: by 2002:ac2:464c:: with SMTP id s12mr5244612lfo.147.1588774804252;
        Wed, 06 May 2020 07:20:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588774804; cv=none;
        d=google.com; s=arc-20160816;
        b=Q0JLrvrqEf0vcu2FNA+yZ3GI7ANhe40sFeghn8l1QWUyiORu1iI556WODOq+t07G6v
         6vtoVziLXlnJXtf2TDc2BF27QAKs2ILNOFzCdIMaiKB/IUgqAqnypojiPEluKqZPbAit
         As+rKBYhA3FcvoI2Kk7AJQCDMIjh+9z/HYhJf8NDDMnjJFiBCMnrN+GKc6CQM/NWsbBg
         coTI2dDJlbyjXzPLaLv58LI3WHFtpgZ3+U8Dp97DvBZjxT61CcBWYWKluA3G3qoYEl+I
         iDnStKiIkv9NRnYSC5WQ/vURcNgG0jcdPFDMco7ABfCrEwdi5P77lzXTUEh5uO5zaY96
         lTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=25HU+ABqaPWldQ5ypaExmYFOcfa/KCNp6xDmg1TJMhE=;
        b=Esw/vTHJeASQdKPiyfGyyA0KGqUuleKosYOW8jMqniFwgSsMAgfNa6tQG/X/aa2e8v
         zyCTo7Q5XmszetUb4Tpuo2jWk4cJoBBFcWYR4KNXOPaWNzQnZAFNjmtbLb7xCeyJBXX/
         Umqq4DOYLHvpbiKPBwb6BEE/rFYAYhRBRb94wCk4d83nzfITvvBYIrYZrpOHbsoXMFQO
         Zjkt3jEtv714AQzBdWVyV0JwbpiYApP+wZufPt2/9u+7unKbdyaz+/g5qX7bHlDSDNJd
         8J6MnxCnFYuz5ISfWDwbU/pNvrS0VXTF3w8SdIaEA2JB2xCSklYtC0k6sNt4lfotMHlp
         ieVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id u25si148279ljg.1.2020.05.06.07.20.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 07:20:04 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M8C8J-1jRfvs0dIR-005FUB for <clang-built-linux@googlegroups.com>; Wed, 06
 May 2020 16:20:03 +0200
Received: by mail-qt1-f180.google.com with SMTP id k12so1462424qtm.4
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 07:20:02 -0700 (PDT)
X-Received: by 2002:ac8:6696:: with SMTP id d22mr1418683qtp.304.1588774802043;
 Wed, 06 May 2020 07:20:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141928.923428-1-arnd@arndb.de> <20200506024416.GB415100@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506024416.GB415100@ubuntu-s3-xlarge-x86>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 6 May 2020 16:19:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ@mail.gmail.com>
Message-ID: <CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ@mail.gmail.com>
Subject: Re: [PATCH] leds: lm355x: avoid enum conversion warning
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>, 
	Bryan Wu <bryan.wu@canonical.com>, "G.Shark Jeong" <gshark.jeong@gmail.com>, 
	Dan Murphy <dmurphy@ti.com>, Linus Walleij <linus.walleij@linaro.org>, linux-leds@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:1uydEijzTBdp00G7Thcw/Dy5zoj4AcakpzbTVWduIfmggR7vThO
 dowkG10LwV8wMT6zd8TK4GOlSD54yFFCvH0k1u1Gf2bQzymujyhAcv679WuwidFXMB8oV71
 vrlBn4NJD5wpbmKijR6mpm8a2gMKYlMMkFGiM2BMgNHIGeMjkZXV2llxfS69CJYe5QkHyxq
 JNNrXAJUvkkJEi3KEfu/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xy6jBFNth3Q=:ZjsYruHy0Te8GiZSBq7iYo
 wYWh8SGhKBJ2HXCknThbH2NPP27l92HSh7NuQskat9Zabr/P6BkY2V8XC+TcxGycS1sUiNnk7
 fbDsdv1stVigjwn+QPAWXigZQnNSQaLiOEU8O93R33D6G8VQPV1KQ74Tk9uPhSQveGJh3p0q3
 4UdoRnCsZgV62ELyW6/aYQ4SblZJTdaxtOCkxg1U4NjVJLcdwMUs3j33pAWSG9uUeWHpzWU6D
 kqqjvJcezuMzoNYzaPtyTxSFekm9AK/AwEihzGW27UKT3ar+BSYK1HtXmTIR9rM3akhD/7eFg
 lrAy9oKkdJjw9eS/coFWDwNhuOJmTT87DJUIkophDU1juzyNDARn+qLFXAEnMmG/DP2R/KjSS
 If25HVBiJv88AnFYkuOEW53rzILxw+4nIvU2GUfaQEnGOZ4ybGDtXcjfUxuI1PodpY9V4fusQ
 FHrQBylPO9XdoHj+VSiIS2J+eOSC/lwI4kWaND40IUePHrr80Ug0W+e7FnV1PmefdigzHi4p6
 ocWACxl4HR/3ehT1eTpVv6mTiogpf0T8+mgIuFhUFck6EVFIOOPphen9BExIrJsjPDpBmaMfV
 4tvoyVPgFjOFnfVzJZhT/4OOMWc2f6eEU4J66AaWisrsitxJE69U6mSXJu2zFJewdBK5x/KlR
 3vWv6unXtmCBfunFvGghsuNn/Gze1IKBiFlVxMe7MmEOnr0yivpAfNG22oWl9KpAlp3h0qkfZ
 pOBa2DPH40otKC5KfN8ESOWsEuwLdl8fOnspGZNi17vF0YFKNWAQt+zESZuL2pWVSAMDgR4Mq
 1hgUGNv/LRh7dv5pdoN1RR8hK41iNPO/VcMuSoF/em800gL1ME=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, May 6, 2020 at 4:44 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 05, 2020 at 04:19:17PM +0200, Arnd Bergmann wrote:
> > clang points out that doing arithmetic between diffent enums is usually
>                                                  ^ different
> > a mistake:
> >
> > drivers/leds/leds-lm355x.c:167:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
> >                 reg_val = pdata->pin_tx2 | pdata->ntc_pin;
> >                           ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> > drivers/leds/leds-lm355x.c:178:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
> >                 reg_val = pdata->pin_tx2 | pdata->ntc_pin | pdata->pass_mode;
> >                           ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> >
> > In this driver, it is intentional, so add a cast to hide the false-positive
>
> Not sure that I would call this a false positive. The warning is correct
> that there is a bitwise operation between different enumeration types
> but we do not care since we are just using the enumerated type for its
> integer value in lieu of a #define VAR value.

Right, I meant that the code works as intended and said "false positive"
to avoid claiming the driver is broken when this was a deliberate
design point.

We do want clang to warn about this though as you say, so I can
rephrase it to explain that both the driver and the compiler work
as intended but they clash in their views of how to do it ;-)

> > -             reg_val = pdata->pass_mode;
> > +             reg_val = (u32)pdata->pass_mode;
>
> Is this cast needed? I don't think there should be warning from going
> from an enumerated type to unsigned int.

This cast is not needed for warnings, I added it for consistency because
it seemed odd to cast only four of the five enums. I can remove if though
if you think it's clearer without the cast.

There may also be a different solution in completely removing the
lm355x_chip_init() function, as it was added at a time when we
were converting the last board files into devicetree, and there has
never been a board file defining lm355x_platform_data.

There is unfortunately no DT support either in it, so I assume we
could just remove the driver completely, or change it to use a
DT binding similar to
Documentation/devicetree/bindings/leds/leds-lm36*.txt

LED maintainers, any opinions on this?

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ%40mail.gmail.com.
