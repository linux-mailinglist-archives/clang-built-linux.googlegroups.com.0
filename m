Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBNXO3XXAKGQERNQGMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA17106096
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 06:50:48 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id u6sf4050516ion.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 21:50:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574401847; cv=pass;
        d=google.com; s=arc-20160816;
        b=wbFsJwhC6+Tc9yDIPJEqOhB32ErPwL2fQlspsRs+XFbDxXkL5LIaGhj4UTikgsXVNY
         nmqjIKFRyT9yKNgfkzv1Y2udLHdYx/2L+XMDscevn/evJCwVg54e86LsArg2KjUNxoPb
         sdNk4O1joLgsSfIkGnaUGmEztzkSCy0Sx2BQdhEyN5+FYIKRjkT5JBuz2a5MiAWn3Fee
         9Mli8ySi/KTaRN4oZxF5m+E4Toq58gBqBOcF247i9ELeiDLucM2Qustwk42dgoAGWQfG
         i2T6eBXw4+oEbg4MkpOlaw7UpTy7lSCof2s6OJhy7K06CXpoMkaWvtsZX9XBIGRiVv7E
         1Sdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HfvFpC0U5ltHUU9jTBrN8bRZetSP4jNeletYy2+0v6M=;
        b=nYfP7LybzIQAxsq8j1mFzsXZ4bINvYdMxrl0BCVEWqNMhTBFMfyIfs+A9T2SRHLAZ7
         RZaBshT7/XZylzrXhsGIqQZRxQ/KE4Ro/Pb8jx9IYR8tI6QqEG2LdJjY6jBY7S4nqtKP
         YevfJLGVyP9OGp98dfUw2bKlfu1EHKLg3IswEhCoaCvc3I//FpCRExiEgLxw7+ADiv4G
         JGa9nce0oD2Bh3Wdxk1hbT2JsCCxqH9vkaSattNxoihmjaFsMHHf1s2cu/fZ+XeB9O2V
         3CaxpFcBDVdTJQYT5UP0uJgeNOncgiY2reT6p3qLe1KhDPhZ3Cxefuws8fIhr7Ab/m3z
         37HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RXX9ywVw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfvFpC0U5ltHUU9jTBrN8bRZetSP4jNeletYy2+0v6M=;
        b=iU1ELm3BNq+OYOVKQaW2M3qBzZyxuTcHpuvZnG6WDYah6JX8CtE6vc38eeQr3By4LE
         mniPiFaq2syhFdkDfRLQFFKpSkeal0SuOZepEv1P6jhjRC9WKHJ8PFO9J32ew8axot9m
         eHF3Cq9LJw3rwiB1csAO7pKEXOi1NOoXpPkHaMX6WS929Oo1W2ragLYmpc7VXXweECTd
         J4GqHBWFJBFVr2b6AOOCXXjA5A11+ZkVPapd12qtMc3qguG+Tf0WRGJKqzTCJe2C8nio
         gmmhZGPEO/38J27uSosrf6872DLNzlKaFL9g5PZPSyXxhTBKtn5wVOf94qLAbly2lnZ+
         TKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfvFpC0U5ltHUU9jTBrN8bRZetSP4jNeletYy2+0v6M=;
        b=PX04TZ/HI9zS+8y3O9+qMZ2L5udVg+rbuPw2duqt45disr9TTyEgJPhx0dq7hsdiSC
         gHgsmNTiZCstaGXAPPCTU4POfprjxi3Cor7H3zpul//0jYw/cuCqGfjXOmh1sU9mHfIR
         VF+3vtQveAZOR69fDXPKZgKDV3KY2VmWZ/+F8fcySDY+SkElhuE7F0LHAgAVkcCZYTmP
         b5iPEpYXETLP1V2Lt+D85qodTkFbmCGtL4AzCabh70NqbB5mTrLGY4gbvmoZh2XuQ8Qb
         stR8mK0dUCFe90QqV/FueWVGd6rejxYYnTuYbRhbnaLZmqmTUBtBMfCnOGqa51IWshNc
         wvrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU7CjoWPYtjYSmlS4QnKbdzlCMlLE2Y/LDdlwsAb7Hb58j107W2
	PTEwbiHC/rk9/cMPpku9VY4=
