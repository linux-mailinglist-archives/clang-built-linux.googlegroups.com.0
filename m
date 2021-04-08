Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTV2XWBQMGQEPSWKUDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA15358DA8
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 21:45:19 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id c7sf1973772qka.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 12:45:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617911118; cv=pass;
        d=google.com; s=arc-20160816;
        b=tuIGR7U9rf+fboIYB/AjrgZE+hMivml8W9zY/y2N0KP+IJzo5qL/IzbV42Pie4R+C0
         XxXherNbdWdv2V7UDD1g0iXDsTr8FUPJ1kn+l7LhS9cK/0f3YP0wcdI8TttSF4LFHCxC
         Abcv+FiK/df6lTMnHO8yc89QNavohqWjywF04DT1ZKOULTyYq/Izrech9rm0ptyxKoZ/
         upfbjKqzxiks779Sy2adX9P8+B3oT9P1nyvYMP7sVebpXu4Wy7YttOk/ARHabweBWHNE
         IJz/coFKwxG/19Xfbcw9uXMeN4GA7VB4/aoG4nF6fqcXh59SMhlr2HS8Y++LRuqx2q3U
         N70w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7p2F7Srazwn8eE4059YTvix4iXX1CU7PiDExUz1rD4E=;
        b=OIIoXMpoAdzrdqyEgUbHlKZAOwbVBWXYj3dc+39/IhYYlV9t+TPO7NCgipwhy0OfXw
         cZpXdZrauFniAOiVLJJvCtuBPyFHvyuLnv7rWAoXP/GFgrMVIZkg0RWodx2siwkEP6Ii
         NVI8OGcXxMsdIbPpZ9MzaYTSrBg1MgNRbGLSsAoTeHwJebhnitqkonSg3pzc/AiFhnog
         wqd/Y8sbtpYGTbdWsI5oUu/Qs4dT6tNSyOl5ff7CSgMYuneH8xLl2hysnOy/kvPea+dJ
         i+6spzuvluRvixdgu1WCJXl3GxjYXFLAdZgFFwzL0nTv80mUbLwek4UkQsxzJe/FhkkI
         lQoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ZK1uIC6/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7p2F7Srazwn8eE4059YTvix4iXX1CU7PiDExUz1rD4E=;
        b=rH+rKqZWRR/XGNQXBfu6FpUeZcoW3WBqTzgghZtBvJ2vcleWVtDZBid3V/gjig71Ar
         D+l/nZj4g8mVYzHmfSLxDMjD/S7VJL/86RrcVqHECX+w/zQ6IAzI2GNiZm7g1hk27Uyo
         vee2RIhxNqGzOa2RZ4ckr5TEExKNUxs2LFByV83IO1dCkyBwVcClTa9jfZlqIEsIyhXe
         NhQ6pyQz/JO7kqJu+K8q2yS8p2HXaROWOx1GqZFHLOMMT1pz/pSDqlPgKOf9lbUfGsNx
         ZwfWvAT/6QBRwtLS9QhVagnSOVnJpfpEBpeJ9Fxoh7q9hMfZCMS+qmaYNIVOUD4OaP2Z
         LtiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7p2F7Srazwn8eE4059YTvix4iXX1CU7PiDExUz1rD4E=;
        b=eiZZIRea52lluYF0lajaktc0OIqCU1l6o2qpTPpTW7lPEzt+ZkvlyqJxhaXEcMEyxu
         HtbXfQK+Q2K7SbWW/ImLNw+EcUxPyDsGSDASPcXpy2pnz/HgdMfHzdWgcOeQWXNpihis
         eHJpcY0nbiRq9LKVz608MmSnDIBzOcrdu7vONI2V57PRBijwIMLNbsRsjZlisEe0Mxff
         Miep8ayRVyrcN9LUcYoBQhx3pdflxU/0WLZeirS4WjqPP/jJFTrVfGJHPjM9x0DcNiy0
         o18rjc7Sh46nR46K/I32ir8jzqShK1wb2igVGgl4bCfpUA0tOhq8HKY5ByXdaCyZCKj6
         hQQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rSVcVsDpwD3GIX4WrB+nCmj89fIzm/UwJ0hQYIR7Kr5wLykem
	fXiFDMF0OONcwEYw3ClgcPs=
X-Google-Smtp-Source: ABdhPJxDYkHraBJOnhz2Io3hOiVYOReDcxrOiNlCu+G2eZjr9BX6fL1B5s1AeEs6foyk4v/c01txJA==
X-Received: by 2002:ae9:e912:: with SMTP id x18mr10581610qkf.475.1617911118392;
        Thu, 08 Apr 2021 12:45:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls3778105qkm.5.gmail; Thu, 08
 Apr 2021 12:45:18 -0700 (PDT)
