Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXOCZH3QKGQEZAV2TNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id E245C205D0E
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 22:09:02 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id k126sf18838vsk.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 13:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592942942; cv=pass;
        d=google.com; s=arc-20160816;
        b=AkvHF667yl66JOAjqWYja9n1dL4EoO/aW/H1/ykwjQm34Y/XKEW+ozBHHQU7e/1I0w
         Tzioj/sUpvaHnBV0n50jhaXcyQ+B2bz7AquveoWBMDQHXi3U4+LZaQn57Zi1dXaLAQRz
         g2xjWLYkH2/BTRalbOZJMpvySSUMYD0UA1Kf1bUC6kyaulWDp8O5xLNlI/MDs4qclkRQ
         k7FbnOsNQda1b3y+lhH0IUdZskIGcJsjWIf5N4las1unfcaw6AtYAM53Hs0mCcl+P7oc
         rTOd7xUqq/aI9+4cl0NE7qJXM1egVxH1MQ4hC6NkFeQayWNREx4+ah4PkPVNYIjSszku
         lBEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ueF2S946bJhQ1xefXuW+ecx05CE152zLNG6HZIRE25M=;
        b=MF0e5ZGD+ONyUZ1gMbJ6eDlh+9crBmKpl7kgjCa8Dfsn0qOjydKRQ0Sw/lSMf6BQm0
         7ODXk8jhxxcFvJGVdOSgQkzczb5F9LhFrXwlSfs2c4MAX9E6drAfSuqyuEQq4ZFl+ajE
         SiS7k5Ju5Y9CEmKtLBDH/ASkMY5D0uqko4zf7QmN5E1K7u4XLtOKPYT+CldvpBgfN5C5
         D9Y1GhendWjq38EuVIGPl1NFoxhDgekcsqES6BQPMRSNcmFIyLiU/T+h6sl7zZ4sonvl
         kxLySBK96wtfr0yG1u79ereeEoKErjyC4L99kIBrDQ6UtYhohoaiYJ3sDXgFLGdxN9L0
         65jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wpzorop1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ueF2S946bJhQ1xefXuW+ecx05CE152zLNG6HZIRE25M=;
        b=LqNoVtb5oqJNF5sMXW2q4+TZds18VP6XSkFP868cgrDEhR1KtkI053hNl11NVGac71
         nnZdsZ1h5Avtv7bTOa+TgctYSOTDu2cmKATwY8jwzT9eeooTo5eXKnJ4DJChKxPjfALr
         4RIbq5XOa8zozVpwrbQWdlPFi7AZNruP/4OVqpABy2d9vyVpfIzgsgdSDD9OZouxUBPw
         P6VDVXmDIXvBxf+DLI6rFCXLV7jgvTu6HdhyiUOC97GbAqz8lgYkY0koIkicLt7n/lua
         7SJXqj5izapMZUNr/5LfIg/suf3PzSSmCAHBTOCyxKwmLGa5ZlVpz8WPIqqTO3rb4Svu
         VN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueF2S946bJhQ1xefXuW+ecx05CE152zLNG6HZIRE25M=;
        b=YBVFALdUyG048AggzqdzS57q5Q/hlVN3Em2TnGoaOQOFfNjQ5s5HGC9Y6SwhATDHq2
         6c8Zo6ioTCEvvw95wx+5fcpl44qCnlJX41JlEPARctd5Q9bSISKxhuySdnVYoIW64BfY
         iyaQxKrvmM8yfrWd2oOZRCO+dHNj+jsPHjomPBM/Rdss6fcmxDW1ZfL/EI1pXu8HC4jf
         dqG6pWvojDC2TD9ZWb0p92dHYMY25iCGO+vN1IBlEk/WYQbXLXuQh+3hD/pwPWTvmqXl
         a/2twwAoWokN+f27LPWmzRfkAdHkIDzHpj0rc8okFoObgy+tO9YCPl9V/v6IKfutEFNI
         CbxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bYkNyMJ0nYeDdXj+9npnQSAsDbCzGHmivqZ2utWEPKM/5VV9Y
	eGQWyApiQjPwaEUtDMpJIyw=
X-Google-Smtp-Source: ABdhPJzEkj7qqApwH3MymUYVBp0innVwTWC9csmAghaZHkMyt+ma3dGaq5xLClR69rjeoqVlvRdFjQ==
X-Received: by 2002:a1f:9dc5:: with SMTP id g188mr1521056vke.37.1592942941995;
        Tue, 23 Jun 2020 13:09:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls1457060uai.8.gmail; Tue, 23 Jun
 2020 13:09:01 -0700 (PDT)
X-Received: by 2002:ab0:991:: with SMTP id x17mr14422800uag.90.1592942941534;
        Tue, 23 Jun 2020 13:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592942941; cv=none;
        d=google.com; s=arc-20160816;
        b=wCImiAeS0EdbtBa3Uhr48XmmWuJHLPCIjOQpGSS36Dr/RYg2B/V7KDH5ntXrPfGjXy
         XJyU+aY/rJiRQQvAdlqSUiDZNPgwzCzzzeM+6MgKkJ1DZ50Qt4hfkBhVNSgpycOb58rt
         ZVtfJO+wZdA+30a5UlMyf3lktdd4OcZq8ya2k45QX7zHvGAv1+WZcqMdl05uDZ9dn1ZP
         JXLk91LiZJRxNjZOV+/49vhAmqG6fUsKYhnQQnC8rqJRFT09KAtker6gpNUdPsM4jp7f
         96Y6Wan3GrwIF19mKwoXq9SFbaSTKztaMCcGQZqE6Yc97qnW4r7g6T1xoYdXsSoYqI4E
         9YWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=KtbdENe9dsg+/L7uD2FVPjZHkW2NBrwy9YLriDlTEBc=;
        b=eNS4H4sm7QYUj9qosxd906b3SRlPaXMKUlgFVT3naunHmfNuIgpYjrw1wZR+nD/lE5
         as+yGnFh0rzOU/MXwQ4+RthBQJlMWZ/SAMbTujxFl17IqSmObvKo9crNVjuIn23dxmTR
         umlxLFVwcyv/pTMVMENJ8dqHv+O3Ilvdau1bwUt6o5FKzZWGpTW1sqCYRh0w5QTzHUKV
         x8jUM2NKZo8w8zWCR2gIrGWQb7wWNrmIz4Kt6CJKGU+KY4KLjKNpEugApw0mcsKsC/xa
         Ht1AFFCvwPBm0lJ7HhSIM1izAt7uo27IhisrBMLOuAcXkmTh2ZYv0lvFhl/uK3/tFt5i
         J7mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wpzorop1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v13si867906vsk.1.2020.06.23.13.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 13:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08B072064B;
	Tue, 23 Jun 2020 20:08:59 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.7 195/477] dlm: remove BUG() before panic()
Date: Tue, 23 Jun 2020 21:53:12 +0200
Message-Id: <20200623195416.806348964@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623195407.572062007@linuxfoundation.org>
References: <20200623195407.572062007@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wpzorop1;       spf=pass
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
index 416d9de356791..4311d01b02a8b 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -97,7 +97,6 @@ do { \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623195416.806348964%40linuxfoundation.org.
