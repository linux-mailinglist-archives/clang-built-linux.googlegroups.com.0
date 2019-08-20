Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5PR57VAKGQEXG6VHLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 04290960BD
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 15:43:19 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id p9sf4112108pls.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 06:43:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566308597; cv=pass;
        d=google.com; s=arc-20160816;
        b=mrcrffzYn1M1Wzripul54o1PGga8gjdK2fCQsP+ebe1FCLwmTTYQuIfOfIEp3p3FCc
         If0+5y7Vitkw7qFtyhbGd85oLGBAN5irhqXj2bze+xJBGxZihCOS9ldSG5qAis6fiA2Y
         2dJ19M4zLk558rZT3WovuI9+Qb4IBy/OvPV1+Ecgvel6XeSj9Co1DCxZa0ple+LkUBJu
         zWtNX3ntFgCmFN/JRoAFChVU4Ms73X+sDeZvpgBfznUoMeL8wtEfQ9GnKT6FhSFOXUx2
         f9qbojNdjvLBDQmKsR6E34LPqOvb+aBPxuGnXNIBfnxSxCBeEz57YxxwFth+O5X6/ftM
         bpdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Mfrtnsmo18BBZj8nrEpQ9Q+EoraqCJ3PYezGJwFn6tQ=;
        b=ImPLxdUMF3EuYdUCH2M1kYjL8iXorh3S4WnCOkrsDc0S9fIzIC2ZTKQcJZWGINhfPz
         8pQ+VFYCx7tq8htW8GlTmGDHi43R7NA/VDLoJx2E+4j+MaFbFGRss8SXSqbW1nslS8Tq
         lCcLtBNtvdtyeHOk8Jf1NZizaQDvmOhvj5UYSV8+7DKrFxZqBozCSdCv+CQ8OQQSOc1n
         H0sIRJU7NOFhl8nLzMx6w4ebE6yG3zy2BaMozlWxcbPN1eRYSHLU2pBa/d5kAIuLx2F/
         csHt0qObj4RED6OJoSiYDAGLPEY5/ISJknEF5SCn7gcXT4DmSQHtS9fhdmU0Og1/c1BU
         xcGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="raDt/mLx";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mfrtnsmo18BBZj8nrEpQ9Q+EoraqCJ3PYezGJwFn6tQ=;
        b=VF8sze3jRmFLp8DezSu0PW1/1avU2NXEj2ZYecOcrG68YXeNL5VbTrzqFAPx8ifih8
         u948TvdEdEgFh7z7qwkdK5zQ+3C7XWAFBPt9AW9Zj7FtbTGSCiGDkBqksL1nbV/7QFFA
         JxLuaH1DEVloRlL45yLKQYaUzLkLtsuhsVjZ6WSQuLTo12C446X4MuCrX3yF+EXG9Ewp
         pGTiI2d+lUf7YcRy9DiXvoL6IECbT78DLKlHcBTlu0Vetd8wknoMAek35wSBvoyUBZaa
         Jg5mLxL7M6xj6vfYqEAk8FfrH/htvjz6mhVzwtaADXCgfq+RJmT/v1opXGiO8f5eGDWI
         HmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mfrtnsmo18BBZj8nrEpQ9Q+EoraqCJ3PYezGJwFn6tQ=;
        b=hkz5QgQdm2oXbB8wBK/3kmmTXOXbrsF0U5dPn9BCPCAR1SMklFz7j9viiXzh+uPJDX
         Gt9Ig6jcoj5vdK8zDzx/JiPhvdzNp+u0AfV/63ZQNBhOajqxx1WF1+gn/gb3MixVUxGa
         o9am8Xq5ajtzLn9Ivq7wayDNOCQrpuaZF5xjLQ1MmtcuQSD0hGvGE+g+KdlWjLdtODU0
         9f1YOuEYAoMOHpk2ICBCmaLZEkXStBbesS9k3RyPQSTuogn72SNe3WOmixh5TzXY1jkP
         wHyxJa0L3ZqJBybiUcQtdwSSgjN2KNsSxclFe026TjadIlwGMKMRwZ3MZdf7GojmEOEj
         BLvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQ1VP7u5pWTa+6UGsVTwWgQ0zAgxFsYAfndO134nop+StKll15
	4PyR8GqaPmg6vzch+8/ILnA=
