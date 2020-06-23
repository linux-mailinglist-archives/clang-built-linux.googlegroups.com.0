Return-Path: <clang-built-linux+bncBD26TVH6RINBBMHCY33QKGQEBC2E4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E65E204B50
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 09:37:21 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id z23sf1882740ote.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:37:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592897840; cv=pass;
        d=google.com; s=arc-20160816;
        b=gs5WA6qCpbHrB8jEL8q3wqupgbTxLt2rRyynNcrQ2oj2nTBYb+GVmGn+ik460WT60n
         vx8YXsz20ydnjMfnHvauXJJpJxTeW3lp7F8NiazcUJtbL0sSd7g8qqMV7GV1QWQqs+4z
         gxhPac8l7iAc+d8ifsz8awgDrfMwjYX29Ypqf666LZVaAeRm5SfODs8yAA7IEPGi6A80
         iOYChEK9QE3m48RENk/kMJVHPOr9sTwHKWZ/yjxMPBRv+HZ6//oXXEHppKdddKRuOBFK
         +6ttTPSItNQb5CGswAaGIRNOZOBlJ37PkLS6R2IB0nqAyd3CzMW4FOej6nFRlaD7wtZQ
         4xPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=xreytFI3d5qwLGzyijOZKGTBASV2Y1FvTenWL0wTWBA=;
        b=XnH6im67/UPE6AQ/y9dE5ftyrRsu3tw0lIxaLVTP4MzxVH/sSgPjJwm/C/hszzZpep
         iJDWkLywhjxu67GhHwDd/RqS7NqntGNzGJEKqK1Esg/ML7oVFeHeuAczgQphZ4+MpHTi
         70XQpVqim7hxr3ZKP5tmd9wlmRJy0XPRtD/Ln+t4IYrcZ4ek2LaotUlP5g5g2Ge38oe8
         Cux5UmCU7NwiKDIVtLD2f12961vU6a85b7TpOVl/lAJngtt4TUtD7r+bfzc2jdwiCn36
         MTzz8O224DhJgB49O3y82iNp7kZPxQc0n1/TST7AxKTZBzBCmYK0phylFatImrd69dJT
         rAlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xreytFI3d5qwLGzyijOZKGTBASV2Y1FvTenWL0wTWBA=;
        b=okoD7OOb/iiqWv3A7UEdG05V9c/EUDTKC6t9UenF3BlTzE1RJ34KijD2E3lvlbr0Ui
         f+VfiVSTfOpv4gKZHcvrl+lkikUwZyqZ5SwDZQKN6QaihKRh57PRQ5xMZeainrWMk+p+
         UF6do7tRKIKmR8E+ln1FSvulOOYqzjWknqybiqlx3/LMRLpHWN/bGFJrxUrsX5uxWCOc
         6Q4IXHrX9W2CJo3hdCvUsjm/EunExz/6bNGGEQpUW9QQQr/t57H2zmRd/Kmld/3Ejfkw
         Lvp+ZHKwJK5Be4dh8Py3M4EWydAvBMSFP5wIx3Io0+Nl1B2xyffhy7zoy3zX3tiW1ITl
         xbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xreytFI3d5qwLGzyijOZKGTBASV2Y1FvTenWL0wTWBA=;
        b=Fjohb/jBm7MJltwPeAz9q0tcTR6K5IwRpJ2ODJBUzZ1YRcjoD/moBRc8JCvlF6yA/m
         no5WHYVVI2ME6qcqOFngU8UbBXCpPe8sGzorrOP3BthWfJd+JRS/PPYzkvq1APV8KYRI
         HHwG3IgxcHvxtQwSIUrApxuv52h5/766X3doZTKcbeMjloSScH034D1KatQW2y6u+QFx
         ewIpsflHOnxCosrcJQjytvUmUQc0z5NBuQircFCjn3lrM7y9jAUrtWWGaJgHpdY1ceE/
         GbwZFN1tbICU9hIgwCVfsGl+J06X6PaX2iJaCZknJwvYrRUrwpQ0YFHgjlccwwoJIyjx
         tVhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302JYO9l3KvohWP4Vgrci+O3rqDKNZnUg/ZeWaX93GMZuCWPPnq
	I+HJ0zJFgIRfklJyjZg25tQ=
