Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6WE5DWAKGQE64V2YJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A1FCD3F1
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:21:00 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id h10sf12789139qtq.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:21:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382459; cv=pass;
        d=google.com; s=arc-20160816;
        b=mSXSHL/ZGQ0vxCSpG6vJXJsqXVj2WtBLGhYvuPn+rsp/odHTbtacEbDViYa0sgLGJp
         BFwVubfMpygW7ROujSLfPbVkkBw06OIob/5Oj/s97l5YKxtTpJSfNqwfFF2Ge1woAbC3
         X/1nkPLbIgn/L1GP+9/x8FupjkKn0s6exrs5YfUjC+uCoCG3fQb1kJ9C9Q5S2to0pBHT
         krsG7HXb7pcoZEAGtMWnQLSSzGXqmZBvg4TzJWsQF0gDuHE4q+BTDauy/TH52BgKHvdw
         Sk4dIiT0F8rI1ragU78LEHs0mLyenBoKaj8tAkmdf8dR8tcFmnAWP9M8DTC1wWfzfRsS
         vdRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=26VuI0j4at3qtDgyCv9io4aJhJq0GcBOEdTa6kQo5pE=;
        b=tMSQLWGOfDc105ZuPVdxFIypTacpK6jzg9L6EoRm9QiNHoWnGY7lE9hw8LDlkieWVD
         BxaNDRQ4G3enDPC0L6iUMrLCFvvcQ7j7RIWs2nZTbtMMmmI1Qt2GJVCd75sX8p3z9pUW
         fgGTlCcQ3a6dTtX8+u+HdLnlssLwZ2fn1uGbCt3UnAvkhaMgqY3G5xYzwcxkVfxNfFCd
         HRi17fYINd2ccTgelNdgjbo2jXo0DuHNmJ8hhbNdmSUEWJiyMfIgANIpYaetzf4TwP7R
         qlCOMif9DOFyVIgdpMgDMtGGjWO1bFXqZHMFi5OBOCudXS4NyXJE+swIvxJKrYZpoW7u
         s2CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bRnf2kKl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=26VuI0j4at3qtDgyCv9io4aJhJq0GcBOEdTa6kQo5pE=;
        b=iGjIvJYpleEubAbFqTxusrt46y7kvZEiGva/QOHupN21Kg5Jc6oJ6Bh7qHw6KYT72a
         VwrDthA/klgDLSHUV00KN59pR47vXqRYUdmmhQrj7mxwOKCVTIy3g95hfEbLqm2n7TNo
         m7DlU75ATZs7uBi16yFD7Mc3tsQw1sNGVS+4Gd05ZbgNFWPyQs39dDFcTntkA3rGyPaH
         y3byefP3g2zirfpHAZciW5uLQ1Vu1OAyZt6S85xeUvaMDoZGPOnRIDJyLVwsMy/TqxNU
         SfRfL5aCOWVytf6paa70beL+zb59AZzHZHH2AZwk5yYcwStXzMeQ3tkOeGw+tTn9oYv6
         1Vtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=26VuI0j4at3qtDgyCv9io4aJhJq0GcBOEdTa6kQo5pE=;
        b=efIpXRl4N+VRFx+dBb9z1BqXVX+YpY274ppf27UFTb/jKvd1BC9tdnbcyYchuqNfcT
         eHFDAKweV8ssY++JrwmwfCX+pE2CE+mCPYW/EMxPski9QHF6YdpyzJhlAA2Z6z5NfLbD
         mpiLrULEwbfFNyn8JhvTkE5XXRpP0SUF8qTWZPzA4eQaLRsAK+vF0aU5Lo0HYxSKccbp
         NL/TG9ovVIStuowl7c+LM4Vq8Hf4aHq9iyyF3jAaGi6yT1ojN1RBf5H0cXk4DMF9B7Hh
         zfEtzHcJrFK/XJshCyu/wqFolYg/LkZFlznq8l5fJgwGEgm/7OFxavEpx0Zu8j6Ob5yi
         1TaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBEoGpxWqameoJk7v/eVoJo+iYYQygVCYiQLHBgDBLOIyXOHVI
	8sVAYUJNP4+slkHrZM3b2Bw=