X-Google-Smtp-Source: APXvYqxEnCX8/Dq9CZ+4iaHwti6Xl6XFriV4MzbyzhHcrkoy2T+f5DleYaDfoh2K77lRnyT/FhyliA==
X-Received: by 2002:a92:1bcc:: with SMTP id f73mr681971ill.207.1574401847109;
        Thu, 21 Nov 2019 21:50:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1f04:: with SMTP id i4ls1585623ile.8.gmail; Thu, 21 Nov
 2019 21:50:46 -0800 (PST)
X-Received: by 2002:a92:c8:: with SMTP id 191mr14928459ila.287.1574401846657;
        Thu, 21 Nov 2019 21:50:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574401846; cv=none;
        d=google.com; s=arc-20160816;
        b=XxEA28uBaqwnWGo3EMA3qjoDXP/stjZJCZHWU9RJs1HEAJL1M3xiDZax5mQq7V6Mtv
         sKmYynvfsSdE4aBDNh3LFKRq9TAsBrmo4JYn7zfFrwXfbfFeN3tpctZHfTSHKdEHg9R+
         Ggoh8oU2F/msSfryjIf1lJxIfBnDt93Efgz67v5kJ6sO18Q/k9G6IQifNimC4hMFv6zu
         1zE2F+FzW6JHuUJ/H24KPrsdtjTV0aG8qfTHmv8psu2Ppg4AKs4XvCPHXvHT7Hg69ybO
         LV3kPJKMaq3X9GfSuHydjQjGfvZUmHDbCpQ3S0iVczNNNzgeFgbOnBd1CPxLASeUamjX
         tQpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ombv632F0PC60exuGUqNhF5Sk/gI2n1rNwIxBfy10hg=;
        b=nJxddhZvPjow+s81h2MTtDKkAbT5O7ZBhfPg638Ix8bInZuEesOT8Ew0mj0pfBGdgI
         ajwHmAaVA4RHyHi30asmQuElgwl7NMMJSUKhIyNTFEH7cX+lPDmw3UcEu4cZwbe/7d1T
         MnsCzm+7kf8mkxAGRjNlUySbWxQaKbNFpC9RhrvL2MK6BF9LIIvpBXOOWJyyHxnExSJm
         SYurfSmD3Rv3LLfqbPuVibaX2g6TLlOxl8hn5YnV2mFpejs3LzhdV24KbuXcFe3web96
         S72Tdd2rEtN+izkbEc0ScQVP/Kf2BE6TWngcBFGkPHXHPtZzrfHPjhybR6BAPFGuavdw
         q+7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RXX9ywVw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 75si301305ilw.3.2019.11.21.21.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Nov 2019 21:50:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1B9B42072E;
	Fri, 22 Nov 2019 05:50:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alex Williamson <alex.williamson@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 084/219] vfio-mdev/samples: Use u8 instead of char for handle functions
Date: Fri, 22 Nov 2019 00:46:56 -0500
Message-Id: <20191122054911.1750-77-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RXX9ywVw;       spf=pass
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

[ Upstream commit 8ba35b3a0046d6573c98f00461d9bd1b86250d35 ]

Clang warns:

samples/vfio-mdev/mtty.c:592:39: warning: implicit conversion from 'int'
to 'char' changes value from 162 to -94 [-Wconstant-conversion]
                *buf = UART_MSR_DSR | UART_MSR_DDSR | UART_MSR_DCD;
                     ~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
1 warning generated.

Turns out that all uses of buf in this function ultimately end up stored
or cast to an unsigned type. Just use u8, which has the same number of
bits but can store this larger number so Clang no longer warns.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Alex Williamson <alex.williamson@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 samples/vfio-mdev/mtty.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/samples/vfio-mdev/mtty.c b/samples/vfio-mdev/mtty.c
index 7abb79d8313d9..f6732aa16bb1f 100644
--- a/samples/vfio-mdev/mtty.c
+++ b/samples/vfio-mdev/mtty.c
@@ -171,7 +171,7 @@ static struct mdev_state *find_mdev_state_by_uuid(uuid_le uuid)
 	return NULL;
 }
 
