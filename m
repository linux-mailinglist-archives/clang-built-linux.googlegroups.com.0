Return-Path: <clang-built-linux+bncBDXLVH6MVYKRB2OBUKAAMGQERRNHORQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 145672FDBDB
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 22:30:18 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id f139sf12710813vke.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 13:30:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611178217; cv=pass;
        d=google.com; s=arc-20160816;
        b=KV1kMdHUlQSkiwu4u7dIcqAVOsUKg4WrNLUtHVyaaEgfQrzaMVSNk5wkcpXPMBpBNw
         I6y/uxXpLoEgpEdQ+ORraqSwLFJ+qklnqKHj0+cdJrj4fQR1w/1RGqqA1tXj3DhP9n/a
         KAIlEIFfbDxqdHPREysBpq9Cv2m67e6r2uUSwK0tmk5b48i+rgH0DU3aPBMnj/5H0mPj
         i8Kj7fZTUh1ZpGamsQLVXPogOfaZaIy6857kCsZccUdrGaV0Nl1Qg2UXOENtk0eA+erg
         QgdqatThdKFUpdYgeN4xFo8RZXs7QNO6zRqZfhsHXRC/66dU9SFZYVNv+DwDfurGjzZu
         ZP0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=qW193PXxhcA9ni3lleY9KSyS73M/tDsdgNcuuPkV1Hk=;
        b=tbkBjI5TFia7AooBVF3S01BZky5IfxolnX5XxFISB9PeM1oA9SbGWptj3YMZn1xfVe
         V0AlCzG9tkt0MRgUXwI4OjPogdV49/c4qIr0basKjhRyaR9c+M9V5WKakRcYGndky/Se
         qDMnnQQDwHPpiaGXn1y15/K3nLKrB4eL9MqPTT6e0UvM16lvxeDEXf7n4DXwT8gtyO6f
         cpg+xZKpowD/VnxyW42HxLUIDFcW1pvBauJ7uiWUuw55i8b+sCTz/cMvV3MkUL2+BbTu
         aHBoyznyyRvuU6OEJFfBwgJRcKFkI9koiLMHADGjwM1PtTzAfr5c4J3w77Ca7kgqn0Az
         Yo1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tRB/xVmQ";
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qW193PXxhcA9ni3lleY9KSyS73M/tDsdgNcuuPkV1Hk=;
        b=Z5fYNQep/7ycUg9hHpDcn+vLPp2c3FLSE2au2lm0FdzIwpvV9FQMmbc+S5n0+iJ2LO
         ENmsx+eNDQ4Y+CNTbiu7fICt/XzWAFm8HMr62kcTKFDf80CuIvPoB2Yi8KV0MDPtlnKn
         ro2/wkaMq/3lHPpNlHXD63+qf/mU69G/PTnqBcpW7dzi7OISkYm6XE6PNzRSmSoRGBPH
         IAWm3FIitRa60GiPo2cBMIrY4uIU2cSde2fZMY6WhQHiB+LahZfnw560Sk0GwKqvblK5
         onCAhRGmEy5h2FcUN97+T0InP/5okTAs/YoWwUXtuqrOpJ+V3yJ9uHFV7fGGqfdnKFrU
         0H9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qW193PXxhcA9ni3lleY9KSyS73M/tDsdgNcuuPkV1Hk=;
        b=IERad5xKIavNq2hLK/jZq8U06jE3iFgM4Ul0RdSytvnEVOrHrr4nMAgD84V1/JAmaD
         Ky+iE2/IfWrMa4PI3UeDX9NOp8r/onB1VC84arqWvPEhU9BH59JD93hblx3J8E0jhZNd
         pcDTcTkLsLuF7byUQiCDvfvAZf4BwCt17SErfVmfanubYeZfm7y4/1QKQ5xi2czYmqK3
         bjiKBkWGukRyzM6yLKbQN1hbvQACaC58jk+wKp7RnMzNJV8dyNAiLirpSUlAwt7t6kaN
         Obf9JxKgoYv/tLC6bVIwKSF4Rufuyj/emr3k4TD5MTudoOLYqF9fEfZ1aRKUcHmjR0Fk
         PG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qW193PXxhcA9ni3lleY9KSyS73M/tDsdgNcuuPkV1Hk=;
        b=Cg/1tjJv51Sx3D74/kbWRp4M0JKFLwsx1/FKBSLS/VfQCfUtH+WSYIkckxWe26NDCw
         6xguH2jALXtScbwBePrd4z1nLSuP19x9X4WeSKKwnt3gSORwwjq492RZoYaysa5bELc5
         V47vxICvFmJdCbnChZwEzPW93iQV6pNPP8WYrOcXrwSoyjImWr01RieJguRJWVT/+wXT
         yhH/NTkdohpW52yfcgG/qYFKK6kMiozNjm1ySuKHZ20i5eo9/4mfF03OWZjsnx8YcFO8
         EUDnE19xuYdMGLsWRR3QxlB5VyQUeiTPI1rNvNBj/SlAC1g8intpteagTm42BZZW3kS+
         k5TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530m0DTbjOXLwi4VO8OhoyCQRAHVUMb6asnXlHrgPtJSFPGvy70o
	Be8H0p8Bk2M9eprNJ58JVXE=
