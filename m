Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBDMA7D3QKGQEUIMY7TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C2621281E
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 17:41:02 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id p8sf20839294pgj.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 08:41:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593704461; cv=pass;
        d=google.com; s=arc-20160816;
        b=wA3bJPjSGOx3Uonk7SCkVndoKe37D6s8F5vL0OYBDqBp74H/ou7c0+2IOtTLstGVti
         HiE5O7VMDis8ECuc4lyxbty6oMg4LsVUJJ0UvdHPd9NLFT6of9lOp+ZLn41xM18vLwL2
         QKLVyWYthi76PMb8ySs9/2h5iMRqeZj6aqs3+cayjMnZkjQo5+YORf4cCY7ijK+YhOuF
         ylrV4/cSQiGHJS+WgrS8z34MMSakfXcF82Wx4xkHlS4FsOEs/5SGa4c2NqYe8ObJm8En
         XDbXmvSFUnLzvfJjC5W5hE4e9/V+hfQmkGJ9i0ioaaLKCko/sKTGxoWVRFWqsLwiKqdC
         zudw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Fzipit8hVjFSwRZFbzQHqZKk38aNOaI9fsnibWDsaE8=;
        b=bFaUAeIVMtSdMHa622L66Oh8b843j0ezO/a/4u3k5rBcZo+cCdJ3o5h541AOJP+Avj
         kSf546M14K/Qn4ycwdjN1L2qLegKBnm5MjRK9wQHqLsy84WEDKsXeYOzGTZoam20IwqH
         EZwVOZnbeecktZr2c/vgZMJ6Eu8gvujIOgPaHiDtGaaz3BNosiv6RHwqKmWCFvovMMLq
         COiBbjSvOOFHP/04KXTeR6w86Hwkiuy4hvrUySmUrN+tOSDXR3ot0EQdpasqoq7ODLgG
         aPqF2JhTcnZeL1RJsLpyTludawIKXI8lGfVm1x7B/YticEZBL857PonWQOtJ+Eke1tyw
         zVbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fzipit8hVjFSwRZFbzQHqZKk38aNOaI9fsnibWDsaE8=;
        b=GWkjPOsA5ZA+nPIgBqq51qPcWw9JeWhw8pyGPvsQKL6NBobwfv22dNW6/h60hZTEle
         bCK2qLpKv6oaafix11/OtO/1rQki0i19YYb+83RVaQFNW384CGJEy5t19/gja2B380I+
         dTO/CofhE7+GTkkKtUxDFhtySKJMstrgw/ZqiVqXUCla5PBBmgDqaPH1QLnKRpn67REp
         qAIifhp+Z6JhEE276n4yfSqMhjOTkU0y8UKXb+7p6+vH694QJX4xMHknC6Z+jT/Hjrsw
         bo+uyLLe0qS4EjVBeoFUS+tw0x9gnKPZWI3DL+5LcesrUU+AoAubpwAphl159yBzfV9a
         EgPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fzipit8hVjFSwRZFbzQHqZKk38aNOaI9fsnibWDsaE8=;
        b=POBQc/UPlft2kOs34dwk3sEFg1cIeJHnTHSat/YZt61oaLHUsWF2PfTXXRJXpUDw+n
         tboDDpK3fzAomg8zyNvKzu5P/JmwxBJBWXuEo2lj3F5FhQvKP9KI+nEuq3ywNB7stqY7
         X4FJm4CVecm2jbwReOR5yidF1L33wlrMuWsiiVL/K8gLIJfpZqtsY6z1RkVHf0tgkvB8
         vzWMdlzYQ7fZtmUI82/0zWTIgDi1CxohBtaaidfTEzt4neu54bpSBqJIHrn9krlAtmSM
         KXGmWv2GWnP10PxdrgBoeXb3Gj8a2hRP7ea/zNz6m8JKy6HEtSA5Im1hl+pdULFurQFO
         Tc2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339ByLrOSjg/xNoyMvgbIUjrD1RK1FRLHrmZojUQ8Etd43oSBF4
	PWU47VFvUQBgQSFX1XyxbD8=
