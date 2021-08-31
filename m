Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBPP7XCEQMGQEHQVCTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 308DD3FC9F9
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:06 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id a4-20020a056830008400b005194eddc1d4sf5917794oto.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420925; cv=pass;
        d=google.com; s=arc-20160816;
        b=uUpSzmr/H7NcMYVBmYbTCTZmJfX22j92cVH6FNn/weaevTvV1+XLVSwmCeuADj6Auf
         UUxaAGegqLPldafKuCTo07UWmlYRzM7EqV8mf8HvOs3JNifZMmVWhTHRWVGYWOBthrVo
         X7TatPeSNxdePgZiRgXeYJRX/zzwtXkpedZHELuOB/bcKtuthSr3X4bJ2DAfcsLXcWUM
         jkCEbWC19d8+vZbrA8o5HLcI5gwYURKpZyXzkpvDEJ8Ja3mgbqaCnfjAjmzxastnmFY0
         3iGPAhD2Xd6Pt9O1JLqai3G/+ORY50s1SbktIYA0paXyER36VUyTqnkJBg9xzxFSZy57
         eTsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=C+H/fyN6tbnBrSzAuUTm9+kN5fApXkB78vTFKRHat5g=;
        b=aGR83n5eo8VRtOqjq2dLjI0pi7r0AOcL67Q/fuCd87ovKjN1Coj4sWoraoeqQWRGe5
         eJ9cL5tYvu+W9QmYcXANZ5AXRBlSz8wVFOkJyHzZemgRfLkpgXpe0tGPnLvIjFkQado+
         /sm8i85/H0oe6vocGlA4GKXoMzcQMPaMISO560iZLQtoQdZZUeHSdIJtYYpG6cGhGv6D
         BgsiCHMZ8H+UGBeGj/xH9+TXStWElfHZys10o4UyNE6gLxL5FLh99UBpbIF1hHJbZMLN
         Wip07aCR5jGeRBIXp3V/lhQ25DFs/OOWdQq+4TkvK2l26OCCbWGRDvIzbuFx2sxdVE3z
         xvxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C+H/fyN6tbnBrSzAuUTm9+kN5fApXkB78vTFKRHat5g=;
        b=K9AX9Dma7Xmo/lkqQEz4GGCaNeKMMHTFL9uX4t6/xjGp+V499yakgX1z1AKJMJkhWM
         e69hFK3sfyG8IkYVL57msIk7wardXwauVbzkCZEMJRShassLKqQw6PEEM0kIuZZCXzpy
         Ol/mi0tlZePUcwf45ln7tZ1A7UESJMsNp8KpwbrQj+8vxuW6AvyiGmiQ5APfC9VDOoJy
         eCLu6PDtxYSIg/6rqTduxL1Ueo60fl4TYjM48jY59f4kJeru7Pmkj6DqQ1frZh9+Wwi1
         NkAsXrMSJl73aUD4RMovD8E3mDEBgykVBsYd65HNHBBR9UJLv8tlUXTFaFLDsAC98hgx
         X/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C+H/fyN6tbnBrSzAuUTm9+kN5fApXkB78vTFKRHat5g=;
        b=oOqrrxc/aHk+EhOmo+AOAXAeKrZS7l/lui0NYXtMctLiTFv8/nMFp6nkuhC6HMArf2
         UpzQtWZhnrzvknbl7n2KxVA45FwUsKPSAdDohMQUdR1Jqqj5K08q1UlmgHmVc36LvNVS
         SjfVz/xvho1K+wN98/5eFreXHWF9l9iHTS13i9zRAUxLfRiO7ZyiA73CiYm23pmURdjT
         NrpYIGiYBdH4Dj9a+aMfysT8JHUY3+Cni3nnURPPioPGX6HPjXybgvMGT4Hy2atwjXZj
         pB46x30fIOxgRMp/UR7WSreAAuU/xJfh/SB72nOWRsSHPLPL9VMEU8XLvo+N+2eHnVMC
         Feuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533171BwHWZZMiQhaRJkvh8wj57NwxNU38+O1NbiLCmPvXG8TdQ7
	+RhjcNAGyQmKo3xoc4vO504=
X-Google-Smtp-Source: ABdhPJyX3LtSSrH9zdHNrkxpsdVxsOokp+1uaT921a+mrtUJjADUvIaNjESn34EDGmq+fUgIs3lfgQ==
X-Received: by 2002:a9d:7d15:: with SMTP id v21mr24002289otn.167.1630420925178;
        Tue, 31 Aug 2021 07:42:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0f:: with SMTP id m15ls4846834oiw.11.gmail; Tue,
 31 Aug 2021 07:42:04 -0700 (PDT)
