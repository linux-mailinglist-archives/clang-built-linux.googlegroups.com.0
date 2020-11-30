Return-Path: <clang-built-linux+bncBCV7NVMH5YOBB3GWSL7AKGQE5TPWMBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 985DA2C7FA2
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 09:21:00 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id o14sf6371735ljc.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 00:21:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606724460; cv=pass;
        d=google.com; s=arc-20160816;
        b=iROoHzHI9LN7+ItYA9aUArRgNjUi+tWyghWwrfPEKTltqjVejlcRJvXBP5BldQfmiB
         7bwiPjXq/zbXoLgUW01SY0OxaJua31tVDmtbzxaGo66G7pGYCDijlY16EGsCW3k3JZfu
         dkBjOr9BHdmwHv4YsfMx/VzgWSTUKSaen48UTVaz493UQEwOwL/KV5mrb2SWMuzDbMCp
         ZDktbzNyxQ9Ynq4ORrTxXRw1ro2DqlH5fYGK+LyRDm2co9F7TCl/5dzlJ3JWOYWP6VPU
         i4cpS7Zf46fEysmRvqV4IomXh7PGo+RF0jVucl5vbSmodkr6y87v1nqQN/vg3D1EDXXn
         smrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=LsButuHFAqy+OskYL0jzAl5KW1Dckt4dG1CLIfV9Upk=;
        b=kRr/OQT2wzMga1t/SeFdSWY1J55tWESl/OLvgHz3mIV21g7xLY74ccwzSIoFCYOrff
         6qZmwXdFFp5rYkfpY4AjD5GkBQU4EmxOkYPNqSrfU26SnEuGv+G6Cs1rFlK74kFraM4W
         tkdmwlgqKtCqvDw1ScLovJutNkUCzb+rnpCkAap82AllLnDHIc5PELGcOgYo7i4wiiRH
         Xx00WypxMD+HHG2m52YLzF8R7K1wEtVjhZvdiomlXQsV9EcAThh68Wmc7FiT2kMTd/5M
         mhQxbw51iUJOHak+1zosTzKnMjEPP212sZLidqLbP2R+yfFj+eWKSfu/fhevb7JPL8ot
         wvwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkxnoyEM;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LsButuHFAqy+OskYL0jzAl5KW1Dckt4dG1CLIfV9Upk=;
        b=OKD1vQN1RVXKhkcF25ydEDALCeCl+Uofh3NRE5dDhGdjCIJRndI0ByL7FFInlRbFzz
         zedvhtrAo97KtwKR92cgcnkTZmwlkJTi5ci0eI2JtefJD4hzubXmc6F5RnGjrLkTpWKP
         G/60kLaEqrX+jNY24K3YA3Q5RjXn21O2usGB0LrwlxwNShrNW7wpxEG2mqQp2FnHGZV+
         44kVys1dtz28tRhAkzCLGLv/5l8pakkDqapZjfFVGz1FP3yqrjFgNiO4gl4TBs8y/hSC
         yMLuQ97FmovD0Xae2+ZCXrj4o/6jM7m0v5wf5nBlV14k5EDqkHr90PSSEZFzDlg+nZ/A
         vVFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LsButuHFAqy+OskYL0jzAl5KW1Dckt4dG1CLIfV9Upk=;
        b=ftuefSJ8luF+UHuByNn5xPlZk1TRmWEB7H023+YONkMFTkPYeZLzCM89PxekoWWr8g
         2/bMvYmuIgk80EKzLWePfMk2DQ5n+PT+GybUtusV+AGbwDqsD0ox/CAgHA+NQ4T/HTfo
         jnMyXXu1Rr42RyeJ/dgGxC9VGINecs8q9KjR10WZoFQsgSuFslix+4BgjAzkQdby4n9C
         bcPQqgbNAre4FymgNVBszIEYypDihGR6hr+MwI5TgKNNx7iXme6vLp/KbGxu7A7WVFn6
         iOtE5fH+7ptcvu3cu/xxkWmwUs1QOZDYEVWfEzQ7472FWQEvwspXo0A68HwGNsO/isfy
         sYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LsButuHFAqy+OskYL0jzAl5KW1Dckt4dG1CLIfV9Upk=;
        b=N1s5v0aepnm9fw1JpMdzrW+QeimMqfKvwXJJE+E33tf2c//NZYEleMlJSiJ/2E4BxO
         3RnekW5U2V3RkvNCQIPS6lgVvEi0eqB2YkCBugoYh2EF4YAC1e6I8IkAtWabrH/9W2wk
         GyQLTqNBe+WdCikitlL3bFavHgoeZ17Tf2K/E33MjpXJ5tNbY/144CRUXqST56KaDqSL
         UPzGJPazCh/4JNR/OtcZZHjaISPn/UFvIeibf8YFiEMWfJTOppbyMWjdew8uy709dRob
         uBwOOxLlCJJ9bqlvDsq8lgHYCISyNDdOCju/A4+Uyv8K7AzTIzVB8DibMEHpKflgtqOM
         uoxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dsyVS/KjXEiS28XsJpbHn3DYrF0bHIov9HilhHPMT4HPbLRtH
	IN5MX4hFwlNKucjao62t3F4=
X-Google-Smtp-Source: ABdhPJxnYXZYhuDbHGlM1loyMv0A+X4KCxgNJ8FZixKNBuwUtOzxS0OxEeaPs2ATbUEx5fsPX0ezIg==
X-Received: by 2002:a2e:86c1:: with SMTP id n1mr8527723ljj.351.1606724460193;
        Mon, 30 Nov 2020 00:21:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls2562874lfg.3.gmail; Mon, 30
 Nov 2020 00:20:59 -0800 (PST)
