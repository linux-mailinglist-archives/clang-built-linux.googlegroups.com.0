Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBYP7XCEQMGQEVAT7STY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8BF3FCA23
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:42 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id a4-20020a056830008400b005194eddc1d4sf5918707oto.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420961; cv=pass;
        d=google.com; s=arc-20160816;
        b=mH9AQETA2Qf2STo9KUhYraZsSt7nNdWB1pYpM7SBTyS9ubhlUlWlCleUsbD5E6BXzd
         rJHRF3g1yVbrAn53N2ho86Wwqi2S1gwSOpKV7IvJsoXUlbT1mVcSileADulZCKOp2326
         0/Ua8OtgxgkJP7lsM3ypSN1pxECVVq40bDM7B3w31UpSSrOP64n2PhMqneyZ0PNrt/nG
         HyhnBVLfF7JB307O4w0iOcI16rZ62hi+bKFw74oXcpXvSXfAzQgcw3UH9WKl/64xVHn2
         YbPpK6lBuqp8p0d8l2jUqlKchpjsFM3uIeZN4C1lItt2i+tBSQIGR5FEvSqB734yG5z9
         Cjyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zs0Qi7Pxml7ccDZx8zCWpwp706glOYEHgUs2RgoKCk0=;
        b=bl9fkIQDifHiEQLvlQFZ9IE1WUenjE5bw3dE3T4PeuY1RteBfVUmA/vFiKsJjpxazu
         S6n5jm6wt4ucXPb7PAFckby18WEGx7kmeNqUrHEe91gxMxMZLLNHGLToA4U5IhlchFB9
         oA0vwnA5AocWylVGd2v4SiS+kaMedglTO+n24JpIhIVqdi2uaorEKREUWycoO/PZAQKU
         cmHX5LpK3hBN7xrpn427joyubsjwdO813BfgHWh2BBzTX1I5Di3x4TYX5YD6vb+UFtkD
         6Ojv+gOORByn7XApUw+oXzwXS792PjcDXvVK6XmAOeE3FaBsZHLirhE7h05Epwb+8lK7
         enDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zs0Qi7Pxml7ccDZx8zCWpwp706glOYEHgUs2RgoKCk0=;
        b=rHH0OE4Tos6jOqAe55SW1KE+E7+9eSecN/A2sUPtPyDx2RFw6XG4wBHxHJrjp4dPGu
         CGQvOKK24pkh52ihG4uVcyeQuPWja50lUg11MWWTTQyeTA+jU9Zq0PZ8GJYxzBI4MwAu
         NaKn1D1wsoHT0GesLcVO6iSUcLgtzodmYIPGxemA2HnrhlzdmD6G8FQju3vqV/1l9pbv
         SU8MffBoTQK3YEOlbBblpssp2TzvcfI4EyDLbQEXxfTYFWS+RfKsGQkXZ22eZhBTePEj
         mLnwN8AEG/hrC/VqLhNGRI8u13C56+u8/MzKedlwu496weLZ4Pxs516AZYPq6/7vLaXj
         e9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zs0Qi7Pxml7ccDZx8zCWpwp706glOYEHgUs2RgoKCk0=;
        b=uAnv8b+rGLYOM9lyFYK9UpGAr4wjVlFcDQBCb3/m4ef4f7FIgB2mrNzHFtzKwc9l5e
         1BlCGujCimlsn/i6BXjrKKhUF1Rnp3LzGUUd1cr8oH7JW41riKzpyba9brZO5GfeBmL9
         PATLdFpEfa0l8iwyIZqzKrJLqwGY9Co6fGq8fV1Ad0dODZX4blPZUJpHl8BOtTzdFEub
         ZXzqwzg/W/OdYTR+XUkLfxulJkXp4TwOKMwqiZ+yj3QG1NNhjkI3XH2odzeZSau1n+zS
         AIU4JqglbTdwxjth88EphsBWHn1RQviVE7/4wJy0A5fuihpC6CULuSQkEV5jPizXk+i7
         pKPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HF53J9QPaG72QaftWY4xDYvVKMtTNRiRG8IluOahvlswCWfay
	DkOE3mpTL6tVcFSwtRb/Wko=
