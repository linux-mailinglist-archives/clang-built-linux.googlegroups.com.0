Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWMRTPZAKGQE5W2X7PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id E086315E1B5
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:20:42 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id b15sf2362222uas.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:20:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697242; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9B/+oH0fLlsd+X57NbSvzRJLPNjT+ofSg1IJB4YFUHOOkuJVZSVGA0GPnxUcrfYW1
         ebC0lJiK+YtNtSaHStywCQjxiZ4GFJVVtyVoRN/owAzjpqosRNiWSrnHA70qzONrW3VT
         vg9ndD3+Lj7ADnCNC6zK4dBdUVNX/DSBh7QOrgmYmFAFIq2A6LkYinj9L0GvCKva65fQ
         MG9tiV5WE5MDthENlkioMXy8TKXc0MMvfk5vP4Ut4VTsKKeNs40AxE57Y6A4kesch5xL
         isxMGMFY945q6vrsy0jEPwafYBHfKVwoTsV2BOVhGIYeLwwq2SjcwQTejhYjsYvhlNsz
         2mpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gPqyMXdvZibIRdFmHIBkeNbmaDblH2wr1PgBbEIYgpE=;
        b=MZ37/op228gnBJBkl+m+Hzj82NH/R21xzUbpggsL+O71B4S3smAvYhAJ60JEa3G9/P
         cPqOxUjC/P4s3nZdAHdOtkyhJK0KAkQOoCDpJCN0R0q6KcsF0Nm2hTFky1I05msszdBS
         K10eFIVIf5FOPVGiwN/iIEKGoglsuEOB7G46rhPM0ft23yj1JVGAErkBE+dAPOWAiLP8
         movaWU16WmsEXvc7hrJJI/2ShF5GVeNU+pgFCvSx2LrD1RKbN9S++NbLGTwwztQPJ2u6
         /8lTWEWiaKtzWD711IJ9uQrC6iz4R6rCYm1N1lt2+5DfBoGdnqN//uEt6iehZzSJvOHA
         Q/Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=11QmphQ4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gPqyMXdvZibIRdFmHIBkeNbmaDblH2wr1PgBbEIYgpE=;
        b=KIxNsJweSwJN0zEv3F0cx3O8kuxrbFGEvCEkmpZPJwqZSahtv4kbuf+Qr1fKhXFOes
         TZ/EUS5lP+oVoTqV3PyhLfEzhEIN5eCZOGH3vb+/TyCo8WX6sfFBS2eKr5G28Mevo01n
         nLHKeZbJBrgqY/Gsy0Yi2uviEng5S6C6LVElWbwKi4mJPgUq0m/xAGXYMoXCyTwwBX7a
         yfprxbYcQrQ2fuEICX8z6zCiqc0oYf6BrPPaIkbZ7LkRY0zkKqklpSVVYFHkccprORlR
         M+JIuP+m+0psKYXmM7xCTEVvOx0/A/l2Yj9COMB2kljUgasGzvlk08N9jXcgnY9RqngH
         NvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gPqyMXdvZibIRdFmHIBkeNbmaDblH2wr1PgBbEIYgpE=;
        b=n78pdGgryryAmhX3lq+5rv+HQydtvkxgLdbsvWP4LqacNkZPxIFd3h7wDpbme/6/mN
         c48kx+oRqGqUmaGHFySU/LSvJR/3zDaS8nthlFx+4Plv343vzzZfLZOA2Hhvu5JpenZ8
         F1fmI+QwdffRof+5kOV7ONOVt7hAuhOF8zUToCcY02FQR9sAx/3kCp87H18+l19afIvB
         1Cr4Pl45hnN4RA9paoWqkyZK/O+T+elp4iS2jds4b90OIScrtWyaFd8Stu8BrOybb0lT
         fmBrD/7u9zA1dTuILhMLtn+4FixdSGXb3ysHHzMTw6+wwWiGk/rmYJx23lQYUS65cho1
         kapg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU+Fc8OkaNejIgEXcNCygafOMILnMT/U+kohtEImbhx4LNN3gpr
	BFP3fLcf0gt+tWgVsQMU2x0=
