Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXWZ3YAKGQEOGWDJCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B8570131BE5
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:57:31 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id n26sf31841604ioj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:57:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578351450; cv=pass;
        d=google.com; s=arc-20160816;
        b=dKyNHYcqyuyN1Y+GkPFBJXIhIhMwvGI0cdPkE374MvnM9hiqk4A6YYrP8Ov4ji+1QZ
         jv/0jgGfqthum5gsiU9YyFeYTnprq4HRBwxPH95pd5Zh/YjbdBzfTKhf7gYBTPN0DSxq
         M2xxpirKc/eBCMtHgyBWekHgHiBE99oBiMWFN7TAn5QfkQZuWUW54fLcYIu4d1P8pwSt
         tE5zjBpISyjUf7n5m8benBGGKxX8lMMgdc41qyXdmRytU61ud4RE1DZP47NqNEZ3WDwW
         wuq77I0rploFLhw+tcni8Ex5fjCsagUXzFajUKRgP4UNd/8QpzmvjnmFlk6/b2O3hF2s
         6Ifw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m4aVZ72B5K595JWx3M6gxyGz1NNplR7z9zez0VJfMeU=;
        b=g9oLlq0qy+0dTDLzlq6/ncuN/9H8aekSzRNkCIg2loTk2vWSdqNudp/ebi/NnLWAO7
         2h/P/wKiAFXLab7tsCYJV1YKRCQfHZelUnNyae6f2vWumzy2UnqMRO+fRNB4JTxIXnRa
         bV3+TZ0rTaf865PEoSp1rrggJM8+F63XyTIduvHt0/7l/L2pCYUOieaTX35CxT4omLhn
         fhazHZoxO7gtkSV7mhwsGihm3l8NrbOKi4eZbHEZsNrP8uXD3GHlbsTqY7qsw+MtbBvI
         xDeUJm4reuiFHOPcymcRuy+ynWbKOQdg6FPtA3uR512BlWX3IrmiC8sJWk9a8NWq93+I
         w3QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Igmr8huJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m4aVZ72B5K595JWx3M6gxyGz1NNplR7z9zez0VJfMeU=;
        b=ZZlNlLOybPEbnjNoLh3/lyZqy0nlfaOQBBk6VEepwlbqB9O63kDS2olvwcKP/z47o/
         PFVW2HDb+wgYqAaXc7dQh1A/RJfhldtDCB9Sk+BmXmkrRYrDjsw/TBD65H3dUNNVBZup
         WW2KLH30lyCiU6Pena/kXXzzjIXsyahxZ9bpRgauljkQdJgwaKhTPBLG0CUayGW5GHbC
         jfxHKRgOASkjqtVFyY49ZpKhWFFIeBmJao5X2xgcgYe8TLKWCo7+1Gp5amCaH/DRQnS3
         9oZ+tNsuQblhGdVHii9BTJn4+DeYY+Vcy6sgVjTYIMqND6CLMfZ2dxMNDpnpqLSngGxX
         5BBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m4aVZ72B5K595JWx3M6gxyGz1NNplR7z9zez0VJfMeU=;
        b=HWdjYlrzauBJ8aSuLa/qswv2crofz/VG23R1bJrEDrR6PiLZwiL+qqKNTNwGt3fmd6
         hOypiZBzTq/T55UwjD+KtBYvLE51ToPHBoRk67IsDhn//K3BjQzolYKu0qO8fQPUMYeQ
         z5UsPB3SS0hSO6Xh4VYIkllqI7cDO4dqKaTE9B80PM+QN8jjqcKbC9c8BTxt66mbgwky
         2RHCXqSSt1H3VckMVTfD21qfjjv7etSfn4FbfCTP5awChYYJgJtOno1ZPgPyjtLS0IuW
         OAJDvLWvY80N7jt/c8E8gO+ThjVPrUZg9FJ9oud2s74ny9AqU/WDfuQE18m7RUIviaLh
         S3zA==
X-Gm-Message-State: APjAAAVr3ghCSPXeQnRLGykMkz9gqqYLDZ3qWoCgG7eXD6y2Pw/5t6wc
	TiUkrBzQBBkO8JNKcaA/i3Y=
X-Google-Smtp-Source: APXvYqylhp+Weue5SRxoTR6nAgBFWrkZF1VJKZYnyuVEZ23cp6gvGsKUdpiyOOlwPQmasuPAc0pVyA==
X-Received: by 2002:a02:84eb:: with SMTP id f98mr78187296jai.36.1578351450559;
        Mon, 06 Jan 2020 14:57:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:39c5:: with SMTP id h66ls8048606ilf.11.gmail; Mon, 06
 Jan 2020 14:57:30 -0800 (PST)
