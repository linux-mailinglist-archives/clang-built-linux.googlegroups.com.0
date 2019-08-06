Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSEPVDVAKGQE6RHC75Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D8E83D9B
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 01:05:45 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id a11sf22539121vso.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 16:05:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565132744; cv=pass;
        d=google.com; s=arc-20160816;
        b=O0nnwudZN8VOpC9jbC8AtiMzsNfLIghJre5Ae39JJl6E4Odou/4EtUdSdMqC3LS0YH
         HL1QGoZv7IeTwjvMifEoqQXJ6o/j69MTUMcEEArVGd88GcobzIhoS9S4NYkawxc9kvdt
         NUF14JB3JxTIaQc1soll6h5xoV+EsL2Z954acNL/8VObEbSy8LsyIPkY/8pquZyxjBiR
         t/rN/zMQ1VLHw0BPrWLcU1k7AMjBN4uFNsJJrWqXevx4VMXvsP8jRkGyoGbrrwDf8QPx
         wS8G+JJtkMFbMCfjd6E+mK70i6aLdvu6WYgx5bcZX/qqYwIr9eWxzLD0E2D+0NRu8bYA
         ZGpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VTU9eU5fyMPCU6VZcWz58E84ABUlu6FC3Q/S3xADdWo=;
        b=gs3s6ncXBlzMYdeDYrIVyyrf+mKndXAxf89iV6XYV7as4838haJc8MafI4PihpneVE
         5et2dGsPoz1hKBKd9+JdoOyJNbToAcijfHwZSN6LXJjDw3LpyGniXfr6E00/x77mHT+o
         zOzlgyrxLZy+rfDUB64q2NdsPxlrxhAqMIF02IxgHgcqMmKq2eTlbumgqd7EpTAdawA7
         NY0sZsPWZDTKsDYqC7Q3xtjWRvbw+jl5IHqJ0vVmOnEEuF2dhlWSta4G8gregjztAW75
         CUH/7d3AwHP5rs94tPWB/jeLXqzImf8Y0mZoCrzV8ryLT/nS10dGx4MDDavp5p7LFC8O
         a5ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u2MBXvQ4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VTU9eU5fyMPCU6VZcWz58E84ABUlu6FC3Q/S3xADdWo=;
        b=W7d1nIQ+UeKoTiQRDzq9VUaQZ74HsviVi/6MOi59P3L1+BFwlVR0mTj4lviiqEGlJs
         lP7ree3WdiCKFgtLJp4rm+unmvrFgLv3LfwTLDDd6v5hZ1XHC8vGfCeCNqB6f4eV1SuT
         r2oj46UnF8XdEe1+Joo6wsTbfiZk+mDzhARaANmYq2cSwtSPU7m1rj+u31GRYid17klm
         27NAtpM/RdJukiRuEF96cehz2yoPK2rE9ACiNT4RGovFHbL+Ukkc6UW4aqADLtRKLCrh
         9664MvDNaai1ScaEymKZo895T0E2oKg9P2RIQ6AkjiYljShd+ZSI6jVOEf+PzUAnQXr1
         ZEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VTU9eU5fyMPCU6VZcWz58E84ABUlu6FC3Q/S3xADdWo=;
        b=HQ1yPEkJ450HTjvYsY86YsOAeg6gHIbaMjCryimHMqqJ1PeQ20+xso+TVSazQ2I8d9
         mg+sLjuE3WTJ67B0b8su6IDNHwhSsZcYWaJyysPLsWs+EECYFyoE6jbraWP2CCp2jVfQ
         PviyDT1AllQpex28qPnmVPDKoZP1Ez/RCwnxejEP2xekkyhJf65YBSFzAoJ6yyZ2RfdD
         O5hbkwdpYfXFLaJMQVzu6bgRS1tKhjioxeONKo0YpBiH2zBXD/NAs61xn6+LBHTBkqRR
         /eCzy8zC5a7+18MVBO1Yy45ssgjNs+P89BZvnP2pzjHe47v9POXEz/zcPavrev2mDo+x
         D/dg==
X-Gm-Message-State: APjAAAU35u0eKEHquaLnSAnlQ4qB7NzzQwkQUqCxqcYjgE7VMbnoDFfV
	28Gge063CJggqs279QVutF4=
X-Google-Smtp-Source: APXvYqxNqY0Cyc7GahoRC/MZqipuj3vVptR9aNTzGiD2asFCcsD+q8JHYfQvYC8RkwAd12OVsI+uug==
X-Received: by 2002:a67:cfc2:: with SMTP id h2mr4024739vsm.30.1565132744070;
        Tue, 06 Aug 2019 16:05:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3ca:: with SMTP id n10ls11224189vsq.4.gmail; Tue,
 06 Aug 2019 16:05:43 -0700 (PDT)
