Return-Path: <clang-built-linux+bncBCQYFH77QIORBZ734KAQMGQENTJXB3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f186.google.com (mail-oi1-f186.google.com [209.85.167.186])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C53325FE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:22:49 +0100 (CET)
Received: by mail-oi1-f186.google.com with SMTP id m136sf3261928oig.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:22:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614331367; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+H7+svPTraxYR7LvjAFF9DYZidLb+pNSV9nq4fhJHuFNhgbSo52Efe3mSrIbajcj+
         IDxyLIohTK9geQIe0QgQwkJQXd//AHzjj66GsChawfQTEWGqp/D7BrFNjUcz1eRmVU90
         RNuZcWMUkV/HeQpEICx9EergKaD1MmzCnS8OBaXUY0T8CFr9BDMrcU+0gccz4Txtso9h
         EE7LjqxAhYYqqTLANqZpdEt5rxUaagdm6wobNRGtzLXeAESYJcQA27u3VLVyCqBALbgL
         MgvqBuXBAcvpKfkkh+/JTLl7S2HP/phQ9juCHMFFpdqy7y3azb6hjrQzkmqc0bkqkDSl
         IV9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=n32FQIiBlm1oHSOMTFBPKh0EhpPzyI2oGBthUFhovHY=;
        b=YfPpCH8bWvp1SB+t8uZ1Jm5duo1LJcji/JZEqigSbHwMPsG2HHlJytHe1AnCfysZx2
         GHYp95uNq6eZfMZcXqS/8fLp4NhoWWj/h5PRGSjXgbAXfO8uk8f69AMF1jLPZgMwkcxv
         mmls+NgxTofUjUT9fJeoVYCAPqiRXmYRaoTUWrifIQOz9/q/JNqS2pDDESNoZbJEt3iK
         ZPwBW7TArGYx+iWETc04ELuXgVuQs+yrq2+AxoTKabmFJ5XZ1HWRphxDd1V/ng1Yl03e
         uWvJxBV6NN31iNBnfOH2MN5MxvIyLCeZogUFp8gGvDwcOkX68p/WI8tkqKtjD0/SjNNt
         /U9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=g264XkKF;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.2 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n32FQIiBlm1oHSOMTFBPKh0EhpPzyI2oGBthUFhovHY=;
        b=id6YVUG8IHFZcgN2cE7V1rHVMdR2CShmzNmsMwS2Eo1pCpQtv1XJMEQweARSlQ1EL+
         Emse3gk/ZwLQSMFMFw8bfiiyEWM+9JErooKfAM7INn5xkwdXPV9Fte5ERKpRSYqj06vD
         DwHkSzkoG2BOtuela+mDX/f7cLowPJq7l+GGgB4xyam5uKBovBQcJe/2No3lLxNzWepo
         DyffjRRVoG/zYBVTqYepNZJRzfU+yuT0j48Az56im1yqJmBn7sKp84O8pIpo9zTplY2+
         AOnDLujKZl8C68ewq0s4uBZx/6ciY1kxL/vB3u9C13aPsRDRD9Uu/PZH4xHzs2EJPtc5
         1Kpg==
X-Gm-Message-State: AOAM5336pOL4xk4KCTaap64V9VXTY0z2wSn962z9uxNmna2RSsjVx6jW
	yjjcf4WI5nFMo0/JTPsIDXQ=
X-Google-Smtp-Source: ABdhPJyjgn32/4I5pQJTC7TNFj24yza+dzaPtHiq71cg8Wp3pccCqI6GwX/p/0Rhb+KFoiHnL/oPXg==
X-Received: by 2002:a4a:c602:: with SMTP id l2mr1640000ooq.5.1614331367680;
        Fri, 26 Feb 2021 01:22:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c57:: with SMTP id g23ls1017250otq.11.gmail; Fri, 26
 Feb 2021 01:22:47 -0800 (PST)
