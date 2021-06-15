Return-Path: <clang-built-linux+bncBCQYFH77QIORBSW3UKDAMGQEMGPOLFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f184.google.com (mail-qt1-f184.google.com [209.85.160.184])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2FB3A80C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 15:40:27 +0200 (CEST)
Received: by mail-qt1-f184.google.com with SMTP id k1-20020ac80c010000b029024e8fac2965sf1220106qti.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 06:40:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623764426; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gd7PJ5bSiTiuO0Rffn8b70YyMMbD4A6TCC2XdoyOOK8EZJ4CHGgJbV6SSnZOf4w/S7
         xGXyq6hA6v8zo0EJo5RzyHmtX+vk+TL5QVxXtDrBUfNFyiq1gWBJ4mq6kfxFaFtFfsPg
         7fhDHxAHybM6TeS7B9HbeTxAS22XUXFiZ3zrlZPkgFoBO3oiUAnt8YLCw0aXXu5gILlm
         evzjhK5x2X0EH6nF4a9f8kteLdoFmkv1pu/FaHqha2OdVRSWFtVk0terF9i1EczmYffP
         yejNmiEJKD0oXTKkEgPIjP6YYt4A0XC86L7jxlT2Me0dpQzjxZmbvmHqkj0Tv8TEZWBw
         vREw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=2TJ3FnBSAmZ/t0ID5h9sKSNK/h1nloy0GpJi4S0hXAY=;
        b=e9tRnHP4uE+Vsy901svGvfnycTt5l46UbDgsnLDecT2KwprUwc4L55/+AXiMkiqbQL
         ubgRgaVftzEXx00W0vQyq87wqn3sxlSVN7ORGFAwuk3Tr+tFO6RoubV83RxhkWSsNdpK
         ai2yQkq71BeCbVxxnJ4mBchAinyLT0ElT0riE9pvtqM0QfwmFumHZ6bgpJoi89osBLKS
         fJwW9u3kIllRKZa4ApCQfh4J2nSbjsJOUhBx30GZ5TPXZiF4wsBMLCMcKFGFcEq9StBv
         MEbucrtN/f0B2qhRK8J8zsv4D29IU0MIp+VIm7fFe+9pgTXaIRQ1t0tW3DPbodc3EBbz
         uC1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=RvURP5dO;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2TJ3FnBSAmZ/t0ID5h9sKSNK/h1nloy0GpJi4S0hXAY=;
        b=iUXQSnjEdXTZctejFF7G7Ma5OQociiUrPPw9rnJXKwqaoTSsGk3S4IfupS/eBukJUx
         eLIs6+PlHCPlSLnyeZDS0IsI/Hc63Pbh4l5mPY+i5vePM12B/O5Q7QbcaK/Ow4fwmIvs
         zgPHoKxZPogGRD1UBVEyrfJ9hKID/7B0+eZnk3OqB9sgicWkmMfzmvCaojr6sdXwdeW4
         Q2lArnO5NwMhSGRiS57gKRukrZ2YbVcbtUobNsZp4kW57yooU2457Ut7rDZqCOhp6E9r
         daMzwQMwhXmEVEwekFXWbs97fmxOEZ7ZWO+gQt13v6y4BPKRf5q2fXR7Jln4jqoaggyv
         5/0w==
X-Gm-Message-State: AOAM530V9eY0UvBX2Xxi3aAvbOGLRRBTbKgL6T1Geib+CuAinBqWQDiA
	gIdmgLA9fNi7UFKu7sFmzOs=
X-Google-Smtp-Source: ABdhPJw9/qT8Ihhr4LJj7MinH79cUEo+pypImjo9x0Jj+QdJDcb+TlQE6Jae2Rd5bno5QCqUVfXAxg==
X-Received: by 2002:a0c:ef41:: with SMTP id t1mr5408544qvs.2.1623764426601;
        Tue, 15 Jun 2021 06:40:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5cd5:: with SMTP id s21ls2980061qta.10.gmail; Tue, 15
 Jun 2021 06:40:26 -0700 (PDT)
