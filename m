Return-Path: <clang-built-linux+bncBCXKPXNEQUJRBZHY4DZAKGQE3STIH5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 364F8172AB3
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 23:02:14 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id z7sf321154wmi.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 14:02:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582840934; cv=pass;
        d=google.com; s=arc-20160816;
        b=VepXwRjSRhOimQG3Lqo6/XvDKt+NBIhHrvsLSOTOoOk4gt92Y5mRDGmSbs3iLNWVBv
         wp7XAImnSuQNoKABecgoWIanV/c5Ml0Pcn0l+jFApkwLzWyn4qHei8HC8piT7w8z/rgx
         vUrljdj1ck8oCEONNUlvRkx9g0PE/TYe3kbNBynAoyn0RgexjE9NNRkOryNBNISkWAbQ
         2NtOKqIIxTrGVQ0Jc8HgsSGeww0psoFnKjsNzmMERfvzMsgTUzvHh7TFEW0ApzYGP57E
         VWD7OCEbdS6oxzK6p0Qe6Ccmn+c2AszchOUpJKqZXE7tOP3Wa/uEcY3RZSZoSwq3saPT
         UBBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature:dkim-signature;
        bh=ZL5sJcL//tCOJIA43+MFInOSP8h1P8R6fEZaWpL9ccw=;
        b=GLOG/tXfCUFQzm4hVOAB5UHzaRlherujvtM5EyzI/9JPEvxmyfB+zUABYqJBXnlb0n
         /1lmP7djY+HAA66/mef/nfaaUlV4S03l5jffdyEtrqCu9GJ6smL8AL6/51UbK46CFaPT
         F0mEZDdr6W7YqMXNxZTvGqJFip7H5Od62Js+KCkgloBuyYyAb/u/y/L/1YKC0RXX2Pbj
         HPbQfvRDqUeR2sbVboi5dMMyP+XdyUbZbnmNpMLGmNh6hSwU39JKvcUZ6BewgM5KtNjV
         bh3tpJ6EBu1uWIECWUQSwBjEz0ELnGpLuNG+9ytIT8bUgsRXfwNBiLR/q58sPxJvF6jS
         ylmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lRjw/SnY";
       spf=pass (google.com: domain of broonie@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=broonie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZL5sJcL//tCOJIA43+MFInOSP8h1P8R6fEZaWpL9ccw=;
        b=qCeHYOpLsxcJPDuaH09w5Wdz20c+4L/ySraSV+P8pwX3SSczd3utbs+eJZjx5nm6Pc
         d0T+pCCAD2QQeAqZzhgPPds0RBIuzvRSShR1czysO4Jin5xgxmCkUp0jDxevofJwbgz8
         +6vdmSJ9gqXVF78kP3cahAFmMh4DhbXL5b0zuz728DoVYhqkCXwVQFZtLPs+2kSBCM3z
         ZsHWgpHDcjYGGHnh0CkPWAP39jSNxeRAwrfhFIcX6ZtK7Qcj+pjLT/VQucSkzVc+6VDW
         ywbgf+dq+munjBxpSrloqESxSapdgpyEyiUFdMj3wtOEYyDY8NnJ3g1nj8mE0qRx4tqh
         4QdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZL5sJcL//tCOJIA43+MFInOSP8h1P8R6fEZaWpL9ccw=;
        b=TWlcSBqXLDkf51m1jomL5WknIsJqpWfA+79qKFR+rSUcOxFJxQfWfmC6yUpTL8sWzs
         a5ZO7LMFRqqxOs2s48PU4WI24DObiUXq0d9HlTEUcopsLtGySBhcQ7PbpAS6/YgNygE/
         bkWUUuBjwIrDNAM4eiT3mRx6i4nI6M+bFfyPndXzt8mNIK1U+AjLBuf7eQWxPJWt0XiY
         uWlXV02Zx3J+AgSq6qMlChu8jhr/YbSfkt2S1hCtUkKihmLqtWF+jrguO6Yh2qRTDhRf
         22HlqJD4FKxjJJCNRQ59/A+pPxpx39RZ6MQy7rKBmxfGvZc3Fvczu7UC62eO5BkxMnpB
         nmFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZL5sJcL//tCOJIA43+MFInOSP8h1P8R6fEZaWpL9ccw=;
        b=Gzho549ksopN4DubARnF0xn22s0XD1yNahb0SBl905XPopIoKw8Gn8jU/171uk0HyX
         d4NeGRxBxovD98me7jUdk1ZMYrUK8PwlBn5JsOjtPSrSGdp75IV1kH+bGgoH5CIlgY+k
         2ZJ+v8FIIjzT6YY3qZLU3RqtqWMDJ3ukEwA+QMXsfbSpZf2yov0Lu5l77r4qQdpyX0LP
         TZNdsTe+jDMVv7D3kyvhlIAczF+Mb1HpyneMpYiG1j7RdJ7DgzccuP6RmoWkATQUkwXt
         K0o1lQS8BvEewNH4i2RGqfpCyt2UDNywim3lPKIJLSSwgusq6sjW/Mw4SeuDlOd8A6Pt
         R0Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVw+C2csujktlPXYw6cGsuu7EVxJprBol19TqI5p8pF7sFCxmwa
	AInmqAdbl8OqYqmH7iZJVY8=
X-Google-Smtp-Source: APXvYqza6bzeSXdcQoEFgL/4/RTdk+Oj2FH2Dvu4DgZ+aMFRhmhvu41o1y6hAYyN0oEaH3+txemVJQ==
X-Received: by 2002:a05:600c:145:: with SMTP id w5mr784665wmm.157.1582840932792;
        Thu, 27 Feb 2020 14:02:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls354820wrp.11.gmail; Thu, 27 Feb
 2020 14:02:12 -0800 (PST)
X-Received: by 2002:adf:f310:: with SMTP id i16mr1007407wro.326.1582840932116;
        Thu, 27 Feb 2020 14:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582840932; cv=none;
        d=google.com; s=arc-20160816;
        b=DoyNWdci/NKvK1AiLM3Ffh6x+4IuWqojynlKww0YVUn4m4ZhxdoTE5rfyQY8S/8oez
         E9NDgtRuKSeB2kE0kealyNfk+i3gKuGEHsKLwykSxDmjV9fxWKjV2N7vMdLhVpUBEd4E
         AkXRoAUddp934EWOf9Adp9F6Nk5lK9d2YoOGoAGfjTsJQKep2J90CxT5MmJak0zC52s3
         DYJ7mXLmWOHyfv8nbAWfD/V/rFvKCt0Xa6UfO9oC3rn0kATQqDhQMKPeY8NTue9dv/E5
         9yLJASWOb5UulwjbwBI0yhsthBFTFJEEg6gIun1av5h0uxES40j/5J0xyeBQpRqvw3wC
         bY8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=QRBFdD7lNJLcuuwgMdv6Ur5+Zec4vrQMVrfWKvmA9o4=;
        b=OHQT0bLZKhCSY3UwlCNscU1mnmY4VlOTpEg1p/dWPfA/AP4Z0ok8epZExm/WhnVDMV
         6FqVT307EOFt51XIwZ/WqZGKATmBnAHpltFvedDzQXRIAZAIWf9O+O5IEJeaQ8t4E2dg
         NtTeOkd6CsdHlEgpZFthPXwKe2LillY+ccbktpHt2MLksnwFyslrIJthzNEzJbBEW0fg
         0ImhenhQ907qxyfcJ5ZCH0sdFcC6c8mPNvVVHgB1+ZoLaPIfJ5WOxpIJsIq7Cc/K2xs7
         9pgNEo4vjfKpzE2mqMJ7X0KlQs4ROKY7S8qrMJq0Rt+CZAIaZADCb9ou8ztYTjoAN779
         AN9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lRjw/SnY";
       spf=pass (google.com: domain of broonie@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=broonie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w11si62546wmk.0.2020.02.27.14.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 14:02:12 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id c13so639166wrq.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 14:02:12 -0800 (PST)
X-Received: by 2002:adf:c445:: with SMTP id a5mr972824wrg.14.1582840928958;
        Thu, 27 Feb 2020 14:02:08 -0800 (PST)
Received: from [100.91.214.144] (94.197.120.236.threembb.co.uk. [94.197.120.236])
        by smtp.gmail.com with ESMTPSA id q3sm9298681wmj.38.2020.02.27.14.01.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 14:02:07 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Mark Brown <broonie@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: next/master build: 219 builds: 84 failed, 135 passed, 101 errors, 267 warnings (next-20200227)
Date: Thu, 27 Feb 2020 21:59:58 +0000
Message-Id: <A4CCC82C-D56D-4387-9343-3C24F23922BB@gmail.com>
References: <CAKwvOdnVh0xSrrQ=RkRSYOVHYD0-i+=E=Rsg6JjdG9=4r7BN+w@mail.gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 "kernelci.org bot" <bot@kernelci.org>
In-Reply-To: <CAKwvOdnVh0xSrrQ=RkRSYOVHYD0-i+=E=Rsg6JjdG9=4r7BN+w@mail.gmail.com>
To: kernelci@groups.io, ndesaulniers@google.com
X-Mailer: iPhone Mail (17D50)
X-Original-Sender: broonie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="lRjw/SnY";       spf=pass
 (google.com: domain of broonie@gmail.com designates 2a00:1450:4864:20::443 as
 permitted sender) smtp.mailfrom=broonie@gmail.com;       dmarc=pass (p=NONE
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



> On 27 Feb 2020, at 19:21, Nick Desaulniers via Groups.Io <ndesaulniers=3D=
google.com@groups.io> wrote:
>=20
> =EF=BB=BF+ KernelCI
>=20
> So it looks like this is the latest report we received. Any thoughts
> on why clang-8 is being used in the report after
> https://github.com/kernelci/kernelci-core/pull/325 was merged 2 days
> ago?  Is the deployment not continuous (ie. still has to be pushed to
> production)?

It=E2=80=99s not been pushed yet - deployments happen roughly once a week =
=20

>=20
>> On Thu, Feb 27, 2020 at 6:22 AM kernelci.org bot <bot@kernelci.org> wrot=
e:
>>=20
>> next/master build: 219 builds: 84 failed, 135 passed, 101 errors, 267 wa=
rnings (next-20200227)
>>=20
>> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel=
/next-20200227/
>>=20
>> Tree: next
>> Branch: master
>> Git Describe: next-20200227
>> Git Commit: 10569a280f259f696c0b32fc1d45866d2fd33f53
>> Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it
>> Built: 7 unique architectures
>>=20
>> Build Failures Detected:
>>=20
>> arc:
>>    allnoconfig: (gcc-8) FAIL
>>    axs103_defconfig: (gcc-8) FAIL
>>    axs103_smp_defconfig: (gcc-8) FAIL
>>    haps_hs_defconfig: (gcc-8) FAIL
>>    haps_hs_smp_defconfig: (gcc-8) FAIL
>>    haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL
>>    hsdk_defconfig: (gcc-8) FAIL
>>    nsimosci_hs_defconfig: (gcc-8) FAIL
>>    nsimosci_hs_smp_defconfig: (gcc-8) FAIL
>>    tinyconfig: (gcc-8) FAIL
>>    vdk_hs38_defconfig: (gcc-8) FAIL
>>    vdk_hs38_smp_defconfig: (gcc-8) FAIL
>>=20
>> arm:
>>    cm_x300_defconfig: (gcc-8) FAIL
>>    em_x270_defconfig: (gcc-8) FAIL
>>    eseries_pxa_defconfig: (gcc-8) FAIL
>>    pxa_defconfig: (gcc-8) FAIL
>>=20
>> mips:
>>    32r2el_defconfig: (gcc-8) FAIL
>>    32r2el_defconfig+kselftest: (gcc-8) FAIL
>>    allnoconfig: (gcc-8) FAIL
>>    ar7_defconfig: (gcc-8) FAIL
>>    ath25_defconfig: (gcc-8) FAIL
>>    ath79_defconfig: (gcc-8) FAIL
>>    bcm47xx_defconfig: (gcc-8) FAIL
>>    bcm63xx_defconfig: (gcc-8) FAIL
>>    bigsur_defconfig: (gcc-8) FAIL
>>    bmips_be_defconfig: (gcc-8) FAIL
>>    bmips_stb_defconfig: (gcc-8) FAIL
>>    capcella_defconfig: (gcc-8) FAIL
>>    cavium_octeon_defconfig: (gcc-8) FAIL
>>    ci20_defconfig: (gcc-8) FAIL
>>    cobalt_defconfig: (gcc-8) FAIL
>>    cu1000-neo_defconfig: (gcc-8) FAIL
>>    db1xxx_defconfig: (gcc-8) FAIL
>>    decstation_64_defconfig: (gcc-8) FAIL
>>    decstation_defconfig: (gcc-8) FAIL
>>    decstation_r4k_defconfig: (gcc-8) FAIL
>>    e55_defconfig: (gcc-8) FAIL
>>    fuloong2e_defconfig: (gcc-8) FAIL
>>    gcw0_defconfig: (gcc-8) FAIL
>>    gpr_defconfig: (gcc-8) FAIL
>>    ip22_defconfig: (gcc-8) FAIL
>>    ip27_defconfig: (gcc-8) FAIL
>>    ip28_defconfig: (gcc-8) FAIL
>>    ip32_defconfig: (gcc-8) FAIL
>>    jazz_defconfig: (gcc-8) FAIL
>>    jmr3927_defconfig: (gcc-8) FAIL
>>    lasat_defconfig: (gcc-8) FAIL
>>    lemote2f_defconfig: (gcc-8) FAIL
>>    loongson1b_defconfig: (gcc-8) FAIL
>>    loongson1c_defconfig: (gcc-8) FAIL
>>    loongson3_defconfig: (gcc-8) FAIL
>>    malta_defconfig: (gcc-8) FAIL
>>    malta_kvm_defconfig: (gcc-8) FAIL
>>    malta_kvm_guest_defconfig: (gcc-8) FAIL
>>    malta_qemu_32r6_defconfig: (gcc-8) FAIL
>>    maltaaprp_defconfig: (gcc-8) FAIL
>>    maltasmvp_defconfig: (gcc-8) FAIL
>>    maltasmvp_eva_defconfig: (gcc-8) FAIL
>>    maltaup_defconfig: (gcc-8) FAIL
>>    maltaup_xpa_defconfig: (gcc-8) FAIL
>>    markeins_defconfig: (gcc-8) FAIL
>>    mips_paravirt_defconfig: (gcc-8) FAIL
>>    mpc30x_defconfig: (gcc-8) FAIL
>>    msp71xx_defconfig: (gcc-8) FAIL
>>    mtx1_defconfig: (gcc-8) FAIL
>>    nlm_xlp_defconfig: (gcc-8) FAIL
>>    nlm_xlr_defconfig: (gcc-8) FAIL
>>    omega2p_defconfig: (gcc-8) FAIL
>>    pic32mzda_defconfig: (gcc-8) FAIL
>>    pistachio_defconfig: (gcc-8) FAIL
>>    pnx8335_stb225_defconfig: (gcc-8) FAIL
>>    qi_lb60_defconfig: (gcc-8) FAIL
>>    rb532_defconfig: (gcc-8) FAIL
>>    rbtx49xx_defconfig: (gcc-8) FAIL
>>    rm200_defconfig: (gcc-8) FAIL
>>    rt305x_defconfig: (gcc-8) FAIL
>>    sb1250_swarm_defconfig: (gcc-8) FAIL
>>    tb0219_defconfig: (gcc-8) FAIL
>>    tb0226_defconfig: (gcc-8) FAIL
>>    tb0287_defconfig: (gcc-8) FAIL
>>    tinyconfig: (gcc-8) FAIL
>>    vocore2_defconfig: (gcc-8) FAIL
>>    workpad_defconfig: (gcc-8) FAIL
>>    xway_defconfig: (gcc-8) FAIL
>>=20
>> Errors and Warnings Detected:
>>=20
>> arc:
>>    allnoconfig (gcc-8): 1 error, 1 warning
>>    axs103_defconfig (gcc-8): 1 error, 1 warning
>>    axs103_smp_defconfig (gcc-8): 1 error, 1 warning
>>    haps_hs_defconfig (gcc-8): 1 error, 1 warning
>>    haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
>>    haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
>>    hsdk_defconfig (gcc-8): 1 error, 1 warning
>>    nsimosci_hs_defconfig (gcc-8): 1 error, 1 warning
>>    nsimosci_hs_smp_defconfig (gcc-8): 1 error, 1 warning
>>    tinyconfig (gcc-8): 1 error, 1 warning
>>    vdk_hs38_defconfig (gcc-8): 1 error, 1 warning
>>    vdk_hs38_smp_defconfig (gcc-8): 1 error, 1 warning
>>=20
>> arm64:
>>    allmodconfig (clang-8): 81 warnings
>>    defconfig (clang-8): 18 warnings
>>    defconfig (gcc-8): 1 warning
>>    defconfig (gcc-8): 1 warning
>>    defconfig (gcc-8): 1 warning
>>    defconfig (gcc-8): 1 warning
>>=20
>> arm:
>>    allmodconfig (gcc-8): 21 warnings
>>    aspeed_g4_defconfig (gcc-8): 4 warnings
>>    aspeed_g5_defconfig (gcc-8): 4 warnings
>>    cm_x300_defconfig (gcc-8): 1 error, 2 warnings
>>    em_x270_defconfig (gcc-8): 1 error, 2 warnings
>>    eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
>>    multi_v5_defconfig (gcc-8): 4 warnings
>>    multi_v7_defconfig (gcc-8): 4 warnings
>>    multi_v7_defconfig (gcc-8): 4 warnings
>>    multi_v7_defconfig (gcc-8): 4 warnings
>>    multi_v7_defconfig (gcc-8): 4 warnings
>>    multi_v7_defconfig (gcc-8): 5 warnings
>>    pxa_defconfig (gcc-8): 3 errors, 6 warnings
>>=20
>> i386:
>>=20
>> mips:
>>    32r2el_defconfig (gcc-8): 1 error, 1 warning
>>    32r2el_defconfig (gcc-8): 1 error, 1 warning
>>    allnoconfig (gcc-8): 1 error, 1 warning
>>    ar7_defconfig (gcc-8): 1 error, 1 warning
>>    ath25_defconfig (gcc-8): 1 error, 1 warning
>>    ath79_defconfig (gcc-8): 1 error, 1 warning
>>    bcm47xx_defconfig (gcc-8): 1 error, 1 warning
>>    bcm63xx_defconfig (gcc-8): 1 error, 1 warning
>>    bigsur_defconfig (gcc-8): 1 error, 1 warning
>>    bmips_be_defconfig (gcc-8): 1 error, 1 warning
>>    bmips_stb_defconfig (gcc-8): 1 error, 1 warning
>>    capcella_defconfig (gcc-8): 1 error, 1 warning
>>    cavium_octeon_defconfig (gcc-8): 1 error, 1 warning
>>    ci20_defconfig (gcc-8): 1 error, 1 warning
>>    cobalt_defconfig (gcc-8): 1 error, 1 warning
>>    cu1000-neo_defconfig (gcc-8): 1 error, 1 warning
>>    db1xxx_defconfig (gcc-8): 1 error, 1 warning
>>    decstation_64_defconfig (gcc-8): 1 error, 1 warning
>>    decstation_defconfig (gcc-8): 1 error, 1 warning
>>    decstation_r4k_defconfig (gcc-8): 1 error, 1 warning
>>    e55_defconfig (gcc-8): 1 error, 1 warning
>>    fuloong2e_defconfig (gcc-8): 1 error, 1 warning
>>    gcw0_defconfig (gcc-8): 1 error, 1 warning
>>    gpr_defconfig (gcc-8): 1 error, 1 warning
>>    ip22_defconfig (gcc-8): 1 error, 1 warning
>>    ip27_defconfig (gcc-8): 3 errors, 2 warnings
>>    ip28_defconfig (gcc-8): 1 error, 1 warning
>>    ip32_defconfig (gcc-8): 1 error, 1 warning
>>    jazz_defconfig (gcc-8): 1 error, 1 warning
>>    jmr3927_defconfig (gcc-8): 1 error, 1 warning
>>    lasat_defconfig (gcc-8): 1 error, 1 warning
>>    lemote2f_defconfig (gcc-8): 1 error, 1 warning
>>    loongson1b_defconfig (gcc-8): 1 error, 1 warning
>>    loongson1c_defconfig (gcc-8): 1 error, 1 warning
>>    loongson3_defconfig (gcc-8): 1 error, 1 warning
>>    malta_defconfig (gcc-8): 1 error, 1 warning
>>    malta_kvm_defconfig (gcc-8): 1 error, 1 warning
>>    malta_kvm_guest_defconfig (gcc-8): 1 error, 1 warning
>>    malta_qemu_32r6_defconfig (gcc-8): 1 error, 1 warning
>>    maltaaprp_defconfig (gcc-8): 1 error, 1 warning
>>    maltasmvp_defconfig (gcc-8): 1 error, 1 warning
>>    maltasmvp_eva_defconfig (gcc-8): 1 error, 1 warning
>>    maltaup_defconfig (gcc-8): 1 error, 1 warning
>>    maltaup_xpa_defconfig (gcc-8): 1 error, 1 warning
>>    markeins_defconfig (gcc-8): 1 error, 1 warning
>>    mips_paravirt_defconfig (gcc-8): 1 error, 1 warning
>>    mpc30x_defconfig (gcc-8): 1 error, 1 warning
>>    msp71xx_defconfig (gcc-8): 1 error, 1 warning
>>    mtx1_defconfig (gcc-8): 1 error, 1 warning
>>    nlm_xlp_defconfig (gcc-8): 1 error, 1 warning
>>    nlm_xlr_defconfig (gcc-8): 1 error, 1 warning
>>    omega2p_defconfig (gcc-8): 1 error, 1 warning
>>    pic32mzda_defconfig (gcc-8): 1 error, 1 warning
>>    pistachio_defconfig (gcc-8): 1 error, 1 warning
>>    pnx8335_stb225_defconfig (gcc-8): 1 error, 1 warning
>>    qi_lb60_defconfig (gcc-8): 1 error, 1 warning
>>    rb532_defconfig (gcc-8): 1 error, 1 warning
>>    rbtx49xx_defconfig (gcc-8): 1 error, 1 warning
>>    rm200_defconfig (gcc-8): 1 error, 1 warning
>>    rt305x_defconfig (gcc-8): 1 error, 1 warning
>>    sb1250_swarm_defconfig (gcc-8): 1 error, 1 warning
>>    tb0219_defconfig (gcc-8): 1 error, 1 warning
>>    tb0226_defconfig (gcc-8): 1 error, 1 warning
>>    tb0287_defconfig (gcc-8): 1 error, 1 warning
>>    tinyconfig (gcc-8): 1 error, 1 warning
>>    vocore2_defconfig (gcc-8): 1 error, 1 warning
>>    workpad_defconfig (gcc-8): 1 error, 1 warning
>>    xway_defconfig (gcc-8): 1 error, 1 warning
>>=20
>> riscv:
>>    rv32_defconfig (gcc-8): 6 warnings
>>=20
>> x86_64:
>>    tinyconfig (gcc-8): 1 warning
>>=20
>> Errors summary:
>>=20
>>    80   mm/memory.c:1523:41: error: implicit declaration of function =E2=
=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werr=
or=3Dimplicit-function-declaration]
>>    3    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] und=
efined!
>>    2    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count =
>=3D width of type [-Werror=3Dshift-count-overflow]
>>    1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
>>    1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=
=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
>>    1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712=
_regmap_config=E2=80=99 has initializer but incomplete type
>>    1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of =
function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit=
-function-declaration]
>>    1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of =
function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>>    1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of =
function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>>    1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of=
 function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_=
