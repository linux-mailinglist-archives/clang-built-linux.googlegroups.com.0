Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFOF3D5QKGQEVT7DESA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C19280714
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 20:40:22 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id j24sf1270045vso.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 11:40:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601577621; cv=pass;
        d=google.com; s=arc-20160816;
        b=GEc4BN/0vy+zcLgptg9CFTSmj8Yvqt6fgoDEe6H6G0rs3qHdEbpn9epEjD2ICEklLk
         pL6haRfOfuVdq9kI2Mzgqq2Nw7SIfv/pUzbEs1ZZBMgEBnT6Kvn0nRZfGFvvvcKOHip9
         +ILfXvT1BF2sFqiExXhUJLcPAhheXQsvK/+ptVodzftjT4/R1MxC0Oca5TfvvLQM4eS6
         UktNCK6BXEwSVgxG+WtK8Bmh8/gA5bI26oM4ZEwDxZ35pG6MrBXPuhGOVYfxPtfzcmR6
         SGum39rSpUqmuCEPiTbKgDv8UIuUuFRd/PNYhBIRUnOFd7g9tdBNAElIlENk3+qZ2sdw
         9SMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WDi5xXQdvG+UCrFIBgT5AN8Z/QLSUPySokGdZ1uzzF0=;
        b=Xk+14GTbK7q4Us/tgkne0v4p59lLtf8i2hAQ5cWScxK4zcNwbK58y+irFJDv8nPyP3
         0RRuBBPWvCvWGXQyFTs2N9mO/PBH22weCWB8P6kFUWmxmrcOabwBmxXvrcPXlaPqRvzO
         /YscIl00JY5cMQAvH12uM1s2Iq/07HACi56Ry+vAe+uh/7Td7CtUprh0jwrxis+L0zxi
         AtPZ+mXu825z/54yXTiH/3TSUPXMdvoH/I2jEc6L2+7z6BD9/kD9VlK3wqupFCdQ5nN/
         CbE8WPWxZVo712QWIgiP1bw8kov+lZg4BPnger7LYm40/EU1nvXWsfFWXywiEAiIFPnU
         quQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RQLTms+f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WDi5xXQdvG+UCrFIBgT5AN8Z/QLSUPySokGdZ1uzzF0=;
        b=fGiOVosQZUTHSvjuZbJUfUVOThA4I+1A77VKanpedV30VxEy/UxHoT9BUxx2LpKSCb
         WAtM6/EySgovQ/s5mPSBL/E3W1ltD+I3l8kGxTn5IHwoMX4JcIvR1NP+In1FEDq0rCZt
         1KZ/7I7bJbNj7D0zIQH5PtcNZSrKWxBTptAHJaQELJkl251Q3KSa5Ib9IVu3YFqYOYmq
         8clzggtwTijt97lIpV4HvsbJ8qTgcDxsgmBUvtVOSe25EXi5T8c0ugp2t5Ig6eXAx54u
         MONe0xZX+dclkAbbg01Ca561fM1lKNxI5X+uba8C2RlIvQlZrWRok3y9fFrNydOsAQtl
         6PBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WDi5xXQdvG+UCrFIBgT5AN8Z/QLSUPySokGdZ1uzzF0=;
        b=sbZKuGcGuw98bjOU8rwC8Nh6bdeleV/izid3aGorZdVLLq7W0C1jKJ7R/lt4mXnWl2
         s2WnpCcNIvrVhxfMwXLLTIHNEr89+h2QVzoB3hy9s3Rw26FBXOJCVzwMZ11SJX0FrD+2
         PkWEbHVLS2Tve3XLmuC7bWzi9YVGMExhB1wxNZGy+W22sApLNH/0+8iZZ7btZqGTjlBP
         /FwWVLhSDpludh4PVLGSuj6hBUKua0NRuF3zvk+wkAjuGvX/OfuUxd1HPIto35QtxC4d
         pi+Iho4joTWQ7rY1SY23XCSU1rZ6CBSehOr+0x0qJvmoKXmO1UJN0oNERxFEXNweYiAj
         12Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WDi5xXQdvG+UCrFIBgT5AN8Z/QLSUPySokGdZ1uzzF0=;
        b=o+ID/uTBpzpb/h47amTq9num4KN50hR7Q+89u7773bAHhCuHd7MIBvmtHimwRDcfXf
         cnZQPff295j679csAD/HKi1VGYXUSb5UDxHQA8/yxcu+O3Llx0yAKlqKz/HyKOrIB3DA
         kigrwBtyDF/0o6NERCXwlSHzcHJpS07ONGnxIhfeR1vCuevFouGgbhP28DCoLQAqgOS3
         uWxx22oc4ig8xCmWMInkLJtLjpVCxmoJt3ppb3igX78KXpTUNJ8955h8YbyP4cRDVnO2
         zn0oU2mIw4UrNLS+MqWznSdpbXoYSrwD8nNP+v60SD9eJXA3AHmCSQ5pDEZum55tJMc7
         Mo7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qcp+P43IX5ydnJicLlmfqCsBnqe7t0vj7TYvoW7z19QP/OjZg
	8v20/USMrW2wWCEA5SeA8Qs=