X-Google-Smtp-Source: APXvYqztvuSGKoZT/9hnTCfvBWEurcEwDrP0Zq35dkCrRFExZ3okfonuWjQK3buCdfTT2vcq0k+q9w==
X-Received: by 2002:a37:8182:: with SMTP id c124mr1956625qkd.399.1570382459053;
        Sun, 06 Oct 2019 10:20:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32c6:: with SMTP id z64ls3202773qtd.16.gmail; Sun, 06
 Oct 2019 10:20:58 -0700 (PDT)
X-Received: by 2002:ac8:36b7:: with SMTP id a52mr26740472qtc.181.1570382458783;
        Sun, 06 Oct 2019 10:20:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382458; cv=none;
        d=google.com; s=arc-20160816;
        b=pT8IbyC7US+Q1SSmv1Jsotp8JZGI7jCo3mll9Wcf/fQRJbCflrYRiVhwlNPqtFxwRy
         D5xonqpboq6bENZhY+oa+jjhfQ/pxyp2H9TXsGXFqfbiUHGCp3nSYcm0T5UpcQZGo+92
         QKHLez/Ge0Ts/UZdlzqpFURCXzrSS9cZw88bNC7xsCJJJ2FPfTe1/xCxvzy6eUvjn+u/
         PDICPchHjqxKOFy8BNrpNJTKx9s6e98cQxTHRi+bh2RJ7rV7xdNBpwyKrH4Optzycu0m
         YdHiykXZxEnYbv7zWJsJsAcJKC4gUHE4zrxkZ2795h0xfkWGlTruuFi0jLqOF+tSyhsD
         xw7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=PdSLsd6ZuQZSNIOJ1DzKjBDKLoJM1ViUMWOSyCIXfCM=;
        b=cqKQaHFbptPCrLNokDdkIIsDEmrPeaReWtgaNfZzvlDy37KE6wfOg44W1vLKFaMwTo
         MclcZZ5h9I1LyYmi+JfRD2xcEhLjX8JTJARsfz+N/2WIaPZDVavtr8GRXN8xAnud609u
         K9JMAED0cLGUbNAOPaZdi2XkMuAFSXHfcMMqsy/RpajtdmyAAtc+mBA1wqcqrZXJ1PG5
         xF9vi1BDUs1up2KpBlH6ftfS8Oi+6gtHMoaSrM8PSMJPnsoKZaOdXMq1jdRhyjwAmE1E
         k/2wrqg2mZuM9rhBD9He8IMqUwRBB9ulaqS70rbQhSB27bRgNZ72Z7xosO1bbofG3klu
         lszA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bRnf2kKl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t186si357747qkf.3.2019.10.06.10.20.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:20:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 41E1720862;
	Sun,  6 Oct 2019 17:20:57 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Huckleberry <nhuck@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Scott Wood <oss@buserror.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.4 04/36] clk: qoriq: Fix -Wunused-const-variable
Date: Sun,  6 Oct 2019 19:18:46 +0200
Message-Id: <20191006171043.480066737@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171038.266461022@linuxfoundation.org>
References: <20191006171038.266461022@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bRnf2kKl;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit a95fb581b144b5e73da382eaedb2e32027610597 ]

drivers/clk/clk-qoriq.c:138:38: warning: unused variable
'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp1

drivers/clk/clk-qoriq.c:146:38: warning: unused variable
'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp2

In the definition of the p5020 chip, the p2041 chip's info was used
instead.  The p5020 and p2041 chips have different info. This is most
likely a typo.

Link: https://github.com/ClangBuiltLinux/linux/issues/525
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Link: https://lkml.kernel.org/r/20190627220642.78575-1-nhuck@google.com
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Scott Wood <oss@buserror.net>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/clk-qoriq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index a5070f9cb0d4a..7244a621c61b9 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -540,7 +540,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
 		.guts_compat = "fsl,qoriq-device-config-1.0",
 		.init_periph = p5020_init_periph,
 		.cmux_groups = {
-			&p2041_cmux_grp1, &p2041_cmux_grp2
+			&p5020_cmux_grp1, &p5020_cmux_grp2
 		},
 		.cmux_to_group = {
 			0, 1, -1
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171043.480066737%40linuxfoundation.org.
