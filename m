Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOMSTSCQMGQEZ4I7LMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B138BB62
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 03:13:31 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id a11-20020a17090a70cbb029015d3e996884sf7358749pjm.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 18:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621559609; cv=pass;
        d=google.com; s=arc-20160816;
        b=IHf00TjVupGgVdV1OdLJsEALKndFPWUlTV/4yLQ47XNpeLSc1zUanSehBAhqDH0xiX
         z6a9OliB1rB/crI2+WO5hrD+7eO/ovhrn7kl0fCYwR5Bi1h0Li39b3buAcGr5BzcV4jd
         jdWkC7AfcHxQY7qqbRI9iIZpY+WjQ2MOnvgT/kMr/VWX1f9D/h+TUwxfY18roDTu5bNn
         +zj+IN1ABM5SUrHcZDKGtSJCpZJLGJVTKRgGIgxwMLlzL73RybaSvBoh3Yu6a8EfGXF8
         faanMd4F8D0R3vuLbxfFoNPCEXcqT+oDaD0KZGdH4VnZGBclXERuIpwhXLQ2B713iLZE
         HHfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X+w7XZbqyzY8rwqUBsS2bXiBldnZAIP3B9jAHfUyxYs=;
        b=sOlLTK7SNXVJu8tAtOPsMNQ9YD5rzRNfrAf5OJdf5nRdVDUK2z4tklwMjYwf4K6cAX
         MET/8Cm+a/lWpqnrNfzOMXA+XTEpIOG9VwlEtmG0O13+kv3KIcWprjmtKpmrnf3ueKxL
         8geleXFeYtvWC87nWf0Ok8XXlLCu11iw80VUiM4NNtGl9/M9m7JudC3e8LvNhRssz+Dw
         exVEC8UndEQs7FAlfkqvFW6qgKsdmJmvBWMOOHbgHfMa4jZl21/jqVUt830WV/q4rErX
         UF66C9AHXcmfAmpWhQvb5Pzv+adQ2SyYCXWeudoYfPfWgiXeMVyJ5DIH7LN3rUIihS93
         BF6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ew5iaWXe;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X+w7XZbqyzY8rwqUBsS2bXiBldnZAIP3B9jAHfUyxYs=;
        b=oraS4f3UsBt8NrfT5ORSBW1A4E0lraB3JEOTslMCZYpvVzWkshTlyyADmNcCe6Dpu5
         opCIEV7cZ7CXRRAwi4D0WIQLAXgyYXwtHpLajkGJRYJ1Qpo4u9c1FkTTplWwCg8Qt7Ga
         Koa75mi7dSHDfYHdhWdidG4Ep5GicEqWI7fahCBUEbwPyKVH6+3+VamKmcfpoYK8ff1i
         IrGV4sFrroGCDpzcVhHxBuZT61xwQFW+mhEAIOq8Ty120LqqIY5BABty1BvoUNsNQF2G
         zM28vcT024veQ7Pyyx5QkOd4rtlITd13CAfHuzAro3btEL1QKuYN0fJkYleDENG1RbbM
         frFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X+w7XZbqyzY8rwqUBsS2bXiBldnZAIP3B9jAHfUyxYs=;
        b=CMQSdz7nSCaAIcari8peohwswbbvP+P4n9H2AOXwjlL5N/QKrxTyZJXs9d7sQESotB
         Z9lMZgV0qaj/VNb9t2dz/MKUAi2OSsvt8KXl2xvp0BZMVimeb6d05FH1IjTqu/mAJTPX
         cVIBnoDX4Oz+X0vxn6JGVy8QVdMGLaMG7ebkg7KFICSHseJJEHg96Ql3yDbzYsW2ake8
         6fhYzQrymZhYs6F31U2XTFY8DcWP3x3Lrpf9qPqzt0LipC6uM5DQob1ymUuQNisAFk5c
         wfxKLJEeORDXGLFJLKEQkmtlBk1tGsbswDl3wkReWEKW3wG9FxrWm6nlYV5BTeU7buzH
         MJsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aLjQAoSQnTzoUbTrxokKee+lxSe1ypx26IV8TSV3fMjEDFtQk
	TqP0ES1Y5DG8jPo3aIAw35w=
