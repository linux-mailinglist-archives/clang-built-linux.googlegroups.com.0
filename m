Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIWQZH3QKGQEWBEMOXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 54827205F78
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 22:37:55 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id l21sf6666979oib.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 13:37:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592944674; cv=pass;
        d=google.com; s=arc-20160816;
        b=MChpgK/RPwtCB/ojAARykEnsULr534YmOSXjgAbNVHni7dXrOm+3cQWBYe5fiyFCvt
         uVBkco8TCzi6x+v98rgt7ihFDSeSNYVOzPgaDfvGBsec1nkPwfvK/OTA5qbOVAfqq/SW
         yakwDqL9MPA5/tn6FadaNvaXsWBC49iv9XBMobiruoZxm3sCDOu9CpwByjg6FxTR9sA4
         qCtIUSJvQtMSzVOLv8sQy9D7Gt2s9qHYP6HdeT8J6RoWBwDcbhZ0/xWxJJZgEtIhzVPq
         jgzycnBpPbuWKobzestPSLFNzEJduylXbTzo2tDy6WufhAKDDOl6O/DoDml/Za9vxc1s
         3jmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=f99MQ0c38uSYlnFjdgBcWTzOhztUBKHU/OfWFM8xT3M=;
        b=Ub1OSzxMiaFyLEwHksmsB3gShzC76BsqArf0nUN1j5vf5Mw+bWoY8vKBHo/0qLMw2y
         rin32Ol2I/8ZugA/Rp86CGGieyo9aPkqy8CfcwpSBB7Nvj+cFmRABrp6xw3joepUrEKW
         kB5nQ7OC/4pgBJMO0U5Uts7myDIv8Z9JQqWLnyNxcHw0bXHwyIB48X/irJtoRFIKm/Gd
         wqp8G62q9lkDqpt7WtTDyTNCYdaVq8DWI4l+AQQmqV9BgjziFMFwr+4c/PA9wlANL84o
         c6tOpVn/DMsGJ9DTto/O7aZWU4WaV7sTVFbRPrj3sKcZct0AW0cfNmmcxelDvQeJIrRO
         dpiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GUpd8rwk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f99MQ0c38uSYlnFjdgBcWTzOhztUBKHU/OfWFM8xT3M=;
        b=G/LXkgRFQ6X8gnECLxRtFlXeBguJIKOPk34oZrYifGnQKkl/0OWbQoVE2F28IDHnD2
         aq85bCAhzF5YHTA8TeKVJMFgvsMtmg6unAhpAXAqU8Na1c5apIqEKxV3p9vh1/APd7fA
         wRgbuNpvnBfnR4tLrUCytcjYHCtmSRqOc22eR2D0KVdytpcv5qWdk8kgIgwF7TauHeDg
         yKObFgjcZZ/g5//ymXLJUIAaB2wuo87x1TZOBBWUty4eyel5QPkd67jQRiVKdHt3MfdR
         vw2m2PdLvzrVMrwL0tiHXfwnQ9QHoEquzcodOZQ5hCQLJPCIIaipC/wzwFIp2nlHbGBV
         NGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f99MQ0c38uSYlnFjdgBcWTzOhztUBKHU/OfWFM8xT3M=;
        b=QGy1i99bI+4ldGWMHX55dnBA06yAhHtFrvabkj+0WDStU1VMUg1PCI34IMAQG0ULon
         zd+pQZMjt0aGr8JTiIaeLoj/5i1DnW92iUc1MfyExeMFMPPXOWvDdOJZ2Uc7G9tVNeGD
         BN4OUn1idnlLTHQz4xQSLCKFTUsWq+IRfKup2xPlsTQe8kA+Wrpdd835bVDQ8tr1ONga
         Et8YXoCMhyMOAoOU/11o9n88P0OoOVE3MHrIV4lL929jhu2U34VCtC5LcVtocSpQYtlp
         yKYbOPhzss6GhgXbbUTvA3SgAQgHiusge//u1Jn/cgU+9Oq7pweTbHXPfATpeCRxKfT+
         gj6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dXJynOk2zzUUHc9vKSH/EN+aSImz0GobfP73z/8MN6RvwVTtP
	79Q9Sd5ZfZCEZ9Dx1kbkmOE=
X-Google-Smtp-Source: ABdhPJzA7t//TCItjXG9uN3AD6dzR0Hq9hnYoDTo5AAMXYJySo9TiLETffA8gwJBjRXboCf802/pPw==
X-Received: by 2002:a05:6830:141a:: with SMTP id v26mr20134959otp.250.1592944674324;
        Tue, 23 Jun 2020 13:37:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2116:: with SMTP id i22ls4707116otc.1.gmail; Tue,
 23 Jun 2020 13:37:54 -0700 (PDT)
X-Received: by 2002:a9d:1702:: with SMTP id i2mr20789602ota.196.1592944673928;
        Tue, 23 Jun 2020 13:37:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592944673; cv=none;
        d=google.com; s=arc-20160816;
        b=HHHnYyw6Fhz+YTBu3/Bk/19zBW6zrEpi+DomKuzaHJC6hNvhmV1e2COHHkjNHH5j/w
         4A8bA5PXcPVCfvsRg2QQ1W7QOcwSEr3m3Pl5IZmOp4OfOrpgeQAFtqOrZPZ3qtfZ4IRC
         pprwG+BaFbr0sY01zxa5MONnu+F9pT9hasDCVLRgn1Jro4a89bjDWmR+eYHsW8Bpix7x
         fn5RPpQV9rzxlf7Hz7+f26rjaKk+L7ZMti0ddCxTZhpwV+5Kf8/96TnfoRLAYJi+nuPN
         gfB8oZZgrrlvRoF3wcrSNo+dvCzhuf8rTMH/lNgHpRcC/q/g4vfgI9/U6Yq1O/BIgUGw
         cRuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9hnzVE6GuKVYpftQ20I/sHVzYWR+qtdpnOODqp+CYlk=;
        b=uF3WzgIswgolnWQlxnZPwFxyS514Fp46yWO3eTYceupDm/vZ20yCD94ailDxJFnHS4
         BZ57wKCszGY/oU4CxNL7Iqi2O4lI5Gq/7mzqUWxDfEu1n9baac3OMwQqi83st7rD40/F
         mZ+661Qck6ZGrseGe45uO6JPEezYh4Ewwf+mnj8GcaRBKXElQD7G7C5uB2omTtE/VLNW
         2QRLG6EBk6WC97Axb/HEUR84dL77Gq5sWLdZA6FthiQ1VGbSn12s7yPg0TXPWvsDl9cv
         Ia3IRgLO9QR5WY+ZzjPRBLUwSWTQSPA6EdLaqd5eghn0knk1bm3FuInhsR3Db1SB/2DN
         kEMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GUpd8rwk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l18si1263095oil.2.2020.06.23.13.37.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 13:37:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 95B542080C;
	Tue, 23 Jun 2020 20:37:52 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 080/206] dlm: remove BUG() before panic()
Date: Tue, 23 Jun 2020 21:56:48 +0200
Message-Id: <20200623195320.884128005@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623195316.864547658@linuxfoundation.org>
References: <20200623195316.864547658@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GUpd8rwk;       spf=pass
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
index 748e8d59e6111..cb287df13a7aa 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -99,7 +99,6 @@ do { \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623195320.884128005%40linuxfoundation.org.
