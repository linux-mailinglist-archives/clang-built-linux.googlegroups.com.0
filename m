Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBWH7XCEQMGQEM5ANBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA183FCA13
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:33 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865sf2399963qke.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420953; cv=pass;
        d=google.com; s=arc-20160816;
        b=qWlHYuau0X4cnnR7hUGvSOpPdLYGchf8bjaAlmeC0oI3Kp2E2p+Gft576D7f1vgDEz
         9hAyY5ydJPgF0OWY3/LWVOwkfXzdaZZThBccAaFUYDGQU6nWiM6HXDRMFqG48VbNj0kz
         BHzZR6QJkJXo8SLtTpDXRwifXqUGaIMiBIoVklVWnIFSKxUl5nW3tpyTYtH0rQjsb3Mj
         aI2e7a/YGld8FNzMEoyL/5/G0OXqUzMSYYsv9NlAokDVdfj1qI496i7ARb51i0ppDFrM
         1XW6TNkFPclg8vHfRdmeiI3DY4IsmHeqOiRYcjPpjiQhGwu03UVLLtv4VMjNj2j5YOdH
         OGNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i5rS38rh/GWtfTz4QDco/Jm7c3Ko/iANmHkEV/MYF+M=;
        b=F9R4a4NTMrlHRzzDE+P0vvDxKQPq0xiuX7EbZUwKrvwD4E7LbA4giVU2/I2qRvBx90
         fKIUXVQdzQxtyXyqZUDxdCMjbBmMVnChhM+1AnZJC7XZdD8BrLG5AwNP4pBJQlPtb3es
         VdTVp6wp14b0hKGFPVF7WUAkMuA2/h3YT8BzQqNTQmHg8B7GwtgosRoEa0B1Wup3M006
         E0RbvhImzhzY+8LrOSIggcnIWP5a7wjl+KPujgXenT0Si1FjaTihFSSh2DUC2eZL3Sww
         /9H5yU7izgd2YeRhq7Yna+sonhvPHy9u7/MgxZKi5slRd9U+tUpR2bg8gWODKWS3+oVn
         mnJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5rS38rh/GWtfTz4QDco/Jm7c3Ko/iANmHkEV/MYF+M=;
        b=mcIZ4Ad7t2pC05MY/kPBifs/V3I8ktIPTBtbuszj9vgiycFuSfj/QYUkW+ks+TSCVu
         JIjZive451iPsC9ilfp0BGocq18hqKLSOBe+uGzY80SapIAgpNGn4H1LJx7X+FjBluxF
         Iz7h623TY7390iymwgTIIpfiedqWTDMMy6CdfYNHrnCNM9YwAcVdxG3LjWcxcq1BfjRQ
         q1o/ylI/WXu/5ucAPzuyPCvnpliedlIH2PlaL+bNLOARUuyFn9RYPA7fUr4vOcjoKdqV
         0WfMjOY0+3xA2C77R8BhHoe8hjmD+8M21z9GLXYaWuFjgLkGYPTdraPnUYFhM2FsnF3L
         lAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5rS38rh/GWtfTz4QDco/Jm7c3Ko/iANmHkEV/MYF+M=;
        b=ZXdpc1KVY9Zx3Zda+GhU1op211aikVdcM/qAF5Wu37wwVCdqWzvjT5BRs5kWurjjY1
         wfeT4zjmqv8gFk7HeBcXZixxVXbFYAPG2vaYEI03WB/KHmQ7K5o5vqd9iV07pmp/oR7O
         V6TgVqyrB1g/p3jhznBHj3N2I3RTz5kp6hhgYhO9IJolrZ3zOUYnTKVRw3lQmvaiI/hp
         AI3U9O9YaDFoS9LrUMImfMjKOpDITaQl95l7BBRxdH/w6gKadBEdawzsRoxAdYA3/l7k
         03YsWLWxnOuagO6orhNyfKcqYMvF1ieSRrz1sc1D2PDWiu3jsFa20ZfGM2QAbGcOOR4Z
         e5tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XOWXOxl8Eak+gUTsb1V3PGMxqxA64Hv3udFw9Xh66x5oXQ5AF
	4qMB/uWSaXpOqssqp4YCVpc=
