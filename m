Return-Path: <clang-built-linux+bncBDXLVH6MVYKRB5GBUKAAMGQECT2TRBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 879232FDBDC
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 22:30:29 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id b3sf111382yba.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 13:30:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611178228; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wog1TmJsGKyGjQLBIluITkcFKlHtUVmbbqKbe5AW/sPEkFIw0SQo3TGbKOmtMzk1aC
         /x8EuL/shZdNOcpNBBeMBAnSoRXJ7EsAxveop/EXaMwx614LzbvNSJJjfkHXBnD0V2aP
         wsUwDzzaKgmMsct3b42AobITzA7OM0LI0FPkzwwsFhVfg1SNRO5LZheBKi9znzFe0RdW
         iELPGLdyetLeCvNWQJGz/xtCTOt3PdT/3SpGyacr3QgiEgjnPYWpe9/qn31aU4sM7W2x
         rVQGFcF5UkjvTlt12d30upjOL2/6ykaqQfVsQGPdJUOYDxhpkry8QBfbTnGITkaXMTbb
         WVRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=LIrj5uxOxGEKRV7uIgqEn+2GdF0I9wY8qEKfyAG09ro=;
        b=jcrMA1BCCmzcizq15jEbyEP1kfogKybJjxjbcIqPTFHVDC6HOPizN9Y4BaoFZYOwUk
         CGsX53haNToH9KcC4/ecn5kRY03mG5iHJ2cZBzHtDPtk9DclQCHq5N2/YwOSyWiERJs3
         UhDmIUWYMmm+c3DxuSrR/TlpN64nlEb2caFmVDntNgLyZPGIU8evXtU+HeEUVZjKvQ/P
         XEriqAtmvFvHGV4e8aRSI+0Xgitxm5MRGC/1+1BXrTcv5WnzxyUPUgYNAmBJu46rGJ2J
         XLzov/h03Tlr2Pv+xHY2UJJBcYsYxfkMJRTNDHGyGDPduSpYAoYxXhenk1qYYEamj16N
         J0IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CKr3jptq;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LIrj5uxOxGEKRV7uIgqEn+2GdF0I9wY8qEKfyAG09ro=;
        b=K1r9mcIGBpJ5BKMD0U2Ng9NkOq4ISvfOMRFjMJDlueuy+7pFGleHOLt43Xsuk9COki
         RtSieXzur/mXH8vEZimqVKqpwEjrKf5zUATh1M/MrbvE8yEbGM9K5QOmR/CNBNfJSdkV
         I6hC7U/YMPo/do1bM/EwUy4so9b7b2auHbZAoI71jxFc7z4qO957eA/NVxzyj2NQvn/D
         YGnzF+p1OhMip4MTQdZRClOT75ry3NrXKcAyZzGG32u0xi0sukH1hJUehxtTJ/64MAK2
         niWWMhtfCO7lidiHNtW5u04UbxP7SHkA8tjl4ePR6z/0Jz+ZnjOnioUPaVCh0pSLfaFz
         HUbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LIrj5uxOxGEKRV7uIgqEn+2GdF0I9wY8qEKfyAG09ro=;
        b=lELLguT5UMLmfWHZC6JOgIOQNurnt3WR/RO9ZLeN9vZn0YvikqSEFBw2p+ml2ZGbyN
         mLC90Py4DtFW9ojvFI2ER7tAX5PJ0eMIdcgTLxtjEkg8LnZIpyoU902HE78JcuLxSWIx
         Ll6RHU0rkWi/BEXh/OwVVZGv2ikUzQnCt51z+3CcspQ5DJzzbEW4JwqmRGm/Rz9q09Ee
         XW55U258q7gd88zNrK7Ok3KMQhzBa6QZ/aGvNrxvK71UaTrZLXJGjL9zK2ZNW+4oeG5N
         mWefRD56PBeBZqv7SaXxIjQLu9Q4gwghR3nEHipNlf5pRSNp/EoooBYjeFYSnyh/sy79
         7lAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LIrj5uxOxGEKRV7uIgqEn+2GdF0I9wY8qEKfyAG09ro=;
        b=Hb8EXADuowvoE92XKtLwgWQC2oV5ye59EHa0V5/2y6TJokv7RhtHVIrNJhWWf4vg+8
         mgaUrKtvdEy1k9/HzNC6TeetmfmsNiXwDDg1lhcaC100e2qujELJgZHU/KGRH5QmbBaU
         DtHIKECQe8dIlL/nj/cizd4emuEeRSiTrES+vXyrBOWhwxEbrGphToR5eEn43T5jBuuW
         d5997n6/hhk4XefwmCh9mYH6B4CQ0/ksMlWfg1bzl8yhlQWKtq4D5jR7CAq9GLEf4cyL
         Q/2koWAiAfW1Cl2a18KcdwrcYsJG9kGGhwEiG/nQhS7B2+ktIkHnh62XHFyCeEOububi
         wy6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533016hLTGZXJjnjMCN6657TqdX+qXdxqdOsmo8WVOkbRBZx0X5G
	YbrtsZJwvU26Inu6T1hcf/Q=
