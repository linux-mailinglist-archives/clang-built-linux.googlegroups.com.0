Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXP52D3QKGQE4GJ6DTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D9C2099B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 08:06:22 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id p8sf3231639ios.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:06:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593065181; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRhVH0m52Qla34VlCRVDcpDHsD3fWM3RnzxXhcOhCsTzwWHdsbx4KQO0ZcX9BbyCl0
         ql8tlDfElBA+mYGtPl3hO0bmrIhD2KRERRyZcF1e1Eb4TT97y21lcfCNUM/7cHW81p1D
         8piSPkWunEfcGLZCpldfgACb78ydvlEeiJrs6pD8GH9ajFHzClNFWj/142ARDbQmDFdV
         Aw30IGjEZlbr4xjIQx5l7mzfCmK6Bp931B6OyPuELy9uHogQpC8X/5sWbWnD84aE1AZp
         xxl3Z3jPJM4qfIjIsDc2/o4WfqT5tOavwEMIJqjKsTUReatKgfPP7jcuo/GYagEJa2/q
         mFBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wCym6JrmP1RolpBoQqfvNTVpoIQ2vC2xpPBNoKWIqJo=;
        b=CFOcIdOykOlCbTZ/KxXSHOek8l67GM2aHewbvw83R/7atUqCb3iddiWOFQDQ3SV8PS
         wTE9ymE4V847X1jZ5OMtI/2dW9Pw1ybYmHT5AKPnFkBzFh7AmsqkRCeNBbqj0QBf7fdK
         iLcZqrfrvT+3zN3Cc7+prvEvS0Q7nnvicqzFOLUHX0JbcZaBaOnzLntw+GPQVh/Qj6h1
         /zPhLyt+o4QTDbmxH+buhYuicex1dc/KlvoIjUVUeMkOhpM2nkGTrFo2TtryWiE5J8rO
         PQq7WGuVPIP9GrH8TJHFOzN24s7rb/uHpl0QCFXienOyaZkYpnRoNh/AHx7Og+KP52yn
         5A1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eaXqrVjG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wCym6JrmP1RolpBoQqfvNTVpoIQ2vC2xpPBNoKWIqJo=;
        b=m/xTxBeUv8bwGGEDsYfkj978EtKJ0h+nA1bL717fUWEiGWU21Bm7Ym0Q3zHxBO5McA
         UxXAU4qbpe1oy5W5JKyyst2C53gliUoTpkNJAJeWja/40AuZpAiZKjL7ZW+3gIiYzDTP
         WsZBYlJ3qlNxaKtBHCUBLdbLZMWoUHyi1odor1BzkEefT9aixFyuwNcQWhSqL0TOQ1H3
         5ICgCWguqDinEpC7ERYpPF4BrWCmYozQCJzmS9FWHcMU48EtjcDTv9llsFXSvkvsXkT1
         4fFD9gtpLD/LdTo+2GX9PqP4HPvX/Ut5XfG2gq+Kb5j3ZdNLxRSapy5M53kUa7x0YDXY
         2gmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wCym6JrmP1RolpBoQqfvNTVpoIQ2vC2xpPBNoKWIqJo=;
        b=lVbqaYb0kXqmYpcmVB8shUodU0kn4sC+LVUZrpPxEznlimNoKlyIYVHbG0CTwl5Tw5
         Vs5Bq5WKvQdMrQ7orARg2fLabdpSlf2M4MbiOa67Xz8oCoZ4+HUsCto5GhbrnD1rOYJx
         LvDN+rEJAOkjJcbH/6XpDt7FTErUe5TFlX1J+RY9NNI2VMgsvgX0Hsqhul/XZCqXsa80
         9rtAS5B7/RdT9Rl2ddWbz/T4cZwr4IRZgztVy6yJ0jvAQDxVV146EwkAApGGsV7+q+3j
         Rbqkf1b16aS1bu1X9oemKgX+vfVMEf01VygZjsJDMxcHhfHJvS+VPCsyrnGs89bJNYaG
         eRrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O3clFhx5aUqvpluiNSuZeARPpbWeeNDa6ZO93DaoCMVDtwLVC
	uoE6DF9Zo6BQ99kUQbpr5Ig=
X-Google-Smtp-Source: ABdhPJzXyzJpHyucaBxPCgcWcNMqq4AEVhZW9lEkkRWum/uyJeTtGMrL84ZlK9etylEWnTN3OGtlTg==
X-Received: by 2002:a92:9e5c:: with SMTP id q89mr11036054ili.265.1593065181340;
        Wed, 24 Jun 2020 23:06:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d782:: with SMTP id d2ls1272843iln.0.gmail; Wed, 24 Jun
 2020 23:06:21 -0700 (PDT)