X-Google-Smtp-Source: ABdhPJyOXJcHzIXj2KdsyhA9ImJ4kaiYrTiGBQ+ZoRpBPnnlfHmkspocurFtTolQ8BNfFxPhfbrQLw==
X-Received: by 2002:ae9:ed53:: with SMTP id c80mr3452203qkg.402.1630420952915;
        Tue, 31 Aug 2021 07:42:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e5ca:: with SMTP id u10ls6540817qvm.8.gmail; Tue, 31 Aug
 2021 07:42:32 -0700 (PDT)
X-Received: by 2002:ad4:4982:: with SMTP id t2mr12739119qvx.46.1630420952461;
        Tue, 31 Aug 2021 07:42:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420952; cv=none;
        d=google.com; s=arc-20160816;
        b=Rd3KUseufaPI6vgLdzp3WRvbPJGkakqfvR/V68Wu7mzFzqrxpcuD3eMvwChIqx3ptH
         5TeBVnluGpOZJHdleXsi7fprRaqa/XF8+OG0eXV3ocCthYxEePUff0j+uZOLQMhZRSAF
         1w4F7wG/UWN9GIWySD9Y7ObQrT3pRDInBWiFld5LHUYtCBs9YCVHyCLqAJjoEWR/59+6
         ZNCKrXa1m75MbAOjfM/WSvK/Ya3CiX6KJ06J7pwa+27m6ye9CD6oXvi8NXMiL0EnBRXT
         ojzPMc+1lPrFBrHlWss78ECAaQ6fHflyuk8Hb1UsyjoKMpFBlhVqMEAlZG9yVTlvGsVB
         oMLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=f2a6/yy1ecruPw+rK5eeHC/fZVHGgA2mgrRPehn3LpE=;
        b=juoYDAz6hsNdg33/FdFYMJITQaGYmmvgx9X0dcXs4VHNOOR8skU9k97qhxmwiDdBeq
         UspXYTi/Se3KSlGZo5JHK+4wVhy5fZegJWrBITmjoFydOwu4V1wzOWBK8VT8Bt1FmOuW
         NPFQUBskvYzN+VkLwXZW9+ZXUAsXxqtR6UHCTMo6LeopKm+cKI5kEB398d9E5r/nZ/pB
         FToF0XAoBTa6eiFkpZf+2NnIiQEnkPV79FZAJunFpv3m49pbnJPmMsmqBAlYqie4lSsw
         PRz345kTWpOJGRMm9kHgaz/kfKDCjtyBlwzgcwIN/ffB6+3WKxviKpsLxLML2myyC82a
         pBkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 6si1278907qkh.3.2021.08.31.07.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="279497229"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="279497229"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="460167474"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga007.fm.intel.com with ESMTP; 31 Aug 2021 07:42:25 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfh002209;
	Tue, 31 Aug 2021 15:42:22 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 17/22] x86/boot: allow FG-KASLR to be selected
Date: Tue, 31 Aug 2021 16:41:09 +0200
Message-Id: <20210831144114.154-18-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Now that we have full support of FG-KASLR from both kernel core
and x86 code, allow FG-KASLR to be enabled for x86_64 if the
"regular" KASLR is also turned on.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 88fb922c23a0..bba561053557 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -74,6 +74,7 @@ config X86
 	select ARCH_HAS_EARLY_DEBUG		if KGDB
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FAST_MULTIPLIER
+	select ARCH_HAS_FG_KASLR		if X86_64 && RANDOMIZE_BASE
 	select ARCH_HAS_FILTER_PGPROT
 	select ARCH_HAS_FORTIFY_SOURCE
 	select ARCH_HAS_GCOV_PROFILE_ALL
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-18-alexandr.lobakin%40intel.com.
