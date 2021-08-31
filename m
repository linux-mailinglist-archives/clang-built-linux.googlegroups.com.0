Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBOP7XCEQMGQEN5TYH2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C463FC9F7
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:02 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id a4-20020a056830008400b005194eddc1d4sf5917698oto.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420921; cv=pass;
        d=google.com; s=arc-20160816;
        b=UA2KxJkxqLxL2bxhhtpshtOIdPM9O0GfRrnTKLBeZPaSX3EG0waQc6//1q3ysgak4b
         CrgSUXReEHcFtmCkFQ2mAYooPADjJJN4uHTL1AE9yUJZdc+Z+xY2sXdU+1SuQ2/k32J6
         9nakX8UEAc6cVN+HPR4TqH8WCVtCDK134aHauV3W5/eOGj+0DNVD8b1qe3DXs5QH40q+
         Yz/Mm4P6tlMgIJH8wX1J0ba1yTdWTa3OFantCd1tOtMulfoNjkKrBcr3At8Tx2fKbdzG
         f7SC/rpDAoasBLxYHL9OyxrJbvu1pGzH57Oe1RrCD/nm8hlJ8AsCfOSoa4Z4QZxbed3P
         z58w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gx7f8FjWZ0Nj+tcInsPJGwmXViEUjNPZ6BPaWapbsKY=;
        b=c5qO3WElZHt4/ytkn/JQi/OkFIyCd94fk2D0lHQdSdW2iONxePO2lkX4rVvit4o9b2
         qGJB8fF/uLAuaKKPRsCH6Ts68WfFDFVc9PrLpl5BHsgaNKkGOzj4dp455DfziSlvs3bY
         u9YSXbqk6c0FP8qrdvzvSFRd5YLs5Fg0gC82+Q93+ZH89iWAEMRpx+cPXvQkgv71DVNB
         Wpp9n9y0dIqPz99MKe1hky8dvvK4nTFwczV4l1TsGYl++UY/vywNd0DzMT5GMX0r71Rl
         rEcqbzUFYK/7zSe/ir0WCSceVpYhHhAwNmP8xdmPuCIWb0Gw63r6lXgrC2Ig1PqIdwtn
         dVoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gx7f8FjWZ0Nj+tcInsPJGwmXViEUjNPZ6BPaWapbsKY=;
        b=p2Cokx1Sol8DYhuPOLeAtlgQ+UhVFji2t2Uw0ZhLRC/dm0dEJqmbS8qR4CANFhzZEG
         gvBGM05jBwCp8BjW9APalM6HjFBHiK2EV50+8QYgZwNWRH06Z7TPvVn9KlxlDsoksm4i
         KJxs+BlGpAVq+CwVPezJM6/1Z6g3uAqk2MNtfFfshlkKai8S3LJJhxO3BUXeNjYjZzGK
         6gRZgCZkUQS7QDeYA04gMWQvNNfVeZfcTJMs+Ah1ZLEA8cvsdbZoDqF/JpUK8Xa23FHq
         gTJDve8v/4nkmZoaGYvEp0wrzf5C0FqoekG/1Ds3bjE8qJ+pmIBmarVt3etpzfuxaTvX
         3O+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gx7f8FjWZ0Nj+tcInsPJGwmXViEUjNPZ6BPaWapbsKY=;
        b=Rp0vfAH8W6P64VFT0qGgbZwSKpk7PLzlrU44Jg3TQXaiGRF4nNIICfTzooszVWcB//
         j2WAfuY1OfnBtk6aSusoBE563+zDgl0olQZ/B9PeafNB7JgsgaSh1+5rwUxTz/AoJ1WS
         5u/twhRl+gUKJywrjkHF4oYYEMrgkwn+109hzKYtUM5AOI9yUoMqjGb6adMJvpljvjfO
         vMAcSxsjhx9gJgiUqxqdJSwuOSJtWQSSnghWwzdT11I3mTX9Mckm2VtnxK6ivxudvbkv
         E1/Ttyp7i5UcepoODufYPG2iRXfV13Ntce5uGOnu4G/dC5S5Im54Hr9fafTkcyTowu7Y
         QsKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530x7maiH+3TfsL2NTOL1Y1vSIt7/7phlAgElwzvFL+BWQSXC/a4
	NTw65JLDXH74W+5glV+mnsw=
X-Google-Smtp-Source: ABdhPJzu8X2BFCTdkh+RjvSes3d0voUDLjg3LdvULTsQ2+JFOxIjyRSuJ+F5APyP3Us1TUS61PAB/A==
X-Received: by 2002:a9d:6c04:: with SMTP id f4mr24501518otq.185.1630420921676;
        Tue, 31 Aug 2021 07:42:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e24f:: with SMTP id c15ls1338511oot.8.gmail; Tue, 31 Aug
 2021 07:42:01 -0700 (PDT)
