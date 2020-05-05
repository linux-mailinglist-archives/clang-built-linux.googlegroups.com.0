Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBV7OYX2QKGQE4V3MNKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B601C5961
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:25:27 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id f128sf1115542wmf.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:25:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688727; cv=pass;
        d=google.com; s=arc-20160816;
        b=zEgJfM+2vu2u3C9FeK8CdBEAeskUzE6wvgzqerxmjBMDHx/pIOr6+Ngz9bdTZ+lfvS
         WVx2RFoHiQF/wXAXkLBiFYFnJNM21XOB+4LkXsslDSDXoTnY28J3syxKFx22D9/I8W6B
         jLxM5HZxRwOPMomjlUbP/jTCGmJrDYvMQqgcf/H52CZk6ZUAcJBlaQu7Rrr561RT377u
         C3JxnIqLSP63lWIzGzdIhtVOIfMnFH/BahgrIIKX9Ggt6lA1mgt/msA3ybeeyBDKsBSL
         PbR1/T1PEyIeqodgS4hvzFgyb2/sv/RN9gxSrAQBa33TUVhQx5zTN2Us3um1YlypzGwY
         3BaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=lZ4DY5Mx1gS1+Bq8gfMGlIm2RWshEVH8VFCQMoiI+5c=;
        b=G/HGvGcVOOTDGh7/aecrC2UtzkIZuk9NKev4StebFy+Cs1XHemnEkuInWEV95xA2lz
         FZ3jaaUvfDo0wxgtXcq+D7vaxHVIkAD5OehTB3l39befBfnNtcnQudbEa0LSdMqEFvFQ
         XsRRFqzYdZbCouB3nnam0JVcDqLT7zmEGhfi9ZxDCJJx/wUCdXbck3mzMEhYouE53R6Y
         YEKSBaNC0X8/0JdjE3agBLhQSrEdMbGFcN+LK1Ml+eTr0xL/42oVY8dTjLPP2qEPPpi3
         69z9CKVQPrqzs/vizOITxYfl1tgeSthqsdR+Z/vYk25u+042CrtN/TaTeV/5f8TumXr0
         1l/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZ4DY5Mx1gS1+Bq8gfMGlIm2RWshEVH8VFCQMoiI+5c=;
        b=NHQAxKiPON8WE5EEY6CpJtlch+HyX6FQWaOpM5IILBBQQV3B2X47hqKpCS7xRnNy95
         ZacY6c1CFjjYbbC41vaNWOfvn1FENyGswoAWPbUuImwJ9NA4o1H7CiKB142s6IyfjUzQ
         LXsd2jLMOfA545FjZFz1meuE/fU7cpYZNewv1SoVSzxyipjyKvnkgEMKauXZRpPzo5K/
         lh90aAcWhmdncsfcZUtCuY1jewy7seOpcNZ8RICC3AQXpPPhcDWtRfz0Ly4HDLov1pF5
         szuqI9gvA4/lBGSQdAJK5cIloHxZQM9h7psYtTbIOzUafA7MfL3szkLHBynwOqSYf3rb
         b7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lZ4DY5Mx1gS1+Bq8gfMGlIm2RWshEVH8VFCQMoiI+5c=;
        b=lODIqJ303pgxRPv2UKn9jyMs7KlwVqo9rnv8BMr7PfUc2k1f1nKYVSszmE7IOiqsRe
         +MHWC+37VlUIQydHiTLkpRHRuEB6Md41/PmUkdrjzqQNxTUNcpC77F5II1+xoxDj1aXr
         CXtP3RhazwLTAIybjYwZC8R3/qG3YklJToa3ipYAlgdsEeXGcUJ6bO4njw6B7rMT1PEg
         q3BtgjQIIpbpEgfEvP9ygLcWWUBtIw1m49oEPVGDg0KZyIKJ8qF6jkMNFDK75PeGYOaz
         lyzOCPznjY2uVB17Kq6KB5/M/Ilmhy+P78ETehy8PYjc6kmsHqs9Td3QTBJAQ1o/OJHe
         BeAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puai5IfCXVGxt1KnfBDcUURzO9n3Df0fWwMoktit8RV7v22MqJEP
	G7dA17fTLOfvfn2csb+8NX0=
