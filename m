Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBR4AYXUQKGQEYMDUCEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D81B6DA17
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:00:08 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id b75sf22841685ywh.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:00:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563508807; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8eWBYMepvo5Z95usDliJT8GjK0KDA6ClldZiPF5pmppOPx5NKz6Wv2E+KPp8dCIKP
         Xpya+LikA4+tDdjVhR1scmI6YxdUpNR0jLaQqq4PYLoonzMGD3ob3HEKoMfeoyMbG4sf
         DA0iKdEDP5N5PgZqvgwprgQxqO3Q00rboHVSJb/yJiIEqLnjxC49HqExL9W83vu3OpFf
         Clzzt8RRoqNOWq0MDmoyjAPb3fTM1rnudUfRa8cOr86MXf6S/ZsXRXNvv0SZjpUopjNk
         H3wrICBDWCt7KJqTARDYTSRS4KTpbtXOeCB5oQtT+2QIAOfFnmwKhTGm2N/P3j2bMVZc
         Z7Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Z/TsBqUQxpVa1rrgXuNZXu9kaRlbbHBIi/lV2/Ip40c=;
        b=t53HlYC0NcbvnGC6+9kxLCpbpCTJkUFs1uHx5Hnzcf5pXfyQndfiRLORgcoaJ7iv0d
         3LsOvuxc0B5/uGKpGea63crhSgSeoxVWnsT6sLbjGUcQ5rKzFZ4bxadH4BrRIU2mbnBp
         8E2MG+9YhPN4FTkZ5RJWdx14ALSMA8AW/q3BcWseHJ4zOCtMsw8fDipL67XUEiGs6g8Q
         nO1GfAMEQTMKqJUYY6nK9t1NOQERLY2O7ALpiHqhBqG8LUKSJGXylGd3PeGoYFy4CnzJ
         rgYXsOpot7Vj6jJtWXE0WxjGSxLzS98Q3CmFuCtSafbhoKLeS896ZYc0TRS7Hxxpz5qG
         gGTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="s6Gp/uNl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z/TsBqUQxpVa1rrgXuNZXu9kaRlbbHBIi/lV2/Ip40c=;
        b=gxhBUGfsb/ARsZPYhZ7PTdk/9IzFIWE0W3iDl40IM9F1xCq1yVJQ4yOIJgOMMBsEEz
         ZWva0TpoZ17n6MNXd7I52kszn/To0X+W8QkRayKK191hTpItLV1Zks57GIg9IO2Cz+L/
         G+d0m2cluRdY4r3z97FyAZYYsTgNA9ixAlcmAH+PSt7WJV92YwY+dITDz9f8jXO3awrg
         yRHWLI/uEvGrDmPu+muAjt8dugdhMUhkayCtM0GiZRqAkhxWOCB129ZTzimqPed0FZYF
         LfjxICi5enQZ4ylAAfDc3HVitb95S5w+tFZWh3/BQs8Ql1qHzI9dgVG4gzOhJJwmxFwa
         3s8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z/TsBqUQxpVa1rrgXuNZXu9kaRlbbHBIi/lV2/Ip40c=;
        b=kw0sbfn7t7dnHTANe8YcplOCxomzfAkMgm/AfhiJptE/qC3tBiFjTINRsRAyHoket2
         7hJT0rul2FRFqfHoRNXonxinNQf01Ld7jHiCGbWj6J8khLe6VqAlv8/5/Qn6Sxh0XK9G
         Mpax2FDKGbMSAMdd39m5crZezOqjhX95iNsa0B3wYnMfjzIu3/xCbQ5vrI5I3coJCJ16
         HcBJ2rJhfcb3k+p0uC9nnkueKN2JJcjh49TJi4mJJh2iX48Rq21E/BDO5NXYLJfIihux
         2WLJ9Hd0eqB89LbduPi5vS/ks6pF8OMd75Ca80FcI3xU41LLOBObi/HdvobkD4MNJmQ/
         heqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWeHxlVIRM1//kcrSZhfW1om9i8VpzT1UpUq8UTDwpco4GhJ/mk
	pH9JBOWo9i70R0rowMBPUKE=
