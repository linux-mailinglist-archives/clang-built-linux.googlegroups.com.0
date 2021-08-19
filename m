Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQOZ62EAMGQEBQBUHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C313F0FB5
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:58:42 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id nn1-20020a17090b38c100b0017941ed86c2sf5396643pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334721; cv=pass;
        d=google.com; s=arc-20160816;
        b=AI6vokZl8gmoH3jPoPh+egw0qQ0RyKx2mucI7bS9rJPYd7zgfMRynK6aLN7htRLPbv
         LTdHSVHqlgyheOxCmbq4cYf4bXBatJ+ei+wgk5z0kmTDsBLfMyTfLlcELo0DrV1kAqaQ
         +qQUTJu/QPnWF46y3IfbxqX4R3phWNHbs5xpCLiHv6KQA06Y2lpjZ5DHETQgM03APvQO
         ymo9Fj3fbsXwOWUMsMG46iejL9AXmgw9ZlUU5E8KoCi6PTz20bdXtYcc2vOLs4aS758J
         Z6GqhCB0cwQWVWmrskYRx23PzL8M0Xd0nFGVtw2bQCfzhn+m/dSCuZ2aAs34EXgqAxJH
         RO2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=MOoQYr+zlkzVTTZ0bCWg3wcjQn3dV5stiRnGSPcmU1c=;
        b=ZqWmuKAGrD+2b0dG7/455aKuvNlPgoZGFccsehJ3sJJS/3BiOkDUYPn3KWa6EB1KO+
         3f2SCnxQpVqGaLmPGfAJP3DkP8mslHHH/QgalfRn9K3p/xi3twWgeh9yTmNFCnoM09Xd
         QNu8yM41OsJ+xTEZz0qbChYfiE/ulArfopGskL/f/BZEFv1ndmHRsVyKY9m9Y4iXOwse
         t3l9CjaB0q8aVQz6hGvegoUtRNtj8Zq+j6pc0AWyn8GSjSx9+SEcpG2I+4ubUSeGIFHD
         MQdGDV8+t92NNADrKaKqKP7xDdvS1xqxUXDEfAHZhJ7r717gWbSyOzahiZu11YcZNOEc
         ZV2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="T/yfefgk";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MOoQYr+zlkzVTTZ0bCWg3wcjQn3dV5stiRnGSPcmU1c=;
        b=VfWVWqvGpKPv8QlikaoY+9WtVQ/XRvxo+iTO7LYPWlQjfGjaW35PNDTXs+wXhsDDpQ
         i6LdJrMYw6AB+MBXvc0dtd0Znn9lm0OKSEf4E1inpugcL3LdkhQ7QHrq5tsM8LloYv7g
         Vly+z82eERyNlaiBoJg61OOfFRb5CG3Sxt0soZ/0MbD+kyAo6sIfzmPniRJiGjFxKHm+
         iv6pFsSd2EuGOeOX+YC84dOBHXHI/iLFpSnW3Bi5XAw5Pzt8D8v8EDbNjLTQLJr1VOwY
         ZrYhetvuL/InuUTKL53qQULpcB+t12HD384eoc1YWRO6VrwfyWKTrlH/6ABo3BMC+ml5
         fm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MOoQYr+zlkzVTTZ0bCWg3wcjQn3dV5stiRnGSPcmU1c=;
        b=Gnwzqgw6t3STVmRPW4Or/mvM6xrIwrfEWF7GbojdTcSorRbTdGnNHlux1H01fSJBh2
         xo/qSLKCNVijD74Y8uZlIEb9C3alt4d8lfjTZVCySACJ/kCyDMM/qS/MOvQ7d/p17yaU
         tEONBgHXHf3Ma+dkEE79pzpvwVk2Pzn0fG5pGPAoovE1CaRMhGdHfBMmqdcG9uA2hyog
         I273PZQMUOL1JO05ZOai0gXe3nUKNC83S+CjtfKtvc0Agrm/9UBvdtjpSbP/pQkO2aL8
         fgFRUc2DuXC4xa6y2KqgYQ7pCQ2Z0LqCrQk8WQDREAL7/18syy32eU70unQ1vn7onrY7
         HY/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sRiKLG8fQ7jMWiOZpxNhRqHBBkSMHCyIER0wTRREAjPRgG8FJ
	xEdUbbYemptQ7XAqCThxoCg=