init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>>    1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] und=
efined!
>>    1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] und=
efined!
>>=20
>> Warnings summary:
>>=20
>>    81   cc1: some warnings being treated as errors
>>    36   1 warning generated.
>>    14   drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: war=
ning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #defi=
ne of a different macro [-Wheader-guard]
>>    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>>    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>>    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>>    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>>    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>>    8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    6    2 warnings generated.
>>    4    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=
=E2=80=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-fun=
ction]
>>    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>>    2    fs/btrfs/backref.c:394:30: warning: suggest braces around initia=
lization of subobject [-Wmissing-braces]
>>    2    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest =
braces around initialization of subobject [-Wmissing-braces]
>>    2    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:=
80: warning: suggest braces around initialization of subobject [-Wmissing-b=
races]
>>    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>>    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>>    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented=
 [-Wcpp]
>>    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented=
 [-Wcpp]
>>    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemen=
ted [-Wcpp]
>>    2    3 warnings generated.
>>    1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in str=
uct initializer
>>    1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=
=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from i=
nteger without a cast [-Wint-conversion]
>>    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 by=
tes is larger than 1024 bytes [-Wframe-larger-than=3D]
>>    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
>>    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninit=
ialized when used within its own initialization [-Wuninitialized]
>>    1    mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is un=
initialized when used within its own initialization [-Wuninitialized]
>>    1    include/linux/kernel.h:47:25: warning: excess elements in struct=
 initializer