X-Google-Smtp-Source: APiQypJsDx5q1nF8sKA3p/M5EyWfUEqFf3Zw+WOXthAlzNPbOgdsE7dF102ngCaYY55QPDmuh/T8vQ==
X-Received: by 2002:a7b:cc92:: with SMTP id p18mr3862166wma.26.1588688727230;
        Tue, 05 May 2020 07:25:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls4678022wmm.3.gmail; Tue,
 05 May 2020 07:25:26 -0700 (PDT)
X-Received: by 2002:a1c:23d4:: with SMTP id j203mr3870245wmj.49.1588688726908;
        Tue, 05 May 2020 07:25:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688726; cv=none;
        d=google.com; s=arc-20160816;
        b=A9WG2Ml1/E01HRmZWbs8oDtU8fPm57t1NQptp9U8Tc02KLURCK6u+J5kUzt3XxCcqn
         vaYGLMOhYX07gZqWXSvDduBt4+RUpNsqk1NCywaQMjtvBBl/FG55EvzYi9szVh3xL/g4
         LQ8pUKY2PTqHRygHfk4PA9FtYKYFDt6CIhnupn8ju+0mZXCumWo2AdMVNCfKeeqHaVVT
         ZwsMHR4NIjlYiGxJ1+wRg9LdBtWzcjY1n51Z/CsaAborkfEB6DRNQu/81lCR+W1SgH2K
         3ho4uff9Gk+Cmm9iL17v4t4Diw09WPxIgagvGNQUnbAOOOFP1pKZRlVe9lbBtTBbmrOz
         SEFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=/jnp560vP7AblQPGIVtIa+OKoCSiLcTKFs42myrDEck=;
        b=MXiekbMnEOpER1YCbVPZuNQp70QS0shs7lYVQZM70PV3slEJ4T1zTAbkuNRhVPCrn4
         sX99F078FUGiF6/OfeVohdOi2l5P1TlAZ+xRyViGEwxNXnPkFVrjT2Qes+Q73rkySIUH
         Amdh5pmbhOQlupiK4LCsH18ZSlDVvRCy5pOAHbDrn+7Y9gPfxOgLZgJj56OhVWIHJuRc
         JDv5BsSKOdrV5ZcpY64ZyPZ6QSGuA/OJiMl0c+I26v2nwWkXKdqEnqQv9G9qkv7rZFud
         +9a38jkNd6dHZaJ5MOvYmzwc5FKa+qdmNtJeY+kbBziKsfD5qFa5xcea6rNhdaURmR18
         MSqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id q187si168451wme.2.2020.05.05.07.25.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 07:25:26 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MJVU0-1jpiHq2SC0-00Jpo7; Tue, 05 May 2020 16:25:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Timothy Pearson <tpearson@raptorengineering.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Marc Zyngier <maz@kernel.org>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
	Charlene Liu <charlene.liu@amd.com>,
	Anthony Koo <Anthony.Koo@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] drm/amdgpu/dc: don't pass -mhard-float to clang
Date: Tue,  5 May 2020 16:24:56 +0200
Message-Id: <20200505142519.1138945-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:kyuCbCEFYOcHR9DitYTjAbdHsjMrBAl6tRD/hASI8cLhgsKb51z
 4SM5jXD33rd9/xC4Ev/039yaCDjFmF940iPtDNjHpkoyNLksYCThRDq3NxoD5XAj9b56A+N
 Wn1FMJsGA+XcWsm8tu1gT6IJamHNPqS//MWiN5SJg/G/fHJknT72vtObM6aOgfGAKtrJpXy
 2uj8DD9Q4oJPQ0wB4c8yg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zuXYTAazwNE=:PutM/bcLCGJjXJnOuEuYkH
 ZYpn4w7i2HwOMEBxnl8nED8rAiamNiwCxhrgA18hTQyg/lkPUp39/qIPXLPi3Z0xE83px2DKu
 ktQ86tTo2g5qB588P9fOBUEiVXI0iu3VX9yzyocfYCaCB0fz+MHFjKeiSV1q55BtLzDGOqWG1
 9VoJ+D3p5nhYeRUyWS4H8XoojR+X2Ne3OfTL5pPuTW8NMIfF7twoyVo+L897h7mmku9BKWJqR
 ahqfIzW13oTTMA3W/PoKXRtWxpzNEQ0HEbYykyVAoQbGdVJq30sfAiXLGaFUw6MyGjPfLqBxv
 EN9q2TxRx+wyFVulikYVOaduHdAwjG6FU1maMCdzIcNP5rE1OLjQLywYBBCziS46+obh9J4dV
 K1cdjItfVQUFOoKzmZTEpHcdS0xkbPRQARihqQcuYmI0qug3JwpQo/Si19/NoVYvUZNHdL+Z7
 ksMqzvtFiE74x5kMdFAAmDTvCqY/7X3hq8T6kR9aCFNN2giRR909dKlMC76msaQFcdfggubY1
 yIBDsnLNXTQPcr3pIPWbxt1Mo6rY6j4kaoEJjXQ2AWEq7z06KQNGV87ooVcyi2Wag3NcUDcmK
 SQ+AvWrCQ4spBhCBt+RawkuBvWH4emWNZ//soISOPpuCipnlu+XkdidFfYhfCTYx/5LdPPUo4
 JK1mGkJAe4P7+JEqTKlxn8bwSv7eGO+a0OvJKK2nsrv/aOSvUd7UYH/0T7i2dt3RmkjGKRyzA
 Q00x5Iezmpf4ojKXOh+y7MBF9RbadJpAEiStCnqyCN7juVfsCadGE2d+BXgkE/FmZmpyZ2B2t
 avuyqPcFNOJpGaZHCb1llcI/0ZQQm3FbIKEJqyQXc7iUb5dP9s=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Clang does not appear to care, and instead prints a warning:

