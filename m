Return-Path: <clang-built-linux+bncBCQYFH77QIORBGE2QH6QKGQEPXBK6CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-f60.google.com (mail-qv1-f60.google.com [209.85.219.60])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDD42A32A5
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 19:16:57 +0100 (CET)
Received: by mail-qv1-f60.google.com with SMTP id t13sf8758215qvm.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 10:16:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604341016; cv=pass;
        d=google.com; s=arc-20160816;
        b=osKoHuy8EO9gE1fkc9St7QLHF4iLdkSroh8V3WlzozVqrnSFRvq3994AqTdZWa1wuF
         YS5iwhcL2RQQL3sZMtKF2ka6QNXLeyQvY/npwdmTU+EljjDZ3JJEkri2iGlT14awwr53
         3gepF0/CR2iDJA0BJli+E0gsr0qSaNbVdl9tlfH3gSjzQE4zgOHMVocQgB35HTxRhX04
         b7b9mVmiGRxreJa8F2wbgxdvi8uBB3iIe7s2e/lEk2p5LyKkXDx5Sw4nJRT9arAIEYdy
         JeLuF1WjclKro7UiFofoMxAbd3aNyrCg7W+ZfVrhUTXbj625tfxP3CU1TTr8OiNwLKjQ
         2ssA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=Pl23WxCC3uO9lookumcrp6N1XyqmVECosADLOJ4YWBo=;
        b=Fe1jjnQCWbPZ2NI+THksR/vJF21zWVS1JBZW4oWEa8GuCLz8h4zLhIGVcUA/MHT+6F
         LZRfurAbGavcbsQbgCcEA/tMwT6gO30Y7T4NtvPyOSj0SQNpuwmq53nnedfDdcX7RKKk
         fZ3g+x7wkuj2K/I7gK29w4ni8BdJKeNQoK6mDsT+uXMTerYsLjp2o5k4H5E3NpqdtZhI
         PQxUYMQBeOBaMva51YAScI/YRuUmQIRt8Mg1fAJpmcu1GhXgza+ZHJdEBRo6adQT4CHe
         omMR6g5Id6lqhfreB/S81ToMYSfHCv0qp3vaL4AXF+Rs4wvnVetcec+nbJYxiLxnhIYA
         /N+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=ZJdUQJBH;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pl23WxCC3uO9lookumcrp6N1XyqmVECosADLOJ4YWBo=;
        b=Vd8GIZJb9/q6pCrlFTAAK+UlFIO5jkComUgke/yskZslihRjeB+h/2gg7DptwdC4Nm
         sxVq2c4kKtVpDiWMcY6qSLeX0Objnm166qkuOoNRz9zJjbP+ABUOxKJx/7uVMUMmZSRe
         rXtu7VWtw5oEkj+Pgf79eIQ1YRCKqAv1SEV/hY8M6beTXhib1irvhtgCehnYsMbTy2LZ
         O0nH4FnaGEilAKffT19tM1vNSoZb2E0GfFAi0JXvchexFyppNVU4YVTJKl1rcqJyXQFb
         r8FZELKmj1QmJ0HxDErYAMkbV+6j4vgw3Bcu5t+FfiZ2Erv9izbJX1XetRJBMNwqNzr/
         qmSg==
X-Gm-Message-State: AOAM531eQvtCDxBaYcgwSNvA77AWs/doah37Wky18iUNP9JueHXqVDgE
	8YZ3dfEYsjByier/96eQv7s=
X-Google-Smtp-Source: ABdhPJwE3RuJ6j9fBJuBGpwAlpnngc3axtBp00DZgWJHkcqFEtr0+Ee+jLkRpHbsMH2XqrkmcP651g==
X-Received: by 2002:ac8:24e5:: with SMTP id t34mr16457104qtt.0.1604341016628;
        Mon, 02 Nov 2020 10:16:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls7243807qkd.1.gmail; Mon, 02 Nov
 2020 10:16:56 -0800 (PST)
