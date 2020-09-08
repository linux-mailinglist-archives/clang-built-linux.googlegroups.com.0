Return-Path: <clang-built-linux+bncBDZMNZPOQUERBW7Y3T5AKGQETT6DMTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1370D260D17
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 10:10:05 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id e12sf9985810pfm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 01:10:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599552603; cv=pass;
        d=google.com; s=arc-20160816;
        b=MdiYamLskQPQEG9XWAM1nTh8qD8RvFKJRjXkFdmqhiSLYGRjiZCZY5yGYR85H0hdVE
         bzNtKDM3mmq6j+QjS7rspyM6d51W7814v6A7OU2uNIyWLaefCcvN3O45wsfRevpVIWe0
         BT0QC1rHL6im9/XTKjPRqotPJC5zrnZ3PvqKuPY5fQf1MM5+HFZu7jbdDBkmTylUK4KZ
         e13xmn1bQo+jvRbJgep+1oHRYm8qBxmU5YOC5vrfcaHKRYYdBDaR5x9lMOnPXuDDoMQh
         ZOlmemKi7ihQEdH0z0ZNsVINd7VSQcF3k2k80Ll9ty9PbHCuC2gO2ekp7fDNKUMGxsQl
         /fkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=AVXiKdsLpuAPwGq5SP1BvM4nH3rsjfNk/uYWE/R2PCo=;
        b=XLWjFNZS/Oj5CyLWvs9gtwOT0eLMdWPxBSptLYqKt3sBCi/f6goIKGoJ5xmvFwdoJO
         aXs9gl4Y9UCGILuCfzMWTWtALPnyUKcm8sMw3iQ/S4TkTizdA3hmJR+hwIt3jCclEbsD
         RilZUOnPaB5O+sQoPys0PqhzTKzN+lndd9+k408S2KZQZhPcedS34vc/khDPPWwmwE7h
         GGvv+jskb0IQAsS1YzLa3YnCBZ8auD2DigGLJcGiOps6AxQ3iRm1/RhTFjn0AuGt2nP7
         Qw09y+MaJ0Onkt0ii5Tq4LMVUOVJ74tmDkj0dW6nz6JSjBHzpnfmsNdMvcJeyNMV4sHw
         V6AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GuTInHYB;
       spf=pass (google.com: domain of jthierry@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AVXiKdsLpuAPwGq5SP1BvM4nH3rsjfNk/uYWE/R2PCo=;
        b=Rvc63WtO2OQSmxbo6Ti6+/qs+TARKuXDvmPF4bLnhKlxRqjm1tLJvsMM00GikWnGks
         Mzci49nw+bM3IrZEC5Ra0Ldx2qKbmVksLmlYe4a7S4dJ4TkMVD/yOkWrbPGul5fWVwnS
         WigGC1SDJWD8in8TZPsjwxiDkouO3WrTVDs8VRxU6UPhpszF+FtdDbpIeJabVcPlXHFw
         L3JO54LRTTC0omv17xMIs1TtSn65q72I3QV289hSnXCzzqll70j4krwlOjmrZYNJE3dQ
         q9DN1fJGL4c08xLLP36Zo7mii2Qh9NQzFQk2lr23SqGk5hg32JZFBvVv7slO6TbSVbtl
         MubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AVXiKdsLpuAPwGq5SP1BvM4nH3rsjfNk/uYWE/R2PCo=;
        b=LX+n3WqaBFTvuCJm2cCmesQEwZjpL1WM+bEMYFahpkJtdtx0F21B0etNnwTxbPEwAd
         4+1BrzSPheUYfekOijR0lY70kxMHp90GTDNCPXoEuV8HY79jHH42op+PsnrhOokNd6Tr
         feXO2xqvzaVGHXlJx9S2MO0XKSOc98gvXGq5FtZ5dvAVUlZmsPdxAN43kPhs1XcDZypD
         hCIU6Gs6O41tWCHzwQT93CQzio1RxeQMIRXicWDhPrIDiAnN95Ho7/Kyb4jBGSfNy/CX
         nhr/Jl5PX3Yqu9CYaGYl+o0DlDgfyt5W7TPQgofA9EmcyGmL90tuodOFiog0V1LeV/zr
         Dynw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VenBqvuTmellQDKdK6xTeoi30m2XYlUL6hjWg6Cw93ADvUHgs
	6Z1n9ZUpqyPkdHVXtmKJJvY=
X-Google-Smtp-Source: ABdhPJwiGzoiP9WosT6GRXaQo7Gc7LswZ7ajovCRwy5/ZKg9ksTbtZHxy6//+8bApbE9AjiFgahRig==
X-Received: by 2002:a17:902:b610:: with SMTP id b16mr21308864pls.104.1599552603738;
        Tue, 08 Sep 2020 01:10:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls932029pjb.0.canary-gmail;
 Tue, 08 Sep 2020 01:10:03 -0700 (PDT)
X-Received: by 2002:a17:902:7203:b029:d0:cbe1:e76c with SMTP id ba3-20020a1709027203b02900d0cbe1e76cmr89484plb.19.1599552603218;
        Tue, 08 Sep 2020 01:10:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599552603; cv=none;
        d=google.com; s=arc-20160816;
        b=wrQbhkcS6pKOIbmqQSQbKnI5v0LJ94OgKfFIVGcSP8ke1oKwm6SglwS23x8n53D4ny
         CPIRHJybDXAJJAFyNRXOtDv6mn/Jbskrv7ZhsdfETkn58kdlC40CWddBaJ/z58y6OORm
         4/p7PCjD2S/0m4YTrNE/7fX5NOZ41Luouxh/d59lnLgvHQH+5cvB/q/aERT05rgYNqF1
         H97rYXFBpJVzixfGcl9PhsSIdH6W9OxXl+kH/i1IDJOxCQL/bVkFDbkAevJnfAHsO6eA
         vdrEI8oBLLRneV9Mc2N8WI3Bn4y4ZAC+fJEFnss4zYUA//hYzMLGRKI62NfD0hBfdyWU
         J6lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=J/fudrdv6zM//qYjNDwUhyLcoDuyaQp/xM0zzKt3yBg=;
        b=d4pWRZe2rRUWK/GhBkB9RtHEr9hNHt+BEE3r+a1P7ia3O7EdFDXHHdZAuClLgxIWGQ
         U9GJ3Lf7UmYLZha7vrGuJcxg+lCjE8CDWZTxQmRgUSx+VDuYjGUCyC+GqcMufjGO0tZQ
         1wQUPmuU5lnkPAPGFBN1rmdqNGQfuApzd2erU07ni1bHwfxRkVacn3Ny0QB9NKBZuWZm
         o9bEVIfkmqJzT7v5FBkGF26yzhl/jF6kq2d04SnLPebWaSv+C9OBLFqEl70QAEVgtiTe
         Oxp5T2cN0N3B/ulIWSolKPRSns17YLvZsPRCji1uopI+M26SaRSDPT1e+6agRWAh6Ozw
         yb3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GuTInHYB;
       spf=pass (google.com: domain of jthierry@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id o185si1092041pfg.4.2020.09.08.01.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 01:10:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-542-sf9eJjDsPf6BxCvQWKSIKg-1; Tue, 08 Sep 2020 04:09:58 -0400
X-MC-Unique: sf9eJjDsPf6BxCvQWKSIKg-1
Received: by mail-wr1-f72.google.com with SMTP id 33so6709143wre.0
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 01:09:58 -0700 (PDT)
X-Received: by 2002:adf:c44d:: with SMTP id a13mr23822777wrg.11.1599552597210;
        Tue, 08 Sep 2020 01:09:57 -0700 (PDT)
X-Received: by 2002:adf:c44d:: with SMTP id a13mr23822762wrg.11.1599552597043;
        Tue, 08 Sep 2020 01:09:57 -0700 (PDT)
Received: from ?IPv6:2a01:cb14:499:3d00:cd47:f651:9d80:157a? ([2a01:cb14:499:3d00:cd47:f651:9d80:157a])
        by smtp.gmail.com with ESMTPSA id m125sm33124885wme.35.2020.09.08.01.09.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 01:09:56 -0700 (PDT)
Subject: Re: [kbuild-all] Re: [jpoimboe:objtool/core.WIP.julien 5/14]
 ./sync-check.sh: 54: ./sync-check.sh: Syntax error: redirection unexpected
To: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Miroslav Benes <mbenes@suse.cz>, Josh Poimboeuf <jpoimboe@redhat.com>
References: <202009050512.VSnsZ4vs%lkp@intel.com>
 <89e8b630-b4c7-cb6d-94ad-d954a83c0c0e@redhat.com>
 <cf66ced6-c102-6591-9edf-9bc56cd05393@intel.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <e3c528d6-fe58-e1e9-fb99-044e73715671@redhat.com>
Date: Tue, 8 Sep 2020 09:09:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <cf66ced6-c102-6591-9edf-9bc56cd05393@intel.com>
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GuTInHYB;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
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

Hi Rong,

On 9/8/20 8:11 AM, Rong Chen wrote:
>=20
>=20
> On 9/7/20 4:42 PM, Julien Thierry wrote:
>>
>>
>> On 9/4/20 10:58 PM, kernel test robot wrote:
>>> tree:=20
>>> https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git=20
>>> objtool/core.WIP.julien
>>> head:=C2=A0=C2=A0 bc5b275638c5e74126aeb8ae394f2b784a8346bf
>>> commit: bbfd86269d713a8f26fd4c90b6b7b90a5967e1fb [5/14] objtool:=20
>>> Group headers to check in a single list
>>> config: x86_64-randconfig-a006-20200904 (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project=20
>>> 1284dc34abd11ce4275ad21c0470ad8c679b59b7)
>>> reproduce (this is a W=3D1 build):
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cros=
s=20
>>> -O ~/bin/make.cross
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cr=
oss
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install x86_64 cross=
 compiling tool for clang build
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binu=
tils-x86-64-linux-gnu
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout bbfd86269=
d713a8f26fd4c90b6b7b90a5967e1fb
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .c=
onfig to linux build tree
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>>> ARCH=3Dx86_64
>>>
>>
>> I've tried reproducing this localy on fedora 30. I don't observe the=20
>> error, on the same branch.
>>
>> Any suggestions on what the issue might be?
>=20
> Hi Julien,
>=20
> The issue can be reproduced if /bin/sh isn't linked to bash,
>=20

Oh, thanks for pointer, very much appreciated.

Josh, seeing that the changes also rely on bash arrays, would it be=20
acceptable to replace the interpreter of tools/objtool/sync_check.sh to=20
/bin/bash ? (I see some scripts under scripts/ use it).

If that's not an option, I'll rework the patch to comply with the SUS.

Thanks,

--=20
Julien Thierry

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e3c528d6-fe58-e1e9-fb99-044e73715671%40redhat.com.