clang: warning: argument unused during compilation: '-mhard-float' [-Wunused-command-line-argument]

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 5 +++--
 drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 5 +++--
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 5 +++--
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 5 +++--
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 5 +++--
 5 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
index 4674aca8f206..64195cacf6fc 100644
--- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
@@ -26,14 +26,15 @@
 #
 
 ifdef CONFIG_X86
-calcs_ccflags := -mhard-float -msse
+calcs_ccflags := -msse
 endif
 
 ifdef CONFIG_PPC64
-calcs_ccflags := -mhard-float -maltivec
+calcs_ccflags := -maltivec
 endif
 
 ifdef CONFIG_CC_IS_GCC
+calcs_ccflags += -mhard-float
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
index 5fcaf78334ff..0d3ce716c753 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
@@ -10,14 +10,15 @@ DCN20 = dcn20_resource.o dcn20_init.o dcn20_hwseq.o dcn20_dpp.o dcn20_dpp_cm.o d
 DCN20 += dcn20_dsc.o
 
 ifdef CONFIG_X86
-CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -msse
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -msse
 endif
 
 ifdef CONFIG_PPC64
-CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -maltivec
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -maltivec
 endif
 
 ifdef CONFIG_CC_IS_GCC
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -mhard-float
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
index 07684d3e375a..fd209d1cf6bb 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -6,14 +6,15 @@ DCN21 = dcn21_init.o dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o \
 	 dcn21_hwseq.o dcn21_link_encoder.o
 
 ifdef CONFIG_X86
-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -msse
 endif
 
 ifdef CONFIG_PPC64
-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -maltivec
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -maltivec
 endif
 
 ifdef CONFIG_CC_IS_GCC
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -mhard-float
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
index 7ee8b8460a9b..fb74e79e15a2 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
@@ -26,14 +26,15 @@
 # subcomponents.
 
 ifdef CONFIG_X86
-dml_ccflags := -mhard-float -msse
+dml_ccflags := -msse
 endif
 
 ifdef CONFIG_PPC64
-dml_ccflags := -mhard-float -maltivec
+dml_ccflags := -maltivec
 endif
 
 ifdef CONFIG_CC_IS_GCC
+dml_ccflags += -mhard-float
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
index 3f66868df171..b0077f5c318d 100644
--- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
@@ -3,14 +3,15 @@
 # Makefile for the 'dsc' sub-component of DAL.
 
 ifdef CONFIG_X86
-dsc_ccflags := -mhard-float -msse
+dsc_ccflags := -msse
 endif
 
 ifdef CONFIG_PPC64
-dsc_ccflags := -mhard-float -maltivec
+dsc_ccflags := -maltivec
 endif
 
 ifdef CONFIG_CC_IS_GCC
+dsc_ccflags += -mhard-float
 ifeq ($(call cc-ifversion, -lt, 0701, y), y)
 IS_OLD_GCC = 1
 endif
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505142519.1138945-1-arnd%40arndb.de.