X-Google-Smtp-Source: ABdhPJzy4S+JydlmNP1sfceRqO/FMUpUkI99V/Zn5sxkkhRldVhiSF7XQQwEc97mNd2sqzy+0U4BTA==
X-Received: by 2002:a54:4518:: with SMTP id l24mr613721oil.8.1592897840100;
        Tue, 23 Jun 2020 00:37:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fc3:: with SMTP id d186ls3813634oib.1.gmail; Tue, 23
 Jun 2020 00:37:19 -0700 (PDT)
X-Received: by 2002:aca:ad88:: with SMTP id w130mr16066565oie.103.1592897839665;
        Tue, 23 Jun 2020 00:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592897839; cv=none;
        d=google.com; s=arc-20160816;
        b=gEtp3TeW011tgEDXDu3isQ0Pu6CJ/3iiJeR6PCyrPe+WyXCCKgvUgmmOrilwxTWnOR
         e1hfKdksClhDdvbD2r1jCR722gIB8QDTqw95T5vNFI6HiVAAX62hq2q9XXNMe5y+gmm1
         w8yzs+gvicylYztnOAddk7YPx3X2MwIempu5W4hWP9iRDwvEF7XAuDM30v/Fe9z1RbhX
         xoJ7BKAI99i7B5oHnPns4c7PPu39LbZa6UuiChlzp3eki+VJEw6pdkElOZVOBD/l6ePV
         exCzM1xXhwmlPxBSJpgs4iJsq9jg9bZKDtK8LtaCKeNJcoGOp8j2QSXdKYrd70ErvVbm
         9hoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=b98oeWGU/aTBvSRExe1UQO9mpvxZTwN5pWeKMIJTraE=;
        b=Cp4KwamVaCI7hxhSwOMbvY0WjXh4XaaDOEoXgF3EWrmAQRKH1fwOE42Hw3CSBFx1k3
         FQiXLYzJ3WGWx3T6ApIwuI0EGvvRY2zchfT5cK7KAaOwBMDdqsNxOX40YGgUhNHuubJi
         2d51CHAt4OXvfrVtStVNyrwtErlSEwocc2aNdBAvZc2w1x7s2/qFH5iOpR36M4DxVS07
         CP9UVthxmk9HWiGqp+OkTokk2sbmfUuBoiNEM03U0NCW0zegybn6IsWQrIpCyGAQkwlz
         4R4UrRxT58yQwQScz3cAMFZp2EfGMrKIrLqEnex8/g6I/qp5RprwJWTnCshSO4fIhpmE
         xN9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id a13si864655otl.0.2020.06.23.00.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 00:37:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: FYRq1nxOUtRwztCBrUmC7qyhIkXwshLMNq0WdIi1p+og6ESY6gr4pJ8nLLTAE2Aeyjluv9pxql
 F8IW96NZSg7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="132401643"
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; 
   d="scan'208";a="132401643"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2020 00:37:18 -0700
IronPort-SDR: TIQYIZ7axz2/NXi2pAHolWo8voOrtqFtuAoqb0/Lo+SRI1Bh8JUK0+VeQdpC8Vkg7vT5aXxTfP
 XIwfkJvbjlIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; 
   d="scan'208";a="319080731"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by FMSMGA003.fm.intel.com with ESMTP; 23 Jun 2020 00:37:15 -0700
Subject: Re: [kbuild-all] Re: ld.lld: warning:
 drivers/built-in.a(misc/ds1682.o):(.data..compoundliteral) is being placed in
 '.data..compoundliteral'
To: Nick Desaulniers <ndesaulniers@google.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Segher Boessenkool <segher@kernel.crashing.org>,
 Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>
References: <202006180904.TVUXCf6H%lkp@intel.com>
 <150a9a49-8d61-ea34-94d4-fff158aae802@csgroup.eu>
 <CAKwvOd=s53vUELe311VSjxt2_eQd+RGNCf__n+cV+R=PQ_CdXQ@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <dd9c7024-c80b-ff28-e8bf-ac818f14c50f@intel.com>
