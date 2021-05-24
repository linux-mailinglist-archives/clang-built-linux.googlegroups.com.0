Return-Path: <clang-built-linux+bncBD26TVH6RINBBUMUVWCQMGQEW7OIURI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id D49F738E117
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 08:40:18 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id t3-20020a67d9030000b02902367c8db155sf8422412vsj.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 23:40:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621838417; cv=pass;
        d=google.com; s=arc-20160816;
        b=ocp0bc0lmLAqxb3IukaRCclGJdQd94FkJKOZmafOxIYVGuWNI3ne8N8lD8Iucp3e8r
         Fk4TWNYsRtBcDGhMb96fYD7sDeaoJpSURM9vwyT5X6wJY1x4fUQCX9QiMS+AP8KvcWxk
         HvMG9IXG57+HATZcMoeBK3yrSfkdnpyCNfTQ3bm5mQyBjln+UM9xuR0AjtbvV11bIL6N
         CceIHE1WirgW8UfmTCBhv5TGHMkDGWaywI/lC6+VOkhyYhaA52sHOyR4GiymqL7Gr44x
         0xOfAxKuRiTOO3uird+XqHpTnMLTWbxiI47XmdSCOBJQaFRFXBMu0akax5kU2w45+3hd
         qv3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=oL1jX1uvFeEwal5jwNh2+wHvXqUpXcCPDLodv2Vp6zs=;
        b=Id/gXq8eHu9Vp3HPOw+lZ+4Yw0vnkK92UXsOmBJE+FU7Wu/w2NNmEKODAZcFPXRS5n
         6XcPiElTxo4r3e/PmrLqL0Y+qXNZq9XUJ1p563L94HerWr/xKeC4Z5S990j9982VmrX5
         CtyPVGQIxMPLfzZL5ymuDnYq3+WMkCQUufDDdKzsXuOV/p5OKKw41cGAPpwHr9JLi83r
         KOmknGVWX79cKnP4H6uTiygy1rqd65nRNggXNLSPwh25shaMOD/V3Nwr05nUz5YZ/qW/
         8gQTnEAHchBgEHsaWwNoXWWL5mLl3pXqaoJlGDYtqReT8rUDBxSyKEOrqdomPaQcskyg
         nAdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oL1jX1uvFeEwal5jwNh2+wHvXqUpXcCPDLodv2Vp6zs=;
        b=ZNV1VoEV2C3NJkpNIQsCJ/oJ1VAJWqezUz57R+WDmAfN0Ev9mVMJeqYiYR5015DWPF
         gUaSFwBAw1HUwYUC3ccDmWBEzO1DG7uSkUabgKRT85zWaDncmHPGE89XFm6zVAlTdsNq
         2mtk9njMcEeHUzik3STe6DC89hU9T8Ig/6wzqD3md2f5r6S3LS1aJSIiF/mEDTOQ7K4Q
         YWRBY5JAV+38qySO34Gm3I8buv6RHIPhesmtQahME+kFOkMTA0xKN5OWBZ4cnIkTngjn
         6nGEIh1NgzErt1+fS8nYe6A7OW/a+XSJpu24/2VY0bRh7RBkNOcFXh8OQfdWIu0Iie4M
         rR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oL1jX1uvFeEwal5jwNh2+wHvXqUpXcCPDLodv2Vp6zs=;
        b=OnjF2B983m4Qb/zypzvC9VFFPHDRAim2qS4XyQxIDKfT2Q0xnvGYV5CoVjhbhg4VvC
         lnRNuGLKOBurL37KECPdeLkVbzKbKRq9xdIYypeNF5RHP9GwmHFtS38zwsgiISprM6pm
         cvIZ23L+M6cAY2mbj1caogS7FMxKXiqR+FE5q1X7//FkMPF+QN9TOWJOK2jswL3xKd82
         42VZAp+3cu2K2fz7xZvxfzcp1FF8idxcqA1WFGml5GulnBjZGAI1JCSXmQ1d5f6Dk+xr
         hpuLnT/5FAMcvDEXzQ+Eve5dy1xwRADE/HtdTeC3XY//Q1V1IKUUFSOco3YcpkGH29Gq
         Lyaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HXMp4RCoKb1iq6cyxKuohzAoITopeCq76dnCB3xraPh0Ipz6a
	vZZfZYv4EgTXw1F5/e5uPvo=