X-Received: by 2002:a4a:e499:: with SMTP id s25mr9414740oov.46.1630420921329;
        Tue, 31 Aug 2021 07:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420921; cv=none;
        d=google.com; s=arc-20160816;
        b=zrW6sjul668GeV87HepC8Ou/AVWwK+jWlTjLw4sg4OOvRHyQ5wlr5ATJft7pALsAOQ
         uf8LXyDEON2piC1beXr8npVDgFYRsqYbgZ8+2Yke2hywE4/OkN6C6ew7HIByrnAPEqju
         xR6CigBNysF7DfnEjJ6mCvAwMRb/FeazE92M1QduItZfdayi3RKKx0DO2r0/hEt1sDqQ
         xwfbqr9097+eCSbqKED9d7JvN+3oWvDxI61Lmi4i4tl7VMd8lrLBdnV4or6Bx1QyWzUV
         /vvzQBYXKSTGfuoS54/3FWj13Za8JKnG8Udke697elrKfoo8Y0BSs0rYmWQk+gW/Yoh3
         uJxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=SNgzceKcueoGw/NjD/XzNV0r/BO27gr+PwRreUbvah0=;
        b=Nd5F2awTTOS4h2vBPyEJlNII2aPyZpIY0VixrrXszIh54hgFKtWQqBkYOI85xDYezI
         oNd068EdoTXBAiPsVwgSM1Z8N1lYI6gWbXNWB8S9S+x9EY5Dk9gJ98LjZtjFtCGIpB0M
         nctiSD5j3+AUDuuv12u9tB+7Sy5lPeXcCDnlq77BYK5vk/DqjXnd6EjqMu50Crg1Ao28
         Ot7+utvNk/arFbyqwpDhI8j7uSEG7r7zQmroUFGmpyTemMlG3mC6JabmyXwQJCzN8Zwb
         7dpfNJHQcVMQsfbvIerMTHQfHrSupSQYPUKMBoXThllDjPEI2tj3S3wpMYjXrtVwA2IX
         vHGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id b9si595236ooq.1.2021.08.31.07.42.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="282200789"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="282200789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="600974331"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2021 07:41:55 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfS002209;
	Tue, 31 Aug 2021 15:41:53 +0100
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
Subject: [PATCH v6 kspp-next 02/22] kbuild: merge vmlinux_link() between the ordinary link and Clang LTO
Date: Tue, 31 Aug 2021 16:40:54 +0200
Message-Id: <20210831144114.154-3-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100
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

From: Masahiro Yamada <masahiroy@kernel.org>

When Clang LTO is enabled, vmlinux_link() reuses vmlinux.o instead of
re-linking ${KBUILD_VMLINUX_OBJS} and ${KBUILD_VMLINUX_LIBS}.

That is the only difference here, so merge the similar code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh | 30 ++++++++++++++----------------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 36ef7b37fc5d..a6c4d0bce3ba 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -154,12 +154,23 @@ vmlinux_link()
 	local objects
 	local strip_debug
 	local map_option
+	local objs
+	local libs
 
 	info LD ${output}
 
 	# skip output file argument
 	shift
 
+	if [ -n "${CONFIG_LTO_CLANG}" ]; then
+		# Use vmlinux.o instead of performing the slow LTO link again.
+		objs=vmlinux.o
+		libs=
+	else
+		objs="${KBUILD_VMLINUX_OBJS}"
+		libs="${KBUILD_VMLINUX_LIBS}"
+	fi
+
 	# The kallsyms linking does not need debug symbols included.
 	if [ "$output" != "${output#.tmp_vmlinux.kallsyms}" ] ; then
 		strip_debug=-Wl,--strip-debug
@@ -170,22 +181,9 @@ vmlinux_link()
 	fi
 
 	if [ "${SRCARCH}" != "um" ]; then
-		if [ -n "${CONFIG_LTO_CLANG}" ]; then
-			# Use vmlinux.o instead of performing the slow LTO
-			# link again.
-			objects="--whole-archive		\
-				vmlinux.o 			\
-				--no-whole-archive		\
-				${@}"
-		else
-			objects="--whole-archive		\
-				${KBUILD_VMLINUX_OBJS}		\
-				--no-whole-archive		\
-				--start-group			\
-				${KBUILD_VMLINUX_LIBS}		\
-				--end-group			\
-				${@}"
-		fi
+		objects="--whole-archive ${objs} --no-whole-archive	\
+			 --start-group ${libs} --end-group		\
+			 $@"
 
 		${LD} ${KBUILD_LDFLAGS} ${LDFLAGS_vmlinux}	\
 			${strip_debug#-Wl,}			\
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-3-alexandr.lobakin%40intel.com.
