Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBVOLZH3QKGQEW6JFL7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 589F9205E56
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 22:28:07 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id m6sf10897448oie.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 13:28:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592944086; cv=pass;
        d=google.com; s=arc-20160816;
        b=moFj4yBbbInyZrPblzRG10c67KIXaNqaIBxG4mLtr35XX8z2vZea1OHmiRQIxSrwkf
         ctld9xiLP9fn/oEUwpZDDOkjJDmDMfCLI+y7X2nQMDNRGH4W6y3kdCoxio6rYNPiayGS
         GM3otUd01shAb/zIwgsGD+cGcjGn9Gsu1sxbEM2kKlScAU9WrjGlmwkzwdNWLeVWkXmT
         CESA8ztiqLs4o7FQu1FhmEPAAP4QvOr6hjr7PHEZckA6kieCq7scjaFHCVSvHFPyGTnM
         zAtZGAnQzvuoSrSXdmI9vdP8B/4DePSlqvvcYaEcXp+WykXQNVYau1gp6Ss78zzsy5CB
         dDdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Ba1++cWjoZL5xgQC3vMwREzRNOkCxDY+ZjwHNucvGNo=;
        b=sqHYzPaLkYfO6x7bVBm86ey+L4olwdxQET263EzI4M/p+wqF9OcPQ/LBvdyOB7eFjp
         ab1AEAZg5vPEPpQLckjXd4hRV5M1pkQNvzbIa9NchwGs3gi9l5O36q94K4CsAyofJ5yt
         hiDyXGAo3Z58Yg4TEc4Ak9K8Qg3msgCOxORNgSoI4pLEe0vys4LukGM+gZfzwL0WU2VR
         GXNgrl+CWtQHeMd7WJkJg6XwYtNKh8ousxMmZpy4FFnsLd1HeVOYNoYhGl5YhW0+fVEf
         1oRFpRMz5qsWQa7QidZebmmZssMGHCbuGbRFd22et/6MCoVQXXeEhfZTWQJ4hGYB1BsY
         qIUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YLwigC3s;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ba1++cWjoZL5xgQC3vMwREzRNOkCxDY+ZjwHNucvGNo=;
        b=fzZJ/F0lmD3UF3kdgPLyVTj2sEACnQeAP84+xY0q5dbdiqLbCZWYo3XTkuzhJuVkfk
         nd79B4d8OVp7Y2M/u9oNH9sBs66Z1wNCEfh+hox/JZKrAHpvNgSG2yqo/GyGUnuJUplc
         IKm1gHvvkBKNZ+N7/h5RjgcI/wrNbef5tFuw6bvAVlrt0JdJy9nU6ad4XG+XRn8CnLjI
         LOTCRN7MPT7iknzGiDlTMDdoiN0ixG2wp7BltIFB/yr1/sfWkYd013rv2vJUdlmfS18F
         UTrVWBMQjCVarkd09cSJcAYNsOPA6RVeT4SOG2p9UBiG2Ntoo8wiT1dJd78E1RI0JSQ9
         lzPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ba1++cWjoZL5xgQC3vMwREzRNOkCxDY+ZjwHNucvGNo=;
        b=l7wtpIrM5inyExZjJp3G979omf/prr0vNDJsm43C+XbqqtE3LB0TZBcC2nGb/OPndV
         PqimfRW7gIbibdbUgmtFbJ4sRkzQO7eEfISFMRUWQPEK/KOMLZGw2azPfXTV5orosfUi
         40FcH5pIQSAOYcYb5+RvgDnu/6UXB5hcNrUEzMaL2tZYxoy6/nJ3t10sFHd5+TXzWMTJ
         jxL1JOMsrSWIVzyUVW4euVe4ji5jIRM0HxT/EgqnIVzUTBfB2s/I4uehTshxlDwnOX7R
         lqLUK/ra5jpIZ91Ls+czYsKFHiSVzRvvdiAzgaKlFuwzTbDtu82oYbpo59pt9Jub5r3l
         dt3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322eh/j5O9oxLI70w1Lvt6nCkLNRexT17aphV6R7PQaYtjeRTWS
	GlXU7TQV7Q4S6pPVb977GQU=
X-Google-Smtp-Source: ABdhPJzElMpBSYNu6qD5/ZC8NePhhNih130lnFUJAgjIg4Yv1cugY2Pn9j540Wsi5Zr2WsmANiR3rg==
X-Received: by 2002:a9d:6294:: with SMTP id x20mr20336526otk.18.1592944085867;
        Tue, 23 Jun 2020 13:28:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:10da:: with SMTP id z26ls1227043oto.2.gmail; Tue,
 23 Jun 2020 13:28:05 -0700 (PDT)
X-Received: by 2002:a9d:6a85:: with SMTP id l5mr20311178otq.371.1592944085462;
        Tue, 23 Jun 2020 13:28:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592944085; cv=none;
        d=google.com; s=arc-20160816;
        b=qNceQk1n/dL0mZ+1j7BjXMCzI9eeoW8iclhsz6pcla/fge4Q6jakF4V4ZHI53TWPfn
         VQETeA5tycQebuZAa0VeBk7LwB33lwtDyzAqZqX1LHEpJ9KWPsfU4qmAdRMvii51voMr
         eo91x98rUa4k6JSzsKvHCZQ7MHbgxd/5SQsBJKf8KuUGu2E/ncLztESgWTy8v5MxVfXM
         nGXzwMD72s7mon+0pLchB9qY7fUVGZTybLImq55QBvMTmvddggyOZviWcFyMB+ObThZp
         utqmU4DIblSKf7MkDQ4/rjXeBuZz/biRmbImTYG/Tcvlee/UjJLGdZ57+PVU8ad6qUww
         NRcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=KtbdENe9dsg+/L7uD2FVPjZHkW2NBrwy9YLriDlTEBc=;
        b=QWB2XRtgDtAqjQbJeE8T23+OzxnzpGbgkXkhp3qTFc3W0oS+nSx8c+ydR3wzoFQgRn
         sJhbokmMrGfeJDYn6fHxHwEPxi3StmInfBm3iRzn7cTUHspvx+osQpUvDKs9e7QGswHI
         uB9Sr+sFEhOO8Sbi3BCxGSdCli+h7wkzkrYeZl69XUwP7dOV8/wVbBNd4FeRwn1gK2ja
         bH0OhtXksDBG5MG7ZMNBTwvTe0xtMkJR14kWhKv9Eb5/PSD/rADP/nDkPJA3ankApXsZ
         3rsbl0uU1rOePwkay9EfrN9YkzE13kwn0idJfraxIcBWHVcv+4uhGYVClcDIvzI9sAJk
         Kivw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YLwigC3s;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y198si853162oie.1.2020.06.23.13.28.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 13:28:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 35B632064B;
	Tue, 23 Jun 2020 20:28:04 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.4 136/314] dlm: remove BUG() before panic()
Date: Tue, 23 Jun 2020 21:55:31 +0200
Message-Id: <20200623195345.356721585@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623195338.770401005@linuxfoundation.org>
References: <20200623195338.770401005@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YLwigC3s;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623195345.356721585%40linuxfoundation.org.
