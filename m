Return-Path: <clang-built-linux+bncBCQYFH77QIORB5OC3P5QKGQEVTTNM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-f64.google.com (mail-io1-f64.google.com [209.85.166.64])
	by mail.lfdr.de (Postfix) with ESMTPS id 611D0280E92
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 10:14:47 +0200 (CEST)
Received: by mail-io1-f64.google.com with SMTP id o7sf481207iof.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 01:14:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601626486; cv=pass;
        d=google.com; s=arc-20160816;
        b=zjAG5eCvhpGbKzZkroAI+o1DZeWoG6gGlo8Y/u2WR6+uiMFkNLJznJTHyTU4C238mU
         KInnDzhxDrtns0w0j76ZVNg5DJDFDmvot+A8CClS5o8aBWxEZmKYnFpCXWj+EfHk58Xl
         Bt+oKygh5g1NECYSbVa33QhkbB5juCNjHeF5/kPhkTm/uxyw1L9UvU6UhYpVT6gdPK2W
         MgSAnsGDyf5930Vf8EfJmRAUBipUToIl5ZHNNiHmk1/PL1SIx7WnyNM+dODWAk5HIlbu
         N8K16fQiG7Hi2l3NxEnVoToU+6ehgyJ69xDsAhwpA/WyWXaMJEZTbE+JxYXm4yAN0dwy
         ID4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=X+5EkxlYfOnkO1dpdtkIEMY9mqf3xrD5pDe3GVG5LIY=;
        b=WDqygt+rfunNJsbg6DrRqf//xx+rlHbtDcrKpFrnCqW2+n7ZvO17SjRLBk4+rltGEl
         W7NH9oKmZo8/m4PTcUQrORoxmV7VELQQxSQlDpBvLbkd7w8+q7wjyqbSpSWXW0nDnkhx
         hOvir3HTMkMUsr4Y9/mG7iQ0WM8VaSxoH5/COUCCezc28UW+nDOX/9n8v9jhnse+BU6X
         K5tDkQg/pQt9RBJEdnaEWSy3OGh+mhn3hSluPPl2Rw1Bvx1Ku3a4/nua3KTATfHKYz/S
         MP185K9Xm9S18v5AXqt1BjOK9RNr9TL7yjOFw76WBWKwoooC+UN8X0rYhwwxbzIiwl4t
         8kRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=kueCx5fJ;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.4 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X+5EkxlYfOnkO1dpdtkIEMY9mqf3xrD5pDe3GVG5LIY=;
        b=Uk8/JkY2dLkt5XHHaubBx/w64ZApilrv9l/mlmsou0Y94xpdDgmlwbWELoRK1rS3sQ
         zTcnOzqIRJcdFDUwXVsdUH6aoQ99ntXVn1DTM6a//ube3HGlp3IV5Dg+2xOV656kuumd
         tAvqAE5kHPP8zmsndf0feqHPJgYWbb1xkuxwQtEKE4Nc/mCJ/H8PKcwxMz6BQoxbINfv
         8Gf9wNMfbXl+DNco6bZAJuQFkYfDlUQAsCV/quKr8ryeAEjYQqdcIv+N2IAqPJjmQs/a
         cwWtksRqlkl6uEXpb9XvVqoyOiX5wN4r1+03cnYFolMKbnJLlsQKr2e1rg6ZtnU8vSma
         +DIg==
X-Gm-Message-State: AOAM5330ajdp1I1rtSD4VNfr6HMQBeZSRrqvolLA527etUVscLndDDpf
	df6OU0VQF6muZ7HofDmma4o=
X-Google-Smtp-Source: ABdhPJxCOF7smz+wMmOYF7rEQc/eBZUFHN4d3GXeX4D54ANnp4j8i8lRldZePiTRD4QJN3O9hstq+Q==
X-Received: by 2002:a92:9408:: with SMTP id c8mr860238ili.61.1601626486019;
        Fri, 02 Oct 2020 01:14:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:dc09:: with SMTP id s9ls97393ioc.4.gmail; Fri, 02 Oct
 2020 01:14:45 -0700 (PDT)
