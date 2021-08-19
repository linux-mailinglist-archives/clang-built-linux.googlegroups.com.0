Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQOZ62EAMGQEBQBUHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CFB3F0FB6
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:58:42 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id gc3-20020a17090b3103b0290178c33479a3sf1906780pjb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334721; cv=pass;
        d=google.com; s=arc-20160816;
        b=UFrL30av7NST6uU2n2F7ibUN0Yw2DQ2ikBdlTm3ybQIwCvl0S5FLQHjHw5DblMM3Pg
         jX+IDOKHfW7/0wNlraetmRCzAElMMUuWUknCUXiq2UvmzPnr06rGUULOnHHHkv5QTp29
         PtGpjIdZ8wk4lLJOqDBNbgpGIqvUBgBm6sVqxHc3W2lUy5nF8QetixVfe/wBsGRl6mxr
         zsIy7Af1KHNi66IHY908dRRKWb1YGIMzAB6bmJS80XYxC1SmCUjhkS/wQwcuFi+oocqA
         IpSiwbvdWBabSQRhe/enVvx0AhKCZlFUXbtYPPu3eyJJXOqCTJiMD54lE5Ec9boNFBLv
         S53A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=S5+E/hxwjz5VyPLqlaF0mQUNwNqi709cwMc92CP164k=;
        b=a/Lzhza1FQ213NXncaqgYSout3R98OmlHbGFiephqnqLrDx8BFeAYhfUCwZMUirSTS
         Nh07Xam0EGYEXPMtiJl9p3PW5x4Gf+CzPg7UJilTJcKhKWlrRUlQw7eHvq3GaU+EnN+J
         hDAqLxkU8wT1iXzl9fvdizb6bUU07ot1peaZO9/LIn3YJNv0zhoi0IPAY03OzakQMhke
         vTspi3q3N1yeFRyxmq23cdeZOcVm+0KRBTx28TfI5Z0auHwOqoPLSMcnJWdL+bO7+xJi
         1ObWJfSSFPcNxQ3as+U9wkbAj0OZD4gN1ZAnjMFomTkzwSVojUz1kZVw4v7qq3ADes/C
         DMxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yWgZRPmb;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S5+E/hxwjz5VyPLqlaF0mQUNwNqi709cwMc92CP164k=;
        b=D7HZiUHlDOJh7vf4bBgM26ZMOzs641r2Xgy+f0vi0HPPTzsqiQ3dKuM75169gNo/tf
         dN/qm5CpqJ8IXNNa1nVkxnLyrj2l7Fi9PYFqfdk6p0WbbgbmAOZa4gtsWwvLpcAP3cxs
         O/EgyuM9cWWfumKuvxx8ea7Na+oRj59o1HFMBKSzrXcjmcfcDGTNb5E5fSAe5FfUhpBW
         0NSH7ZkYZ/eVGIsKp61x8YA3yXOTlCjQFZwcYQiOCHSUlSOMa9sSp17zK+7qSvr+D5h/
         mR5wuiRYsPtQDEo1z9a6RMtSR3fN3spfUMAMgEZKlJdsrYEzWotk7kwN0KqtGHwBBFWo
         Rpyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5+E/hxwjz5VyPLqlaF0mQUNwNqi709cwMc92CP164k=;
        b=IvSz4kBI15Dr9KcebtNZ7aeBcX6sWa5wRM8U4oeywNe7GvKiZV3dzpfaYY4tqkdoes
         GS20q6RvR2abEk6S+39BEIdrXpnCVMlLZRRyeA9L7FrDJBClEIOjIK9f8bTB5MvlHyia
         RjVALPknwZHyUu4lPCEL4gVfk0lz0FWpVGKWgvA5IEXsVM39bBN9GYsvd9itETQUdZwP
         JWtzUAN2obLNxLXiZNmQR1VfG3cocWZVoNJdXCSO/I+dJwOpNPg1S/e9B+KTInhCy2nS
         GvEYnbD5YLn78B36xh+2m2VQguxuL3zqYZEmvUhWWLFu8WMOKRvQ78HPRCL4zM7/U1iT
         S13w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TEqD6fisbPXf+q2MjPZX5BweoogU6nMQ7LKJwEOuh6n/okyUG
	mgErjOhs1jNxHGSLPs4Qs4s=