>>    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>>    1    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
>>    1    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>>    1    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>>    1    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>>    1    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>>    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialize=
d when used within its own initialization [-Wuninitialized]
>>    1    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>>    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>>    1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from p=
ointer to integer of different size [-Wpointer-to-int-cast]
>>    1    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q=
' is uninitialized when used within its own initialization [-Wuninitialized=
]
>>    1    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq'=
 is uninitialized when used within its own initialization [-Wuninitialized]
>>    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>>    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>>    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: va=
riable 'rate_idx' is used uninitialized whenever 'if' condition is false [-=
Wsometimes-uninitialized]
>>    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: v=
ariable 'rate_idx' is used uninitialized whenever 'if' condition is false [=
-Wsometimes-uninitialized]
>>    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: va=
riable 'rate_idx' is used uninitialized whenever 'if' condition is false [-=
Wsometimes-uninitialized]
>>    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: init=
ialize the variable 'rate_idx' to silence this warning
>>    1    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wak=
eup' is uninitialized when used within its own initialization [-Wuninitiali=
zed]
>>    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer t=
o integer of different size [-Wpointer-to-int-cast]
>>    1    drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning: su=
ggest braces around initialization of subobject [-Wmissing-braces]
>>    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wak=
e' is uninitialized when used within its own initialization [-Wuninitialize=
d]
>>    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wak=
e' is uninitialized when used within its own initialization [-Wuninitialize=
d]
>>    1    drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warnin=
g: address of array 'grp->sig_types' will always evaluate to 'true' [-Wpoin=
ter-bool-conversion]
>>    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is un=
initialized when used within its own initialization [-Wuninitialized]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: =
warning: address of 'pipe_ctx->stream_res' will always evaluate to 'true' [=
-Wpointer-bool-conversion]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: =
warning: address of 'pipe_ctx->plane_res' will always evaluate to 'true' [-=
Wpointer-bool-conversion]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:=
53: warning: suggest braces around initialization of subobject [-Wmissing-b=
races]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:3=
42:53: warning: suggest braces around initialization of subobject [-Wmissin=
g-braces]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:1=
16:62: warning: suggest braces around initialization of subobject [-Wmissin=
g-braces]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297=
:41: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
>>    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558=
:43: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
>>    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
>>    1    drivers/android/binderfs.c:657:41: warning: suggest braces aroun=
d initialization of subobject [-Wmissing-braces]
>>    1    cc1: all warnings being treated as errors
>>    1    /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictab=
le behaviour
>>    1    /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictab=
le behaviour
>>    1    .config:1167:warning: override: UNWINDER_GUESS changes choice st=
ate
>>=20
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>>=20
>> Detailed per-defconfig build reports:
>>=20
>> ------------------------------------------------------------------------=
--------
>> 32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> 32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warn=
ing, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 secti=
on mismatches
>>=20
>> Warnings:
>>    /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictable be=
haviour
>>    /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictable be=
haviour
>>    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to int=
eger of different size [-Wpointer-to-int-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>>    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from pointe=
r to integer of different size [-Wpointer-to-int-cast]
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 81 warnings, 0 s=
ection mismatches
>>=20
>> Warnings:
>>    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>>    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>>    2 warnings generated.
>>    drivers/android/binderfs.c:657:41: warning: suggest braces around ini=
tialization of subobject [-Wmissing-braces]
>>    1 warning generated.
>>    drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning: ad=
dress of array 'grp->sig_types' will always evaluate to 'true' [-Wpointer-b=
ool-conversion]
>>    1 warning generated.
>>    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    fs/btrfs/backref.c:394:30: warning: suggest braces around initializat=
ion of subobject [-Wmissing-braces]
>>    1 warning generated.
>>    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when use=
d within its own initialization [-Wuninitialized]
>>    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
>>    2 warnings generated.
>>    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest brace=
s around initialization of subobject [-Wmissing-braces]
>>    1 warning generated.
>>    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>>    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>>    2 warnings generated.
>>    drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning: suggest=
 braces around initialization of subobject [-Wmissing-braces]
>>    1 warning generated.
>>    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeup' =
is uninitialized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: variabl=
e 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsome=
times-uninitialized]
>>    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: variab=
le 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsom=
etimes-uninitialized]
>>    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: variabl=
e 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsome=
times-uninitialized]
>>    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initializ=
e the variable 'rate_idx' to silence this warning
>>    3 warnings generated.
>>    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>>    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>>    2 warnings generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' is =
uninitialized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' is u=
ninitialized when used within its own initialization [-Wuninitialized]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558:43: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
>>    2 warnings generated.
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
>>    1 warning generated.
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: warni=
ng: address of 'pipe_ctx->plane_res' will always evaluate to 'true' [-Wpoin=
ter-bool-conversion]
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: warni=
ng: address of 'pipe_ctx->stream_res' will always evaluate to 'true' [-Wpoi=
nter-bool-conversion]
>>    2 warnings generated.
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:53: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]
>>    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]
>>    3 warnings generated.
>>=20
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> axs103_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 se=
ction mismatches
>>=20
>> Errors:
>>    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefine=
d!
>>=20
>> Warnings:
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>=20
>> ------------------------------------------------------------------------=
--------
>> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sect=
ion mismatches
>>=20
>> Warnings:
>>    fs/btrfs/backref.c:394:30: warning: suggest braces around initializat=
ion of subobject [-Wmissing-braces]
>>    1 warning generated.
>>    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest brace=
s around initialization of subobject [-Wmissing-braces]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>>    1 warning generated.
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>>=20
>> Warnings:
>>    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 err=
ors, 1 warning, 0 section mismatches
>>=20
>> Warnings:
>>    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 err=
ors, 1 warning, 0 section mismatches
>>=20
>> Warnings:
>>    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>>=20
>> Warnings:
>>    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>>=20
>> ------------------------------------------------------------------------=
--------
>> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 se=
ction mismatches
>>=20
>> Errors:
>>    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefine=
d!
>>=20
>> Warnings:
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>=20
>> ------------------------------------------------------------------------=
--------
>> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 12 warning=
s, 0 section mismatches
>>=20
>> Errors:
>>    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of funct=
ion =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-func=
tion-declaration]
>>    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_regm=
ap_config=E2=80=99 has initializer but incomplete type
>>    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
>>    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
>>    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
>>    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
>>    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
>>    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
>>    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
>>    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
>>    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of func=
tion =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_init_=
zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>>    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of funct=
ion =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=98=
snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaratio=
n]
>>    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of funct=
ion =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=98=
snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaratio=
n]
>>    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98wm97=
12_regmap_config=E2=80=99 isn=E2=80=99t known
>>=20
>> Warnings:
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struct i=
nitializer
>>    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struct i=
nitializer
>>    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struct i=
nitializer
>>    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struct i=
nitializer
>>    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struct i=
nitializer
>>    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struct i=
nitializer
>>    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struct i=
nitializer
>>    include/linux/kernel.h:47:25: warning: excess elements in struct init=
ializer
>>    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98str=
uct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from integer=
 without a cast [-Wint-conversion]
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> haps_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 =
warning, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> hsdk_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 2 warnings, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D =
width of type [-Werror=3Dshift-count-overflow]
>>    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D =
width of type [-Werror=3Dshift-count-overflow]
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: all warnings being treated as errors
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> ip28_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS=
, 0 errors, 4 warnings, 0 section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=
=80=94 PASS, 0 errors, 4 warnings, 0 section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors,=
 4 warnings, 0 section mismatches