Date: Tue, 23 Jun 2020 15:36:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=s53vUELe311VSjxt2_eQd+RGNCf__n+cV+R=PQ_CdXQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 6/20/20 12:32 AM, Nick Desaulniers wrote:
> On Fri, Jun 19, 2020 at 6:24 AM Christophe Leroy
> <christophe.leroy@csgroup.eu> wrote:
>>
>>
>> Le 18/06/2020 =C3=A0 03:12, kernel test robot a =C3=A9crit :
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
>>> head:   1b5044021070efa3259f3e9548dc35d1eb6aa844
>>> commit: 74016701fe5f873ae23bf02835407227138d874d powerpc/32s: Fix anoth=
er build failure with CONFIG_PPC_KUAP_DEBUG
>> I'm really having hard time understanding the link between this commit
>> and the issue reported below.
>>
>> Can Clang people help understand what the problem might be ?
> For randconfigs, it might be the case that we're not clean in the
> first place. + Philip to provide more info on how the bisection
> pinpoints commits? (Is the same randconfig used repeatedly as part of
> a bisection?)

Hi,

The commit is not the root cause, bisection stopped at a wrong commit
because parent commit failed earlier before the ld.lld error, we're going
to optimize the bisect logic to avoid false positive.

Best Regards,
Rong Chen

