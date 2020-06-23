Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4OTZH3QKGQEKFXQOPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F91205F7E
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 22:45:38 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id l20sf15293550ilk.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 13:45:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592945137; cv=pass;
        d=google.com; s=arc-20160816;
        b=z/V2nmQ9AAlM8C6LCWTPwBlMBeCZC/raoux/QKgWQIS4h30UXaTzAWtbmQby0Q5oh9
         Wl8armJcLv1LaLoauMES+OyJerkKkb3tIU/lyiIwHjn+ous1XVj8uq0GsNBNVbt4tx9b
         f2zwo9JsWRkwcXK7Ip5ZDlK65glaUANwhMH8WnThbDTovTlhl5psZe+pO8g/cRuQkVDh
         V8+qNuXYhmsc9AMJ+MIORIGKtYK4NbnLQjap/8z4SUGqj1qjmXs0mCPFT09jgHQpMj+1
         pZoibhxKJtNEhnUb6T9bTXW3M7lhuIWqVf2blSsJH5AmMuebTrJY89efFWzAOEhM2wAD
         FQjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=A5Js1FhdnCPPh0NM8y1ELFqg7QyaBzK21JoYtQOxZH8=;
        b=HjJo8CFXisM3T4Cz8F2ZLiGU40OmZsGMAG3kDq1KwOitUTISuYHJGx395wlAvA8hE1
         1hMpclFV72QNwM/5pll0QNGxfLd6PnUNVDD/+/lt3L+D2wumvPVWbqd1QF8HHUG5h87v
         MRNRctyHhfZ5l3DjMVmkfLCVImMZ8RkjAwnrrV2F1t06o43wYDQNAoC1Xw+y4DMlNMgh
         0TNAvl2Ap2D47jADpzf/LincPQ48eB7RZkX+6BU8n7GN2URAlForBK/rMr/wIFtL1ncK
         5q4DbbupTJvXNbM50GCSPRaMLsDST66IIEl2uz0Tsl0QX51jLsmyF5s/oMT60TWtJBpX
         2wXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vAk4yWbu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A5Js1FhdnCPPh0NM8y1ELFqg7QyaBzK21JoYtQOxZH8=;
        b=TYmEYwLrVI0yiXkK+e6h0ljjKFRaq4hbPdCTSFDU2nyxX1CYXExSM+EiKnSv3Yazi8
         yQThiBXo/z0ClEzIu5k9oPVgagEBzRYTdclqVEXbM2gpLKb3Sk08wgL/3mK+H/V9e+vw
         D9z3QbOQLGtz+1Ap9f+rvEJOFAMZu/X+UAlMtTZQrndiFkKLGb9fv3zHaacqTowG27BF
         vfK5CiuMW03ahRIOsgNGf2YCaH1GPXuVk6LNj66/+xsevIzPx/fKMTfzbzymbnH8XfM5
         tIz+SLZvczNjHlnj+zqkzo5UlTnkU0670pC8q7xne8+wx74eG6xqUU+tLD+DNmEB7NZk
         +SIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A5Js1FhdnCPPh0NM8y1ELFqg7QyaBzK21JoYtQOxZH8=;
        b=RVEJyIcRqfQWpoG9gjJd6Bt6uABF0os3Wx8qzL4hi0KbgcDUcUhVtLNtLXx/A1oaxc
         Ue27P7olUf8/kT2x47L9AU8FwWJbEVVtDZCDRm/QdCgMR695YPTfQCepsQ14lE/U7b/M
         R27+gX5XurWvrTdmqCimrvdAmEcxGzknvYeNJYZU5dF+CC7KZT/2GgoH1StSSYM8Qv0W
         9fyScNHo5j8/Ss74ufS2Pm1lilIIyP7UThP2W7WoMUFaRd4x6Wr6TRWGb0EHatsZSrZZ
         xhQ4Z4gd1OlLgs/U5pSBbs7GepJkFMKfNVoIIFH1sjT0IjrOnsoMhyXEm65FTu888PFe
         UriQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LKBa4kY5tRFOJVwB6Q64Njt0rvyQOx8sZzN+MWdLbQmTC+hRy
	RL5cHiGW2RZ2FS31vv2gz5o=
X-Google-Smtp-Source: ABdhPJzcnszyw/KK65v6iBvOTRHx8OmvfxhljBqyVn0dXkmS4XlcMsXVO84q0gPXDqITU+kVZ9xcWA==
X-Received: by 2002:a5d:9486:: with SMTP id v6mr23014573ioj.99.1592945137547;
        Tue, 23 Jun 2020 13:45:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ab10:: with SMTP id v16ls294812ilh.10.gmail; Tue, 23 Jun
 2020 13:45:37 -0700 (PDT)
X-Received: by 2002:a05:6e02:92:: with SMTP id l18mr24201904ilm.212.1592945137285;
        Tue, 23 Jun 2020 13:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592945137; cv=none;
        d=google.com; s=arc-20160816;
        b=nnFbWYQgSxO32sJHS4MCt6MkWY6IbBRcj+5ToRFJUoaAG3hK8Ma0LnqwS0W/u8j1Ni
         biJmZhtyrAs1U741orMU11a7rHybMdbq0kOQZry2YXroYJRtU3vDGVzMsLVBiTGIRjps
         Sz//+593w8bjNlb5NI133tyTUxOKNDxponBPzsbv21vDO//aWnmQialsYTqYk9X9RN2E
         TR4KtBEKtUaRyVfpMijwY1vhr2zhtKfVrF6MhZOGBlFXZS88zXMT0vjVzfymMFWqpepL
         EzMboAm0lFPCTd3a+8eWxM9yXurMPJpbfxDImP3QFCuIVmsZedS7yiEHhfz11T8+mtyM
         211A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9hnzVE6GuKVYpftQ20I/sHVzYWR+qtdpnOODqp+CYlk=;
        b=ggUNvScew3e0j4osLCIzcvJ68YmdW6a7Uv9JnQBc5JAB35YqET4W1xa/grKyM8GiO3
         3V2WOFNIJ46VAqFDr5CPXBz/OLI8TrTBuVLkL2GYDHgz7tw7dNNaYmGZs3Hid7hP7LiK
         uiOjcsmu6ex7YgLMlzUbrFhfl87XMyU/kNJ6+14zrhqRilvLNv/RskivKfopTdmkxo2L
         T/ODYvcaJ44mbJJkqnKh+MwMs7gJ7xABuWIibahMNtgBdf5KYu9ebPjdHxWdcCqcPoDE
         RYp6l1QaFmiNil94Hul4sg7Lx55t1fYQlyxopuGt2S34SzYk9LGv86cBHoJWmOIDTmMJ
         r5qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vAk4yWbu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si858862ila.3.2020.06.23.13.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 13:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B21520836;
	Tue, 23 Jun 2020 20:45:36 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.14 053/136] dlm: remove BUG() before panic()
Date: Tue, 23 Jun 2020 21:58:29 +0200
Message-Id: <20200623195306.347715455@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623195303.601828702@linuxfoundation.org>
References: <20200623195303.601828702@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vAk4yWbu;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623195306.347715455%40linuxfoundation.org.
