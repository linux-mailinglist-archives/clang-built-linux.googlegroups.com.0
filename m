Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBENWYDXAKGQE2XZ77RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 08831FEE71
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:51:47 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id x65sf5758186vkd.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:51:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919506; cv=pass;
        d=google.com; s=arc-20160816;
        b=p3bC7tzmG/Ta6DVrNYYIFHa3xFgH+/R/RLjnEzYVd4LFSGX5z16jNb5SijIEbRVnBS
         gmqpfIDB2GK/TteBD8uD6iZ2Zr+CDbBOkW56desnS4DDOjciD9LypA87GzkpKgsGW0J2
         aTcLX4UoLqx9Dw9N2E1p8rRvs0xxPCedM72yttsxnVEKy1K9DDCtLag5C69Wsfe5NaqV
         EsNVPO68byQvV+KNJ4uYYSUaLQ7xNCJY5Rfu92sGZFH4KD9xetgwpjCExYcybxFGW08U
         abf+h3OnntdGL2a0OiO7Pt8IQV69KiBiEmGDcytQHZ3ifp0zYYWKe+bbJqMJfL4xSuQS
         11wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4y2ZYvimrYzmBGehNjORhHqmVam89C/VMQ6GJ7WzN3Y=;
        b=CP/XaDAnnq2fzzbcQVU+f9Lc7QNPAtY4k9SrPDC24XJe9OJAFd8mi1MbL2s7qUG0Fn
         vy2jwF5ZZdBikIUmreHFluRXsFyVBy7xFr/PdEkVgBo1EyXuiWYj7F2EwKj/KErnu1lx
         cTa//QcQS321trDh4VyKJwxro0724RIQP2un2/eIn4+n5AYfQ9ek1s+dknS9shklkfF6
         KrvHBg7/Vrn0LxHskuRnVwqtApBXiu0reRlyULilYEyIRTez9sR0y4uWtqXblZkBxtLW
         E4xzFnxKxbzXMCDCpbz2zwM1mCoM9t6DzAp4IsKKppgW84NJOAULaVnvif/+1jsAveSX
         g/xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PyPyYJU5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4y2ZYvimrYzmBGehNjORhHqmVam89C/VMQ6GJ7WzN3Y=;
        b=ZEtsFFw1dy1KeCLitcQoTfYhCjfgslOCac2f8fAMh8biq4nZRbeZDTgbU13cb9K97R
         sAf0dTApcXTUNuvvGhvsPgKXGSKUdgNmO0ToTqpIvPrIzPSDBqkWJVhRryateytggGTS
         GHsEJVfqUmGN0b8LDoFHF+yVc8IfwDhD+FBTE94H8tBYC/3x5vy2ia2pMxX3GXTDq5aw
         +ZVYmzPsLHlGkAGlOmndjGS/SZJEZNoVEWRAXoXz6kRDZ8BQqg/7RX4kY0cPeu0LtNcH
         TjAgttep4vTeYfc1iI1B8GzJhPtCtub1JbtX21yZHy01nso1UA9tqG6AWEWE6Wq1l3VG
         Gkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4y2ZYvimrYzmBGehNjORhHqmVam89C/VMQ6GJ7WzN3Y=;
        b=tRo6rFza1LyxnEwsILp+UPL355BjrYHL1WjkKCwl+euCJurkNL1Udb/BLr0/VONLL+
         cpOqNsvixgpjrDG7Fteib/syiEwdgnqQOcJfeYz9emmVKR4n8RBkj/fiU31qe1x7nUFw
         Sg0OozFty9WUWsFz6Aksc9ewOPT5Lbv7HTgF3ONRmLKXEu+bBdks4R5fb09bsJybrgH8
         C4A+JNwTeoq+nHOPrzXHwjQBjYCKxtyjRwGtzEJa3+mHCPLScb81OX1U7XE28dvlyIYz
         pAIY/Vwi5ExMumRDT5GHem2a2NBEPNG8UBjyMQpJzlZg04EOrRN5tpSQi72AY0tLPVw7
         UAhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrp2DW0fWvtM5C4iQ8RJR8xfJVB9xLw33btiSVHyGAmxyI+pcp
	Qq25CwI1rUeINzpOnyFfvoM=