X-Google-Smtp-Source: APXvYqxplywdvZkl2DnqzEjMUv81jtsGZphJTEsXx8HBy+Z6om66pOg9o51nVVD5H5nNvl55u02Oxg==
X-Received: by 2002:a67:8ec9:: with SMTP id q192mr2038213vsd.190.1581697241983;
        Fri, 14 Feb 2020 08:20:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c805:: with SMTP id u5ls329710vsk.2.gmail; Fri, 14 Feb
 2020 08:20:41 -0800 (PST)
X-Received: by 2002:a67:b309:: with SMTP id a9mr1849174vsm.97.1581697241449;
        Fri, 14 Feb 2020 08:20:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697241; cv=none;
        d=google.com; s=arc-20160816;
        b=ZKsHYF76diZD1rCvj3IdX5vGF9FVTIhcPtyiQQQ83qFs4ewhDdCv1+KuLw13hhaA0F
         pbROm0Bck//HpFim1nq+GokhEqkax8phMqm+OjGrFkGkNZAQEZAt83kpY9MgayMqQNaI
         5o019LrzBtF4OmurPO042zNJHBJlgpqspA0BQFj5Tc21Wj5WEH+xG1QQMzxOST7s5zeA
         n56z2swQIJBS5ZapFTI960lxm6rrcWYUF1l4ovZOD9eO8gLBLwYs4h0Ojjn9+F+1J73q
         D4Z+iNN9t44wWEfnTIKN/YuMBZonQ9jYcHYN/kn/HS7DMCequPvECbV5m53G9soxaOJ4
         vpsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6c54j6kohb54TusqijHIzlViSx6EUgKAOaDG0nPYdFs=;
        b=vrqpMwkEhQsGu0WDN/HbHGC2qvrIOvSQX8HEXYPtYupa3XZeWh/Ewykw/l4HevTpXI
         csUhyjO81mUp/AnYd7A2yxlpYA1SxcZycuJe6PWbxt/AhuPIOSSwM56eYi0W04EJsxSa
         ePYz6+OJYZqhegv1vIMyS4TXP+0gPB/0q6Naz64A4Kebhi7U89iJZOaL8Iz4/S5orWNm
         D23sYbRaOZsEx8GRgAxqvSw9fxMYOkMe8cE2GpVnr8LW3phXikzrTYspC+JtWLUPZvHE
         6DyT9G2MtLWCvO6RlfSkYOnYjRzNiPpBd2dW3jOW1I8qV3lVEAB5ZOegGsGKdvAHK+gp
         oxqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=11QmphQ4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o19si374425vka.4.2020.02.14.08.20.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:20:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3E27324736;
	Fri, 14 Feb 2020 16:20:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 160/186] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Fri, 14 Feb 2020 11:16:49 -0500
Message-Id: <20200214161715.18113-160-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=11QmphQ4;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b61156fba74f659d0bc2de8f2dbf5bad9f4b8faf ]

Clang warns:

../drivers/net/wireless/intersil/hostap/hostap_ap.c:2511:3: warning:
misleading indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        if (sta->tx_supp_rates & WLAN_RATE_5M5)
        ^
../drivers/net/wireless/intersil/hostap/hostap_ap.c:2509:2: note:
previous statement is here
        if (sta->tx_supp_rates & WLAN_RATE_2M)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Fixes: ff1d2767d5a4 ("Add HostAP wireless driver.")
Link: https://github.com/ClangBuiltLinux/linux/issues/813
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/intersil/hostap/hostap_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/intersil/hostap/hostap_ap.c b/drivers/net/wireless/intersil/hostap/hostap_ap.c
index 1a8d8db80b054..486ca1ee306ed 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_ap.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_ap.c
@@ -2568,7 +2568,7 @@ static int prism2_hostapd_add_sta(struct ap_data *ap,
 		sta->supported_rates[0] = 2;
 	if (sta->tx_supp_rates & WLAN_RATE_2M)
 		sta->supported_rates[1] = 4;
- 	if (sta->tx_supp_rates & WLAN_RATE_5M5)
+	if (sta->tx_supp_rates & WLAN_RATE_5M5)
 		sta->supported_rates[2] = 11;
 	if (sta->tx_supp_rates & WLAN_RATE_11M)
 		sta->supported_rates[3] = 22;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-160-sashal%40kernel.org.
