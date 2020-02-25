Return-Path: <clang-built-linux+bncBC2ORX645YPRBBFY2XZAKGQEXI52XKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D4C16ECBE
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:21 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id o200sf12792361ywd.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652420; cv=pass;
        d=google.com; s=arc-20160816;
        b=sx88npg1cBkdLeMNj9oRAyLAYj2UTSxxckFwyUqwHqxh7GLmAzNyP4tDFL/XawApST
         RSrw9oHR3Sk+MGHSJRU0Vj0wHcJjPjHmS+fvbIFB3MQ9N8Y6ndVmQ/fkUr6iN2GUqxu7
         Pp/4iamgVDYFw49bSV2+KYrCsu6Hrnfb8xSkhzbPDO3hgyf7+9wdeGWPgH7ioXPHSi12
         Ebfu+RJpIrbL68UL1bxXKjyPFhXUn7bbGss6oSM3AVC+LXtfllAWFtrbM5ES6SVVaADS
         tEthpYknMZpTxbnkcHVOn8xJtcKIn3MzGp2dbwLefd2Zpg65U2kGaagxddJ2MLE5BTct
         9RHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Rj1IuXTsCGpERr/bB8qNTUiuBWY58jfcdzMYhukftDU=;
        b=zEmvqaUdxsct7sm06xytjocItZmGRmvEoLkCofq3lf44ZBchNR+Tywi9oFvpoyqlNx
         JWLsPkltI1ZX8+GKAMpQU2SxJby7DM5LOVMQdPsW3AFCExIb/nq8X7B9ZTyqE/n6QNry
         OidFjGuJNo/Sk5ckXGyRzt8NwWEMOXku6e+I5avYP8Bk4yTju6qH7+Fz+E2Kll02Q5a5
         TZ/PKCUGVpzitvw4avArDCIf8+YThKZLJUQBGEFLV+ZyP8iIZYWa8mcBD6dKISlIjKlY
         JHAayEjEYr+U8/OXRCN6CpmJzH0X77imo8i26ZZcLQb4l5ibsYy685IF0Ge7nVrzifOw
         wfpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="AG/N+nAH";
       spf=pass (google.com: domain of 3a1xvxgwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3A1xVXgwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rj1IuXTsCGpERr/bB8qNTUiuBWY58jfcdzMYhukftDU=;
        b=ASNXnmoSX+vin7clbgyLmfKoU0Q7gZLf7FJg92KE/uW/6f69wlBaV9ZpsKlWBwzR4q
         qpjsh+6iQK+aocMDrID8BVWCESk1m5fIhJPQf7nQRWVw6nh/MRIxkkzIhICy2MIjLxkI
         8GzrGs9hjjXvYY1PmdV7Kr7JCsSaAsS15r6mmUMZDMeJ+TYjgyUpK3fe9WJwMkGlUPaw
         BeEn/YuV5BI9NVnmltKBD8xrxeISEr80zIloPopVRR4STe3JSr5mk/CXc8rE38tTLbKl
         oLyjIztXB9ZnimJPaZfkenH5rFawIwPgpTxzuo2yZ6xHqMrrk4Irje84pMvYTusxPV1o
         KjxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rj1IuXTsCGpERr/bB8qNTUiuBWY58jfcdzMYhukftDU=;
        b=q5DChPnurV77G/Qcs+bMLOqvNRVCT46pvRLCyh6iptmAcplRLISbCm09wQFI8CI2Ym
         bPoZ3HgLB17mgglyw0hWidBW0iJ70olgtWwn4sQPgdgQo1CXvKDZsfJYil+73fJLuGEo
         aM5IK/5J6eU4q8mgSR4JhAk0ERoOqwAFFleByePSFVz8ypmoSIccGVtAaTCQ55MNMW8f
         wZTcqadAyrcd8AU209+4bCu8EyGHfN6Wt0yLuG9Tjr2v+rt+dJGvoJVD1mXe79GevKZ3
         q8h9OgUn3JJiviJldsfD3JW1LYvkCQ6DPDi0pta1p8tbZj/GsD62hJj/kIqPG6RkYxfS
         hq9Q==
X-Gm-Message-State: APjAAAXuHOALTDzPY0h7Pi+q2uaJjwdWZp5+p5+UO7ObgvSTK07Is7EO
	F29M3pPo3Nl6WJaidSun6p8=
X-Google-Smtp-Source: APXvYqzOruEerVdrtCDpW7+CHsQcvjwR73f7K6L8TtX1lu71RweiYXXcFFaEfyFvO+Nl0gqiua6Icw==
X-Received: by 2002:a25:420c:: with SMTP id p12mr399816yba.459.1582652420790;
        Tue, 25 Feb 2020 09:40:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4111:: with SMTP id o17ls27934yba.8.gmail; Tue, 25 Feb
 2020 09:40:20 -0800 (PST)
X-Received: by 2002:a25:8512:: with SMTP id w18mr420331ybk.353.1582652420452;
        Tue, 25 Feb 2020 09:40:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652420; cv=none;
        d=google.com; s=arc-20160816;
        b=WI76TY0/CgZ26eBtqNXcnDrRiIDp53ORgnW5XzSCNldaIczvVRlag7NoCCE6u/RRPZ
         Zg4wvdljxoSGvzhmlzzq91Vxde7psVoufUHdYV8dq0BuA2uFGZo/maGCur3JfHV2AjrP
         iThHRtcP/hmP1CJp0UwhOJUxv1d3GtMnoQ5w3GFCELW2b5ELksYzeodaf0hTndtkjFsW
         GUfAQFflBrm3k8Kr3TPiqgkF98p7We10qToMWl8cQTxa15MMWtW7dheDNjyrPQFatwlH
         FDN+9kLRFVLAg1xTlkcHBKWrIy9n/Z/cyWBgRpTir3iwt1pH1cVkf96qSFtO2heDRuP0
         9kbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=S6rjWX4zh65J8qRPSZGN8zFIqvl385Xc8XQW3COWMIA=;
        b=ycq84ZMJqwGjn8R5pOlKwlxBpHIb7RzsylbCpfBMj5HpS6mdgodrlzLeblnh2gvhiZ
         QHht2kVBc5i4+r4uayuwYKGpcmX60wAGMXj69GwnpTolU9UhSr8YULjV3yvVDANW1il6
         dEYQeFBVdnlvcRRcKrVt3CytVLxSwaWN/qsMe3FLqC+S/+C1pjOtkvEzevfCvRP5STGr
         vWtICzvL4+6K2bPFBYd7f0S4ZhMHT9dJibrAZW7siZ5Vvblg8aqKcpJI8t/xyo0Gz1BJ
         W9mLcK5zSu15WveDoOLIMDvdGMpnSd15FORevHskgxpbxeXBC4hnHusUQ9V3iGsXk9qJ
         Gp1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="AG/N+nAH";
       spf=pass (google.com: domain of 3a1xvxgwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3A1xVXgwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id t82si7890ywb.2.2020.02.25.09.40.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:20 -0800 (PST)
Received-SPF: pass (google.com: domain of 3a1xvxgwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id bd7so7894810plb.0
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:20 -0800 (PST)
X-Received: by 2002:a63:e044:: with SMTP id n4mr57741015pgj.338.1582652419605;
 Tue, 25 Feb 2020 09:40:19 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:33 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 12/12] efi/libstub: disable SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="AG/N+nAH";       spf=pass
 (google.com: domain of 3a1xvxgwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3A1xVXgwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..ee5c37c401c9 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -30,6 +30,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+#  remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-13-samitolvanen%40google.com.