X-Received: by 2002:a5d:9355:: with SMTP id i21mr1106943ioo.199.1601626485564;
        Fri, 02 Oct 2020 01:14:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601626485; cv=none;
        d=google.com; s=arc-20160816;
        b=FG6kFU1hzuWTSFVCb25YjswIkyCwsRXi/W1YINxyjdn4WPoX+lrcEkI2/vu8uvSjCM
         MI3tccc0pFwjY9TbAVWHmkeTj8X8GqZUl767QPpcgArV3DCDcpISp9ImuiLd7zHsjwkT
         AVxn58OMvjVtELzBd1FRNW0vBgYJPzNSTPaYoBWShjatUR79fjULLA3UeSRHj/C00clA
         zvzLNugu3A26CpeqnoOo+DY90UjF1Ah4nMuaDfu+czcDAIKX4HYrErhbHIKh276YebYm
         xHhYxPqZwMPGpKpeNKW5BeKESwNSt0bXKmcWwJUqPh1jinmEPdsObr64wFsddC50PkJ1
         fxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=1tva/yFuxdlSYrutZcd3hM41HpxcP4fzCMnfphofrQM=;
        b=zFjLwJgDlwVO1UXSFcv0Ah5rB3qzFjvKhNZ9bVAJQNGrGyrWUcZHmf1rQzIaHVc3rV
         WI0I0SXWOk8cycoNPMGbWDuf1aL8itiFEDjMQDqAuU+0be8g2JhncRmrV+rC7ilqvzMp
         SGxQ53MzejItyYN71K5D+79DNphD/PFp0V2RKCKDHjFVoVIgFpPA0BRLbS7wziuK8Mh/
         Aox6CFd+MJp13/rgvCqp99YHo/1PGPSkfjzsVxx/LcnQdWbtPJqZMPCozHXUBa8qZmWw
         3P+L9S6aQCNLd6Q49/zxS1PO/RZ8cY54xNRe7gkDV7FPunWa1LqA7JJ3SAnL6TmQHEjw
         sQBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=kueCx5fJ;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.4 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m42-4.mailgun.net (m42-4.mailgun.net. [69.72.42.4])
        by gmr-mx.google.com with UTF8SMTPS id n86si64919ild.4.2020.10.02.01.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.4 as permitted sender) client-ip=69.72.42.4;
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5f76e169e89f7b4c7854a43c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 02 Oct 2020 08:14:33
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 371A1C433F1; Fri,  2 Oct 2020 08:14:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 408C8C433CA;
	Fri,  2 Oct 2020 08:14:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 408C8C433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: tehuang@realtek.com,  yhchuang@realtek.com,  linux-wireless@vger.kernel.org,  clang-built-linux@googlegroups.com, arnd@arndb.de
Subject: Re: [PATCH 3/5] rtw88: add dump firmware fifo support
References: <20200925061219.23754-1-tehuang@realtek.com>
	<20200925061219.23754-4-tehuang@realtek.com>
	<20201001190641.GA3723966@ubuntu-m3-large-x86>
Date: Fri, 02 Oct 2020 11:14:29 +0300
In-Reply-To: <20201001190641.GA3723966@ubuntu-m3-large-x86> (Nathan
	Chancellor's message of "Thu, 1 Oct 2020 12:06:41 -0700")
Message-ID: <87d021cae2.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=kueCx5fJ;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.42.4 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

+ arnd

Nathan Chancellor <natechancellor@gmail.com> writes:

>> +int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
>> +		     u32 *buffer)
>> +{
>> +	if (!rtwdev->chip->fw_fifo_addr) {
>
> This causes a clang warning, which points out it is probably not doing
> what you think it is:
>
> drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of
> array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (!rtwdev->chip->fw_fifo_addr) {
>             ~~~~~~~~~~~~~~~^~~~~~~~~~~~
> 1 warning generated.
>
> Was fw_fifo_addr[0] intended or should the check just be deleted?

BTW what is the easiest way to install clang for build testing the
kernel? For GCC I use crosstool[1] which is awesome as it makes the
installation so simple, do we have something similar for clang?

Just supporting x86 would be fine, as my use case would be just to
reproduce build warnings.

[1] https://mirrors.edge.kernel.org/pub/tools/crosstool/

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87d021cae2.fsf%40codeaurora.org.
