Return-Path: <clang-built-linux+bncBAABB2XQXKAAMGQEJL4QJHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B238D3024C9
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 13:24:11 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id q13sf7486255pll.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 04:24:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611577450; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nf0GVH6KibNuPPJ7BZ7gOle+RUKTDDmewq8uACI1rJ5Io17QY5KFNzfqIjbiEy5LZ4
         pwqVA/d2Ja3lXSaaOHa1gsZgTnttRikiDDfG/LJJ0uEW1aZ2LMIbZ/c8KjvWN7gliSgB
         has+Q7Hf2PM2h1ue9OMgRTAt/MBDBjeG36C2Wu2EAJ5LFA2/+9FOqIgvIJB6+UgRoB1n
         H5twWwrMMfWcd32DVg0YE6ni/4rTkWaNWutjhqAYqiNNM9vuDdAsW1jSzSnhphkvvRSc
         J5ayXhZp1CtWDBWg5i1CyhtLWqoifQqyO3d13IwUBP/iOVa51Vj+WSa5LDShOMoHHlFx
         m8/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=lvzbs75dHEiwqdDg1xi7by/6TYQGAcLHuwVZV9SFVAM=;
        b=weQolTprFGwCr+XyTcwgojm6EMJNlrnMvjQ0/ABgfXDXD5xXwz/29etWh7ZLSWa4UH
         uAMcpM396ridH0lelGpGfgZl3s+VaD7VGPp+VCHPJYyQlaHCosIZf4RVkGtChiFIzmz6
         XxPOQxSqFVl2JQfmxN4SfE4nrsasGDazlBpVy9VZNFlKdq8JJ9Gy0fnVs/ZfE2i6Y5OL
         he094ldP5zLJUj5bGhCpNNQ1Xq7V3FODBYsWL1rSh/9n8VZ+VxlkykA7EbKhAG7Y6mU6
         6MgScVS2znw47ezoOiTgxvjR+mtW7kuzoGh4jWEi77rgH6N3twljhjQfapoSj4fyU+Sk
         MhVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sxpg1Z0P;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lvzbs75dHEiwqdDg1xi7by/6TYQGAcLHuwVZV9SFVAM=;
        b=ml859vBVekEXJkczewdu9zIaMsZ70Piil9Ob0WKM8VCcQhZOtUUMwYe9m3Wmjvtxh8
         nRouDmKvogg9/5bVMmAaCCs956dlgYCqlwRHhA/25K6RIWjuUVsP5edJZ4NXxF/2jjRP
         /nZ0T2wket6boHsDSSZG14/qo9V/cYasXhXSE+fe232mv+7hP9BG8gmgWV+e8l6/GFID
         ZIb3ryXmfXdPML2PzM1eCGjFQ7VWBWqn8dJDxZKSpdwT5MaJH77JkEFNy3hoNt23T14A
         MB1QyOs692PxVrUF4J6tExZVUdNiQ+UdZMsBh7WsH2unv9I+Wd4+rLJv2eVkqcsGNsDJ
         K+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lvzbs75dHEiwqdDg1xi7by/6TYQGAcLHuwVZV9SFVAM=;
        b=rsvKkts0YeWkxC1Mu1RjfnyLZsCYwJ3hWAZPZi1TTewzqgihkoAV3TJr1+ZjwUOx9D
         fy1Sv3/nney7pZLYHJ9Io062kJSi7gebfR5eQDpVq+JMrNrRSHCvVHsXwU3fCf32bklx
         fAvomVYj/CVgkfIUGk6HW1kGmZYJibDsgIOOXNYMONrXwNj3/LnCSlFQBRGn6EUT+S4D
         tR+CR0it77QaGx0K0D9swD6CWYgFUTr9+6ihBwG7LtUMXjv/bs9KC7DqpirWzGcgnZY1
         2UxyJDJS0BNqAXKVAp9twga+3fPAtKutJvhbS98aMu30XhFTqZURnkN8vDaycw7lZ3Vp
         5tGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sSZQiF0aQduPcxWx0NlJm7VepsYO2Wo9/P7VhqSHNFYgJzVPk
	8OfgpY8JEX3QfT99CB81W9M=
X-Google-Smtp-Source: ABdhPJzKtlYSH5g5Uxx4L3yuUb/hy67JADhIMJfykQI24L4Fo0uHFRsEqSXmg5PJl1QH4rcfSieqcQ==
X-Received: by 2002:a17:90a:c904:: with SMTP id v4mr152536pjt.230.1611577450284;
        Mon, 25 Jan 2021 04:24:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:808:: with SMTP id bk8ls7247499pjb.1.gmail; Mon, 25
 Jan 2021 04:24:09 -0800 (PST)
