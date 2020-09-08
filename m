Return-Path: <clang-built-linux+bncBDZMNZPOQUERBRXJ3X5AKGQEPWQEUTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D69726111B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 14:10:48 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id 8sf7492068pgm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 05:10:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599567047; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmF8aNM5v2iPdV8sbG/cJt5KNPFkrFYFnoEoenxEnJUojMZmp0bn7nOT2gmI2utRwE
         eE3tytYRkAW2vY11XGv7MMRhzt75uSWt/wHYDm0DK8e9r8kJDiyXyWX4B+EPXAq3VvDV
         fBbglY2QXg923g1yrUSV3FS/We4FOmW2uv9kg/8OlkhM9gSGqxA8Y4Jl3+6NP2dzGyU7
         6GHnZ0qDnwSOgqdJvG3H5sL8NJJTd0TJzhz14hFzvCzvZQ/nS6Q9Vmy+DStLMPMWNOXD
         bAaeczakhUvgcNFtsuLzV8WBIJqq1Xxmpt/t89bWCIaYG3eMUr791nfDIYli5yh4Egk1
         8Wjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=1nOilE/jnmE8+wjBZ7+isC1c6PPpz7x9W4ZhBlZ0qNs=;
        b=uQYEkVHpRBpXwdLMCF6PZMIQzzUkkA14rkuT9kvvZ/6lM+Qg7V805iiSv8OlZyB1jv
         ZC5ONcKuecEsVSD2AdFuH1c7npSFu+MvCoF7VogaXn4MwAozCmGdfUhy/ZrW1Ltm+eVV
         X/PdIHLqfFefUrg/gn5YE2pv9VlH3aX67V2M0dqznYUJf2mggEP9WVDN8YPs+BtYo/3V
         8+mqtHxZNhsrgy62UTA5fukj30VGTG5Hx8/Nia1f3AbM8YaEloGq1rCIMMr59IDsuy3i
         2w2FglqU7s9fZrjCIBOdFnjT/a40/LGjXQAh6nrOEb7y9hVfW20vTf1DkEMTd+lFctGz
         gTPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cw3C0twX;
       spf=pass (google.com: domain of jthierry@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nOilE/jnmE8+wjBZ7+isC1c6PPpz7x9W4ZhBlZ0qNs=;
        b=S8Yljj9ubO6CQEPm0TONMN7TfX1uyXnnRDKAWxi7enWTDERdKwLbRV+gCK6qHA+DLn
         FgyCubndv2MM1hJWuT3nSyHGbTjFJmm28TmC79s2xODkemnTlx3VAVJtX5wrP9J5DZaD
         fehD4FjL3vdVnBqgu2pwLG7gOCTfcmnmDDapQhoifieVWLzfWlyMjdFYrRAHQFmgD5Tg
         Pmmbcb+XpUv+KpVL6u9/glS7VBtmQsBJHDVDIShHOdbm8U+mS29agEdfAqJdvM0UxuSI
         UrRl4EKlo7zc13CKmF6ztP3kIYJ9x1QDDkx5iussGvLgfnfGTJ4i4N/XZaNFZQQWV08U
         6k7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nOilE/jnmE8+wjBZ7+isC1c6PPpz7x9W4ZhBlZ0qNs=;
        b=gG5dbNxqvTkGoXm6w+L3IRcXtKabTPnRrqxqU3q6H/0r7e2FLdyZJ8B6z04X3GWXTF
         RoixW0GC7ndZCo3hzrpXDN7KIO5v0aTa4UvWp+s9e++BLcyM2J02VrM3RYVzbho8gjzs
         Bd9aXJn0Urxn999srOWYcxmvamV69JuBZr7AE4wkmfFACMxzu3HGb/ViFWaty9p/RBZN
         9KR6D62s0sMw59GNDVf+/DHSSjW/KkswH/0RoLvdA2Me5cfMm5psBg0RL55m057lmvG7
         AAqbuIrRNh+VTZYJ0F0i31jbayCoDyUkXmKgwh0AJ5JMfT/H0nPFq1JHHYW7D4h8ZoUE
         /6HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qA4Llpg1rZDDpX8dL15A7M4flZ66xLPsz0ORsHuQMhYdzI3P/
	mpM5CSZpBRWxwp+jPK9Gj2M=
X-Google-Smtp-Source: ABdhPJw1SMt7r4h0tfoXxql9gMvUohFAFwIFNP5Rd6YF0Y32hGdlDkXrxhhxwghUXGALvhkXU8JSnw==
X-Received: by 2002:a17:90a:4005:: with SMTP id u5mr3553632pjc.7.1599567046894;
        Tue, 08 Sep 2020 05:10:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls9379879plb.9.gmail; Tue, 08
 Sep 2020 05:10:46 -0700 (PDT)
X-Received: by 2002:a17:90a:ee0d:: with SMTP id e13mr3874536pjy.227.1599567046253;
        Tue, 08 Sep 2020 05:10:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599567046; cv=none;
        d=google.com; s=arc-20160816;
        b=mNhrc25qniLCtJktRXIK83B84iqSlT0bYVdjh8H1Uwa5DYxbjD1B73VfoPAss7xRCw
         P3Pm9AabDG9u/gH7dlH0vZxjmzholgty9hq5ONpHff1JwQEpbq4QdVZ0R8cO4Z8Bbmo5
         gGllMrs2z1HzOo6avdBNZgCCMukBAsnVvYxAcg+cePdGg06wOUEY1anvtZ1g23wmpxY2
         PTq7EiPxt0sVLejPdPVAn0WTqNspREM5dQRAoT/pQDd8+wiz+uiV//Tgia0sxabug0As
         5rHv+uPH9KUA/Gm62z44ttqu7DHHdPLZ78EDJ+imTpSy+dkkjINJLFAsMgD66s2M+WK6
         /lsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=DQVgtqEYENWLVHMGkmxEB3EpdFLd5bj4Js9aaiLsWsU=;
        b=aFThTaMDxS9ZX3z49sNVoE5NeySUQEbp2osR7RZz8pAWC8z486IwjfUvP1kfVw7Yr1
         SUPDcmXpYv5+2HmDBLPj+UaEvPAIs7Mrex+uM7zK8jM+bQiXZbPMNdQ1VryvnjvflzYt
         CF78DuX4xaqvWA8GgguRaQt0jkImdcUBIQB4rV1MAc9eegxSY05xkjf9z5cr4ecythJd
         lUgVnFkh8iL9E+ON9qUJRK1fnpIzc7qzZ4dcT25OAy1VsGycBH0XlLs4UJBfiUwoWiUE
         eFRSfQDw5z5tNvyErY/wwLFhuxMHBSrn7Lw3Lr5800XVAR0VhkW1qY0YddLYOWFYx/Dv
         JbsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cw3C0twX;
       spf=pass (google.com: domain of jthierry@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id w136si661013pff.3.2020.09.08.05.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 05:10:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-bDQ-Y7mmP8C85oz5QMeiSQ-1; Tue, 08 Sep 2020 08:10:41 -0400
X-MC-Unique: bDQ-Y7mmP8C85oz5QMeiSQ-1
Received: by mail-wr1-f70.google.com with SMTP id r16so6868233wrm.18
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 05:10:41 -0700 (PDT)
X-Received: by 2002:a1c:a784:: with SMTP id q126mr4006262wme.38.1599567040505;
        Tue, 08 Sep 2020 05:10:40 -0700 (PDT)
X-Received: by 2002:a1c:a784:: with SMTP id q126mr4006243wme.38.1599567040291;
        Tue, 08 Sep 2020 05:10:40 -0700 (PDT)
Received: from ?IPv6:2a01:cb14:499:3d00:cd47:f651:9d80:157a? ([2a01:cb14:499:3d00:cd47:f651:9d80:157a])
        by smtp.gmail.com with ESMTPSA id u126sm40194628wmu.9.2020.09.08.05.10.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 05:10:39 -0700 (PDT)
Subject: Re: [kbuild-all] Re: [jpoimboe:objtool/core.WIP.julien 5/14]
 ./sync-check.sh: 54: ./sync-check.sh: Syntax error: redirection unexpected
From: Julien Thierry <jthierry@redhat.com>
To: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Miroslav Benes <mbenes@suse.cz>, Josh Poimboeuf <jpoimboe@redhat.com>
References: <202009050512.VSnsZ4vs%lkp@intel.com>
 <89e8b630-b4c7-cb6d-94ad-d954a83c0c0e@redhat.com>
 <cf66ced6-c102-6591-9edf-9bc56cd05393@intel.com>
 <e3c528d6-fe58-e1e9-fb99-044e73715671@redhat.com>
Message-ID: <7e9c24a3-05ec-e3d6-5c8b-6e668537726a@redhat.com>
Date: Tue, 8 Sep 2020 13:10:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <e3c528d6-fe58-e1e9-fb99-044e73715671@redhat.com>
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cw3C0twX;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
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



On 9/8/20 9:09 AM, Julien Thierry wrote:
> Hi Rong,
>=20
> On 9/8/20 8:11 AM, Rong Chen wrote:
>>
>>
>> On 9/7/20 4:42 PM, Julien Thierry wrote:
>>>
>>>
>>> On 9/4/20 10:58 PM, kernel test robot wrote:
>>>> tree:=20
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git=20
>>>> objtool/core.WIP.julien
>>>> head:=C2=A0=C2=A0 bc5b275638c5e74126aeb8ae394f2b784a8346bf
>>>> commit: bbfd86269d713a8f26fd4c90b6b7b90a5967e1fb [5/14] objtool:=20
>>>> Group headers to check in a single list
>>>> config: x86_64-randconfig-a006-20200904 (attached as .config)
>>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project=
=20
>>>> 1284dc34abd11ce4275ad21c0470ad8c679b59b7)
>>>> reproduce (this is a W=3D1 build):
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>>>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cro=
ss=20
>>>> -O ~/bin/make.cross
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.c=
ross
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install x86_64 cros=
s compiling tool for clang build
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install bin=
utils-x86-64-linux-gnu
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout bbfd8626=
9d713a8f26fd4c90b6b7b90a5967e1fb
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .=
config to linux build tree
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>>>> ARCH=3Dx86_64
>>>>
>>>
>>> I've tried reproducing this localy on fedora 30. I don't observe the=20
>>> error, on the same branch.
>>>
>>> Any suggestions on what the issue might be?
>>
>> Hi Julien,
>>
>> The issue can be reproduced if /bin/sh isn't linked to bash,
>>
>=20
> Oh, thanks for pointer, very much appreciated.
>=20
> Josh, seeing that the changes also rely on bash arrays, would it be=20
> acceptable to replace the interpreter of tools/objtool/sync_check.sh to=
=20
> /bin/bash ? (I see some scripts under scripts/ use it).
>=20

Acutally I got confused, there are no bash arrays and making it SUS=20
compliant isn't too much of a hassle.

@Josh, shall I resend the patches? With the other changes you suggested=20
in v3?

--=20
Julien Thierry

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7e9c24a3-05ec-e3d6-5c8b-6e668537726a%40redhat.com.
