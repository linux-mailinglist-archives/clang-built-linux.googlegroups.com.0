Return-Path: <clang-built-linux+bncBCQYFH77QIORBQPZUGDAMGQEWCN55MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-f63.google.com (mail-pj1-f63.google.com [209.85.216.63])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4113A7B84
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 12:11:14 +0200 (CEST)
Received: by mail-pj1-f63.google.com with SMTP id o11-20020a17090a420bb029016eed2aa304sf1171970pjg.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 03:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623751873; cv=pass;
        d=google.com; s=arc-20160816;
        b=KtXjogJv4HlqPhTHkY5vvEIfUxg0iQDTMOH+SaI51tPfOx9cJntewEoR4vyvanTgrY
         OI/odqmLGZw1dQpmudblECQYhxGxRvP0IicTB9RVK7wJVe77A88T+DbDfFj5yGrN2b9u
         h1nD9Rs6SeAHiGKtQjb6osZFxy7MMmoDrtteu40158ZOClKSj/BQhn4cDRGBhmKuwCpn
         DoTAjLB7CKrQudWuLtvuyPmv3wpTRE7akT75Pr3F8KJuNkM2XKhzHUyVuPDYIRzn5B+U
         vn17tpDi7Nn2hsh9F+R+OtfhH3xhBwMZRXNsXOW4YOj6+69yD9EbJ4yDU07WOoFnaOTr
         VmFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:content-transfer-encoding
         :mime-version:dmarc-filter:sender;
        bh=DZrs5Ksd0Rn2f6CqScHYRCQxug2GiW8sI4spabyRboo=;
        b=yFhtzkuTPbRR3hSvzXHe8a3lUmErQ1yoo2Mhw1uRZeuNkEvslws4Sj7AvLICM6iAWp
         pxeVe/spC0pGr0ZH/zMAoCMsRdFdowX+Tk6YazmR40ySgH1hLzBvEPtHLec+AUWx6uJh
         xK1RXDA4y62dHREd4w1XOGLB6BY/P8xel4iBIfptQpfUJENk4lSiho2DDZcMHk+UKAxT
         Q9C0ngJYYaVRx7vIQlzU+NtLSWQtdSq2OCIeQ3obXPJIEsmv6iaGF0+x0keLmeV4C3pk
         TF0g8Ovs8oYM8oOx/7wsWj7gF+NHpi+NkjgZgormxM1ylZoP7p5iMC7r52OfFXc6jjxg
         FGkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=P+tD9sQx;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version
         :content-transfer-encoding:subject:from:in-reply-to:references:to:cc
         :user-agent:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZrs5Ksd0Rn2f6CqScHYRCQxug2GiW8sI4spabyRboo=;
        b=cwpwpLAwAcYCQoNKal29+MN5/UYC84pmJiLR1uOGrMpLVjbkgCwxhQ7D8MBT3a4lEi
         Y3R1SGBqP/LjL7Q6qdtlKpodtSGRyJAbjYUPJ8/tr7yA2iHK6yp8psU4AKxYb6boFOuE
         HDjRnB4EDeMR/Abee6kdwjWEOVK/NRKp/N6fXwjUPqX4w1320fZhoAqDPrlrGl9ZHEIa
         cm3jGFEB6jQkQyr2S/1DZ3JqsNDByqfFYwr2GNYEAt142yHHTXhObGMHi6gsgQqKfeUy
         z/h8BsKFfmoVOyWCV8v+T/PukIJaTUmSDJESKCxpXO0sk72HcfODDK3dvTeq+kTBWbZR
         m/GA==
X-Gm-Message-State: AOAM532fZEzk/BMNmzTDV242JpEiGAXYRV0M+l1BZwNsS94xfg+9IwcD
	hRSR1fPQPCGqfHOGPpVhHcs=