X-Received: by 2002:ac8:4c8c:: with SMTP id j12mr18810644qtv.390.1623764426148;
        Tue, 15 Jun 2021 06:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623764426; cv=none;
        d=google.com; s=arc-20160816;
        b=pfEYq7qpohHayp0/ffuAbj2ZLVgGKjE8Xx5R9t1AyTwEVQVRpZKd9wa1F1k6a8yok8
         9gJYBJffhofSft4CQEaCrqWEpdY/fDMOnULJQRfj3/jTPnSbj0JVGZK0IhhtMBtVwzww
         Q+xBt6rlT0QBYJeRzOTXyVE/obsRBjiW+aYSZGt/0Ec66tPfhSpM3UtdHAmKY38BKBns
         BXLlbu1mAFLuMsXt6NLTiVMInoqHmS4e4c4C2727ahXZvyE28bv9pPckNu9SjARhu1Lm
         7XX63l7gT8E+BGVe9cdPhhLJvxMymU2VwVRpSqnp7w9Bg1amEhPTt2ttYbygnTsSnjQn
         dAag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=a1WlzaO82iLMRE52JxldZdL+R8HjpJo5eZ9dZVqlH+E=;
        b=jIHqGLIgkWbqU6a6T6fTrmqlushTP4K5d8REWB6JfsLyAd+iWNXP9p58djTlPTJKCD
         Jxrd65NRV2oiWFcDhdwaTgCKnZiXhUqJ5I0b5mYoFN8vUNeae588AClF5Pni2zRMXCBI
         ysdyFgS0FG5XjEynvUuWrBuCvpUZOSUtDuh76RkvoNUT9tP1d078YhUsaiGWdAZ/wBJi
         jDpOa6J7I5gbcolq1GttZq9xL+mUYOmW7QROPCNmncBl2AKPw0uWnevOFKHpMSqEfnQG
         9R4dJEr+8/fy81y249XVZ70dP8x9zYHUP9RaqHPJ3BGHqko+GuBnbzU8vKRcFDFR0GAu
         IWPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=RvURP5dO;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id j16si304602qko.3.2021.06.15.06.40.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 06:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 60c8adb7abfd22a3dc93d750 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 15 Jun 2021 13:40:07
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 676C2C43146; Tue, 15 Jun 2021 13:40:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
Received: from tykki.adurom.net (tynnyri.adurom.net [51.15.11.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 6BB2AC43460;
	Tue, 15 Jun 2021 13:40:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6BB2AC43460
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] rtlwifi: Remove redundant assignments to ul_enc_algo
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1621303199-1542-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1621303199-1542-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: pkshih@realtek.com, davem@davemloft.net, kuba@kernel.org,
 nathan@kernel.org, ndesaulniers@google.com, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Yang Li <yang.lee@linux.alibaba.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-Id: <20210615134006.676C2C43146@smtp.codeaurora.org>
Date: Tue, 15 Jun 2021 13:40:06 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=RvURP5dO;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Yang Li <yang.lee@linux.alibaba.com> wrote:

> Variable ul_enc_algo is being initialized with a value that is never
> read, it is being set again in the following switch statements in
> all of the case and default paths. Hence the unitialization is
> redundant and can be removed.
> 
> Clean up clang warning:
> 
> drivers/net/wireless/realtek/rtlwifi/cam.c:170:6: warning: Value stored
> to 'ul_enc_algo' during its initialization is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Patch applied to wireless-drivers-next.git, thanks.

a99086057e03 rtlwifi: Remove redundant assignments to ul_enc_algo

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/1621303199-1542-1-git-send-email-yang.lee@linux.alibaba.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210615134006.676C2C43146%40smtp.codeaurora.org.