X-Google-Smtp-Source: ABdhPJzEmxjAEGmwy45BM70udL89tcZhyM/fzLPiB6Od1CWUVvm+gYcsZv239evHz9VHom8o5wKajQ==
X-Received: by 2002:a62:a117:0:b029:394:dddf:6b00 with SMTP id b23-20020a62a1170000b0290394dddf6b00mr11770073pff.50.1629334721570;
        Wed, 18 Aug 2021 17:58:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls1564406pfa.5.gmail; Wed, 18 Aug
 2021 17:58:41 -0700 (PDT)
X-Received: by 2002:a63:5511:: with SMTP id j17mr11632653pgb.191.1629334720959;
        Wed, 18 Aug 2021 17:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334720; cv=none;
        d=google.com; s=arc-20160816;
        b=p396CQ8GIq2vudjIFobuUWhrRDJVw1T1oJGpb4fJpqSH1AYugRtP3LcyKMuvKmW+W0
         5d+8UmDNMKWcY83s9r7LQNIivG9EzLC6ROWgMXCV9/TRaQuBXlenSKm+dKA/8dF8DgeK
         gvEIBIy7UnPnTxD1PksSmS7KHg7+Mn9w/GU1rGevwQSPjnKamJO6c2gNDLwfwfqsEwKY
         ZNs1drP7dJjY+/llKGsEw28OiZ8GIXS6JLEsC9cOKcq+TEsgjJ4kSzop9v0YzyTJTPGq
         2yVuVjt5Ky5/KxEKbmXfwHxtinP59e0pzX77/1Qe6xapirIj1VX2gnu+QgAg1Y/TCFL9
         2zHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=VvcOubkXOX4J0f3OkqzcDKTBLlnxU8IhaGu8KDtg/Ng=;
        b=f0WJNbLtKCdEC2BZ/OD24tZf37FX/u5TIMmZRcWFtBT1BWmIPX2J3L7WXr5gEgZMbe
         GQ4qoMfYGyxAYzdBvzAzl+ck64rYOunu4WnaphlI/2eFXVmeycENAC6xKSw+kpPPPS4w
         wsGRtp6pIYJpLGG2cqrOv3/UntwOXHDKCVDmAYmpacBDS0GbRusfUQEGFTzInwW5tiB2
         deeEflDnDJK3FoJyz+6XAX/WOs1D4x0FzEp7stTXQ+XdrIYEPCLDF+Zmvctg8oYOoBP1
         EyoEEMOilk0YUOMoVYQIZmgXvgleFSnNxPg+LNEwHUD97WnLGPA09VSA1Jma2T+f0K3p
         SUuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="T/yfefgk";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id r7si133707pjp.0.2021.08.18.17.58.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:58:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 17J0vl4p017219;
	Thu, 19 Aug 2021 09:57:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 17J0vl4p017219
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 06/13] kbuild: merge vmlinux_link() between the ordinary link and Clang LTO
Date: Thu, 19 Aug 2021 09:57:37 +0900
Message-Id: <20210819005744.644908-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819005744.644908-1-masahiroy@kernel.org>
References: <20210819005744.644908-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="T/yfefgk";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

When Clang LTO is enabled, vmlinux_link() reuses vmlinux.o instead of
linking ${KBUILD_VMLINUX_OBJS} and ${KBUILD_VMLINUX_LIBS} again.

That is the only difference here, so merge the similar code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
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
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819005744.644908-7-masahiroy%40kernel.org.