X-Google-Smtp-Source: ABdhPJzLLz9SrEfeQ1Ay2ZQowj8ubkFBS6VnxeUAWSGWNvcw0fnFLS7SyOMquJZKlgXVDqUXwG2Cfw==
X-Received: by 2002:a17:90a:c207:: with SMTP id e7mr25770891pjt.49.1593704461203;
        Thu, 02 Jul 2020 08:41:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls2387971pls.5.gmail; Thu, 02
 Jul 2020 08:41:00 -0700 (PDT)
X-Received: by 2002:a17:90a:ce09:: with SMTP id f9mr5038901pju.55.1593704460692;
        Thu, 02 Jul 2020 08:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593704460; cv=none;
        d=google.com; s=arc-20160816;
        b=wJ3IYKdreRZS2DXc7IlLjeIDR7g9GaVEtwZoGylceMZ/YYq9vw6qzr7ec+UPKJuOlF
         oKcKVvyBVE+gsKg+/rl+C1ic9HZx4msp8e2T2koME2opIHVweGjsU8fSESjC4OSfUs84
         MlZ192Kcko7zASJlh21coMSxOhm1dKeSeWy3ebPuNMaV2N63xuO/uyB0s2GNNGyRArHP
         HjKGsw2iFwK40ppJkh9ods3HbegD5S4oZGQI8QAG5eKx+cniksf1F3TPOej89TE1qCr0
         J/skmuWRWWk+4UPBKivxZhnUQ/X1qll8MK58QDWZmJJdy/vlUHGsGYCFjqe0qvcsdDon
         w+1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=yVTItQeaDCbY/7jbbebVISNqDsWllhIVZLsorEh6mDM=;
        b=vkmPI4PpgYOzcVbKjf6Wj5FFaNIFjjhHd+UEGNokVio+jIcsWSrXLOTKEitJGNb02V
         mTUtqGJ/Jxpw/JgqcQIdNQa1I4gXHU7O7lWk+0niCE8OsIR9wjfojXjQ/80NUCycWRZn
         5GEqwes7obZBj0nb+P8ORDO7IYcsgtuS1aVST7tX0rMnxJSglPQ55qxeuIaeA+cgyr3L
         StjRYPDhdH78kqlbU5VIPv7RSSXjdcJQT65kFJpMY3JlH3HLcu/Ks6h4lX79kwCe7fgG
         mQPodPGPLbWLzgDi1pQ1RAiasQ7GVFj2QkAgE0IE10pzhg4EjbtdXC24jifk5mHvkilv
         GFhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id j23si685431pfr.0.2020.07.02.08.41.00
        for <clang-built-linux@googlegroups.com>;
        Thu, 02 Jul 2020 08:41:00 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id EE4FF8062;
	Thu,  2 Jul 2020 15:41:51 +0000 (UTC)
Date: Thu, 2 Jul 2020 08:40:55 -0700
From: Tony Lindgren <tony@atomide.com>
To: kernel test robot <lkp@intel.com>
Cc: linux-omap@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, "Andrew F . Davis" <afd@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>, Suman Anna <s-anna@ti.com>,
	Tero Kristo <t-kristo@ti.com>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/6] soc: ti: omap-prm: Configure sgx power domain for
 am3 and am4
Message-ID: <20200702154055.GJ37466@atomide.com>
References: <20200622164652.12054-4-tony@atomide.com>
 <202006300345.RrpFuQqi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006300345.RrpFuQqi%lkp@intel.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* kernel test robot <lkp@intel.com> [200629 19:24]:
> >> drivers/soc/ti/omap_prm.c:98:21: warning: attribute declaration must precede definition [-Wignored-attributes]
>    static const struct __maybe_unused omap_prm_domain_map omap_prm_noinact = {

Thanks no more need for __maybe_unused with these patches actually,
so I'll just drop those from the series.

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702154055.GJ37466%40atomide.com.
