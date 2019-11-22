Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCXR3XXAKGQEPA2TOXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7B5106160
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 06:56:28 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id d12sf3948737qvj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 21:56:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574402187; cv=pass;
        d=google.com; s=arc-20160816;
        b=CLNIMt0+tVsoCROwO6nXzYySx8lRzG3rc7pWnCMhf6OPlUB3U/AgZ9WynlkR7JzQWa
         dvfu830wwvayLprK2Hazj+lfRd48oaNyBSIxE/rLZe+aKHjTOK7qDYzwdhFZjb5jNs3w
         QsnOH6vYz/GfWsaCnDY6MFDmsBv8mQIG1ig5ZFckUW7RWWI79hMUzwkuq+O4B5bknwIh
         r0a1waEUlEYCL32gvzXDTHOLx1F+EhkLKMT1AzEPO/RhK829Qgcqf6VQNltS8xbQqTBE
         vylh4lNN7QXg12gRPlxNoer3Rw0qOWsca1OSsB35WBHQsdBkNqT40oAArMaJjJRV8iF9
         czhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mAQhQIAW7BZ5MiaAJ0ilzMfEUehmwl45h9R322jl7Pg=;
        b=GhpG00rQDiqcS6GQAltUmWHe3hJYqXtUNU1yLm+zED4ftzQBAD1S2mP8WwJGaDzxuJ
         7SJpeWKPuI5n3apTiThiOERjNLSvG65ToNR6u570aGqUf8dGMc3I7PjoaCHmZEDNCkCp
         4dhsSB5/ejNaoQIl1/4iZxKGFP3KiJlY3lrW6gjnG6XYiO9YVXchyvD7A+rNk2jl3uEp
         hNtvTYVLBfTs9zMidpQkT3B2PH4x3+vJYwMEuYabfatfKW9fuG6Ha6J+BpQCJMfEIoe/
         HNKad1SDb3rg2PbnJWu7hr8Up+DOpevYUsJLiF37w2+DMxhHBz/J5I6e+skfBpYoWSDz
         GhwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZgXefGPL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mAQhQIAW7BZ5MiaAJ0ilzMfEUehmwl45h9R322jl7Pg=;
        b=jOrMWDztdMiJK529398JO7EWEI1LVVsA+HCGHhtUofd0x+7noajAI4DEyshGoVkmCK
         qHsdWFZfCoePUPto0tQlLSx2Du7cnNSGFZfKltSaoAy9/EM87/4VnA4RkvXiHpmk/f0A
         g6wbhJ1jKx82TYWmDEM6nUdVlJDyX9tuQHzCShprl0evCkV2avcvctFgEEy5ECqLhvS7
         Zu7T48ncUQ6ununzD+j03C07F+O5TEws/Xr0O5iYKX9I9/ejUWqpEuO2oYCS17NLg9n5
         lECO37Hzhd5diA8ND5Ay7EQjMPHzasZTbHCM8qqDVDiBWIcQK1/5DZ0CkfGTxDdSOtrd
         rB1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mAQhQIAW7BZ5MiaAJ0ilzMfEUehmwl45h9R322jl7Pg=;
        b=AJGlb6o858qu9nxNv7p70nACZX1Es4xSFohep6Df2aP7gbFn7d/U3PABQV9rFbXpIM
         jJGu6rbh+wUYtRI8Oay3tJzCcymJ+Tr/B0ZN5Si6DLq7UuLpMXsvTu3HNNTpcg0cf+jc
         8A/bDlxUPDk3qC+Jxoo5H5gkWrGC4uG3q8BDOamdbQoU40865ROmrN4hcl6L45TEf4X5
         Ib+bzrBdZKerq3dQ8L0nTfve/3J4JAE2EJMvTWpOXwPr/e+5x9bjBxLmcg/y5pCpu13T
         WzOycJmRUmMGYu2dTXC15M8gaRUe/9pA273urs3G+qJaQQnfOT5MZqUqx1HJh6+1wvHB
         gN1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUagZzrV9Vb0DjnqSkfewHkqHlUYlsAosQMEg4xK82Tvwil9eQL
	hR6vyRZ1wws99V4ywWPSZ54=
X-Google-Smtp-Source: APXvYqzWCONYtrpgXVPlofFdMYUpF+DqrbchcqPoKEO4oX0f37EJeWLWMQ7AiUeEW3jlQy+KgTmBKQ==
X-Received: by 2002:ac8:2f4e:: with SMTP id k14mr1755119qta.357.1574402187004;
        Thu, 21 Nov 2019 21:56:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:18c9:: with SMTP id o9ls2653517qtk.3.gmail; Thu, 21 Nov
 2019 21:56:26 -0800 (PST)
X-Received: by 2002:aed:30c3:: with SMTP id 61mr12871103qtf.243.1574402186687;
        Thu, 21 Nov 2019 21:56:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574402186; cv=none;
        d=google.com; s=arc-20160816;
        b=z+NAuFuZt/TM3VW8UBKVCEohLNehM7pJCtf0k+Tv9s0Vq4YUpVBSYnwf6z6z+t4baY
         NX4PwejqNNKsoIlKUWVSxKwtaYwyzCp5bTIQtS6wWyB8PJteSrn80TDvlmIFfV3mV6Xw
         HLRJpKUFsUq3Pse/q96QF6cKScxw/Iq+4XAafmlgtRMmw1ydOx1wSRao6gfMihhxLHsb
         wl/t65zVj8W88vuQKKt9Y/Y5KCi7FOe/U5uNwzUim54JM5i4CKoe/cSCeSPCxBZYHJR/
         uBOUH6hqs9kQf4/YwTY7c38AAApsv8nySyYBGYomPsc9+3mp6nQqtt/85mnUR24kh2PX
         8mBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2jv39yfekBE3r7vzGikTzFegfUrB/+scprsRiugr+lc=;
        b=jyfLaWdhdRs+4Ieo+6HYtUW8bT+yPWnhHN0kWRmMkd1KjZyj8xe3viVsHXjTqtVFTg
         A9KUGDWqSWPKj0b4AIXzTA+OuB99TykGdifqFHBPFPkmmaBoVHF2F7A+0codog2Nnseh
         we5S3MHljCfD62vjDNNNZy+dLSXZgN8dm/ZXIEHUUhGKvxt5bmwkE4eadIWsBYZMMMyh
         X1oFIUU+Okczd8313Xqu+hzl6zV6M0YfpLvqIF7kT25gOXVUsAFalAj8JQ2cDWnyw6Ur
         DqENUrsahoDH1DmDFbse4ctWkq6Y1y5VDsoXqbMtumuWP/QkgNpJoIg9KrAyo/kMPOfB
         blIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZgXefGPL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si328669qtj.4.2019.11.21.21.56.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Nov 2019 21:56:26 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E655420659;
	Fri, 22 Nov 2019 05:56:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alex Williamson <alex.williamson@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 036/127] vfio-mdev/samples: Use u8 instead of char for handle functions
Date: Fri, 22 Nov 2019 00:54:14 -0500
Message-Id: <20191122055544.3299-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122055544.3299-1-sashal@kernel.org>
References: <20191122055544.3299-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZgXefGPL;       spf=pass
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
index ca495686b9c31..f8c7249fa705d 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122055544.3299-35-sashal%40kernel.org.
