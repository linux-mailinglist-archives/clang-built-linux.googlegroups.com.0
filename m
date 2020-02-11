Return-Path: <clang-built-linux+bncBCQYFH77QIORBJHSRLZAKGQEPACVJLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-f187.google.com (mail-pf1-f187.google.com [209.85.210.187])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C5F1591C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 15:24:38 +0100 (CET)
Received: by mail-pf1-f187.google.com with SMTP id z26sf7387630pfr.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 06:24:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581431077; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ehd6tRWLTXN8Bt0jkhuYiek+SNMz8iSFhtQd0mND71CU8NTvrAmyNHd4rRcjvFNsNI
         iaCls9A7aoLBBjxW+niaI1XmpcRyu9G98H8kSiKpbhzhjSQfVJsM4OqNUJUG6bAceiQN
         m4EL9kecSmV3aIa7o/VafwpM/2E4GVGk7cxswx4HOkccQrx45F/WoPGlF5OClmsuqxdl
         0xoe97P6oUtcRjtrBaeG6zWr073oFODYnYbnwyeuFZSxuzGGXfEBDDZsMUlxmBSIpAl8
         BX7Qu1ZQ29k/mVI+EZOmBTFL+lAEpmyX3M/RqEH92wRP0jxCDz8EkFZ72L/I/8M6JRe0
         WU8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=s23hiok/3FJ1oZvaVMWs9Mzg9NMPBJKXFVj03ED+ojY=;
        b=fz9ncXvmJveSgUkI1rry0jpmFZorlD2zt0Riq4a9B7ALKtWnDDjK9HaQ7vRyACPHln
         45ul1ZNOEPACGBeUgVGJZl4RtOiP3lht76ouaK/2zkQKLc7kOHzl21DTt4ORuynlh6Yw
         gAhRLUafIbB5CjT+rJ+3Qq2DoF6dr8G82jFR1YmZnPCgV4x/d/EEtRwKtN5bpzaUYOke
         gNQudwfjIYYF0W7iEtD6wCeDYVpc+zgWv8SmyyMNRQveiNSpNrQk1rlk+xyR8PbsOKG3
         LaqvbBLaNJaUmzaoW5T/xz+th3eBYmeRHi0uGkcv0s4hwAsE+6lWVcQf32w2DfN2qptc
         w0rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=KIuOuPxv;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s23hiok/3FJ1oZvaVMWs9Mzg9NMPBJKXFVj03ED+ojY=;
        b=TfEqoxio++W6gxeidQZTwkcIHj4oRW/Ci6RXJ0wo49pLU8j/f/GmMFP/AtambQjH0w
         gYdgQ34f6C1p5Cm7dHXzCmDFfNP2RMa5hG1Uk22yCEqhJD/hkeuJskcDCXTZBaxrx/zY
         S/peccyeCbFGxGhoH/JdAht4AByr4IocVFvW2WRSRFpRV5/oJJFmMKn7tjpiNGr6HvzX
         L+r2v2PD14gKQYOJlIITB4N2/UPYFmBsZYbCFwyFn+ld8zGdh4GBILUYIwOqPVbG5QwC
         IYYPQjdZS642CY+DzIgc5AYl2w5pZB3ZVB90edyJXmD/y5hJUiJgh2a1xP1IEytNqdxl
         A7Wg==
X-Gm-Message-State: APjAAAVLsxey8M8JoYponQ/0px0MDir/5HpoFtWfw9T6Wj4vLMCz1MkI
	E/tbHswn94QNgpY/8atks8c=
X-Google-Smtp-Source: APXvYqxzy92MT6shmUCVY5FNu/ar7SwbnDtTYQbkgz59ac4Ev43lWUMFB3rpwSdm3lyAZbOeZXsE1w==
X-Received: by 2002:a17:90b:f0f:: with SMTP id br15mr3910462pjb.138.1581431076936;
        Tue, 11 Feb 2020 06:24:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls5773401pls.6.gmail; Tue, 11
 Feb 2020 06:24:36 -0800 (PST)
