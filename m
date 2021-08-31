Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6NZW6EQMGQEYTSWW5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAF93FC37F
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 09:40:43 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id s6-20020a170902b186b029012cbebe7236sf115455plr.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 00:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630395642; cv=pass;
        d=google.com; s=arc-20160816;
        b=kirSv+ZFax2hCHZgUsp44SjkOX09QRrYFIOq8ieNGj+DtNDEJy+cst5jTbQW30/ONf
         lwMbdwJ5/+y8gJtaXf+TdT1/wYIOMTfItUn7OKFqn40jBJN/8xc0gy2sw+FgjDTzmq95
         e24U8e2ZnEGsNkjJaVYw+yaN4n551tLXBESR7czuj1Hme8Jg/QHL+KMGV+hHW1zao50z
         uDlf0+1dksWLGxFbgHlDpfYmrWttf0THbwZ4E4KjWAAH0zveRfaFVMoIxXPzvmmNbGDl
         38OkVhZMS9mWq3DZEmV3KgcFffysTlDZsdW1/YGxeaBo2RQ5HAB+w0M3Kb1ExlkrTkBf
         VY0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=FwF6Xe2YQ4wf1XSD61DM6Go/ogsPjsDmdvDS4INNjcQ=;
        b=R7O62Oap2XsKrFzLp4aotuw7HlP+gZ0ybTLTVTS16//I8pgIMQU5RfAKwPFQUJwetd
         Rfjs+/CxNM3YQESYXTBNM65yUBDCqHHyK0a0WI9PpZbc9qHiEX4Wy9nYtFyulyEoJwxI
         UqITF6uB3QEpjiwtVmJ6HlE6N54hwm2TIXxn/rB+FuuZLUsQywc8Y8lVutYPPKaZDhmP
         aK9CZGbd/BJqF0xinnA1K+jshGCDbu0lIB7IUFpZYVmbZSwlkvMviYlcELSPMpmN6R6B
         4pBvZpdvXoFgoKUIxCcI/ijbVUzOrCmk8tYCn9D7BGmSHCfkkc/9YGuua/foLJjxr2np
         sbKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EjY85S86;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FwF6Xe2YQ4wf1XSD61DM6Go/ogsPjsDmdvDS4INNjcQ=;
        b=Z+ErtyV1IWTkEzPzt8/h+lYv3Ym1X4U7LHISpvCer4spy/hS5/4Am1PlbB0qnCPSlt
         2cOsWsW/T0kHON8VN/fIU2IGpDq056G6WlDKiJruzZtArvp4Zuwz2je5tTSp3sRcytoX
         uBcQFrq+zVyXxIYg41ehm9IDfV6lSp2e9JFtrFeQat56Xgs0XHISruSmHZgVObw7+DHM
         rdmo9ThF9balao1YMPU8ihTZZx3JQlBiG0Cjv3eij7w6KDUJBXNWoPF95Hf8AOZSQO3n
         /9ABabkr2k0GUDwYmdIkmp7Pdygqf4bQ3p0f9FeaiMwLwkRZ9FO3xRU/nNELVYCZ70pY
         PDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FwF6Xe2YQ4wf1XSD61DM6Go/ogsPjsDmdvDS4INNjcQ=;
        b=jgzP9RyLNyTyXJm2IuLYpYBnuLLFLZdCIuETW2ZHNNFsuGgmzQxnhnKFoU+8dJHK1o
         heIrV04pyExi3vK/vMIGgPP2xxr4dlgSEcnIUNxUnqeG9WHmej/rs/Nq7E/Qvec+rfu7
         uauiDKsXfNuTaMqdd7nwNMXu9mOzP7+sidGRFO95zQBjcabW3qSdjzocLo1wF4qpHf9l
         gqRRrAz6AUR7x48uUl3vL6s9CS9tkOw7WczSYeyGp1jjs4nLqkQ2CReXXvRLz7Byj78T
         67lzb8fISpLEaURkB2tr84Rv+zvg+1gbR9PYcYAR1zTCpO81KWB3hsjD3YwfVNLko0P2
         hGSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fAGmK56Hd6hYHnDLxtJeVsG6H/ZrjGAawCVDOGNYojMsoDYGn
	sKyKGwvsJEQKitHb+ZKflIk=
X-Google-Smtp-Source: ABdhPJyHJxMNXEksTjNnMb9LmK9h6GDD/qtvoDZ9rAicGHfJYn6J7dwhXUYsy3T3XzTRw2p36WLZNg==
X-Received: by 2002:a63:f94c:: with SMTP id q12mr25155404pgk.171.1630395641993;
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:75cd:: with SMTP id q196ls7358433pfc.11.gmail; Tue, 31
 Aug 2021 00:40:41 -0700 (PDT)