X-Google-Smtp-Source: APXvYqx9o2skOrGjRSYwdlQUFHwVDmcv15W95q9LzeFUKgMd/zoTFgzmYESl8Xu1jswBSXUCoSeiPA==
X-Received: by 2002:ab0:4922:: with SMTP id z31mr1028380uac.116.1573919505959;
        Sat, 16 Nov 2019 07:51:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd08:: with SMTP id f8ls895408vsr.13.gmail; Sat, 16 Nov
 2019 07:51:45 -0800 (PST)
X-Received: by 2002:a05:6102:313b:: with SMTP id f27mr9206731vsh.29.1573919505706;
        Sat, 16 Nov 2019 07:51:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919505; cv=none;
        d=google.com; s=arc-20160816;
        b=mk6qqHep+ptx9eGsubx6VtWTEWYV0AcfhjClfcU5eXhK+AaoMkM0GLqcl2OmrFv5LS
         it7j2FvyUPKEc6RKgzAb5l/nvamFHsMC7GwY7piUuyZxNAR6JGACSAKQGcszxFQvOrEg
         246zkLMJaO+3i/8q3OE907kXuS+os4k8TTvlM9FKY0Fp/E+jEQUFsRwVSJerlfd5k9TA
         e5/1l4CRI1oaGDv771Mdqt53u02hUKdDi5/jZtDEAxU9+vCDncQBgjzE1ydPBWPXXM9E
         ogcW98hQQjrte42ntTRtdoe4Z99ZLduUINOuJaf5MkRO+idle51xUq4vgPAbhP8w9z6N
         z+JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wJ/NlRTagFPcsqrFk8zeu5CRlS9wS/Eg4agIfYn9wFM=;
        b=O7WeuXslEuo6Mf/+NcIQ3J5fk6GVqNRYNNG24W/UMOHGCC4ol90lnTQgAwq25SyOfm
         uPWGzNJMFqRo/WSksF0mR3jWGPrjcJsPdtyPCjYdZo8iU+TAkneCcsW2CS4Ec99KWgSD
         HxhJddhQatAGauvZ0zgVoo1BskbOKB9tXj7sAn8h5JczstncKp1RmdscwFjry70DbvPe
         rallAQBZaqDnSsrm+Cfu9V0DZODZMd0QumtHbNQWi7x6rqwQO7njfjF3zCpm2rupvar4
         OwO0aIUYr8NkprhljUlvInWMFV9w7ryZMEMafTczlBXeh/z4ppA5fyg4KqzxR62+YWig
         H3oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PyPyYJU5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si591785vso.1.2019.11.16.07.51.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7441621906;
	Sat, 16 Nov 2019 15:51:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Philipp Klocke <philipp97kl@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 29/99] ALSA: i2c/cs8427: Fix int to char conversion
Date: Sat, 16 Nov 2019 10:49:52 -0500
Message-Id: <20191116155103.10971-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PyPyYJU5;       spf=pass
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

From: Philipp Klocke <philipp97kl@gmail.com>

[ Upstream commit eb7ebfa3c1989aa8e59d5e68ab3cddd7df1bfb27 ]

Compiling with clang yields the following warning:

sound/i2c/cs8427.c:140:31: warning: implicit conversion from 'int'
to 'char' changes value from 160 to -96 [-Wconstant-conversion]
    data[0] = CS8427_REG_AUTOINC | CS8427_REG_CORU_DATABUF;
            ~ ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

Because CS8427_REG_AUTOINC is defined as 128, it is too big for a
char field.
So change data from char to unsigned char, that it can hold the value.

This patch does not change the generated code.

Signed-off-by: Philipp Klocke <philipp97kl@gmail.com>
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/i2c/cs8427.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/i2c/cs8427.c b/sound/i2c/cs8427.c
index 7e21621e492a4..7fd1b40008838 100644
--- a/sound/i2c/cs8427.c
+++ b/sound/i2c/cs8427.c
@@ -118,7 +118,7 @@ static int snd_cs8427_send_corudata(struct snd_i2c_device *device,
 	struct cs8427 *chip = device->private_data;
 	char *hw_data = udata ?
 		chip->playback.hw_udata : chip->playback.hw_status;
-	char data[32];
+	unsigned char data[32];
 	int err, idx;
 
 	if (!memcmp(hw_data, ndata, count))
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-29-sashal%40kernel.org.