X-Received: by 2002:aca:c481:: with SMTP id u123mr3336718oif.23.1630420924863;
        Tue, 31 Aug 2021 07:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420924; cv=none;
        d=google.com; s=arc-20160816;
        b=n6wmMvI3nus/Nnuk+WGY5Yi1ItfRvFdZGYyrLStyCm+n1b3Pe+01Z8IcETA2cS3KV6
         /BeDslqM5L0Ucv+dhMaZs3PMZycEX4HjFec/fXehzt3Z8YBf0c+DP8wgYs5rKXptb4a9
         HAhhwcyRbItaDHm4MWVrVvdWLg1eUXgyLBSgnEvwzTe5ec7wmJSmdHgvwb6lxR2pWQ2k
         Dz2fL713GBIvcj807DntcnD7IsGqH5+c+c4Gpf1H0IqnIGmn1j3yFUU0wNuVg3vn/RGf
         Dz3kKXM8W8rfyyelXOQAjWW+etdvv6/h4j2YV4kxgXWfC7ElNku6622dGRNNRQz6uYpa
         w91w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=XNNXS3p5a46UOsWEBDu8jg/3HtOrt45JSZz/y58FZ3w=;
        b=E4VaEFRfBw1VTYTORFePdPi8CRfoYRxo9WwSGvclEox2yzgmbKgQvG0b2EgsxMX4e5
         07tN35Umog0QydDcyeqm9x2zhOO5HhTH1sy+9DXWLk5g10L33RlAO5xZkhuXqReNTXu9
         +LwBu57N4nxhZSBXcG6ynXRDXpnsSO1R2oIXoE+HgHZxNNAfxMZvb4BvGHLt0cSiWNGQ
         GHd4D6KEr3q1jE2z0jqkbwbbCEGP51hK8VRsznOdc9eiqF+7lvF/cyQi0HoFOg2mVYNZ
         +v7zDdckSrPNt3KZTc9oqiNfckM3QS8vnKrxK2tEgxMR4F1GFa9EabyDiA1om+wrKaIp
         2OmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id b9si595236ooq.1.2021.08.31.07.42.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="282200799"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="282200799"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="600974352"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2021 07:41:59 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfU002209;
	Tue, 31 Aug 2021 15:41:56 +0100
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
Subject: [PATCH v6 kspp-next 04/22] kbuild: merge vmlinux_link() between ARCH=um and other architectures
Date: Tue, 31 Aug 2021 16:40:56 +0200
Message-Id: <20210831144114.154-5-alexandr.lobakin@intel.com>
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

For ARCH=um, ${CC} is used as the linker driver. Hence, the linker
options are prefixed with -Wl, .

Merge the similar code.

I replaced the -T option with the long option --script= so that it
works well with/without ${wl}.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh | 56 +++++++++++++++++------------------------
 1 file changed, 23 insertions(+), 33 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 7b9c62e4d54a..d74cee5c4326 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -149,13 +149,12 @@ objtool_link()
 # ${2}, ${3}, ... - optional extra .o files
 vmlinux_link()
 {
-	local lds="${objtree}/${KBUILD_LDS}"
 	local output=${1}
-	local objects
-	local strip_debug
-	local map_option
 	local objs
 	local libs
+	local ld
+	local ldflags
+	local ldlibs
 
 	info LD ${output}
 
@@ -171,42 +170,33 @@ vmlinux_link()
 		libs="${KBUILD_VMLINUX_LIBS}"
 	fi
 
+	if [ "${SRCARCH}" = "um" ]; then
+		wl=-Wl,
+		ld="${CC}"
+		ldflags="${CFLAGS_vmlinux}"
+		ldlibs="-lutil -lrt -lpthread"
+	else
+		wl=
+		ld="${LD}"
+		ldflags="${KBUILD_LDFLAGS} ${LDFLAGS_vmlinux}"
+		ldlibs=
+	fi
+
+	ldflags="${ldflags} ${wl}--script=${objtree}/${KBUILD_LDS}"
+
 	# The kallsyms linking does not need debug symbols included.
 	if [ "$output" != "${output#.tmp_vmlinux.kallsyms}" ] ; then
-		strip_debug=-Wl,--strip-debug
+		ldflags="${ldflags} ${wl}--strip-debug"
 	fi
 
 	if [ -n "${CONFIG_VMLINUX_MAP}" ]; then
-		map_option="-Map=${output}.map"
+		ldflags="${ldflags} ${wl}-Map=${output}.map"
 	fi
 
-	if [ "${SRCARCH}" != "um" ]; then
-		objects="--whole-archive ${objs} --no-whole-archive	\
-			 --start-group ${libs} --end-group		\
-			 $@"
-
-		${LD} ${KBUILD_LDFLAGS} ${LDFLAGS_vmlinux}	\
-			${strip_debug#-Wl,}			\
-			-o ${output}				\
-			${map_option}				\
-			-T ${lds} ${objects}
-	else
-		objects="-Wl,--whole-archive			\
-			${KBUILD_VMLINUX_OBJS}			\
-			-Wl,--no-whole-archive			\
-			-Wl,--start-group			\
-			${KBUILD_VMLINUX_LIBS}			\
-			-Wl,--end-group				\
-			${@}"
-
-		${CC} ${CFLAGS_vmlinux}				\
-			${strip_debug}				\
-			-o ${output}				\
-			${map_option:+-Wl,${map_option}}	\
-			-Wl,-T,${lds}				\
-			${objects}				\
-			-lutil -lrt -lpthread
-	fi
+	${ld} ${ldflags} -o ${output}					\
+		${wl}--whole-archive ${objs} ${wl}--no-whole-archive	\
+		${wl}--start-group ${libs} ${wl}--end-group		\
+		$@ ${ldlibs}
 }
 
 # generate .BTF typeinfo from DWARF debuginfo
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-5-alexandr.lobakin%40intel.com.