X-Received: by 2002:a05:620a:849:: with SMTP id u9mr15690660qku.419.1604341015751;
        Mon, 02 Nov 2020 10:16:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604341015; cv=none;
        d=google.com; s=arc-20160816;
        b=WRmF4zonusb3oCFuk66GK4h2ULzlJJEiOVeLBwWp9EPNt+iDmQO5w7TD/kpuSy9ene
         +REUIjX5PRBY0UJNOsUsSnaKPM35iIwewUOGZneHxOW4oHz4LuAoHBKORrLd8eKsHGjw
         lZfJ/4aMPBVFkBUvhv3tae4nCEbV6vRL9UzuSQTgn5qoHTeDoa9qEm9XhJjC5Eb+hyaq
         Rlo03XmUt9HC5neXuCcJKP6LTimhwQ0aF1Z5xXT+LqBBzluBDGYI4cKold8rb0NnhsOm
         9B2SooAnlk2JBy5b2/+7A0HQ+gNnSvDWR8xcv7jhkuAjjWpSoQaev/fVq18aM+ZGwCCf
         mX0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=nS7fTYel1RkJvIVetfpxWCWaUmGRrDbjg87RLUX+kic=;
        b=X8EkqK3kdnAPPpx/oeBpCEsvlRWqXH7Cn9luEtDLpQMFS2lad4j+qEZ2woqokFkaG+
         oq5r2Qa4/uWjZdMdC2fHQ+3fzFdhTFHJNaUONW39lLKD3LT+k6Gf9qU2KSa4qhoPkZ6T
         AG2ajxI1IB6pD0S/NFF5ZfwHZPp/57B8J29ng/Slrs/UWAlyeyDh8qkuwvuRrOvVcONI
         DHk4sSS3xk3rdYxrd3nHipvGfbooFsm629bAtPrUIVtPZU+66vseiHecGg8Rukq8SoDB
         Wfg3JRtjuFRmJKJ22q5o7gjjPanXYeE6jQ+5Bt0V3pSs4UHhOZ6/wDopL15VeN7nxWEd
         l2eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=ZJdUQJBH;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z5.mailgun.us (z5.mailgun.us. [104.130.96.5])
        by gmr-mx.google.com with UTF8SMTPS id 18si645692qkk.2.2020.11.02.10.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 10:16:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) client-ip=104.130.96.5;
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5fa04d159f889442bbd6c4e6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 02 Nov 2020 18:16:53
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id DA34BC433C9; Mon,  2 Nov 2020 18:16:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id EFC12C433C6;
	Mon,  2 Nov 2020 18:16:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EFC12C433C6
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: rtw88: fix fw_fifo_addr check
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20201011155438.15892-1-trix@redhat.com>
References: <20201011155438.15892-1-trix@redhat.com>
To: trix@redhat.com
Cc: yhchuang@realtek.com, davem@davemloft.net, kuba@kernel.org,
 natechancellor@gmail.com, ndesaulniers@google.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Tom Rix <trix@redhat.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20201102181652.DA34BC433C9@smtp.codeaurora.org>
Date: Mon,  2 Nov 2020 18:16:52 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=ZJdUQJBH;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

trix@redhat.com wrote:

> From: Tom Rix <trix@redhat.com>
> 
> The clang build reports this warning
> 
> fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr'
>   will always evaluate to 'true'
>         if (!rtwdev->chip->fw_fifo_addr) {
> 
> fw_fifo_addr is an array in rtw_chip_info so it is always
> nonzero.  A better check is if the first element of the array is
> nonzero.  In the cases where fw_fifo_addr is initialized by rtw88b
> and rtw88c, the first array element is 0x780.
> 
> Fixes: 0fbc2f0f34cc ("rtw88: add dump firmware fifo support")
> Signed-off-by: Tom Rix <trix@redhat.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Tzu-En Huang <tehuang@realtek.com>

Patch applied to wireless-drivers.git, thanks.

ddcd945e556e rtw88: fix fw_fifo_addr check

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20201011155438.15892-1-trix@redhat.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201102181652.DA34BC433C9%40smtp.codeaurora.org.