X-Received: by 2002:a67:ee98:: with SMTP id n24mr3963135vsp.92.1565132743828;
        Tue, 06 Aug 2019 16:05:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565132743; cv=none;
        d=google.com; s=arc-20160816;
        b=pzvIOosAb/67wT7KwzlNZSe8lUGnIG9Vg4tUpJiCdrmirqH9Ms3S8Yc/SLXqK9hEnj
         gufVrzeScFwetfvYhlC47VRiOv9NGMZUCv71qgE0jVUAun/XNMLzlzs1IdL6bfJqkFp4
         4DiNmQ5Ce3Xub91tzmkGuzAkEsaayTqXp3WlQiSWNh0wPibWOCYyNI/DeyRuV8rQlm2D
         /nkwuB9SLg1lO9NvEZovve4Vdz0DiW8gD1LEv9p3V3/SYepohu0NPplQIwrTRexe3svc
         DTJpt1DkmGhJs2GPtWz6+R+c/PeTHab8Wz8UZFM81/wPaD+/sfr5Ec5AHuufqINq8ajU
         gUNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KG1xaVc7noi60bfFDfRm4IVvY7W++nJb0VKGEXiJZBM=;
        b=mT0NdnzrbNa9KtGWjV/XX0bTkA9Zc1KrPJ3N2AHC0s5OBs3Km0ZjEFjdJexqsmpW2Z
         ccVEMperv3eRe8umSaDLB0qR+ZAx8wE08BhcPKOjdEgv/lsMqp14QtR2c+2OLwSVFzVV
         JvpPZrx3M9qtNkKtyqYoPVpwrNSSRhaTG5y0jvxLgh8PfwZhL9lqUXXLTpmo0FYjvVX5
         xkj3RKOunJmbVwP3VtwR9I9yHQrdZLOtOrvXuihv8QicF315sDtrrQK5++hVYruOm7rr
         eTvDkZIvKIhH8Atr9hovV+D8VKuI1bujGLoSzX7U2HlsFFgtBJXE6poc//oUZx2mGhmY
         JBZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u2MBXvQ4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id b15si3337016uap.1.2019.08.06.16.05.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 16:05:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id q10so42305722pff.9
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 16:05:43 -0700 (PDT)
X-Received: by 2002:a62:cec4:: with SMTP id y187mr6133039pfg.84.1565132743079;
 Tue, 06 Aug 2019 16:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <5d49438b.1c69fb81.872bd.e4a0@mx.google.com>
In-Reply-To: <5d49438b.1c69fb81.872bd.e4a0@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 16:05:31 -0700
Message-ID: <CAKwvOd=1vghd1OUjpG0Ty=3o+Ac6kHa63WgOH9iSexpQ52LX6Q@mail.gmail.com>
Subject: Re: next/master build: 230 builds: 5 failed, 225 passed, 5 errors,
 1230 warnings (next-20190806)
To: "kernelci.org bot" <bot@kernelci.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u2MBXvQ4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

On Tue, Aug 6, 2019 at 2:08 AM kernelci.org bot <bot@kernelci.org> wrote:


> allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 49 warnings, 0 se=
ction mismatches
>
> Warnings:
>     mm/shmem.c:2734:35: warning: variable 'shmem_falloc_waitq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/namei.c:1646:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     fs/namei.c:3136:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     mm/memcontrol.c:1160:17: warning: using the result of an assignment a=
s a condition without parentheses [-Wparentheses]
>     mm/memcontrol.c:1160:17: note: place parentheses around the assignmen=
t to silence this warning
>     1 warning generated.

https://github.com/ClangBuiltLinux/linux/issues/629

>     fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when use=
d within its own initialization [-Wuninitialized]
>     fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1346:4: warnin=
g: variable 'asic_default_power_limit' is used uninitialized whenever '?:' =
condition is false [-Wsometimes-uninitialized]
>     drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1329:35: note:=
 initialize the variable 'asic_default_power_limit' to silence this warning
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1561:4: warning:=
 variable 'asic_default_power_limit' is used uninitialized whenever '?:' co=
ndition is false [-Wsometimes-uninitialized]
>     drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1544:35: note: i=
nitialize the variable 'asic_default_power_limit' to silence this warning
>     1 warning generated.

https://github.com/ClangBuiltLinux/linux/issues/627

>     drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused var=
iable 'r' [-Wunused-variable]
>     1 warning generated.

https://github.com/ClangBuiltLinux/linux/issues/630

>     net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeup' =
is uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/scsi/lpfc/lpfc_sli.c:11850:34: warning: variable 'done_q' is =
uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/scsi/lpfc/lpfc_scsi.c:4559:34: warning: variable 'waitq' is u=
ninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D1vghd1OUjpG0Ty%3D3o%2BAc6kHa63WgOH9iSexpQ52LX6Q=
%40mail.gmail.com.