>>=20
>> Warnings:
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 wa=
rnings, 0 section mismatches
>>=20
>> Warnings:
>>    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes i=
s larger than 1024 bytes [-Wframe-larger-than=3D]
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>>    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>>=20
>> ------------------------------------------------------------------------=
--------
>> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 6 warnings, 0 secti=
on mismatches
>>=20
>> Errors:
>>    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] undefine=
d!
>>    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefine=
d!
>>    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] undefine=
d!
>>=20
>> Warnings:
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>>=20
>> ------------------------------------------------------------------------=
--------
>> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 se=
ction mismatches
>>=20
>> Warnings:
>>    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>>    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>>    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>>    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>>    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>>    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>>=20
>> ------------------------------------------------------------------------=
--------
>> s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mi=
smatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>>=20
>> Warnings:
>>    .config:1167:warning: override: UNWINDER_GUESS changes choice state
>>=20
>> ------------------------------------------------------------------------=
--------
>> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 w=
arnings, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 w=
arnings, 0 section mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>>=20
>> Errors:
>>    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>>=20
>> Warnings:
>>    cc1: some warnings being treated as errors
>>=20
>> ------------------------------------------------------------------------=
--------
>> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>>=20
>> ------------------------------------------------------------------------=
--------
>> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>>=20
>> ---
>> For more info write to <info@kernelci.org>
>>=20
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/5e57d0a2.1c69fb81.b44cf.2a50%40mx.google.com.
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Groups.io Links: You receive all messages sent to this group.
>=20
> View/Reply Online (#665): https://groups.io/g/kernelci/message/665
> Mute This Topic: https://groups.io/mt/71593531/924700
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub  [broonie@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/A4CCC82C-D56D-4387-9343-3C24F23922BB%40gmail.com.
