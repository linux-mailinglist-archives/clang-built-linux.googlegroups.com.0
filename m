Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3MGVP3QKGQEWDLHPLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4638C1FDDDE
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:29:18 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id o12sf2935257ilf.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:29:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443757; cv=pass;
        d=google.com; s=arc-20160816;
        b=OzKC6h4IAf3MTjyBQZYQbAFEmyFIIBVHujVutR3UEGCppyd4pELU6FabxCSHebSrrH
         fUTUify9lZ3P+sp6pk6rhwRt0dVSJDCTQQWVbEjwzrdvj617cwLxXF3S7aCLFhSY6bCj
         s9Ci+cA9Q9iIzO/u4NrAyH5jbgMELE6UpIF4oT2DYlLUryoP84rYVBS5q+1bQii7oTOD
         VMNvHgjGE7MzdgigXdyQgl6E+8CzoybgCOQBABy9QhyUPJVRBh5Fr0KiY3KlEarB43iJ
         2VSQOJc4hjRohzzAPoW5eun5bkO9+Gh0luD0kxE8IKUWN6226B/rBvdjSEhsqyk8QB7Y
         7a7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XLYfIxxCdKpeXbayVxlDkXMx0UtizcqmCJhiPRXnpGQ=;
        b=RwSDLCCWIISlbctfBNGXUyOFkuS38PwxfwSq7JPWlaMJ/KkZwIGmgNrHv6RDA5mZp3
         9T58q4pm6THGfhtZYtaUDKhUDt0n42yFnG6MP+gn/hHARKAV2cBsve7G/I0Dbh0pXed/
         7ctTsi2NvGaUi61nbBimlaWSuwjQzY1AaBEEVLZ+yYwHa7z9RuPOY2uRFZ1Pz2mY/V09
         TjrliSH9c7LwqDrAdQzTLbJu+Mo5WggDXPrUv2TLYW62YXe2me59zzxOzyCSUbyvHo/i
         nWeOTutVaLrDkgBzMXxUzJEsi8oIP+r5ORnrqthbKntLWjCO2aoalWAIVX3B8bTUucTM
         Na1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XU5Py8Dl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XLYfIxxCdKpeXbayVxlDkXMx0UtizcqmCJhiPRXnpGQ=;
        b=JL81VYOclMJIpGviFtlm9fiqL0F9cZnHLWm31miTuJOmzN43ldigtkA4GWSYOVzd3Z
         RfHnHJOudr1hsm7cGkNeDMzuk0dezL67wU11JJFc8a501ou9j6JD7dQ4An+AyXXY/oOl
         m0zH3lkwddrKpPWOtDMrrd7+a6+Iwgh5SKei9KwQJjm/nLWoN+0cDFsunFCbXsbj4USo
         IUPtHkBQRUmshP9vTNoKnuiuo0MMqgadZTnD1+9xnlPz/KY/f+tGqlUjz752PB20C6BL
         4ZQJD1EkOdity1mps015XPEcMbYS3d5lS6WmD/X6xCbYhlab6KT65w+sSqXQn1w9UksC
         dP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XLYfIxxCdKpeXbayVxlDkXMx0UtizcqmCJhiPRXnpGQ=;
        b=Rtvdc4Db3xx4dUtcbYQfnxaM8bZr7H2Dmax2cUjmDgJ7L1nU6yF5EZDZK5K3LDDGYt
         QJmQrNZ5Sgj5ohUHLuxwWspRhB4iWi6rA/yJYLg7GYksLcjy5GVJwrTo8/xE+9GcIEc2
         B59ihQ/I8qnRjF3tFOzJ8HVa1yPizviLGVhRr4n7twEVpRVWNiAp0ownwineFSPCWUVS
         aq6vi+H5it4liHsaDFgDppFEbgv87bXmY315Q0pkq3AxFoFxcFD4jXIYlKCb8/dRLP7i
         z8USH1Y5X83IMgjMDUWgsHBWWaeE3d6fDCD1kQjf/FERBcBzitU5r1dh8LaGJRkbcEUl
         3s5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ib9TfQXrw067T1W/YWuA1etRaT0qmaCwm3zLscopONlm1F9BZ
	YGnXwpwS3RUumQ1/4EnTtSI=
X-Google-Smtp-Source: ABdhPJykhMFwAUvFq3YNqlO7+boAcd5Af3vswKcfvUzokoId00umEunQwCOOArLlFiH/QNFg7qO81A==
X-Received: by 2002:a6b:8d44:: with SMTP id p65mr2492386iod.24.1592443757288;
        Wed, 17 Jun 2020 18:29:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c9cd:: with SMTP id k13ls1183963ilq.2.gmail; Wed, 17 Jun
 2020 18:29:17 -0700 (PDT)
X-Received: by 2002:a92:4a04:: with SMTP id m4mr1954463ilf.228.1592443756978;
        Wed, 17 Jun 2020 18:29:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443756; cv=none;
        d=google.com; s=arc-20160816;
        b=Ieja8ff3a5Ya9aEGJ7ipLX/q1tkrF+4gnGjeiHqamUXXTjTvQoDHe6FXHPI2TRx3Gv
         t5uIsyKPTmy/1daxY9krTtELS09/SP1GcBpAVPGT+1hlMrHdnQg4f7/pUUjfBFJfglL8
         HVkzREJbBpzBBAFs1CgDRoBGOqolZTf4bPGQ+mwkaFA0I8orrm7pQh0sP4JZxguFQnlm
         KX55nIXy23i4opoexAWXvP37cDaYLZwybP66A8wrnQM8x5ZcvDl66B9m8v8GED4Nc/IO
         /JKwy9TpG27t478bWyTS/IsGt9+9lsIKuzTil40+kQOKDhTiOBOPoZ7plYNCFm8T3soP
         PLcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m9xzwoc7t+ggE3YjopwJYC1ymd2TLZRQT60vw11S8NY=;
        b=ssBm/cvme2Oi25kdao1DMTd0SxYjlXhTa5Jw2sVHCion1zKI4qA63hzDgeQ9RqXAVI
         NEG9JB+QesJRBmMc1ZkCFSwvOT5Gp9FXDGPgnWB4VTeBL/R62s2mRMYwA9g9+KFqEkPC
         p0K/1nqk8xb6AQCUlNWwq4QdKBOhPqEA3l/jrSEhOiULm7+0eXomK0t3znqsqHH1vla3
         PZioqxaQL3+AeF+EHlQlw51aEIH2LWyjrN4lBhaMg9ZREXYSsxT9H/VhU7gvFASBbsp8
         bB7H9+hj1dmIJjLvtP+igSnfRQZUZX+TcdgMNvhVR8uha3kg8Of8Yb3jLeAzSwM7aSuB
         Hc/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XU5Py8Dl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z17si85109iod.1.2020.06.17.18.29.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:29:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 81FE122209;
	Thu, 18 Jun 2020 01:29:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	cluster-devel@redhat.com
Subject: [PATCH AUTOSEL 4.9 43/80] dlm: remove BUG() before panic()
Date: Wed, 17 Jun 2020 21:27:42 -0400
Message-Id: <20200618012819.609778-43-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012819.609778-1-sashal@kernel.org>
References: <20200618012819.609778-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XU5Py8Dl;       spf=pass
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
index 216b61604ef9..c211156aabe2 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012819.609778-43-sashal%40kernel.org.