X-Received: by 2002:a17:90b:4004:: with SMTP id ie4mr3963319pjb.49.1581431076342;
        Tue, 11 Feb 2020 06:24:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581431076; cv=none;
        d=google.com; s=arc-20160816;
        b=i+Lch7G098iXwh3mExOP1a6khhfk8pePfv1dlSiOEJVQHRHL0XP8JwWYSi/JcFkEx7
         n/+UqVp7BRdNUjSl60uOJGfzfu3s30uVBzhrxC+Nboj5IVGA/0OnkZCM3gIxRhzRXQCu
         Obo0hyYes3JpwROw9AOQk3hnrLH3KNBOmkQFcJIKLRoTjFMBw01Gspcf5PL/OaZ70K0c
         PgzIy8bPmc04nZ9EklNVmIb+9WQBTuIS8Y/BHiU92O3Hw7iEIu3JTx+4rNS3xXZnDqUQ
         CYR0Yp8RAzS7LuRBTaCh1cr7V2t69b3A0nXcTI5goVdi95Swdha3BM1Z/OFmZKpheZEu
         1BiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=q1NnbfY5scviQ81WhVjeiiyH3xhw4C/A+lxpopfw2dM=;
        b=SGErZmPe5StHCO8EAtaoBnGhvhxpQvspTMI8gEvvxhTPUdCTLpyiXiWylcBzYarXKW
         LyYkrz4karTceEpcDU6Xe9YW8221/QV3/M0AMcMTlD/mA+R8lxLRsUk2aG7l1+nUoTam
         1aExa3ldUbxsFTaXbIQqs66pLuZs4BGPJTPxbRXVSudObrqCRQZKiEpsof5fDZBK+7bU
         wyDuL8syOYKrvuojLFu3a34rZ9DlvIBhEq93bFrlppRYRK06+1Py9FxWH2E7vMVZKMS9
         MaMMektle4DAB2zMmmrfdTeBjm6mp1umFc/qsh2BJS9yjJ2cHAAIpY4TTDwaU+WyYmlw
         FwGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=KIuOuPxv;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail25.static.mailgun.info (mail25.static.mailgun.info. [104.130.122.25])
        by gmr-mx.google.com with UTF8SMTPS id h2si118334pju.2.2020.02.11.06.24.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 06:24:36 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) client-ip=104.130.122.25;
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e42b91f.7f5205684fb8-smtp-out-n01;
 Tue, 11 Feb 2020 14:24:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 243E6C433A2; Tue, 11 Feb 2020 14:24:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
	MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id E7677C43383;
	Tue, 11 Feb 2020 14:24:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E7677C43383
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] ath11k: Silence clang -Wsometimes-uninitialized in
 ath11k_update_per_peer_stats_from_txcompl
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200130015905.18610-1-natechancellor@gmail.com>
References: <20200130015905.18610-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, ci_notify@linaro.org
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200211142431.243E6C433A2@smtp.codeaurora.org>
Date: Tue, 11 Feb 2020 14:24:31 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=KIuOuPxv;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns a few times (trimmed for brevity):
> 
> ../drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is
> false [-Wsometimes-uninitialized]
> 
> It is not wrong, rate_idx is only initialized in the first if block.
> However, this is not necessarily an issue in practice because rate_idx
> will only be used when initialized because
> ath11k_accumulate_per_peer_tx_stats only uses rate_idx when flags is not
> set to RATE_INFO_FLAGS_HE_MCS, RATE_INFO_FLAGS_VHT_MCS, or
> RATE_INFO_FLAGS_MCS. Still, it is not good to stick uninitialized values
> into another function so initialize it to zero to prevent any issues
> down the line.
> 
> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> Link: https://github.com/ClangBuiltLinux/linux/issues/832
> Reported-by: ci_notify@linaro.org
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

df57acc415b1 ath11k: Silence clang -Wsometimes-uninitialized in ath11k_update_per_peer_stats_from_txcompl

-- 
https://patchwork.kernel.org/patch/11357331/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211142431.243E6C433A2%40smtp.codeaurora.org.