X-Received: by 2002:a92:844d:: with SMTP id l74mr91368711ild.16.1578351450271;
        Mon, 06 Jan 2020 14:57:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578351450; cv=none;
        d=google.com; s=arc-20160816;
        b=GyqoDZ5y7GrPMgkUgclOHcSiI09CzBnB1UKgIDducbbG7pY/z4wXzEk4GXrd34Y+h2
         U3dqdNWSUJE/TeV50/OoDHpYnLdwxKUMUAo1uo5G63B0fIl1F+dGACcH5JsSrGUGSg13
         ej3FZNqJul7Vm1Cq/NAdmS0cMX7ymo2oXXITQEHhQNiGFZPf8tPBUZDf2FV3G2cmf2us
         8BDumCNfEOPy/kFrl1MIw3f7Pji4dmNM2ahjcVjc2gwlhs1HW+7EAcmTNoLpkT+ioOCg
         Mcla5Zeyhi93/Wh/bIDlm1LV8Bwl9G3oZ7z2U75rVh5yxsNIQG599loR7wDOadbOX1j/
         eqHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Gq7bJYL61FS3H1GY5kYu/qEzW3M5hPRCG4KZebXYr50=;
        b=YHFLZza4cPgnSS5idDbeqLnl+Wy4lelUp9rwk315FpgGOVpCr+Qdm6eutUbR3hMxHF
         1eFw1nc6ztL2X5ojXJGAIm+IDW2ooz7P6nBRvdVg+2XnVhXLuHz8aMujckJgtazXnbBd
         1eMMmyw/xvaXvlI5vNrHuT9Pdig32mjIpHp2A/B76iiJeyCJZkbGbME8O5Ky0ONlnD3f
         7cC+2oUZnxu/HkHgTBa1x88BINppkl7mfhQwXPnSZCH7qg55VC9m14N6hPrBq9HORbLw
         eyrxdKUQoQ/HIfJS32IGKVpofrevDol+x6BojPVs/023LpacUROyeiZqlfZTCs4/EivL
         5CYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Igmr8huJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id h4si3542603ilf.3.2020.01.06.14.57.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:57:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id g6so22406693plt.2
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:57:30 -0800 (PST)
X-Received: by 2002:a17:90a:77c1:: with SMTP id e1mr46040647pjs.134.1578351449421;
 Mon, 06 Jan 2020 14:57:29 -0800 (PST)
MIME-Version: 1.0
References: <68970e42-1632-4894-a2ad-c9e68ed5192d@googlegroups.com>
In-Reply-To: <68970e42-1632-4894-a2ad-c9e68ed5192d@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 14:57:18 -0800
Message-ID: <CAKwvOdmTzoQon6x3izX8CTXMm2tmah+NHb9d+5csKO9Wa0euXw@mail.gmail.com>
Subject: Re: Compile qualcomm qcm2150 android kernel driver module with
 scan-build,report Error: no such instruction: `cbnz %di,1b'
To: yan <hyouyan@126.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Igmr8huJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

Hi Youyan,
Thanks for the report, sorry I haven't responded sooner (holidays).
If you run `make` with `V=3D1`,  you should be able to see how Clang is
being invoked.  It should be invoked with `-no-integrated-as`.
Another thing to check is that `--target` is being set correctly. I
suspect the absolute $PATH for $CROSS_COMPILE is to blame (try setting
$PATH then using the more concise/relative $CROSS_COMPILE).

On Mon, Dec 23, 2019 at 7:35 PM yan <hyouyan@126.com> wrote:
>
> Hi all:
>        I want to use clang static analyzer to check my linux driver on qu=
alcomm qcm2150. I have successfully build my driver use clang, but when I u=
se scan-build, report a lot of error(no such instruction):
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h: Assembler messages:
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:292: Error: no such instruction: `prfm pstl1strm,%rax'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:293: Error: no such instruction: `ldxr %si,%rax'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:294: Error: no such instruction: `eor %di,%si,%dx'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:295: Error: no such instruction: `cbnz %di,2f'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:296: Error: no such instruction: `stlxr %di,%cx,%rax'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:297: Error: no such instruction: `cbnz %di,1b'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:298: Error: no such instruction: `dmb ish'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:292: Error: no such instruction: `prfm pstl1strm,%rax'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:293: Error: no such instruction: `ldxr %r9w,%rax'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:294: Error: no such instruction: `eor %dx,%r9w,%si'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:295: Error: no such instruction: `cbnz %dx,2f'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:296: Error: no such instruction: `stlxr %dx,%cx,%rax'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:297: Error: no such instruction: `cbnz %dx,1b'
> /home/workspace/huangyy/qcm2150/kernel/msm-4.9/arch/arm64/include/asm/ato=
mic_ll_sc.h:298: Error: no such instructio
>
> I compile ti use module build solution:
> the makefile:
> ifeq ($(obj),)
> obj=3D.
> endif
>
> ifeq ($(KDIR),)
> KDIR :=3D /home/huangyy/workspace/qcm2150/out/target/product/msm8937_64/o=
bj/KERNEL_OBJ
> endif
> include $(KDIR)/.config
>
> obj-m +=3D se_driver.o
>
> PWD :=3D $(shell pwd)
>
> all:
> $(MAKE) ARCH=3Darm64 CROSS_COMPILE=3D/home/huangyy/workspace/qcm2150/preb=
uilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-and=
roid- REAL_CC=3D/home/workspace/huangyy/qcm2150/vendor/qcom/proprietary/llv=
m-arm-toolchain-ship/8.0/bin/clang CLANG_TRIPLE=3Daarch64-linux-gnu- -C $(K=
DIR) SUBDIRS=3D$(PWD) modules
>
> clean:
> $(MAKE) -C $(KDIR) M=3D`pwd` clean
>
>
> build command:
> ./vendor/qcom/proprietary/llvm-arm-toolchain-ship/8.0/bin/scan-build make=
 -C kernel/msm-4.9/drivers/misc/se_driver/
>
> How can I fix it?
>
>
>
>
> thanks and best regards
> youyan
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/68970e42-1632-4894-a2ad-c9e68ed5192d%40googlegroups.com=
.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmTzoQon6x3izX8CTXMm2tmah%2BNHb9d%2B5csKO9Wa0euXw%4=
0mail.gmail.com.