>
> + Kees, idk if this is the warning from the orphan section placement,
> if any of those patches have landed?
>
> + Fangrui, who might know more about this warning from LLD.
>
>> Christophe
>>
>>> date:   2 weeks ago
>>> config: powerpc-randconfig-r032-20200617 (attached as .config)
>>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 48=
7ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
>>> reproduce (this is a W=3D1 build):
>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
>>>           chmod +x ~/bin/make.cross
>>>           # install powerpc cross compiling tool for clang build
>>>           # apt-get install binutils-powerpc-linux-gnu
>>>           git checkout 74016701fe5f873ae23bf02835407227138d874d
>>>           # save the attached .config to linux build tree
>>>           COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dpowerpc
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>>>
>>>>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.29) is being placed in '.data..compoundliteral.29'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.31) is being placed in '.data..compoundliteral.31'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.33) is being placed in '.data..compoundliteral.33'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compound=
literal.35) is being placed in '.bss..compoundliteral.35'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.37) is being placed in '.data..compoundliteral.37'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.39) is being placed in '.data..compoundliteral.39'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.41) is being placed in '.data..compoundliteral.41'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.43) is being placed in '.data..compoundliteral.43'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.45) is being placed in '.data..compoundliteral.45'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.47) is being placed in '.data..compoundliteral.47'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.49) is being placed in '.data..compoundliteral.49'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.51) is being placed in '.data..compoundliteral.51'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.53) is being placed in '.data..compoundliteral.53'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.55) is being placed in '.data..compoundliteral.55'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.57) is being placed in '.data..compoundliteral.57'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.59) is being placed in '.data..compoundliteral.59'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.61) is being placed in '.data..compoundliteral.61'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.63) is being placed in '.data..compoundliteral.63'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.65) is being placed in '.data..compoundliteral.65'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.67) is being placed in '.data..compoundliteral.67'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.69) is being placed in '.data..compoundliteral.69'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.71) is being placed in '.data..compoundliteral.71'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.73) is being placed in '.data..compoundliteral.73'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.75) is being placed in '.data..compoundliteral.75'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.77) is being placed in '.data..compoundliteral.77'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.79) is being placed in '.data..compoundliteral.79'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.81) is being placed in '.data..compoundliteral.81'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.83) is being placed in '.data..compoundliteral.83'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.85) is being placed in '.data..compoundliteral.85'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.87) is being placed in '.data..compoundliteral.87'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.89) is being placed in '.data..compoundliteral.89'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.91) is being placed in '.data..compoundliteral.91'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.93) is being placed in '.data..compoundliteral.93'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.95) is being placed in '.data..compoundliteral.95'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.97) is being placed in '.data..compoundliteral.97'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.99) is being placed in '.data..compoundliteral.99'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.101) is being placed in '.data..compoundliteral.101'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.103) is being placed in '.data..compoundliteral.103'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.105) is being placed in '.data..compoundliteral.105'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.107) is being placed in '.data..compoundliteral.107'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.109) is being placed in '.data..compoundliteral.109'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.111) is being placed in '.data..compoundliteral.111'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.113) is being placed in '.data..compoundliteral.113'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.115) is being placed in '.data..compoundliteral.115'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.117) is being placed in '.data..compoundliteral.117'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.119) is being placed in '.data..compoundliteral.119'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.121) is being placed in '.data..compoundliteral.121'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.123) is being placed in '.data..compoundliteral.123'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.125) is being placed in '.data..compoundliteral.125'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.127) is being placed in '.data..compoundliteral.127'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.129) is being placed in '.data..compoundliteral.129'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.131) is being placed in '.data..compoundliteral.131'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.133) is being placed in '.data..compoundliteral.133'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.135) is being placed in '.data..compoundliteral.135'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.137) is being placed in '.data..compoundliteral.137'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.139) is being placed in '.data..compoundliteral.139'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.141) is being placed in '.data..compoundliteral.141'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.143) is being placed in '.data..compoundliteral.143'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.145) is being placed in '.data..compoundliteral.145'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.147) is being placed in '.data..compoundliteral.147'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.149) is being placed in '.data..compoundliteral.149'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.151) is being placed in '.data..compoundliteral.151'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.153) is being placed in '.data..compoundliteral.153'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.155) is being placed in '.data..compoundliteral.155'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.157) is being placed in '.data..compoundliteral.157'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.159) is being placed in '.data..compoundliteral.159'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.161) is being placed in '.data..compoundliteral.161'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.163) is being placed in '.data..compoundliteral.163'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.165) is being placed in '.data..compoundliteral.165'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.167) is being placed in '.data..compoundliteral.167'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.169) is being placed in '.data..compoundliteral.169'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.171) is being placed in '.data..compoundliteral.171'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.173) is being placed in '.data..compoundliteral.173'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.175) is being placed in '.data..compoundliteral.175'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.177) is being placed in '.data..compoundliteral.177'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.179) is being placed in '.data..compoundliteral.179'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.181) is being placed in '.data..compoundliteral.181'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.183) is being placed in '.data..compoundliteral.183'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.185) is being placed in '.data..compoundliteral.185'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.187) is being placed in '.data..compoundliteral.187'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.189) is being placed in '.data..compoundliteral.189'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.191) is being placed in '.data..compoundliteral.191'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.193) is being placed in '.data..compoundliteral.193'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.195) is being placed in '.data..compoundliteral.195'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.197) is being placed in '.data..compoundliteral.197'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.199) is being placed in '.data..compoundliteral.199'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.201) is being placed in '.data..compoundliteral.201'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.203) is being placed in '.data..compoundliteral.203'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.205) is being placed in '.data..compoundliteral.205'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.207) is being placed in '.data..compoundliteral.207'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.209) is being placed in '.data..compoundliteral.209'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.211) is being placed in '.data..compoundliteral.211'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.213) is being placed in '.data..compoundliteral.213'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.215) is being placed in '.data..compoundliteral.215'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.217) is being placed in '.data..compoundliteral.217'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.219) is being placed in '.data..compoundliteral.219'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.221) is being placed in '.data..compoundliteral.221'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.223) is being placed in '.data..compoundliteral.223'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.225) is being placed in '.data..compoundliteral.225'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.227) is being placed in '.data..compoundliteral.227'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.229) is being placed in '.data..compoundliteral.229'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.231) is being placed in '.data..compoundliteral.231'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.233) is being placed in '.data..compoundliteral.233'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.235) is being placed in '.data..compoundliteral.235'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.237) is being placed in '.data..compoundliteral.237'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.239) is being placed in '.data..compoundliteral.239'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.241) is being placed in '.data..compoundliteral.241'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.243) is being placed in '.data..compoundliteral.243'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.245) is being placed in '.data..compoundliteral.245'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.247) is being placed in '.data..compoundliteral.247'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.249) is being placed in '.data..compoundliteral.249'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.251) is being placed in '.data..compoundliteral.251'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.253) is being placed in '.data..compoundliteral.253'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.255) is being placed in '.data..compoundliteral.255'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.257) is being placed in '.data..compoundliteral.257'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.259) is being placed in '.data..compoundliteral.259'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.261) is being placed in '.data..compoundliteral.261'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.263) is being placed in '.data..compoundliteral.263'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.265) is being placed in '.data..compoundliteral.265'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.267) is being placed in '.data..compoundliteral.267'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.269) is being placed in '.data..compoundliteral.269'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.271) is being placed in '.data..compoundliteral.271'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.273) is being placed in '.data..compoundliteral.273'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.275) is being placed in '.data..compoundliteral.275'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.277) is being placed in '.data..compoundliteral.277'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.279) is being placed in '.data..compoundliteral.279'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.281) is being placed in '.data..compoundliteral.281'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.283) is being placed in '.data..compoundliteral.283'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.285) is being placed in '.data..compoundliteral.285'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.287) is being placed in '.data..compoundliteral.287'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.289) is being placed in '.data..compoundliteral.289'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.294) is being placed in '.data..compoundliteral.294'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.295) is being placed in '.data..compoundliteral.295'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.296) is being placed in '.data..compoundliteral.296'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.297) is being placed in '.data..compoundliteral.297'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal.18) is being placed in '.data..compoundliteral.18'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.19) is being placed in '.data..compoundliteral.19'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.20) is being placed in '.data..compoundliteral.20'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.21) is being placed in '.data..compoundliteral.21'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.22) is being placed in '.data..compoundliteral.22'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal.15) is being placed in '.data..compoundliteral.15'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.16) is being placed in '.data..compoundliteral.16'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.17) is being placed in '.data..compoundliteral.17'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral.2) is being placed in '.data..compoundliteral.2'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.3) is being placed in '.data..compoundliteral.3'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.4) is being placed in '.data..compoundliteral.4'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundl=
iteral.10) is being placed in '.data..compoundliteral.10'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.11) is being placed in '.data..compoundliteral.11'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.12) is being placed in '.data..compoundliteral.12'
>>>>> ld.lld: warning: drivers/built-in.a(cpufreq/cpufreq-dt-platdev.o):(.d=
ata..compoundliteral) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hid/hid-cp2112.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundlit=
eral.2) is being placed in '.data..compoundliteral.2'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.3) is being placed in '.data..compoundliteral.3'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.4) is being placed in '.data..compoundliteral.4'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.5) is being placed in '.data..compoundliteral.5'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.6) is being placed in '.data..compoundliteral.6'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.7) is being placed in '.data..compoundliteral.7'
>>> ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>>> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>>> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>>>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.29) is being placed in '.data..compoundliteral.29'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.31) is being placed in '.data..compoundliteral.31'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.33) is being placed in '.data..compoundliteral.33'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compound=
literal.35) is being placed in '.bss..compoundliteral.35'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.37) is being placed in '.data..compoundliteral.37'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.39) is being placed in '.data..compoundliteral.39'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.41) is being placed in '.data..compoundliteral.41'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.43) is being placed in '.data..compoundliteral.43'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.45) is being placed in '.data..compoundliteral.45'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.47) is being placed in '.data..compoundliteral.47'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.49) is being placed in '.data..compoundliteral.49'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.51) is being placed in '.data..compoundliteral.51'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.53) is being placed in '.data..compoundliteral.53'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.55) is being placed in '.data..compoundliteral.55'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.57) is being placed in '.data..compoundliteral.57'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.59) is being placed in '.data..compoundliteral.59'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.61) is being placed in '.data..compoundliteral.61'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.63) is being placed in '.data..compoundliteral.63'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.65) is being placed in '.data..compoundliteral.65'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.67) is being placed in '.data..compoundliteral.67'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.69) is being placed in '.data..compoundliteral.69'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.71) is being placed in '.data..compoundliteral.71'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.73) is being placed in '.data..compoundliteral.73'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.75) is being placed in '.data..compoundliteral.75'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.77) is being placed in '.data..compoundliteral.77'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.79) is being placed in '.data..compoundliteral.79'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.81) is being placed in '.data..compoundliteral.81'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.83) is being placed in '.data..compoundliteral.83'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.85) is being placed in '.data..compoundliteral.85'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.87) is being placed in '.data..compoundliteral.87'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.89) is being placed in '.data..compoundliteral.89'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.91) is being placed in '.data..compoundliteral.91'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.93) is being placed in '.data..compoundliteral.93'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.95) is being placed in '.data..compoundliteral.95'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.97) is being placed in '.data..compoundliteral.97'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.99) is being placed in '.data..compoundliteral.99'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.101) is being placed in '.data..compoundliteral.101'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.103) is being placed in '.data..compoundliteral.103'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.105) is being placed in '.data..compoundliteral.105'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.107) is being placed in '.data..compoundliteral.107'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.109) is being placed in '.data..compoundliteral.109'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.111) is being placed in '.data..compoundliteral.111'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.113) is being placed in '.data..compoundliteral.113'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.115) is being placed in '.data..compoundliteral.115'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.117) is being placed in '.data..compoundliteral.117'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.119) is being placed in '.data..compoundliteral.119'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.121) is being placed in '.data..compoundliteral.121'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.123) is being placed in '.data..compoundliteral.123'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.125) is being placed in '.data..compoundliteral.125'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.127) is being placed in '.data..compoundliteral.127'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.129) is being placed in '.data..compoundliteral.129'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.131) is being placed in '.data..compoundliteral.131'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.133) is being placed in '.data..compoundliteral.133'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.135) is being placed in '.data..compoundliteral.135'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.137) is being placed in '.data..compoundliteral.137'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.139) is being placed in '.data..compoundliteral.139'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.141) is being placed in '.data..compoundliteral.141'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.143) is being placed in '.data..compoundliteral.143'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.145) is being placed in '.data..compoundliteral.145'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.147) is being placed in '.data..compoundliteral.147'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.149) is being placed in '.data..compoundliteral.149'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.151) is being placed in '.data..compoundliteral.151'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.153) is being placed in '.data..compoundliteral.153'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.155) is being placed in '.data..compoundliteral.155'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.157) is being placed in '.data..compoundliteral.157'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.159) is being placed in '.data..compoundliteral.159'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.161) is being placed in '.data..compoundliteral.161'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.163) is being placed in '.data..compoundliteral.163'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.165) is being placed in '.data..compoundliteral.165'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.167) is being placed in '.data..compoundliteral.167'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.169) is being placed in '.data..compoundliteral.169'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.171) is being placed in '.data..compoundliteral.171'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.173) is being placed in '.data..compoundliteral.173'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.175) is being placed in '.data..compoundliteral.175'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.177) is being placed in '.data..compoundliteral.177'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.179) is being placed in '.data..compoundliteral.179'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.181) is being placed in '.data..compoundliteral.181'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.183) is being placed in '.data..compoundliteral.183'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.185) is being placed in '.data..compoundliteral.185'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.187) is being placed in '.data..compoundliteral.187'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.189) is being placed in '.data..compoundliteral.189'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.191) is being placed in '.data..compoundliteral.191'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.193) is being placed in '.data..compoundliteral.193'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.195) is being placed in '.data..compoundliteral.195'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.197) is being placed in '.data..compoundliteral.197'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.199) is being placed in '.data..compoundliteral.199'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.201) is being placed in '.data..compoundliteral.201'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.203) is being placed in '.data..compoundliteral.203'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.205) is being placed in '.data..compoundliteral.205'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.207) is being placed in '.data..compoundliteral.207'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.209) is being placed in '.data..compoundliteral.209'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.211) is being placed in '.data..compoundliteral.211'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.213) is being placed in '.data..compoundliteral.213'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.215) is being placed in '.data..compoundliteral.215'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.217) is being placed in '.data..compoundliteral.217'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.219) is being placed in '.data..compoundliteral.219'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.221) is being placed in '.data..compoundliteral.221'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.223) is being placed in '.data..compoundliteral.223'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.225) is being placed in '.data..compoundliteral.225'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.227) is being placed in '.data..compoundliteral.227'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.229) is being placed in '.data..compoundliteral.229'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.231) is being placed in '.data..compoundliteral.231'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.233) is being placed in '.data..compoundliteral.233'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.235) is being placed in '.data..compoundliteral.235'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.237) is being placed in '.data..compoundliteral.237'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.239) is being placed in '.data..compoundliteral.239'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.241) is being placed in '.data..compoundliteral.241'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.243) is being placed in '.data..compoundliteral.243'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.245) is being placed in '.data..compoundliteral.245'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.247) is being placed in '.data..compoundliteral.247'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.249) is being placed in '.data..compoundliteral.249'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.251) is being placed in '.data..compoundliteral.251'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.253) is being placed in '.data..compoundliteral.253'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.255) is being placed in '.data..compoundliteral.255'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.257) is being placed in '.data..compoundliteral.257'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.259) is being placed in '.data..compoundliteral.259'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.261) is being placed in '.data..compoundliteral.261'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.263) is being placed in '.data..compoundliteral.263'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.265) is being placed in '.data..compoundliteral.265'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.267) is being placed in '.data..compoundliteral.267'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.269) is being placed in '.data..compoundliteral.269'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.271) is being placed in '.data..compoundliteral.271'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.273) is being placed in '.data..compoundliteral.273'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.275) is being placed in '.data..compoundliteral.275'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.277) is being placed in '.data..compoundliteral.277'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.279) is being placed in '.data..compoundliteral.279'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.281) is being placed in '.data..compoundliteral.281'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.283) is being placed in '.data..compoundliteral.283'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.285) is being placed in '.data..compoundliteral.285'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.287) is being placed in '.data..compoundliteral.287'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.289) is being placed in '.data..compoundliteral.289'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.294) is being placed in '.data..compoundliteral.294'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.295) is being placed in '.data..compoundliteral.295'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.296) is being placed in '.data..compoundliteral.296'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.297) is being placed in '.data..compoundliteral.297'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compound=
literal.18) is being placed in '.data..compoundliteral.18'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.19) is being placed in '.data..compoundliteral.19'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.20) is being placed in '.data..compoundliteral.20'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.21) is being placed in '.data..compoundliteral.21'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.22) is being placed in '.data..compoundliteral.22'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compound=
literal.15) is being placed in '.data..compoundliteral.15'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.16) is being placed in '.data..compoundliteral.16'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.17) is being placed in '.data..compoundliteral.17'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
>>>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoun=
dliteral.2) is being placed in '.data..compoundliteral.2'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.3) is being placed in '.data..compoundliteral.3'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.4) is being placed in '.data..compoundliteral.4'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.10) is being placed in '.data..compoundliteral.10'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.11) is being placed in '.data..compoundliteral.11'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.12) is being placed in '.data..compoundliteral.12'
>>> ld.lld: warning: drivers/built-in.a(cpufreq/cpufreq-dt-platdev.o):(.dat=
a..compoundliteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hid/hid-cp2112.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.2) is being placed in '.data..compoundliteral.2'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.3) is being placed in '.data..compoundliteral.3'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.4) is being placed in '.data..compoundliteral.4'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.5) is being placed in '.data..compoundliteral.5'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.6) is being placed in '.data..compoundliteral.6'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.7) is being placed in '.data..compoundliteral.7'
>>> ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>>> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>>> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundlite=
ral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.29) is being placed in '.data..compoundliteral.29'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.31) is being placed in '.data..compoundliteral.31'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.33) is being placed in '.data..compoundliteral.33'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compound=
literal.35) is being placed in '.bss..compoundliteral.35'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.37) is being placed in '.data..compoundliteral.37'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.39) is being placed in '.data..compoundliteral.39'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.41) is being placed in '.data..compoundliteral.41'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.43) is being placed in '.data..compoundliteral.43'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.45) is being placed in '.data..compoundliteral.45'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.47) is being placed in '.data..compoundliteral.47'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.49) is being placed in '.data..compoundliteral.49'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.51) is being placed in '.data..compoundliteral.51'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.53) is being placed in '.data..compoundliteral.53'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.55) is being placed in '.data..compoundliteral.55'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.57) is being placed in '.data..compoundliteral.57'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.59) is being placed in '.data..compoundliteral.59'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.61) is being placed in '.data..compoundliteral.61'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.63) is being placed in '.data..compoundliteral.63'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.65) is being placed in '.data..compoundliteral.65'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.67) is being placed in '.data..compoundliteral.67'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.69) is being placed in '.data..compoundliteral.69'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.71) is being placed in '.data..compoundliteral.71'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.73) is being placed in '.data..compoundliteral.73'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.75) is being placed in '.data..compoundliteral.75'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.77) is being placed in '.data..compoundliteral.77'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.79) is being placed in '.data..compoundliteral.79'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.81) is being placed in '.data..compoundliteral.81'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.83) is being placed in '.data..compoundliteral.83'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.85) is being placed in '.data..compoundliteral.85'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.87) is being placed in '.data..compoundliteral.87'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.89) is being placed in '.data..compoundliteral.89'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.91) is being placed in '.data..compoundliteral.91'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.93) is being placed in '.data..compoundliteral.93'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.95) is being placed in '.data..compoundliteral.95'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.97) is being placed in '.data..compoundliteral.97'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.99) is being placed in '.data..compoundliteral.99'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.101) is being placed in '.data..compoundliteral.101'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.103) is being placed in '.data..compoundliteral.103'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.105) is being placed in '.data..compoundliteral.105'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.107) is being placed in '.data..compoundliteral.107'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.109) is being placed in '.data..compoundliteral.109'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.111) is being placed in '.data..compoundliteral.111'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.113) is being placed in '.data..compoundliteral.113'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.115) is being placed in '.data..compoundliteral.115'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.117) is being placed in '.data..compoundliteral.117'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.119) is being placed in '.data..compoundliteral.119'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.121) is being placed in '.data..compoundliteral.121'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.123) is being placed in '.data..compoundliteral.123'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.125) is being placed in '.data..compoundliteral.125'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.127) is being placed in '.data..compoundliteral.127'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.129) is being placed in '.data..compoundliteral.129'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.131) is being placed in '.data..compoundliteral.131'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.133) is being placed in '.data..compoundliteral.133'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.135) is being placed in '.data..compoundliteral.135'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.137) is being placed in '.data..compoundliteral.137'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.139) is being placed in '.data..compoundliteral.139'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.141) is being placed in '.data..compoundliteral.141'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.143) is being placed in '.data..compoundliteral.143'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.145) is being placed in '.data..compoundliteral.145'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.147) is being placed in '.data..compoundliteral.147'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.149) is being placed in '.data..compoundliteral.149'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.151) is being placed in '.data..compoundliteral.151'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.153) is being placed in '.data..compoundliteral.153'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.155) is being placed in '.data..compoundliteral.155'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.157) is being placed in '.data..compoundliteral.157'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.159) is being placed in '.data..compoundliteral.159'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.161) is being placed in '.data..compoundliteral.161'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.163) is being placed in '.data..compoundliteral.163'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.165) is being placed in '.data..compoundliteral.165'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.167) is being placed in '.data..compoundliteral.167'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.169) is being placed in '.data..compoundliteral.169'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.171) is being placed in '.data..compoundliteral.171'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.173) is being placed in '.data..compoundliteral.173'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.175) is being placed in '.data..compoundliteral.175'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.177) is being placed in '.data..compoundliteral.177'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.179) is being placed in '.data..compoundliteral.179'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.181) is being placed in '.data..compoundliteral.181'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.183) is being placed in '.data..compoundliteral.183'
>>> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoun=
dliteral.185) is being placed in '.data..compoundliteral.185'
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/dd9c7024-c80b-ff28-e8bf-ac818f14c50f%40intel.com.