X-Google-Smtp-Source: APXvYqwCJC2CuYZljaWNlRoT5do+LkUcdsiHGPC8uhvY2MdBs4siVagrxdxr6gR6uUN8w1P6O8cyJQ==
X-Received: by 2002:a17:902:28a2:: with SMTP id f31mr13667953plb.44.1566308597711;
        Tue, 20 Aug 2019 06:43:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:568d:: with SMTP id v13ls4310761pgs.4.gmail; Tue, 20 Aug
 2019 06:43:17 -0700 (PDT)
X-Received: by 2002:aa7:8dd2:: with SMTP id j18mr29736954pfr.88.1566308597448;
        Tue, 20 Aug 2019 06:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566308597; cv=none;
        d=google.com; s=arc-20160816;
        b=QnT2wpy9Dr2omHXbiNr6V88hn0uajhEJaCGWt8ypLlGMXK1IuJAa18/7EbHglsD6ar
         iKmQcFKtJjoa+jxu2yamSskZquc3hKKXTlmyjhS4qNse5tur9ZhYYTZZlwq5/37P+vOx
         AB7Z2SquTDbbXhoRAfkNtd+p8YqXbXSvPCRB0xAWSQ5xPweLNNx4xYieIfDX8ed+BSql
         XoK0DN0b19fbjyRrmOgZFJT9E5twc2xNZztuCZWOiwpe6NiLP6AmUhVv1UjWEvgDNs+M
         8AGYkX74ldWFA7/lMuHsVttxYIUOSYZBWq0U9bw8prVXoC+ExXN4DkdzyLWkWIefmclK
         zHWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bdEPa8fYcRvaaAYbtb/KG8OHIvIRcz1q/RQUzY3IYOQ=;
        b=pzj/hnQqWnqQCix8zDz/wSGX+P61c0rfIOojZRwqJZr9JMsk6MtzjX8+HoRgEce1gm
         ItomtdK+Uev19tDxzfPyfEdYczgcq6P3NhNWbNPTRtXQ9t1ANTUcuFHRXLTTW8VXoKXA
         8JbFccAcsdDI0BpJO2fan8VuFPJe2WOi5HX4wgHwV9vRglHXNv21aubV412tb94BPEQ0
         Tdb1zSAUt1JCcwUHv4p8p+4PkDYa6RX9yOr9KM4eXNbJaF0nln8RxopZ2IL7OaJa4RIb
         FClfLxJAWILJgp5qlYaxwymxtOjLSkCrqAWrT8Pz99FPlq86LJM9SZGCqGX+UQEWF1mD
         /dyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="raDt/mLx";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q2si716902pgq.3.2019.08.20.06.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 06:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7DBCE22DA7;
	Tue, 20 Aug 2019 13:43:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 1/7] dmaengine: ste_dma40: fix unneeded variable warning
Date: Tue, 20 Aug 2019 09:43:09 -0400
Message-Id: <20190820134315.11720-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="raDt/mLx";       spf=pass
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

[ Upstream commit 5d6fb560729a5d5554e23db8d00eb57cd0021083 ]

clang-9 points out that there are two variables that depending on the
configuration may only be used in an ARRAY_SIZE() expression but not
referenced:

drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs[] = {
           ^
drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs_chan[] = {

Mark these __maybe_unused to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Link: https://lore.kernel.org/r/20190712091357.744515-1-arnd@arndb.de
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 8684d11b29bba..68b41daab3a8f 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -142,7 +142,7 @@ enum d40_events {
  * when the DMA hw is powered off.
  * TODO: Add save/restore of D40_DREG_GCC on dma40 v3 or later, if that works.
  */
-static u32 d40_backup_regs[] = {
+static __maybe_unused u32 d40_backup_regs[] = {
 	D40_DREG_LCPA,
 	D40_DREG_LCLA,
 	D40_DREG_PRMSE,
@@ -211,7 +211,7 @@ static u32 d40_backup_regs_v4b[] = {
 
 #define BACKUP_REGS_SZ_V4B ARRAY_SIZE(d40_backup_regs_v4b)
 
-static u32 d40_backup_regs_chan[] = {
+static __maybe_unused u32 d40_backup_regs_chan[] = {
 	D40_CHAN_REG_SSCFG,
 	D40_CHAN_REG_SSELT,
 	D40_CHAN_REG_SSPTR,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820134315.11720-1-sashal%40kernel.org.