X-Google-Smtp-Source: ABdhPJy0WlVJCouQu4s23tCNHmsI/ge+hsypVIokdGgorXeoZlub6E4LKL4+ferWskFCy2+iQaeLnQ==
X-Received: by 2002:a62:ea10:0:b029:25a:9902:43f3 with SMTP id t16-20020a62ea100000b029025a990243f3mr7220298pfh.68.1621559609588;
        Thu, 20 May 2021 18:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:92cc:: with SMTP id k12ls1978329pfa.11.gmail; Thu, 20
 May 2021 18:13:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:10c2:b029:2de:7333:1343 with SMTP id d2-20020a056a0010c2b02902de73331343mr7427232pfu.42.1621559608952;
        Thu, 20 May 2021 18:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621559608; cv=none;
        d=google.com; s=arc-20160816;
        b=NBV6GHQQ+KV3IP1MLeDu+SGE12BP5H2tUkm6gXfGe3iL+RyQ19KBa5GF5/8y1vuy7e
         rnUc0OOMKzaxJgHoeftnc+RgPIRcq8wpxZmLlttsDNo+wlvbfMmmA5zzj9okIBSWc2zw
         2Dh4dfUvNeq6Um2AHHrlSim2DVx9b0qAEj37WIEo5+gdUTiuFaXxb42/SiERVF2xZdFb
         sF7KFDlQj2O46mxE4ia0lFoGb4qkTF6sRuFZgiuDMWWTyD2rKxjP0rgEoXGCkJvP9vdI
         N1EHljH7Dccbs/qC56u5KHVPMbhIcC2SWsXdM/Enrvssj95i/4jwuc8mQ2eobDhrTWoR
         cdUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XEt7Z4yyUKrp4RS4H7PN63o++hKt80SK2CldKvkm1LA=;
        b=QmOJbOo188S4lfZy4Wz2ybG4mlzQ9cKM6U46eqc6A8gNP4ueCc/K3KNqAFNdXvyalM
         YevX0sFUkf3eZNsRcC7GU2Biqb06a1I117WiQO3tdZiTKHRDoLzp7RrvDYtguB23WZXo
         VTxIrmXf8/F1eGT0jfIrs8ThGFz+UReHDM4JmVaGinfkC2fFIyAz0rdyHCvKRtA7PM2M
         dOXkFZpSu6ETZ4HSmbvjCISpQ+hfCDXJucQX4AsH21WY9D77jR61W4jBfj8hzbVsiaTP
         ytTMob8hPN42cwtIEeQ3rSRMx2i2eEX1023wujvkPRMN51na9Jpdfi4jLg6v4iIX+mt8
         IqdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ew5iaWXe;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j5si1191150pjs.0.2021.05.20.18.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 18:13:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5965361355;
	Fri, 21 May 2021 01:13:27 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 3/3] hexagon: Select ARCH_WANT_LD_ORPHAN_WARN
Date: Thu, 20 May 2021 18:12:39 -0700
Message-Id: <20210521011239.1332345-4-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210521011239.1332345-1-nathan@kernel.org>
References: <20210521011239.1332345-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ew5iaWXe;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Now that we handle all of the sections in a Hexagon defconfig, select
ARCH_WANT_LD_ORPHAN_WARN so that unhandled sections are warned about by
default.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/hexagon/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/hexagon/Kconfig b/arch/hexagon/Kconfig
index 44a409967af1..e5a852080730 100644
--- a/arch/hexagon/Kconfig
+++ b/arch/hexagon/Kconfig
@@ -30,6 +30,7 @@ config HEXAGON
 	select MODULES_USE_ELF_RELA
 	select GENERIC_CPU_DEVICES
 	select SET_FS
+	select ARCH_WANT_LD_ORPHAN_WARN
 	help
 	  Qualcomm Hexagon is a processor architecture designed for high
 	  performance and low power across a wide variety of applications.
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210521011239.1332345-4-nathan%40kernel.org.