X-Google-Smtp-Source: ABdhPJwYD4nZVqqEsEewYRep6+sy9ETeJbmqROh+r9vxZHXXKrjwP427GwMtbNPSVpZv2PSYSh7row==
X-Received: by 2002:a05:6102:22e9:: with SMTP id b9mr6501873vsh.55.1601577621307;
        Thu, 01 Oct 2020 11:40:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bfcb:: with SMTP id p194ls346549vkf.8.gmail; Thu, 01 Oct
 2020 11:40:20 -0700 (PDT)
X-Received: by 2002:a1f:4507:: with SMTP id s7mr6165949vka.9.1601577620804;
        Thu, 01 Oct 2020 11:40:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601577620; cv=none;
        d=google.com; s=arc-20160816;
        b=jd29hIQXDZOFLxGLAApR7fhoMksflW77Exu0yhIrY1rpW0P9q+N2UNR/w7lyZxXTC/
         8iCHjeM/EfJ9VrmNw1u1RogGZemipXKgQuEIt87BTcUeL4hb5O9dVe0GG0X8Uwz/hMSn
         CsvGC+E7fspj93s2Y33TLe6YNaAOxELUbEfZPyRQIaYCvdKNYFNKzH74T4qVtPLUYTbM
         SH1KlWuhPEWjVlkhogRovu9ZDBYqLLVrafs33OWD07P3VBXfcF9JEu142V2HeMd0ytnR
         Rd2y7BxxHo09p39jcemq0Xi+6hpu4ynRYxNFjBcJksUrio8mIbHUNmIQWXH8U5c0/o+2
         UAdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bT1J6Z9CLIzHImMMrPae25NAqAg4qvT7z5q5kWJnZFg=;
        b=WppxuvE/VgeGb8Tyd6TOZqQPNMWWSURCcgGBrW8z4drcA2Gw/AN4tHKgPhORQDWfVH
         BgwZCS7gR85/fH/wAkudvao+92+1z8+fHXemrjl5Nlu9d68WwSBVyX2I2S2b8XDisQsp
         tLnTQ3CNc+7GxpX0HmD0N3PaEfKoRCRSYi7OLN+QEfT5npip84eusiNfgMtqs5xhtsJf
         NIXXU931u+xV7aLNlPOy7wbtJJ5o3XAkY3BF9KWlWpF94cHFkJMp7l7etpA1ujbQLz0v
         /dYPweatCDQ8hnU2+1UlDhorJSKWdP7I2GV5eWA7HY51t9xFY/nenDUfWGHSc4rR+4xC
         jJ1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RQLTms+f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s11si499817vsn.1.2020.10.01.11.40.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 11:40:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m34so4694790pgl.9
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 11:40:20 -0700 (PDT)
X-Received: by 2002:a17:902:7798:b029:d2:80bc:7429 with SMTP id o24-20020a1709027798b02900d280bc7429mr8809310pll.80.1601577619815;
        Thu, 01 Oct 2020 11:40:19 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id r14sm6216966pgm.7.2020.10.01.11.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 11:40:19 -0700 (PDT)
Date: Thu, 1 Oct 2020 11:40:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: x86-ml <x86@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [tip:master] BUILD SUCCESS WITH WARNING
 99b8adf3cd30dbcb441cdd7282f0c6f7ef1615f3
Message-ID: <20201001184017.GA539221@ubuntu-m3-large-x86>
References: <5f761f6c.3JikdZmQTQD4YT0X%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5f761f6c.3JikdZmQTQD4YT0X%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RQLTms+f;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

+ clang-built-linux, full original message here:
https://lore.kernel.org/lkml/5f761f6c.3JikdZmQTQD4YT0X%25lkp@intel.com/

On Fri, Oct 02, 2020 at 02:26:52AM +0800, kernel test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git  master
> branch HEAD: 99b8adf3cd30dbcb441cdd7282f0c6f7ef1615f3  Merge branch 'linus'
> 
> Warning in current branch:

We have outstanding patches for all of these I believe, just waiting on
review and acceptance.

> ld.lld: warning: arch/arm/built-in.a(crypto/aes-cipher-glue.o):(.ARM.extab) is being placed in '.ARM.extab'

https://lore.kernel.org/lkml/20200928224854.3224862-1-natechancellor@gmail.com/

> ld.lld: warning: arch/arm/built-in.a(mm/init.o):(".discard.ksym") is being placed in '".discard.ksym"'

https://lore.kernel.org/lkml/20200929190701.398762-1-ndesaulniers@google.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001184017.GA539221%40ubuntu-m3-large-x86.
