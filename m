Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBC5L4CJQMGQEAY54FEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE8B51EF22
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:04 +0200 (CEST)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-edfba5fa89sf4907202fac.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037003; cv=pass;
        d=google.com; s=arc-20160816;
        b=WBzLnhedn8KhL8VE6cyzOHzkLfD2d5A/zomc8GX9TwIWS36SUYOFT7qpSme/KByqoI
         XEioH7OHwUbe1m1hM2ZLApWEnxgJ5OjXRZ1uZ5IO8Cvl5ZGT55x6w5t2HiTqlu62L+gH
         dh0x+To2NTl2PIXdGrb8helokFZWrfKeR2ZPsoTwWNHzfvPGXAwezvvkWNu0vQNCEFGj
         qXvF50qlAX3kwD0QcgUrTqvoCu+ODhn5QUfEFflS8QrnHOZcLWuSskKILS7R3YmA1V7s
         UTPA0RNRz4RKEG0cQQeujoXpayT7PwN/oBKrKl1fg6an00fEq+gPl1phgVA7O66S1/P+
         DeoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=wJSijjH+OU6jtHYhhTiJZUM6amrqu4HQ6y79VUmQYKo=;
        b=WUnrApPV+EoDo/2jD/Tt214CVyYDgD9IzpEDZtIgqMfftyuHWKeaiRsnQa4txHCBUI
         19troC0kMwKwzu6YLEaY1Rk41wUkw+YkPa+bOdpprlSQYQ3jI4QUsc0rSMW8OcKh+n4i
         2Y/vaOaGADnOIlhK13tRsQEJ0oBuF88muQdMl2HwusBGVrB4OZDLDoktWHP4ztndWjUa
         c/0GnXoIDn/Z3cgzRz+YscxEuvhRKeOGF2KwDwiWF0pagBfCTPozLN/hC1LMC3E8kw6D
         vIequ/zqexeqNOQ+IxKu30ZjHzWkbfCaZnnF5W/fQoBd342kz1+75/q4q8avC/7tGSL3
         fqiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gvhxLQ8m;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wJSijjH+OU6jtHYhhTiJZUM6amrqu4HQ6y79VUmQYKo=;
        b=RUJjU87a/X462v/Ze0pM3Eb6k5+A2NX3dAS04KngYtZlaWHCYIfNWbWrHEcJbmvlzh
         Ixwb+bwDvOXJ+Z4UiOmLTCamp7Vm4tvKWrtc2WR9nnm2N7p08F3lHH/nVL9DRenzsA6g
         L8zyMvJ7XYykqapSuBzy67NXm0tLNNL9frZhrtBeIb/mDWogXkGibH57XhffPRLkj1zz
         qwsIFEVOW55dBLOj9G5j9g/7SvHkXaNjNaw7QVIRnLLm+AAwMqfH0tS+xJLRE9MB3s8T
         mTHlaAa1Z1CtMtX3sHjIdUFP3cMZU+62IEJb+JoeJ5krlCkGR045XzB3hVAaoVTO18se
         wNuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wJSijjH+OU6jtHYhhTiJZUM6amrqu4HQ6y79VUmQYKo=;
        b=2S724YKmODWru5bOZRkKocuy0K87RGXjDS1raLWhy9yGWYhE02GeLTnEcvfpTDujfb
         nkIRcuEqkkqGR+TdPF3C65e8iQf1JqmsivyfpNy4eEM7L8uVcKl3b3icSaet17kNSAow
         byNLg9CK8GpKxaJWXoFCsgFmHdx/6v6ay4Zqf4OX8T9aWwckc9j9/k0/z0PIyUs4PDbV
         dYYmEl4H/AFlwTvs2JemYp9SXJT0gFwqKcicAC9wibbfYrj6nWBSlY0mYbhgaSIojXeP
         qyO9Svvk9YeT5mpk6yccg+RMoSFc96zf9pKla7zldNpCAJ07CmQkKqq7yJW5OIuX9xCQ
         C3Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fNNu0+hawE87bD/B/XsA1I4xnLyVqaUWcEpXBhprZV9ZyrqUj
	DDHzsWwT2nHRwMU+dk0My2c=
X-Google-Smtp-Source: ABdhPJwYvnreiCyLqj5XUTjYxcsEC2Gcw94plkSRCfO25o+Tq+15v1IwyNs0MSzScHv4Q0Z37JC47w==
X-Received: by 2002:a05:6871:79b:b0:d3:4039:7e7c with SMTP id o27-20020a056871079b00b000d340397e7cmr8824376oap.121.1652037003299;
        Sun, 08 May 2022 12:10:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:b387:b0:da:ea30:ee8d with SMTP id
 w7-20020a056870b38700b000daea30ee8dls4768513oap.0.gmail; Sun, 08 May 2022
 12:10:03 -0700 (PDT)