X-Received: by 2002:a05:6e02:cd0:: with SMTP id c16mr33645138ilj.78.1593065181076;
        Wed, 24 Jun 2020 23:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593065181; cv=none;
        d=google.com; s=arc-20160816;
        b=Wa5g95f1v0Y4cu+FWQh8T3kNR54RIKGW9kbDOqQfVmNghBHsTsVe/Bmqa9g6rhRCmL
         qt/J/rUSHubS1o+RIy9WhdupJhjm6SHGec3C0RMb6D97NoNY3gHIaQ2bdUT6yt1DRa8h
         dRCDUhMHgmKJCEZOYknBtSALmDlkxEtKErTSM+I09IbAmB2BCFDsYvLIlgCX/yO7t8CI
         425HbMZVRG8ahIonld7ipSc60oDDEgdnRUMclErg3m2u+/qwLl1I3aEQj7pxMxoyG5Vm
         WR6rn1sTUlJF64oDSMCg8ZcObSR7/JhRpG23S2qRilCickN5yzXVVuBGZYpABcpkIq2H
         Cbcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bmHKXnQ4Boi1eFNXwwpe1A6f+AH0+2ONWt2wcc9MKB4=;
        b=Pa4I1/oJwKJJXLP1h2Hdev1bqea65QZcVDJNvc4eM/zu8/ggCKOjgOVj1XcSaf5mHQ
         cK3MDuy2xkSRX4Cd6dBGtWULKzuz7JVB6k4IcPExn6FhcZQpERWQqlOSq75edEn/Nnx+
         wg/7V4Eg9L4YY29ZkFNc3oyttrXPqJjUx7Sn8Y+j0WjqAvhckKZRb+AlYRA6rhQQZFwC
         GkSYIjzKzwIDoB5cU36+rqKKupb2DOGl0ywSOJYKMO8dQZ5lFwcj3zSHsNDc6st2KWvD
         Vhle06cEsNZBcIMvaiLwH6I6QuBPbrhf6+6CDIyRo56FGP8aZVrLzvEyiWOGmsezgRy+
         PudA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eaXqrVjG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id i5si1523ilj.5.2020.06.24.23.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 23:06:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k1so2363475pls.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 23:06:21 -0700 (PDT)
X-Received: by 2002:a17:90b:190b:: with SMTP id mp11mr1647255pjb.82.1593065180560;
        Wed, 24 Jun 2020 23:06:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u4sm21959927pfl.102.2020.06.24.23.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 23:06:19 -0700 (PDT)
Date: Wed, 24 Jun 2020 23:06:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
	Richard Weinberger <richard@nod.at>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
Message-ID: <202006242300.145D555@keescook>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
 <202006241335.2C0FB5DF90@keescook>
 <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
 <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
 <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org>
 <03486f13-b138-2fc6-4d90-2737d86add2f@infradead.org>
 <80f501f4-d4fb-1f22-5603-57b5490a695d@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <80f501f4-d4fb-1f22-5603-57b5490a695d@infradead.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eaXqrVjG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jun 24, 2020 at 06:45:47PM -0700, Randy Dunlap wrote:
> Looks like lkdtm/bugs.c needs to get/use arch/x86/include/asm/processor.h
> but it actually uses arch/x86/um/asm/processor*.h, which does not have the
> needed structs etc.

Should I just test for !UML in bugs.c? (This is all for the
lkdtm_DOUBLE_FAULT() test.) I already do those kinds of checks for the
lkdtm_UNSET_SMEP() test. e.g.:


diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index 736675f0a246..f3e7040a7739 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -13,7 +13,7 @@
 #include <linux/uaccess.h>
 #include <linux/slab.h>
 
-#ifdef CONFIG_X86_32
+#if IS_ENABLED(CONFIG_X86_32) && !IS_ENABLED(CONFIG_UML)
 #include <asm/desc.h>
 #endif
 
@@ -419,7 +419,7 @@ void lkdtm_UNSET_SMEP(void)
 
 void lkdtm_DOUBLE_FAULT(void)
 {
-#ifdef CONFIG_X86_32
+#if IS_ENABLED(CONFIG_X86_32) && !IS_ENABLED(CONFIG_UML)
 	/*
 	 * Trigger #DF by setting the stack limit to zero.  This clobbers
 	 * a GDT TLS slot, which is okay because the current task will die

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006242300.145D555%40keescook.