X-Google-Smtp-Source: ABdhPJz4ZaoJ880wTKdDWZCxcljZ9+f/kCIWaqFeNPLClOI+qPm5OZSfOMUBgkFq0m1MT8K+Ou+ETw==
X-Received: by 2002:a17:902:6bc8:b029:117:6a8a:f7af with SMTP id m8-20020a1709026bc8b02901176a8af7afmr3625684plt.51.1623751873466;
        Tue, 15 Jun 2021 03:11:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d4b:: with SMTP id 11ls9360283pgn.5.gmail; Tue, 15 Jun
 2021 03:11:12 -0700 (PDT)
X-Received: by 2002:a63:4466:: with SMTP id t38mr21532137pgk.51.1623751872858;
        Tue, 15 Jun 2021 03:11:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623751872; cv=none;
        d=google.com; s=arc-20160816;
        b=o1OomXCAXpV+j8gCgkKjkyqGnZv56aJSo96kn065TiNfasnp9VUnAJ/T5kfgcYgiPq
         BZnsoB+ejcjNzWiQCQ0qk+Lv/+mwN3wdoSL+fds4HyQUSVtNDonPO4CYul2BD2BmHU91
         OJ85lXX1qsNN6/LnCdc0mq9cfXxupzxBUvdN5RGCtCuofjMJNuK06muYaudtWMh9PVuW
         UT9LhcX+cWxuOwowMo4g00+sK7ClR+eV3nUjuRtRumh7OQL6CBOU3vK/Ylw/65La8A1f
         ogUxI/X0v9dUKt47HgbmYimyrc0ybTEeJeAjvfaUS2/5/v6doPyML6n75NSgiEBJ71fM
         JduQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=Wnx0dnJAasSI19113sOftFNVrI60o7qtI8hrUanoFFQ=;
        b=coxBPKQ5dT4XBBX/7M5YbRMbtiVk00eP7qr2NFZ2SFkHtQNfiZfhiu9VYnRe6txv3c
         EziuQHik8+i7vtsVo7z1zLIXnnZ1TPoq3NnXaMJVYZe9Xdtukdldmb4Ed83E9ZuCzC5k
         1PkaXoQgtrjvIv/vfeV/Jm9MLykZZiRaJjuMSK0L0l3nPzEcqRTZ2kJgh5uggXZ9lMc5
         b/kIbBD9FRTPZYnmEQOllx/PlxFJTCL0ayAM6g+1peKpYIBiJlO1JVzsv1MHYJWBMUv0
         5u1u/E9xNjQc5rCnp1J/6uducLcUbESFgJfh6/aOjg+gjJ7D/Lx90X48RiNqz8XJHBIg
         w44A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=P+tD9sQx;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id u31si164462pfg.3.2021.06.15.03.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 03:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 60c87c912eaeb98b5e258639 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 15 Jun 2021 10:10:25
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 7C6DBC43217; Tue, 15 Jun 2021 10:10:25 +0000 (UTC)
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
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 076C6C4338A;
	Tue, 15 Jun 2021 10:10:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 076C6C4338A
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] ssb: Remove redundant assignment to err
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1619693230-108804-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1619693230-108804-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: m@bues.ch, nathan@kernel.org, ndesaulniers@google.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Yang Li <yang.lee@linux.alibaba.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-Id: <20210615101025.7C6DBC43217@smtp.codeaurora.org>
Date: Tue, 15 Jun 2021 10:10:25 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=P+tD9sQx;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> Variable 'err' is set to zero but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
>=20
> Clean up the following clang-analyzer warning:
>=20
> drivers/ssb/main.c:1306:3: warning: Value stored to 'err' is never read
> [clang-analyzer-deadcode.DeadStores]
> drivers/ssb/main.c:1312:3: warning: Value stored to 'err' is never read
> [clang-analyzer-deadcode.DeadStores]
>=20
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> Acked-by: Michael B=C3=BCsch <m@bues.ch>

Patch applied to wireless-drivers-next.git, thanks.

7557dfde1bd1 ssb: Remove redundant assignment to err

--=20
https://patchwork.kernel.org/project/linux-wireless/patch/1619693230-108804=
-1-git-send-email-yang.lee@linux.alibaba.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatc=
hes

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210615101025.7C6DBC43217%40smtp.codeaurora.org.