-void dump_buffer(char *buf, uint32_t count)
+void dump_buffer(u8 *buf, uint32_t count)
 {
 #if defined(DEBUG)
 	int i;
@@ -250,7 +250,7 @@ static void mtty_create_config_space(struct mdev_state *mdev_state)
 }
 
 static void handle_pci_cfg_write(struct mdev_state *mdev_state, u16 offset,
-				 char *buf, u32 count)
+				 u8 *buf, u32 count)
 {
 	u32 cfg_addr, bar_mask, bar_index = 0;
 
@@ -304,7 +304,7 @@ static void handle_pci_cfg_write(struct mdev_state *mdev_state, u16 offset,
 }
 
 static void handle_bar_write(unsigned int index, struct mdev_state *mdev_state,
-				u16 offset, char *buf, u32 count)
+				u16 offset, u8 *buf, u32 count)
 {
 	u8 data = *buf;
 
@@ -475,7 +475,7 @@ static void handle_bar_write(unsigned int index, struct mdev_state *mdev_state,
 }
 
 static void handle_bar_read(unsigned int index, struct mdev_state *mdev_state,
-			    u16 offset, char *buf, u32 count)
+			    u16 offset, u8 *buf, u32 count)
 {
 	/* Handle read requests by guest */
 	switch (offset) {
@@ -650,7 +650,7 @@ static void mdev_read_base(struct mdev_state *mdev_state)
 	}
 }
 
-static ssize_t mdev_access(struct mdev_device *mdev, char *buf, size_t count,
+static ssize_t mdev_access(struct mdev_device *mdev, u8 *buf, size_t count,
 			   loff_t pos, bool is_write)
 {
 	struct mdev_state *mdev_state;
@@ -698,7 +698,7 @@ static ssize_t mdev_access(struct mdev_device *mdev, char *buf, size_t count,
 #if defined(DEBUG_REGS)
 			pr_info("%s: BAR%d  WR @0x%llx %s val:0x%02x dlab:%d\n",
 				__func__, index, offset, wr_reg[offset],
-				(u8)*buf, mdev_state->s[index].dlab);
+				*buf, mdev_state->s[index].dlab);
 #endif
 			handle_bar_write(index, mdev_state, offset, buf, count);
 		} else {
@@ -708,7 +708,7 @@ static ssize_t mdev_access(struct mdev_device *mdev, char *buf, size_t count,
 #if defined(DEBUG_REGS)
 			pr_info("%s: BAR%d  RD @0x%llx %s val:0x%02x dlab:%d\n",
 				__func__, index, offset, rd_reg[offset],
-				(u8)*buf, mdev_state->s[index].dlab);
+				*buf, mdev_state->s[index].dlab);
 #endif
 		}
 		break;
@@ -827,7 +827,7 @@ ssize_t mtty_read(struct mdev_device *mdev, char __user *buf, size_t count,
 		if (count >= 4 && !(*ppos % 4)) {
 			u32 val;
 
-			ret =  mdev_access(mdev, (char *)&val, sizeof(val),
+			ret =  mdev_access(mdev, (u8 *)&val, sizeof(val),
 					   *ppos, false);
 			if (ret <= 0)
 				goto read_err;
@@ -839,7 +839,7 @@ ssize_t mtty_read(struct mdev_device *mdev, char __user *buf, size_t count,
 		} else if (count >= 2 && !(*ppos % 2)) {
 			u16 val;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev, (u8 *)&val, sizeof(val),
 					  *ppos, false);
 			if (ret <= 0)
 				goto read_err;
@@ -851,7 +851,7 @@ ssize_t mtty_read(struct mdev_device *mdev, char __user *buf, size_t count,
 		} else {
 			u8 val;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev, (u8 *)&val, sizeof(val),
 					  *ppos, false);
 			if (ret <= 0)
 				goto read_err;
@@ -889,7 +889,7 @@ ssize_t mtty_write(struct mdev_device *mdev, const char __user *buf,
 			if (copy_from_user(&val, buf, sizeof(val)))
 				goto write_err;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev, (u8 *)&val, sizeof(val),
 					  *ppos, true);
 			if (ret <= 0)
 				goto write_err;
@@ -901,7 +901,7 @@ ssize_t mtty_write(struct mdev_device *mdev, const char __user *buf,
 			if (copy_from_user(&val, buf, sizeof(val)))
 				goto write_err;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev, (u8 *)&val, sizeof(val),
 					  *ppos, true);
 			if (ret <= 0)
 				goto write_err;
@@ -913,7 +913,7 @@ ssize_t mtty_write(struct mdev_device *mdev, const char __user *buf,
 			if (copy_from_user(&val, buf, sizeof(val)))
 				goto write_err;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev, (u8 *)&val, sizeof(val),
 					  *ppos, true);
 			if (ret <= 0)
 				goto write_err;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122054911.1750-77-sashal%40kernel.org.
