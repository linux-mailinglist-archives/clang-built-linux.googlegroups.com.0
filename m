Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAHS57VAKGQEUR4O2KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CD2960C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 15:43:29 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id g33sf7321172qtc.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 06:43:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566308608; cv=pass;
        d=google.com; s=arc-20160816;
        b=0b1AxzMy8gL0WMTo4yQhnVR2ALwhgfqbLe60Sm5H4AOz6sQEAR9DVXdmdXE4qSDDVw
         XikH04eTbxwjTk8kGLTy7kpE9IRA06GY6vuzws+aubDmoKVv+N9Q7NJKaNfR2JXU7Kph
         /0mH/m6SRRt5VCbKdmMX7EDqOPybmsRrrpr38fYC/L0CgYzJbYo4I+KqHmB8fqsyLT2s
         gU1SX2eQ6fLSA9Scd4Ozey2jP9XTdWdbfpMm5dnCzj1IyecKYr6juL8+ROAv+bw3KFRP
         9d2uMHd3B7K/IXkcu3HM3HLJOpNRnPO8Ax2A981t3y/9K9YbQOfQE5XSVeIzOmEhzgAC
         pqtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=x7T0ryeUyKIvS91j9UFeXo1vvT30kR6JyFPHw8Jw24w=;
        b=Bf3OpmKrh9aexwcJyu6fhwmTYQq3AVNKbsasayJF+u3488r9EKoGHw8AhRiyD/RMEf
         /5OSeeWGwtivtSO/nR3uRM2hH8icyCexPQUcljylcZRuHZVeCWVpvicU6gBZO6OYL8N4
         hC59bOFs6gXJgMrONN/832Bxd6ojzXpIUdNqgI5v7CTQMTKScafnMZi/e35el03/vhiX
         bmKN803yuonTc5SDixx4wnGhmtXC2WmKBSUkBNXftHX2zfi18894Jav+5moHnAt0hhL5
         bg6zEGc+oR8jrJx6TvTH9D45SfsUT6dikc+57Zibwrf9/vlk+Trk8f7jDdbbWb9/ZO69
         uGQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ow1vNCSS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7T0ryeUyKIvS91j9UFeXo1vvT30kR6JyFPHw8Jw24w=;
        b=bkrCq6tdNcJ8bklFpLk1ygsTQymZ22bzWWs86AcNhfN+KnQzihp565HhVwolpyaplp
         GET9xFguiyU7dSHx0aifB0LD+tzctMgcmYdeFP8PI70c5nqONefvlg3ffSQ9R+csKwiU
         lnMwVw2X870KczC+7QDMo1NJHoKfO9Y3j5nOc20RnfRgyljs/IOmO1HShWhiqb+llyDj
         Z4PxRMYUVVbTU1zQdbN00nJ6yYuwyUQdNVhN1PqmzvXz/3MOH+lhRLirstxX/C+ngzMh
         A/+aIEaFVYykn8ocmpmQvMU+rhYL55oTMRK+W92RXZ7/Bl7QzUoFt2vdGYIFDnOAdaHp
         QLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x7T0ryeUyKIvS91j9UFeXo1vvT30kR6JyFPHw8Jw24w=;
        b=IeeWw6wLmEGrSQRvbUFCAqW+/bvLUJGRyuAna/MHINnuaWHAHDRCkAUcLDa4T52Wbd
         AoPKp1dQrAPWaPODij/0IaoPq9MREeNjsw6GxwCErVHrWAvLtSQkIjb4Y87O8pNoMLta
         HguD8sheRuAFBs+73jRnNmxbx1I+o4y5WpYaPJdEcBUJHZPF5dqBjtPQtGrZ7repdIRb
         Ie8qMkNhZGXwKkJn0jmHquetp2zRWAQeEeMcnyRUT2WjfZpzZEdsCAN0Wk7PhvJbps3H
         yzLnlJxJYJZb5BHbKUkrFXQXhxe+woilUIG3VotLisswiX8+FlAJyHiPNihsfiThsgWE
         MR6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUz44QOI37hHViEIdtFgNFtBKJHtU+25a5YDx5SumXxsn0KsRX
	afKCri4mWvRz11V2QUFFrnk=
X-Google-Smtp-Source: APXvYqxHHVgtQK/vEYsBFQmJtO32X5F8SMgpSMVycFzknvs3Y8YaN1o8YDyA/4E4dR8CTjX7NFHM/w==
X-Received: by 2002:a37:6905:: with SMTP id e5mr25639539qkc.121.1566308608566;
        Tue, 20 Aug 2019 06:43:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8a32:: with SMTP id 47ls2883377qvt.11.gmail; Tue, 20 Aug
 2019 06:43:28 -0700 (PDT)
X-Received: by 2002:ad4:4026:: with SMTP id q6mr13863861qvp.12.1566308608313;
        Tue, 20 Aug 2019 06:43:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566308608; cv=none;
        d=google.com; s=arc-20160816;
        b=jPvD3TaTvI2kGte9CaCHkOrr3nEAY6amtFzzb4eUZUTfh/8xDTkb3pflbsmNidj2Lk
         PTRgd0vNM3ooCfXhiWYlnJDnsLUkukfidTyKYTuTAPMI6vhOM7h3dLDe12D/YvtmkJNi
         XdRd6D6OfS5RYRcWUY3MI88sF2wnsjLokzSJsG5GtwhITr4UAsp/sdk+l0TZvm/PIetE
         u04r7kRZ/V0+WDgGqUf8klqMj5y2ca6cL0Rk3/7zGNy1vOTxdjpukoIV8VyNH+2CjBTj
         z0GymtiU1okUGNvs/0S4CGv6CdM0585B7Cox8qCXcJGGQAKFb3KB0+WQ4c44XusbprX+
         fVHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=A2GwSI166bFFFUbRnF/sPy7O9imRaG47LymfDoGtxao=;
        b=awlADcTRmOPmiOxiRNU1DGssiF0gEIcj4lep3tjx7CkNpFPPDVk1/NJ4lWAm6bf/hC
         J/NeO2VN0BKXLq/r4SChfeFcDbHLJ7Ekg3ZN5LNwdsBiEVFvhiWWEAaHWwpds8tcbTrZ
         8fvXF5ptJ2vBiD+8M+/9EknBqzu4MCumu/4QROLMcOXyTS4draUm/IkVLPCRlnysIWJ+
         Ui2N8bUnw1oKgs7o8mgAgiZ3qxfjjg6PkDY2+t3w1cBfDTay4OpBSxxA3JM0tW7asMJK
         xzpNcio/zHGMs9lOnAq5x6rn8XpnJr6beWXt4bAIli/TE8CkOb+PMPjOzZUDgTy3TIRv
         rIbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ow1vNCSS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c79si776120qke.4.2019.08.20.06.43.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 06:43:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B10042087E;
	Tue, 20 Aug 2019 13:43:26 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 1/4] dmaengine: ste_dma40: fix unneeded variable warning
Date: Tue, 20 Aug 2019 09:43:22 -0400
Message-Id: <20190820134325.11825-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ow1vNCSS;       spf=pass
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
index dd3e7ba273ad0..0fede051f4e1c 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820134325.11825-1-sashal%40kernel.org.
