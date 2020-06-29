Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCMX5D3QKGQER7RUITA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCF220CFC0
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:40:58 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id p8sf12731248pgj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:40:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593445257; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJyv2mo1goCDuV2lkatolZ5smkddo5C7N5TtGMpsmEIdFs/pYTX11S8VcnUCfi8W3A
         sNkvToL0N+VcSbTwcFTFfgEA4lkMzvuTLMxrA9XIPQ3a0sfWCjNJXoBgZYIJabbnDBSa
         KaLmWqvUrae1k/JZj5pkUJ8ibkeXbyaCwAA9dcfNdQuL+vqcE+DCSUzPWGS1zTQHXUSE
         42k1oVq68kkeUL/vf/y4U31bq1shZ8H/znCaQ8qgCToRkchGDBTKneVNjz448SZs1/a7
         Xqt1xC1b4OxHOHJjg1VuaSbksU7V2xbMkA2dpXEU67aP9twKvq85fi29lWoqrUCgHZXi
         BqRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XD6AtvL8Hpv6404Z8XDvQsEyPVaPIGJzm34Szj4QhCs=;
        b=zg2oGrLRhV4zJUD2UFV//4c7jxlQgx55RlLau/liDHfg8LzNT76pjST6zSF1nMfNo7
         /8u/wTqBfCx2OdoWgrwDqg4PdDDf8Io6pQwulyRxtEI7rIiezqCt20PVB0HMGJFwIC4S
         a1zOLIrAWHlVp4E143YCSIspio4sNaJjAn+hp2JNn/pypbWQawkTZoYRpCFYowhgkJlz
         N5i4frAw2m4gI0D35R5igjssJds1SVxzFt2eBjiDmdTQfy02jkUsUHnQCS0dGXm0BmtQ
         g0KMqaDHnDP0icFrqMRv8qQKTPaZBiq8u8irJMhJqVrbP26NILhhgiFC0EBASjPZipO5
         bM2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s0CJZKYD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XD6AtvL8Hpv6404Z8XDvQsEyPVaPIGJzm34Szj4QhCs=;
        b=BW+9o6uUoRqqxOGtH6z7xO+mJ139g/N7Gsu02XXOQ9yAfC8lFuKUn7QnUSmq1Hf+a+
         4SGCz869/luFjdWAuCmaVTnjTa7oIlnRoJ9O3SIiAGNtQUI2tWRuXDAv3HLKOH6VuhBl
         i/7ZdjBexTA6J5W8dlB4JfBe+P0takd7BuNJ9REChlBZ+5e8awoTHQ48XpYrq2Ulnqm0
         rE/vzGUDAR2ltx1ESA7JBfYA3zbe0GpkbGaRLyyrPYAlsf6n0W/3v8nJbLG6gk4iS9op
         UjHF1jQCTnKWI7xbss11v4ZFi1zYrcGBYMybQUNgYqWpAj1P3hkzNGZfObHOdjSTr9H6
         k56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XD6AtvL8Hpv6404Z8XDvQsEyPVaPIGJzm34Szj4QhCs=;
        b=IqGjx4YwXquexTFix7bJlZCy5fWTagaDgzCJPrd9zhkb1joJ67U0WgfwFCyIGWSLST
         Xa3tU2uJvmW3dzTpG2Ms6o503gFL9SjZnTxxDR4pXEuLA3fcodqz6oCC2e6m4uBryyfP
         c/G3gHBY3IW4es4e91muutENSMQjd9uDH5+GdQVh4ofXaD+txvdcgy+eUVYUJshJTjrM
         eqcj7tQoKr47LEMLCBeWB/A2fZv+pDgZWTLN0FVxbKCVhQaTZlLbQSJ/2UrvsOPnivVD
         UXVkpQHrMhZKRUkjl3fLXI3VW89Fu7K824BF8sUlekum7gP323teJDf4+wzYM9EXzvbd
         VBWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334reucL0OTUQ/iqlwTLSwuqhpEqb1CKwxLgTyg1PK3zNRd30M+
	l76odZUCuXgjhbzpuqqXhuA=