X-Received: by 2002:a17:902:778e:b029:de:b475:c430 with SMTP id o14-20020a170902778eb02900deb475c430mr334697pll.53.1611577449779;
        Mon, 25 Jan 2021 04:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611577449; cv=none;
        d=google.com; s=arc-20160816;
        b=WcWeEwrfZxWlVnFXKFsCHVwwN/yUKkrDcNptuGx/E7E7re/mLNFDwdyuzVHcxaMvst
         FEIWaAEp7LoPp9PBnRkEJ8+wNLm2fELMTbeVMw/XFw0FzlCBIOdeKGEXRokdfN746Dxl
         LZbJ41tOivU9ecblIM5YITOakzuca2qhaybcZFMS0pv8gb01NIJBkbqs/42WZje7ccFq
         ycbNx0gnumvnpgRc/bRaA6Ob9u7yH7HaY+70F7u+nbLtohTfXhEQ7aquK3Ct3zu1niUC
         +H/BQ64KfLPfGDySl6jluOYq8iRQkdgpNgItesACi9F9Dv6vtc+CT2+gFL9xTkc1D6+M
         6s/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VzDg0urtnO20TvrNUZvVLTyXRxRmODN6D4CksJtkVRg=;
        b=FueqyLrP7R+KIxV/Q67fJiq/BS/R3CnEByZiQVyDW0X4AKpS+E2qjauVLiq94e2+W3
         a0X7QUrrOHqpS+7zNAQ6BopZAF9+5EQ3+TxNYlHqFDgdrhUKs39BnLQyGWYKN5/rBCPC
         YN8hwR7QuAF9I24TvF+Mih2Ud5uMaw/2QkVSd4UVKIwa1Y6ATLfW9h1Y/GHmlUuh5+mM
         /2KRSoTAqViUTyAhFuopOPOXryU/8BZ+77agCpyg0HKoop7vwKpg1qqsfXZygxR3TWco
         pMA6sU9m5LcJuQ1BmQvQAyd2rn+zudY40RN7z0FnFaMFhv8ahFp5QPqCYMGgHY5/whWu
         a2/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sxpg1Z0P;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l192si705907pfd.6.2021.01.25.04.24.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 04:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D80B322472;
	Mon, 25 Jan 2021 12:24:05 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nirmoy Das <nirmoy.das@amd.com>,
	Will Deacon <will@kernel.org>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
	Roman Li <Roman.Li@amd.com>,
	Joshua Aberback <joshua.aberback@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] amdgpu: fix clang build warning
Date: Mon, 25 Jan 2021 13:23:20 +0100
Message-Id: <20210125122402.4036126-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sxpg1Z0P;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang warns about the -mhard-float command line arguments
on architectures that do not support this:

clang: error: argument unused during compilation: '-mhard-float' [-Werror,-Wunused-command-line-argument]

Move this into the gcc-specific arguments.

Fixes: e77165bf7b02 ("drm/amd/display: Add DCN3 blocks to Makefile")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/display/dc/dcn30/Makefile  | 6 ++++--
 drivers/gpu/drm/amd/display/dc/dcn301/Makefile | 3 ++-
 drivers/gpu/drm/amd/display/dc/dcn302/Makefile | 3 ++-
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/dcn30/Makefile b/drivers/gpu/drm/amd/display/dc/dcn30/Makefile
index c20331eb62e0..dfd77b3cc84d 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn30/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn30/Makefile
@@ -32,8 +32,8 @@ DCN30 = dcn30_init.o dcn30_hubbub.o dcn30_hubp.o dcn30_dpp.o dcn30_optc.o \
 
 
 ifdef CONFIG_X86
-CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_resource.o := -mhard-float -msse
-CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_optc.o := -mhard-float -msse
+CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_resource.o := -msse
+CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_optc.o := -msse
 endif
 
 ifdef CONFIG_PPC64
@@ -45,6 +45,8 @@ ifdef CONFIG_CC_IS_GCC
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
+CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_resource.o += -mhard-float
+CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_optc.o += -mhard-float
 endif
 
 ifdef CONFIG_X86
diff --git a/drivers/gpu/drm/amd/display/dc/dcn301/Makefile b/drivers/gpu/drm/amd/display/dc/dcn301/Makefile
index 3ca7d911d25c..09264716d1dc 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn301/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn301/Makefile
@@ -14,7 +14,7 @@ DCN301 = dcn301_init.o dcn301_resource.o dcn301_dccg.o \
 		dcn301_dio_link_encoder.o dcn301_hwseq.o dcn301_panel_cntl.o dcn301_hubbub.o
 
 ifdef CONFIG_X86
-CFLAGS_$(AMDDALPATH)/dc/dcn301/dcn301_resource.o := -mhard-float -msse
+CFLAGS_$(AMDDALPATH)/dc/dcn301/dcn301_resource.o := -msse
 endif
 
 ifdef CONFIG_PPC64
@@ -25,6 +25,7 @@ ifdef CONFIG_CC_IS_GCC
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
+CFLAGS_$(AMDDALPATH)/dc/dcn301/dcn301_resource.o += -mhard-float
 endif
 
 ifdef CONFIG_X86
diff --git a/drivers/gpu/drm/amd/display/dc/dcn302/Makefile b/drivers/gpu/drm/amd/display/dc/dcn302/Makefile
index 8d4924b7dc22..101620a8867a 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn302/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn302/Makefile
@@ -13,7 +13,7 @@
 DCN3_02 = dcn302_init.o dcn302_hwseq.o dcn302_resource.o
 
 ifdef CONFIG_X86
-CFLAGS_$(AMDDALPATH)/dc/dcn302/dcn302_resource.o := -mhard-float -msse
+CFLAGS_$(AMDDALPATH)/dc/dcn302/dcn302_resource.o := -msse
 endif
 
 ifdef CONFIG_PPC64
@@ -24,6 +24,7 @@ ifdef CONFIG_CC_IS_GCC
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
+CFLAGS_$(AMDDALPATH)/dc/dcn302/dcn302_resource.o += -mhard-float
 endif
 
 ifdef CONFIG_X86
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210125122402.4036126-1-arnd%40kernel.org.