X-Received: by 2002:ae9:f444:: with SMTP id z4mr10343834qkl.226.1617911118011;
        Thu, 08 Apr 2021 12:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617911118; cv=none;
        d=google.com; s=arc-20160816;
        b=t6Vl4tqbmNUqEaeLGjB4G1FYk9PxlIVeUXeugVY/E+LJY+iwR228AgRS9N+pP/iLBW
         oQbAGg5bkqj4Xzd9P0T2WRB8qJYU+uav1gZtUr6WEo/hxTrwqiU650dyuqnFxT9CFE/Q
         m11+1GDBt8f1RGM88nCL3o0zCDEdTMeCCDOsmfYHzcnT2gA1/zbAgF4OfltEgeGkxkK+
         bCLgcs+fClVbolA40M26G6RMu8VReWR9UFClebfh5LsIp6Um5s4K2OISym/i1Qm1H08y
         ZSYnU7cRAA6XDfYSKf2YEGddabBDar2GmBg2LqQ0KESOuRAo+K1yUoiV6MHhHMME5aAx
         63iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=H0Zpw9et2zJdCX1bUkiO7HBafYcsflDGzaJHSOQfE/A=;
        b=ZFN0CAVHAZe3sHD43SX7HLPK4pWNjcrQyIRim4mft6UK8H7JUJTAqWQPNGEN2GBPYS
         EElsqS8SRXrc7dxAuWRgHk/iNHINSyPvVmAPbuny4mgekUfjevP4KmccFwdlKOj7ba4H
         JbEg3niCjyKUaAzKC2ssptz7plyfTBa4Cgu7pNXqlBzYwrVIi16yeBz1KgmjYKNJmGYS
         0TrG+WGYJ3gAKGwECa0ZnQ7GkqOFSdYYPdegdMyrmxA/Dsi4wZDObaH4x7kw4XMeRMhE
         LA59mB2LeJ6AlSdJ27KHxshzoCPpHW3lY9QtAzYfefCLvpoyYpXbddAfs5Xaiwoaynb5
         2xGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ZK1uIC6/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a15si65732qtn.4.2021.04.08.12.45.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 12:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B9B56610A8;
	Thu,  8 Apr 2021 19:45:14 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Christopher Di Bella <cjdb@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] block: Disable -Walign-mismatch for blk-mq.c
Date: Thu,  8 Apr 2021 12:44:58 -0700
Message-Id: <20210408194458.501617-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20210408181210.u7cudatr7zcmbmb2@archlinux-ax161>
References: <20210408181210.u7cudatr7zcmbmb2@archlinux-ax161>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="ZK1uIC6/";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

LLVM 13 adds a new warning, -Walign-mismatch, which has an instance in
blk_mq_complete_send_ipi():

block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
32-byte aligned parameter 2 of 'smp_call_function_single_async' may
result in an unaligned pointer access [-Walign-mismatch]
                smp_call_function_single_async(cpu, &rq->csd);
                                                    ^
1 warning generated.

This is expected after commit 4ccafe032005 ("block: unalign
call_single_data in struct request"), which purposefully unaligned the
structure to save space. Given that there is no real alignment
requirement and there have been no reports of issues since that change,
it should be safe to disable the warning for this one translation unit.

Link: https://github.com/ClangBuiltLinux/linux/issues/1328
Link: https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
Link: https://lore.kernel.org/r/20210330230249.709221-1-jiancai@google.com/
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 block/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/block/Makefile b/block/Makefile
index 8d841f5f986f..d69ac0bd8e61 100644
--- a/block/Makefile
+++ b/block/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_BLOCK) := bio.o elevator.o blk-core.o blk-sysfs.o \
 			blk-mq-sysfs.o blk-mq-cpumap.o blk-mq-sched.o ioctl.o \
 			genhd.o ioprio.o badblocks.o partitions/ blk-rq-qos.o
 
+CFLAGS_blk-mq.o := $(call cc-disable-warning, align-mismatch)
 obj-$(CONFIG_BOUNCE)		+= bounce.o
 obj-$(CONFIG_BLK_SCSI_REQUEST)	+= scsi_ioctl.o
 obj-$(CONFIG_BLK_DEV_BSG)	+= bsg.o

base-commit: e49d033bddf5b565044e2abe4241353959bc9120
-- 
2.31.1.189.g2e36527f23

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408194458.501617-1-nathan%40kernel.org.