X-Google-Smtp-Source: ABdhPJxqG724pabW8i7lrvD/g67ioJHfwj+NBWTnZq6INnXyrxCggXggwpX2/PDLhfLUqoMRvgD6Dg==
X-Received: by 2002:a17:90a:8c01:: with SMTP id a1mr6347333pjo.97.1593445257375;
        Mon, 29 Jun 2020 08:40:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls7621588pjs.1.gmail; Mon, 29
 Jun 2020 08:40:57 -0700 (PDT)
X-Received: by 2002:a17:90a:c695:: with SMTP id n21mr19363923pjt.206.1593445256921;
        Mon, 29 Jun 2020 08:40:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593445256; cv=none;
        d=google.com; s=arc-20160816;
        b=oq0E7FQkIhy76d/Mfj0VcMQ1HCgV7G9e/WUX7UmH8vFpYS8T4lOu6smQNcaa8E8wSn
         P6zdefDaQ1TaZv/MsMOYW/Hd/MzEgb9dFOxDnXnORJXDg9mdn3TuvgDnwqPqGzzgY2C1
         NuuuvlvtWrMboYY00XbjkMNBJFkN6vqjFsqlSnLlmxIjN0HvcdPtmKz2uBVZynHa3Vx6
         y7aXxEFF8ctQNGzH84UUylDKmEvKjbiRh20MGttU6FdYJzL6lVv4I0MwdVsT1f9JM9UK
         VZflnxTk3K9hqMQ75prLorY3N7oy9AuAqSyzTYg+xPveHbPZIUExFzc6TDdmtgvvVEhP
         iVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NVtjkZo0tP8TMZVEWAYNB6uYf2r4vWWd8UCMdpXp8G8=;
        b=t9yDfIxI0IW7RBWanhg5l73MIbUoOtolPpdBqFbmxSfdmEvLoyLAaJndc3VUDlmkhf
         VNC3s17SP6isC/Jacklyqmj7mLDDMhpDJn9kLS8A0sL3n5LGpo9wos7b++GAGtEWib0o
         2QXF+Vv+xnxjk6XBxu+2rh+2sWfDzUXyuW6okhluk0tyapoc9ROJA7Zyg4POptUoEE9Q
         RZod+JAC7hyPz07vwmKGVDic7h1O7l2LXMKn72ghmBYAMMksPHkeJijHkdcYxWPAtYnw
         JSh61Y8+cuM4WnF2ASKKiPYb6qbTrHhqzqc2z2rQSW6DrSzflP20tOknEt4mPBF2wlR/
         slag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s0CJZKYD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si991039pjw.0.2020.06.29.08.40.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:40:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BBAF22538C;
	Mon, 29 Jun 2020 15:40:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.9 038/191] dlm: remove BUG() before panic()
Date: Mon, 29 Jun 2020 11:37:34 -0400
Message-Id: <20200629154007.2495120-39-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629154007.2495120-1-sashal@kernel.org>
References: <20200629154007.2495120-1-sashal@kernel.org>
MIME-Version: 1.0
X-KernelTest-Patch: http://kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.9.229-rc1.gz
X-KernelTest-Tree: git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
X-KernelTest-Branch: linux-4.9.y
X-KernelTest-Patches: git://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git
X-KernelTest-Version: 4.9.229-rc1
X-KernelTest-Deadline: 2020-07-01T15:39+00:00
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=s0CJZKYD;       spf=pass
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

[ Upstream commit fe204591cc9480347af7d2d6029b24a62e449486 ]

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Teigland <teigland@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 216b61604ef90..c211156aabe26 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -100,7 +100,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629154007.2495120-39-sashal%40kernel.org.