X-Received: by 2002:a05:6870:6097:b0:e1:a94d:9a38 with SMTP id t23-20020a056870609700b000e1a94d9a38mr5527777oae.191.1652037002927;
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037002; cv=none;
        d=google.com; s=arc-20160816;
        b=dr3fNc3aQrD1K+x1TuDqfmDnMMn7r9wdJD111tJLgGxRsqnamIjacuX0Pr1ao4i56f
         9x0nrdEBlbo0WTM/SjMX3NfkhzO0OnWC8e0NEnue3jYnwLEYLTdgo9a3OGDt/lyBmrJ8
         s3vLRny1zUKmOUiTayYaQjiIDGSm6xLVFOrEnCALiuss/ZHVjCvgYEFeGYjT6yWWDBTy
         ASYWP2O/V4xjXMrY7/ZIvc7AQUFymGRy1SK9r6QZU917PhZllVv6GXEtBdVnIMzgC+Sk
         vx4H90QolqxH8VOMTNNjYUXtReksup4u7Orw3bPtOgLCzqrYolESZCkFCeNrlY1/iYv3
         S99w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=8r++Xnr2CMXuiCWlDMnEsU+bU2kJZu8IuhIUFOy1SM0=;
        b=w0BuHcayiGfkt8n77xjJYnHz+Ehqh5H6xeCBPjKdHGurdIx4i1s/3OhC0VP4AGJjyw
         1aj18/waG4I0pH8GelUIrFCs/EdyNfpiDnb9U7cWwJ/Iz1A0ugyij69bv7vB3NmTclrJ
         0o2qVHZOBIXFu7V69G4qNpsI45M2wATSLjMT1KnspABeXXa6UmMRj+2ZatPAIgN0sp5L
         KetrKdspinZU1TophHzNAmG4iMfPC60zf8oy+ZbgSnMWOeFXFEUdEpIwsebzbcfsufRi
         x3s27K4jg1eOfVgAZPVOA/Lmb4YFdkcMQ6ihPrRURKOk/jdFqTQYkwA7BxmtFjuYjoJF
         OzgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gvhxLQ8m;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id x30-20020a056830409e00b005e6c62a483dsi587020ott.0.2022.05.08.12.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSU030019;
	Mon, 9 May 2022 04:09:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSU030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 07/14] kbuild: stop merging *.symversions
Date: Mon,  9 May 2022 04:06:24 +0900
Message-Id: <20220508190631.2386038-8-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=gvhxLQ8m;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Now modpost reads symbol versions from .*.cmd files.

The merged *.symversions are no longer needed.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

(no changes since v1)

 scripts/Makefile.build  | 21 ++-------------------
 scripts/link-vmlinux.sh | 15 ---------------
 2 files changed, 2 insertions(+), 34 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index ddd9080fc028..dff9220135c4 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -390,17 +390,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
 $(subdir-builtin): $(obj)/%/built-in.a: $(obj)/% ;
 $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
 
-# combine symversions for later processing
-ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
-      cmd_update_lto_symversions =					\
-	rm -f $@.symversions						\
-	$(foreach n, $(filter-out FORCE,$^),				\
-		$(if $(shell test -s $(n).symversions && echo y),	\
-			; cat $(n).symversions >> $@.symversions))
-else
-      cmd_update_lto_symversions = echo >/dev/null
-endif
-
 #
 # Rule to compile a set of .o files into one .a file (without symbol table)
 #
@@ -408,11 +397,8 @@ endif
 quiet_cmd_ar_builtin = AR      $@
       cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
 
-quiet_cmd_ar_and_symver = AR      $@
-      cmd_ar_and_symver = $(cmd_update_lto_symversions); $(cmd_ar_builtin)
-
 $(obj)/built-in.a: $(real-obj-y) FORCE
-	$(call if_changed,ar_and_symver)
+	$(call if_changed,ar_builtin)
 
 #
 # Rule to create modules.order file
@@ -432,16 +418,13 @@ $(obj)/modules.order: $(obj-m) FORCE
 #
 # Rule to compile a set of .o files into one .a file (with symbol table)
 #
-quiet_cmd_ar_lib = AR      $@
-      cmd_ar_lib = $(cmd_update_lto_symversions); $(cmd_ar)
 
 $(obj)/lib.a: $(lib-y) FORCE
-	$(call if_changed,ar_lib)
+	$(call if_changed,ar)
 
 ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
 quiet_cmd_link_multi-m = AR [M]  $@
 cmd_link_multi-m =						\
-	$(cmd_update_lto_symversions);				\
 	rm -f $@; 						\
 	$(AR) cDPrsT $@ @$(patsubst %.o,%.mod,$@)
 else
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 6aee2401f3ad..bc94252e920c 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -56,20 +56,6 @@ gen_initcalls()
 		> .tmp_initcalls.lds
 }
 
-# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
-# .tmp_symversions.lds
-gen_symversions()
-{
-	info GEN .tmp_symversions.lds
-	rm -f .tmp_symversions.lds
-
-	for o in ${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS}; do
-		if [ -f ${o}.symversions ]; then
-			cat ${o}.symversions >> .tmp_symversions.lds
-		fi
-	done
-}
-
 # Link of vmlinux.o used for section mismatch analysis
 # ${1} output file
 modpost_link()
@@ -303,7 +289,6 @@ cleanup()
 	rm -f .btf.*
 	rm -f .tmp_System.map
 	rm -f .tmp_initcalls.lds
-	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
 	rm -f vmlinux
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-8-masahiroy%40kernel.org.