X-Google-Smtp-Source: ABdhPJwMXoajsxjC3mN0SEpTxawhkas0BVtGhGEwrMgY7FIr0aoEVmrjJdyByVxJeBEovakAEq4uEA==
X-Received: by 2002:ab0:288d:: with SMTP id s13mr21211465uap.103.1621838417760;
        Sun, 23 May 2021 23:40:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c7:: with SMTP id a7ls2335615vsp.5.gmail; Sun, 23 May
 2021 23:40:17 -0700 (PDT)
X-Received: by 2002:a67:c08a:: with SMTP id x10mr19805421vsi.57.1621838417209;
        Sun, 23 May 2021 23:40:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621838417; cv=none;
        d=google.com; s=arc-20160816;
        b=eyUxOIqzM/owTQwXeVlTlVBas/B2irUhvAix8FO47f6nCg4MiO9BSax0NR22FUlh75
         r8q1Q7pSvL2gYw4y4hzaJr0886pEI+OdpfjShphyXOPjVrolcs8lrCJgMmRmOoAwTSO4
         yeXGGHBG0V+jDPZr93iIVHOB/TnaflWyPHTZtQi3CWj08cYHNLbq3LXMyM5trSzh56HB
         ug+vUI2A5dtSDxm6y1TrIc14m72Oze8IHyk/7dDa24rC/lkjov0wT2asL/80cQV+JRLN
         lJvExH8WDkkXqcxjZgXZo0ETKSXsNpFp3tF5xmcoYEQ4vWVyp8V0kIDb6zVxGVMaD2A5
         eOsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=LlajAJehlGVHtHVnA5ORefd116dBDpfYSINtGZ2Gu6Y=;
        b=m9apicadFWSa+hgLQu6akgtp9+RsrHsmVVSIN1X7Xh+MBXd8lTuhHFNBrOYPsPgJb5
         pp8spt/NASxn5GqDpGQT12+jnG6rXa6cv0efoR8D+A1t+8aYI6oFzpGh3hxBBY/h1vBM
         jWnSGTw3Ml4IdNBnOKAD9eNdMIRiE+LsG6OOVegVen5YGOXsfIAxmHsGtdh2KbHtBTHw
         QTYVBp32YGvTj9KrDq4rQKQ1s+PgZiNAZj4+Xrv0HJ8AUgXfEDh6lAA/JPBmdmXIFCzU
         6IZIErqVt1d0yIbsy5q89a8FOYdvg5ZueRbXobqP4EOu/TpuofWSvSJzCPKeFOmb9vND
         SxdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id p201si924385vke.1.2021.05.23.23.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 May 2021 23:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: bWOSoll9dO1a/WjZUVqJ14/w48WmKce0qd48y9YtFPEMa2WhQgjEh1cTR2kAM5hnUwoFUCRx9e
 BizECLnRPjbA==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="188990694"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="scan'208";a="188990694"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 23:40:13 -0700
IronPort-SDR: +dlCzBQ0DLDpvHjzRSvDb4rXcI7SocwnjtcCwgPGslm+s4VNQNL7sR+obv3yFgaqmwhjBoIgQx
 GTGBI5aWpeIg==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="scan'208";a="475707047"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 23:40:12 -0700
Subject: Re: [stffrdhrn:starfive-bad-dcache-flush 4/39]
 drivers/char/hw_random/starfive-vic-rng.c:238:34: warning: unused variable
 'vic_rng_dt_ids'
To: Huan Feng <huan.feng@starfivetech.com>
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Emil Renner Berthing <kernel@esmil.dk>
References: <20210524005335.GL2687475@shao2-debian>
 <F687C5AA-DBE1-4892-A041-F1C6A3524B65@starfivetech.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <a5ba6947-7ba9-a9d1-1eb9-a0d8dc0666a9@intel.com>
Date: Mon, 24 May 2021 14:38:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <F687C5AA-DBE1-4892-A041-F1C6A3524B65@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
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

Hi Huan,

The patch works as tested.

Best Regards,
Rong Chen

On 5/24/21 9:40 AM, Huan Feng wrote:
> Hi:
> 	I can not get the source code from github.
> 	Starfive vic gpio and rng hardware is on Starfive vic7100 Soc, which is RISCV ARCH. So maybe they are not used on other Soc or ARCH.
> 	
> 	May be the attach patch file is usefull.
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a5ba6947-7ba9-a9d1-1eb9-a0d8dc0666a9%40intel.com.