X-Received: by 2002:a19:418e:: with SMTP id o136mr9121918lfa.80.1606724459201;
        Mon, 30 Nov 2020 00:20:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606724459; cv=none;
        d=google.com; s=arc-20160816;
        b=nu4dUH0b6faljzx2S/kooN7COsIW9WEY0rw8ao0mNTC3Kx65OnBpHhLqkWDLIeewsb
         8mlNh89kjyOGwd3hANsRWoo2+clu8fkTZpoKtBapZAlZuFf+rdfRwP1HjHragOKO1h87
         6r4xCKmtF5GsOVyxC0EDoLiX7HqAg5f8cAf+7W570QyxnQ7x/SMGzZMCL94coEF/A0FJ
         dt4idGyzRaU1wvu7dRHyyJOJAxPRJbqT/hDcaIChNaU2VEHWLsealbtuaFUAbJeL79mZ
         kxB5TsWAWNQaYn9NgWbnjIfWXFBnhcD+oXO1F1Hz1FdHVc3rlCJaDio4VqY7YMiarU4q
         wPHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LsButuHFAqy+OskYL0jzAl5KW1Dckt4dG1CLIfV9Upk=;
        b=ItYjZOGHZP47sL/JDAdjOsTu5I0H1Bsyk3is3NIYc7UIJFls50IV2v63KGhQB72LSv
         atgbn3Y9YLALKJa+NG1s9e6skCg8BbMN08ttzQ9hSa891cPiZov1MhToXrPZMfAh+Q9M
         JNlfGktSL7PpAhW53nyNxEa4xQCRgrd2OvsSKRUtwGfiAugVe3GvwdAcz00Ek4LCY5Fx
         sfgwS1cUctbFsfq0Muh2d0uylI7WFGxcfEIosdVw3B38OkhZ8NcwPV7+16vgG5Eo9ZiQ
         ZNzwwiN+ftWh1NdHkFF+HLtKeQGFG3gBNRbBI60gXMSQkIIVYGY/ChIMXj2tuDdDg3cC
         xLjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkxnoyEM;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id f9si272267lfl.3.2020.11.30.00.20.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 00:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id u10so4462268wmm.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 00:20:59 -0800 (PST)
X-Received: by 2002:a1c:2d84:: with SMTP id t126mr21608418wmt.132.1606724458643;
        Mon, 30 Nov 2020 00:20:58 -0800 (PST)
Received: from penyung-VirtualBox (60-250-204-170.HINET-IP.hinet.net. [60.250.204.170])
        by smtp.gmail.com with ESMTPSA id b14sm25852005wrq.47.2020.11.30.00.20.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 00:20:57 -0800 (PST)
Date: Mon, 30 Nov 2020 16:20:32 +0800
From: Antony Yu <swpenim@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	swpenim@gmail.com
Subject: [PATCH v2] ARM: fix __div64_32() error when compiling with clang
Message-ID: <20201130082032.GA25739@penyung-VirtualBox>
References: <20201123073634.6854-1-swpenim@gmail.com>
 <20201123181602.GA2637357@ubuntu-m3-large-x86>
 <20201124074211.GA26157@penyung-VirtualBox>
 <CAC5oF3W+RkcO-dSiKXGxVvhBGb0n7fQ-KvdjbPNJJVadv6qNBw@mail.gmail.com>
 <CAKwvOdkE5-OBWjmGwc8qUkj5wuqZTmtYxaMD3sz+4+aNiC2vLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="v2-0001-ARM-fix-__div64_32-error-when-compiling-with-clan.patch"
In-Reply-To: <CAKwvOdkE5-OBWjmGwc8qUkj5wuqZTmtYxaMD3sz+4+aNiC2vLg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: swpenim@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OkxnoyEM;       spf=pass
 (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::332 as
 permitted sender) smtp.mailfrom=swpenim@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From 3a4c19e09079324a625941ea3c16fe4b0df2ed86 Mon Sep 17 00:00:00 2001
From: Antony Yu <swpenim@gmail.com>
Date: Mon, 9 Nov 2020 17:31:52 +0800
Subject: [PATCH v2] ARM: fix __div64_32() error when compiling with clang

__do_div64 clobbers the input register r0 in little endian system.
According to the inline assembly document, if an input operand is
modified, it should be tied to a output operand. This patch can
prevent compilers from reusing r0 register after asm statements.

Signed-off-by: Antony Yu <swpenim@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
---
changed in v2
- add kernel-test-robot tag
- fix build failure on big endian

 arch/arm/include/asm/div64.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
index 898e9c78a7e7..961a129eb41f 100644
--- a/arch/arm/include/asm/div64.h
+++ b/arch/arm/include/asm/div64.h
@@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
 	asm(	__asmeq("%0", __xh)
 		__asmeq("%1", "r2")
 		__asmeq("%2", "r0")
-		__asmeq("%3", "r4")
+		__asmeq("%3", "r0")
+		__asmeq("%4", "r4")
 		"bl	__do_div64"
-		: "=r" (__rem), "=r" (__res)
+		: "=r" (__rem), "=r" (__res), "=r" (__xl)
 		: "r" (__n), "r" (__base)
 		: "ip", "lr", "cc");
 	*n = __res;
-- 
2.29.0