X-Received: by 2002:a62:e302:0:b0:3f2:628b:3103 with SMTP id g2-20020a62e302000000b003f2628b3103mr25644828pfh.39.1630395641456;
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630395641; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfzwHGRhOLEj7K+pQ5TzgaSrN4hV6f3Y7Zwo64nC2TbVWeEdBw2ah9xapdX5NJDgyI
         BHSRUtek72lQ5VPl55XdtdRPANzXNMvVJYLqMcCJjtVtfdRAhVt+DZ47chSNOx6Upgho
         M10hnZedxUW7MxVUXdCYEip5YfPdk5VP7cMP8MKL1qMvrA62tU9/9STsDfQn6KejtHmK
         BgMLh9zaMS30bpRQ/m2rZ4fwueRSqZYuhg1Zdx/j+2qGe7ZiY6n2o+yhjBkNSSwx3MSA
         MXtNsG+wMzVMIHW6EF23KnSySLBsxBJCJNbemgfBBpRJvGYx5VmcnreSctkd7TctldF7
         S8KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=xFLGv8lF3G7O65tVH4SGLfJJLnu04rv+AUXe+aVSKyA=;
        b=VmUCqsx/WmPslOifMmzOXdb86dbwLTPQ/p+BHwsG0Tuy8lwnQ1VqH97PdlAudSQtTM
         kdaBF9rgMEY6Mwx3UXNu4IMkhZ19afH4ctYCM/HnFGWq7HfnmWL084HWMRpJI2SyY5wr
         9xDnJIDeML3jk8MVJZhVFajhmR6VwQIbMgRow5BBf33NwyJgJ8FqF6uiSXXm0tPBxGJo
         z06FWJbdYSWyKja/pdc1NYjjOTBrmrVHWMRWnJUwtrSzezwyCOgL4kyjoif5GV7QWr8z
         X0xCtzH/ThzNR7O5mkm2VMVYnPRPH7809FGanNbp6iai4zf3EOh2hU+I/ate3ufStaXR
         3iRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EjY85S86;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id m1si172792pjv.1.2021.08.31.00.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 17V7e8EX031407;
	Tue, 31 Aug 2021 16:40:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 17V7e8EX031407
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/13] kbuild: reuse $(cmd_objtool) for cmd_cc_lto_link_modules
Date: Tue, 31 Aug 2021 16:39:57 +0900
Message-Id: <20210831074004.3195284-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210831074004.3195284-1-masahiroy@kernel.org>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EjY85S86;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

For CONFIG_LTO_CLANG=y, the objtool processing is not possible at the
compilation, hence postponed by the link time.

Reuse $(cmd_objtool) for CONFIG_LTO_CLANG=y by defining objtool-enabled
properly.

For CONFIG_LTO_CLANG=y:

  objtool-enabled is off for %.o compilation
  objtool-enabled is on  for %.lto link

For CONFIG_LTO_CLANG=n:

  objtool-enabled is on for %.o compilation
      (but, it depends on OBJECT_FILE_NON_STANDARD)

Set part-of-module := y for %.lto.o to avoid repeating --module.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 21b55f37a23f..afc906cd7256 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -236,20 +236,26 @@ objtool_args =								\
 	$(if $(CONFIG_X86_SMAP), --uaccess)				\
 	$(if $(CONFIG_FTRACE_MCOUNT_USE_OBJTOOL), --mcount)
 
-ifndef CONFIG_LTO_CLANG
+cmd_objtool = $(if $(objtool-enabled), ; $(objtool) $(objtool_args) $@)
+cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(objtool))' ; } >> $(dot-target).cmd)
+
+endif # CONFIG_STACK_VALIDATION
+
+ifdef CONFIG_LTO_CLANG
+
+# Skip objtool for LLVM bitcode
+$(obj)/%o: objtool-enabled :=
+
+else
 
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
 
-objtool-enabled = $(if $(filter-out y%, \
+$(obj)/%o: objtool-enabled = $(if $(filter-out y%, \
 	$(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
 
-cmd_objtool = $(if $(objtool-enabled), ; $(objtool) $(objtool_args) $@)
-cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(objtool))' ; } >> $(dot-target).cmd)
-
-endif # CONFIG_LTO_CLANG
-endif # CONFIG_STACK_VALIDATION
+endif
 
 ifdef CONFIG_TRIM_UNUSED_KSYMS
 cmd_gen_ksymdeps = \
@@ -289,13 +295,13 @@ cmd_cc_lto_link_modules =						\
 	$(LD) $(ld_flags) -r -o $@					\
 		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
 			echo -T $(@:.lto.o=.o.symversions))		\
-		--whole-archive $(filter-out FORCE,$^)
+		--whole-archive $(filter-out FORCE,$^)			\
+		$(cmd_objtool)
 
-ifdef CONFIG_STACK_VALIDATION
 # objtool was skipped for LLVM bitcode, run it now that we have compiled
 # modules into native code
-cmd_cc_lto_link_modules += ; $(objtool) $(objtool_args) --module $@
-endif
+$(obj)/%.lto.o: objtool-enabled = y
+$(obj)/%.lto.o: part-of-module := y
 
 $(obj)/%.lto.o: $(obj)/%.o FORCE
 	$(call if_changed,cc_lto_link_modules)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831074004.3195284-7-masahiroy%40kernel.org.