X-Google-Smtp-Source: ABdhPJw7DvY7XvsMAebRMHINfguyJu7ygEXTTiRvc2HL2ddXAk3hfaF2a7IArppB8eiQunD+8TwYeg==
X-Received: by 2002:a05:6a00:10cf:b0:3e2:139b:6d6c with SMTP id d15-20020a056a0010cf00b003e2139b6d6cmr12143150pfu.3.1629334721592;
        Wed, 18 Aug 2021 17:58:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d54:: with SMTP id y81ls1555903pfc.10.gmail; Wed, 18
 Aug 2021 17:58:41 -0700 (PDT)
X-Received: by 2002:a63:235f:: with SMTP id u31mr11698324pgm.248.1629334720982;
        Wed, 18 Aug 2021 17:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334720; cv=none;
        d=google.com; s=arc-20160816;
        b=dWJwujCAleCJR6NUorYbkIRvxVjL2iPioQN3mN8h3fhF5aDQJfT6lWBbpXo2qTszn1
         ZKCiwxN9brV/D94YWWkGwDO8U/L8ZIMGkNpjPJ1WMbnTTpjGNspZkS0htc3aVopeV2xM
         hB54qCHdjsebTkQ+UOLhH5PaRPDyC+6d8lpcNGkYDsfTmegE4K63Espq8u7NFR+h+yQP
         MkaxR70TIdHy0bz9/ooBkSO02cYvyQwNOtB540rqBIAt+QjjsZ21082WFRRzF78GJIvL
         AAR92z4+eP2yGCz1yFdwqc+sK684bUI+ajFDPmzQFZi4+lZcAzQZXSGk38/59FATDkml
         YIJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=KLWNtWoQX5iPqAI7oX4v3voqgZg5h4Fqa51BzWNUUW8=;
        b=rnitFahTrBfjAaZfzJ0yaqs4rJ7x5G4Jz+m84067CbKeFfHi5JkCVmBm715785acRJ
         fJQ8bLKEK+15LJW3Csgd6LH11LtjkqADRnTyQcfhvrrEGcKkDU61QgJ9vOH4tJMUJTlQ
         DwMuGn5lbXeM+x3G7Gfd3GK9VahbCo84+ucNLu/faRgY0W1HPLfoM4mq8DGIr9yt8OvH
         7M7NPqcaiGwlBThgeuxrSen7eNlKCG3Wr2O3h86XTA28lQwkXwKj8HbX/TRqpzvs8q1J
         ZWTgpU2TigH5n31mdEaBR218or3Me0ZLHxHMC/1fACrPVJiMTgXYz7kBg0x4WbbYcCKL
         vJvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yWgZRPmb;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id h6si166pji.0.2021.08.18.17.58.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:58:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 17J0vl4v017219;
	Thu, 19 Aug 2021 09:57:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 17J0vl4v017219
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 12/13] kbuild: merge cmd_modversions_c and cmd_modversions_S
Date: Thu, 19 Aug 2021 09:57:43 +0900
Message-Id: <20210819005744.644908-13-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819005744.644908-1-masahiroy@kernel.org>
References: <20210819005744.644908-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=yWgZRPmb;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Now cmd_modversions_c and cmd_modversions_S are similar.

The latter uses $(OBJDUMP) -h, but it can be replaced with $(NM).

$(NM) works for both ELF and LLVM bitcode (if $(NM) is llvm-nm).

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 874e84a1f3fc..97392c26ebd7 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -166,13 +166,16 @@ ifdef CONFIG_MODVERSIONS
 
 # Generate .o.symversions files for each .o with exported symbols, and link these
 # to the kernel and/or modules at the end.
-cmd_modversions_c =								\
+cmd_modversions =								\
 	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
-		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
+		$(call cmd_gensymtypes_$(1),$(KBUILD_SYMTYPES),$(@:.o=.symtypes)) \
 		    > $@.symversions;						\
 	else									\
 		rm -f $@.symversions;						\
 	fi;
+
+cmd_modversions_c = $(call cmd_modversions,c)
+
 endif
 
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
@@ -327,14 +330,8 @@ ifdef CONFIG_ASM_MODVERSIONS
 
 # versioning matches the C process described above, with difference that
 # we parse asm-prototypes.h C header to get function definitions.
+cmd_modversions_S = $(call cmd_modversions,S)
 
-cmd_modversions_S =								\
-	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
-		$(call cmd_gensymtypes_S,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
-		    > $@.symversions;						\
-	else									\
-		rm -rf $@.symversions;						\
-	fi
 endif
 
 $(obj)/%.o: $(src)/%.S $(objtool_dep) FORCE
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819005744.644908-13-masahiroy%40kernel.org.