X-Google-Smtp-Source: ABdhPJzwyFS/qb8YPgpg0FKkZv3BvMfa90NShdIg1W1Jgv0oUJ0v6H4GLzrUCaia/YWhRKY3ueDWtQ==
X-Received: by 2002:aca:42c5:: with SMTP id p188mr3462915oia.158.1630420961268;
        Tue, 31 Aug 2021 07:42:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1208:: with SMTP id 8ls4845295ois.10.gmail; Tue, 31 Aug
 2021 07:42:41 -0700 (PDT)
X-Received: by 2002:a05:6808:144c:: with SMTP id x12mr3359947oiv.144.1630420960966;
        Tue, 31 Aug 2021 07:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420960; cv=none;
        d=google.com; s=arc-20160816;
        b=beypPOjrp5NcrAtoPgcRG0q/vZf2MvMz4LGD5hL78Q4rszIRS8MLKXqFiI5zDGBcK5
         d1mW0LhGgZWpGiFfnVll8DmAQFZGqDYRVdZxFIsRTEw+JNw4yNXv8bbFNVWtd6xHFa48
         Wxqv2GrQj3LT11Z9uYctMapnJ8mJ6Zwjc+fz6/BgH37I4splvcBovJ5pKnQmDSqrMj7o
         Tex7rwMtjC8O56p93zHyRzzREl9EGy0M6nKYoXFjWL21Ulc4/YI1Jlvkxjz12PE8WiYd
         W9pVQ12NHp11wHMDLuFMVqurEvVAx/GvT3hN5ti50Xy9Np9bxef7xMV6okMgitrjRmNN
         fsUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=D2sPxMAcsBl4E7aeXbwY6aGRwntBT+4SQNN7bgD4b+s=;
        b=TqxqYXPlsg7kyD4gyCov+kGjFRje7Icm5VjZrsnbvglJSV+/LQDo9Cy8YlMIw/APB8
         qaiyfBgyg8bsKbCn5hNHV7UwLlzfetzy2NMGPhrXM+4TgCXfe+O9j44Myiqkyaz6U2z1
         zGP5STblkW1lVjIvahw5asDSgjeiE2Z6i5ZkGcnZmg1HIhcAq7UjanbAIc3KOX3zs9HN
         QH2FRQQnBFtE+gaTxRBrbFog/yNu16iWOkbbgOJN3fVPnqdEcq4BE4hZsH/SFqhuiCbp
         jLncZ8AI/67mPSi2/dh88dPqRjH7eXSVzdCqDrk+ywXGoCLsXqJ6pluM+g63LWghq4i8
         DYPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id bf14si235307oib.0.2021.08.31.07.42.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218496972"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218496972"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="531128838"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by FMSMGA003.fm.intel.com with ESMTP; 31 Aug 2021 07:42:34 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfm002209;
	Tue, 31 Aug 2021 15:42:32 +0100
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
Subject: [PATCH v6 kspp-next 22/22] maintainers: add MAINTAINERS entry for FG-KASLR
Date: Tue, 31 Aug 2021 16:41:14 +0200
Message-Id: <20210831144114.154-23-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24
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

Add an entry for FG-KASLR containing the maintainers, reviewers,
public mailing lists, files and so on.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d7b4f32875a9..9040d17e6e70 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7637,6 +7637,18 @@ L:	platform-driver-x86@vger.kernel.org
 S:	Maintained
 F:	drivers/platform/x86/fujitsu-tablet.c
 
+FUNCTION-GRAINED KASLR (FG-KASLR)
+M:	Alexander Lobakin <alexandr.lobakin@intel.com>
+R:	Kristen Carlson Accardi <kristen@linux.intel.com>
+R:	Kees Cook <keescook@chromium.org>
+L:	linux-hardening@vger.kernel.org
+S:	Supported
+F:	Documentation/security/fgkaslr.rst
+F:	arch/x86/boot/compressed/fgkaslr.c
+F:	arch/x86/boot/compressed/utils.c
+F:	arch/x86/boot/compressed/vmlinux.symbols
+F:	scripts/generate_text_sections.pl
+
 FUSE: FILESYSTEM IN USERSPACE
 M:	Miklos Szeredi <miklos@szeredi.hu>
 L:	linux-fsdevel@vger.kernel.org
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-23-alexandr.lobakin%40intel.com.