X-Google-Smtp-Source: ABdhPJyyOtSynbRQVEsfrHSksimdP3if6QQ8lkddvFl9Ul1p92AhtoW2Slbsww30Zu8UyIONaMbyPg==
X-Received: by 2002:a05:6102:808:: with SMTP id g8mr8380188vsb.0.1611178217184;
        Wed, 20 Jan 2021 13:30:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls3667000vso.9.gmail; Wed, 20 Jan
 2021 13:30:16 -0800 (PST)
X-Received: by 2002:a67:eecc:: with SMTP id o12mr2496916vsp.40.1611178216749;
        Wed, 20 Jan 2021 13:30:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611178216; cv=none;
        d=google.com; s=arc-20160816;
        b=fGxawqKn4M6YcVkQBahKmCCGFKW3NzqH3SEUC97a/XUhD+O17umgCIJ0DAx5muylzK
         u+dqqV+NdPgzmjkX3u4czHqZ8pPxotsd28ax1fDReaYRWLmrCY1KXSDM56CDo8cT0ghh
         Bd2E6JQWC8Se/F+816fvr96yP1GfV7CJXBigkQgBGSqlNs3JeFediVpwwgnJAgkcCIly
         6wmq1+eL89KYOtDHG98L0FOC6xJdhrLucYdyeU46K+GdrJm8XuQR5nREq5UwCftsnqDM
         Z9YDv9DkHqkcAcHNR4qJCk0m1j4LAqoZ1WRD/N3CHFnhbYhTB8U041hXQog7z8lU0Hh5
         xHtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TdwwHM1/CBQE4e/47xbtOGnzLX6NRqS36RY4+N1Vy/k=;
        b=Kf6pcKyI1NOEQSOgWB185HuEwKPO7qQQhPBdw+ndDwXJP0OLlSgTOZ+vLjTnKwPxhS
         Xjh3/ki9SAYw7PxjUM2tdPxY1Ds/MK8n/N1NCErJMSBi/x+aVd3s12Ev1Mw3twJEICfd
         5qrqipKjJsaDWf5Z7E11Skt47vQdbzwQ7klgw0RP8q87jObOGyquMd4kcOWEGIomkMtU
         lgZLuuL9oWXMHZzqakNJWVRWpne3y+1tCu2ehSUlARz9DZsemY1akiyN15rK5LtUnMn5
         otluyNTk38KtIM14a/H2EnYBQjt35blphcPqE4oc9cxDNUnuIvAgMVMLuJ6I08AQUpfT
         1Jcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tRB/xVmQ";
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id g3si308926vkl.1.2021.01.20.13.30.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 13:30:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id x20so3052340pjh.3
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 13:30:16 -0800 (PST)
X-Received: by 2002:a17:902:aa49:b029:de:1a8d:bd8d with SMTP id c9-20020a170902aa49b02900de1a8dbd8dmr11957615plr.62.1611178215938;
        Wed, 20 Jan 2021 13:30:15 -0800 (PST)
Received: from [10.230.185.151] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b13sm3285505pfi.162.2021.01.20.13.30.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 13:30:15 -0800 (PST)
Subject: Re: [linux-stable-rc:linux-5.4.y 1860/4509]
 drivers/scsi/lpfc/lpfc_nportdisc.c:290:1: warning: no previous prototype for
 function 'lpfc_defer_pt2pt_acc'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Sasha Levin <alexander.levin@microsoft.com>
References: <202101191736.6RlPLSkT-lkp@intel.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <7aef190f-f27a-9712-c0f5-a5c46304f08f@gmail.com>
Date: Wed, 20 Jan 2021 13:30:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <202101191736.6RlPLSkT-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jsmart2021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="tRB/xVmQ";       spf=pass
 (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 1/19/2021 1:35 AM, kernel test robot wrote:
> Hi James,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> head:   f07bbbcbb287be51052321bcb6b6d4edbdf810e6
> commit: 6b8fbd9b2db056d888dc4f34f61c824faea659b3 [1860/4509] scsi: lpfc: Fix pt2pt discovery on SLI3 HBAs
> config: x86_64-randconfig-a011-20210119 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=6b8fbd9b2db056d888dc4f34f61c824faea659b3
>          git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>          git fetch --no-tags linux-stable-rc linux-5.4.y
>          git checkout 6b8fbd9b2db056d888dc4f34f61c824faea659b3
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/scsi/lpfc/lpfc_nportdisc.c:290:1: warning: no previous prototype for function 'lpfc_defer_pt2pt_acc' [-Wmissing-prototypes]
>     lpfc_defer_pt2pt_acc(struct lpfc_hba *phba, LPFC_MBOXQ_t *link_mbox)
>     ^
>     drivers/scsi/lpfc/lpfc_nportdisc.c:289:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void
>     ^
>     static
>     1 warning generated.

fyi - Fixed by:

commit f7cb0d0945eb scsi: lpfc: Make function lpfc_defer_pt2pt_acc static

-- james

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7aef190f-f27a-9712-c0f5-a5c46304f08f%40gmail.com.