X-Received: by 2002:a9d:4e12:: with SMTP id p18mr1552937otf.201.1614331367352;
        Fri, 26 Feb 2021 01:22:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614331367; cv=none;
        d=google.com; s=arc-20160816;
        b=NF7DfFAfdZ0Q7rxGAuVT9TRvqb7dww9hZqxX2OedT6q9TPruGM+fw4NJEHnQ/RlAOH
         Ii+W82CE8PnKc0VTPKbkVGd26hYuB8noik7hwd1OY2WNQogIQYO7v7kjs/5IKphYnABg
         uImZzXTx2wCd7bPeUux5cEuaBG4h6l126mqke1gAc9UM3EaWhTYGiEIpN+Tr37uxph3H
         l2ARJriqDJpkRwhk3AQsYpGU/sFqdqQ2NptS6QXkdR6NWwl8nm0jssTxxjyojFJzrmx0
         5hCcfGPB5DqMcqo7PhvjlPglg9KK8be6jkFhjY8BqfrffgyT/CmHUn2mbjTRHwXcWrB7
         9a1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=WZto6la1xMW9OPXhnH+0FY0I0nURZt4YBbd4cgmNF6k=;
        b=xApslYLhBDZyagHb4OjI1+PFLsy69ar/Uhagn3MmFX+WRX/8niO0FoCVDwI6foJ2zM
         KRu9QekHT/0ilEBth+qjfsW9b0518Bqr5eMJ7JfiMtnEqspy/dt7e7fmjz745qKpCOQS
         qW8nFIxoQi3vt4U8eDMjn9M5loUYN0fgst9M/sr778hvtmlo20/pIR4y2UnqPk0oM/WY
         7E32BaUm0vAF4WqqWr0iia8gYDS8REEysngfsGlVBYwr/kF6iOMZY+qg8q+EKnOXb0A4
         2ho+D1xz1bpjiM8nzsBxhb6ZQpAJuXsvC/XzSbuyEG4G1jMlmzmSFFy8/mLaIk4j++zh
         VFaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=g264XkKF;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.2 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m42-2.mailgun.net (m42-2.mailgun.net. [69.72.42.2])
        by gmr-mx.google.com with UTF8SMTPS id q10si628427oon.2.2021.02.26.01.22.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:22:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.2 as permitted sender) client-ip=69.72.42.2;
X-Mailgun-Sending-Ip: 69.72.42.2
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 6038bdde2658fcb8738425b5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Feb 2021 09:22:38
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 9CA15C43462; Fri, 26 Feb 2021 09:22:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id DCCB0C433CA;
	Fri, 26 Feb 2021 09:22:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DCCB0C433CA
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] mt76: mt7921: remove incorrect error handling
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20210225145953.404859-2-arnd@kernel.org>
References: <20210225145953.404859-2-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ryder Lee <ryder.lee@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sean Wang <sean.wang@mediatek.com>, Soul Huang <Soul.Huang@mediatek.com>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20210226092237.9CA15C43462@smtp.codeaurora.org>
Date: Fri, 26 Feb 2021 09:22:37 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=g264XkKF;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.42.2 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang points out a mistake in the error handling in
> mt7921_mcu_tx_rate_report(), which tries to dereference a pointer that
> cannot be initialized because of the error that is being handled:
> 
> drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variable 'stats' is uninitialized when used here [-Wuninitialized]
>                 stats->tx_rate = rate;
>                 ^~~~~
> drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initialize the variable 'stats' to silence this warning
>         struct mt7921_sta_stats *stats;
>                                       ^
> Just remove the obviously incorrect line.
> 
> Fixes: 1c099ab44727 ("mt76: mt7921: add MCU support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Patch applied to wireless-drivers.git, thanks.

fb5fabb192b2 mt76: mt7921: remove incorrect error handling

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20210225145953.404859-2-arnd@kernel.org/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226092237.9CA15C43462%40smtp.codeaurora.org.