X-Google-Smtp-Source: APXvYqw3seqMgqff+anc17s1YVrNr04/M5Dsd4ktEsCjaXFIbKyuBBzUMRr1JMEPUXJaG9UbeUywwA==
X-Received: by 2002:a25:8244:: with SMTP id d4mr32662406ybn.397.1563508807177;
        Thu, 18 Jul 2019 21:00:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d994:: with SMTP id b142ls3865505ywe.2.gmail; Thu, 18
 Jul 2019 21:00:06 -0700 (PDT)
X-Received: by 2002:a81:a1d7:: with SMTP id y206mr31255224ywg.7.1563508806890;
        Thu, 18 Jul 2019 21:00:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563508806; cv=none;
        d=google.com; s=arc-20160816;
        b=ZSaTi2+DYIuwM6+yOEJNkg+6B/ZxoNfMMcK4cyNl9yPPYTyu60XGHKEw2NV3Tvl209
         HwrQ1qJ5utoP8v1sf8IiDm4z6eb2pU2rmBIT08mHyI0hLV1F5JJwcxhs7NAwUfTS+nT9
         sormLB5PpsUkipvbWdjYEv3BrdLUR9v9q5pqMOpksJ1w7H+fOCXt2nBaBk6cJpNk2MjV
         98yJSjlhleMVyCTxiH8fbJvP4Q0T8OiMmn/aXCI4tuPDaOF/W5JjVTX9FQmvsuoRl/Am
         NAdkLzySbbFK/fFrHHKgveQBYZEaEfLkdzJHz0mpzMwu9jXn4b0nA0cexY6dRYSO3Pm3
         oung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZMGE/oSXhrnDCl/RHCuvzz56xe1jVVUBXE9KBl9dNWc=;
        b=dN0BGFVWVASyF94cg1gAoOyqAmCY9aiarAXCzbBK7hU0jdd2g0Gv6ILvtHMeH2FcWS
         /b+q7QzYwczZ5hBKSIViZOIL73UqiT/g+t3XfTodMCkM1XgYW2QMsXqOHHJd3MmfrLMs
         pN3ECBCRBVK+BULPhbg/v/WW1Ywj6Bjgv9WPzmSTB4C8gvmogQmBUkwjRtzu/68RJoSO
         SzT8LHsU1vwocC7IgVX4obW0Ekz9XpJ2pNg9B2m5fyFBff60tn7xTAjmbYa5/aEckV45
         ks9//q5SdwpUMewW9XDeFubM68m09yvxI6CcPOjPm9KRjJSooG4FPi7O5BWvBAILU+cq
         MGAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="s6Gp/uNl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p125si1153589yba.1.2019.07.18.21.00.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:00:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EFCA32189E;
	Fri, 19 Jul 2019 04:00:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	patches@opensource.cirrus.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 100/171] mfd: arizona: Fix undefined behavior
Date: Thu, 18 Jul 2019 23:55:31 -0400
Message-Id: <20190719035643.14300-100-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="s6Gp/uNl";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5da6cbcd2f395981aa9bfc571ace99f1c786c985 ]

When the driver is used with a subdevice that is disabled in the
kernel configuration, clang gets a little confused about the
control flow and fails to notice that n_subdevs is only
uninitialized when subdevs is NULL, and we check for that,
leading to a false-positive warning:

drivers/mfd/arizona-core.c:1423:19: error: variable 'n_subdevs' is uninitialized when used here
      [-Werror,-Wuninitialized]
                              subdevs, n_subdevs, NULL, 0, NULL);
                                       ^~~~~~~~~
drivers/mfd/arizona-core.c:999:15: note: initialize the variable 'n_subdevs' to silence this warning
        int n_subdevs, ret, i;
                     ^
                      = 0

Ideally, we would rearrange the code to avoid all those early
initializations and have an explicit exit in each disabled case,
but it's much easier to chicken out and add one more initialization
here to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/arizona-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/arizona-core.c b/drivers/mfd/arizona-core.c
index 2bdc7b02157a..4a31907a4525 100644
--- a/drivers/mfd/arizona-core.c
+++ b/drivers/mfd/arizona-core.c
@@ -993,7 +993,7 @@ int arizona_dev_init(struct arizona *arizona)
 	unsigned int reg, val;
 	int (*apply_patch)(struct arizona *) = NULL;
 	const struct mfd_cell *subdevs = NULL;
-	int n_subdevs, ret, i;
+	int n_subdevs = 0, ret, i;
 
 	dev_set_drvdata(arizona->dev, arizona);
 	mutex_init(&arizona->clk_lock);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719035643.14300-100-sashal%40kernel.org.