X-Google-Smtp-Source: ABdhPJxwMlNLzfLiSZ1ELl1GNmSFDj1EuOT0C8gNXzkuOKYH7uQJm/E7xd1kXFLRR6g1gd/OxpgILA==
X-Received: by 2002:a25:26c7:: with SMTP id m190mr16430088ybm.464.1611178228435;
        Wed, 20 Jan 2021 13:30:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls93387ybe.2.gmail; Wed, 20 Jan
 2021 13:30:28 -0800 (PST)
X-Received: by 2002:a25:f30e:: with SMTP id c14mr15275743ybs.251.1611178228060;
        Wed, 20 Jan 2021 13:30:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611178228; cv=none;
        d=google.com; s=arc-20160816;
        b=zz28xn/Q9dh+rvHQeyg01F0ZCxztv8omEjk7BpzFySiQKUf9FH4v33C+/ERcTBPUnh
         CNGSEZASBS5haPrmevmAQb81IzmR9moR6egXwk3FET+34YWSst4mMz129BXrzbxmGvtk
         w7xPvaLpyz9tz/qfMwryOR81Axo968lOSmNv/HMsxgiTiqcOc6KrC3gjQhh92s/JoKeO
         d6wtkY3yvH4gEeJMLKwMQtcYXYtEYJpg2sUcgUOqqfJG1IIL3+M8rFS5XVm0a1a+6DYD
         Z7Pq6fJ5IOFqsz5cWt5gctcMh+8N7TfPWew5jyvZoN/+VaN71j+VtIvmpfsyIWbxWm0K
         dqiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jKYexl2vcEmfmU/MRHTVfCuegl3Ac5+7kuT33+d0f4k=;
        b=ZNF49XWQ3I9x+ohnQh/NMzgLVgU3VIAQmAjPA7C46X5iEyI7N17EpljG1rYYRWCRVX
         bdAkn0hT2jkb3jxU2l1IQICppkoyrQUeW1oVTWPtOl4RkeKB2htFzOwEgpfy++4AdSLk
         tnrQuorkJ14W3e32+kMKFGkEa3pqO4Ai4tkm5rjNSlSE0NdKSEj20cWCV+PF3XF16HO9
         MDGuyPHylmv02MeWwT+Lt3hOXSAxRKbb4NYQt045baHjClsJODe/rUw8JvEObP5U6sOU
         ApRZA/xtkrN0oo+plRrJc0wNvNaPjnI451h/3zmIyeZ7wYTgdZpBgxYsYI83SSqiDEpw
         ZWkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CKr3jptq;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id l15si307341ybf.1.2021.01.20.13.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 13:30:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id w18so4051603pfu.9
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 13:30:27 -0800 (PST)
X-Received: by 2002:a63:dc4c:: with SMTP id f12mr11245550pgj.167.1611178217750;
        Wed, 20 Jan 2021 13:30:17 -0800 (PST)
Received: from [10.230.185.151] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5sm3205137pjz.23.2021.01.20.13.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 13:30:17 -0800 (PST)
Subject: Re: [linux-stable-rc:linux-5.4.y 1944/4509]
 drivers/scsi/lpfc/lpfc_nportdisc.c:344:1: warning: no previous prototype for
 function 'lpfc_defer_acc_rsp'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Sasha Levin <alexander.levin@microsoft.com>
References: <202101191830.NLq63hZ2-lkp@intel.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <1a990243-cc81-934d-8e34-7d0771428b46@gmail.com>
Date: Wed, 20 Jan 2021 13:30:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <202101191830.NLq63hZ2-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jsmart2021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CKr3jptq;       spf=pass
 (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::435
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

On 1/19/2021 2:43 AM, kernel test robot wrote:
> Hi James,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> head:   f07bbbcbb287be51052321bcb6b6d4edbdf810e6
> commit: a9e53499f4de56277f76ae2d362248a0632a5bc2 [1944/4509] scsi: lpfc: Fix incomplete NVME discovery when target
> config: x86_64-randconfig-a011-20210119 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=a9e53499f4de56277f76ae2d362248a0632a5bc2
>          git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>          git fetch --no-tags linux-stable-rc linux-5.4.y
>          git checkout a9e53499f4de56277f76ae2d362248a0632a5bc2
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     drivers/scsi/lpfc/lpfc_nportdisc.c:290:1: warning: no previous prototype for function 'lpfc_defer_pt2pt_acc' [-Wmissing-prototypes]
>     lpfc_defer_pt2pt_acc(struct lpfc_hba *phba, LPFC_MBOXQ_t *link_mbox)
>     ^
>     drivers/scsi/lpfc/lpfc_nportdisc.c:289:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void
>     ^
>     static
>>> drivers/scsi/lpfc/lpfc_nportdisc.c:344:1: warning: no previous prototype for function 'lpfc_defer_acc_rsp' [-Wmissing-prototypes]
>     lpfc_defer_acc_rsp(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
>     ^
>     drivers/scsi/lpfc/lpfc_nportdisc.c:343:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void
>     ^
>     static
>     2 warnings generated.

fyi - Fixed by:

commit fdb827e4a3f8  scsi: lpfc: Make lpfc_defer_acc_rsp static

-- james

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1a990243-cc81-934d-8e34-7d0771428b46%40gmail.com.
