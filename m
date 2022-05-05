Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTPXZWJQMGQENOWQ55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id C846251B8B7
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:02 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id g4-20020a4aa704000000b0035e9501e43dsf1759281oom.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735501; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oxxec5oJqdhECsRwBbZQ2EDuZLxs4kwNSoaEZELaDwO07uPTcNjLRAKXXdiCo6itp1
         ZVNMud0er1poRIRsNhe1HMnc4SZzTB5EQY81kT4j5dYK3D5tO8gMLZT0tcGXBr41LlKq
         lrBBu0hNnAL32kTVAk92B3jtBpIie+KULXMyVujVeUrJC3IlaJXrQ9E3M7s1Odrv+Sr9
         7HW+gdBwEoKh29TGulNO0OWe1tfg/jlVFyy5IGGWWY33LMCXkVZ4vgTYZJFUUVia3a8n
         jO1+PB7JSNu1PPS8Z/0zE/qmHH4jxgXsaLr1BK7MvrWoTwk9uXpvJhWKWqbZiYr4FXJU
         Krxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=aHzncygDqpvKwDqI4xzMkcz2PmPClj6cQaCNfhva/i8=;
        b=idE8TLcmjDJ+e/x3gb44S6Kvq+wvc1D03G1hZYLm8CiXVCe68hnd2Ho8Apt5goI/Z3
         o7kWonP95+yxx8+Mruzh5kUgZkPN3AhQFVKPq2Dg/95XIhQ7e9rFhMwnclzZJ8Fwwmma
         zdHP8xebZplFETWFqcPrqXL4Buwqi+DoMfPrlCQmxbP1boBU6f7bUgmpuwzAFVdZuYjh
         RMlhBNTdR/vjDRFJRtue080LQyUhBEAEeCISPw7OfrnaDxHThB66qfcDSDTBLEd34CNn
         gJiXgG8GfTkDNI01sLKBumar5+HG6han3mrlxANkbcIHgmHxmFiauNFb73+snltpB/i+
         LNNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="LKb9i/3w";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aHzncygDqpvKwDqI4xzMkcz2PmPClj6cQaCNfhva/i8=;
        b=BvZab1pHGFi/DU90WCzEpJK1YPLsgTtAa7TwEsc6x1/MyUV28KGEhZYiG5+a+8blcj
         nNCwWMcjqEdpmbmoBlYwmY+/NupTbjcISxaDF4G/NxK6lUkLopFzivKoBKxC6oYQUrhe
         FflpFbllccs2UvrOl+9azZyIfb6WpENOAavwyl02Gc40og4Rq3Rr6RBLzcsDdsvNx4F6
         vWlrnRxjBykHS9R9GcfF/6pDCLWDMH1WQ2CVQPIieB681RX7yveiAzJrkrqtmwH4Hx+g
         MovbPyXmsRPpv8SLZH5qWhEE38fydVXfJPjBlLTC4I2eG63y07Dxkki8a8Pl45lHheZX
         E1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aHzncygDqpvKwDqI4xzMkcz2PmPClj6cQaCNfhva/i8=;
        b=kzat7z5KNEqxrIGceG1vik+YHHabSeuhuZM0UuYCs6j762nnz/SIqLVeZ3b+JGvw0a
         Fa9ssKM1pLQ/I8+Ovc2BbL2bBnm9ZpxgEYlEoA5OjTFMD2rnONU5mwDHjZFHbc60nLdc
         bGozd4aUvvG3qHKi3okvPceK5/SwvgO7iXArSeHLLCrzRKDrQCoatZjF4JlrHyylDtep
         baYQ71mTted+8n8Thr6Hn7a5bHAZJdbzwCsXYyIqPaa1OtTMM8lImxyFuEGNBcNMCJSM
         +iSLeCep9LQ2eKIvL/ZPfma+GsJ2xmEws+CHOWBNR59GLWPeTDHi4OAmlugQaTAXPDIG
         1GyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J+czkUaKBDkUmVQjYiU0YcIO020cfV9HbyQf1yR5tQjXYiWDi
	KhCy81wUNNQvkzIjl/WqEO4=
X-Google-Smtp-Source: ABdhPJyyn9FBhz/9iGPiF+1NXgLY+HDcLvm0TkUdnT0XPhno8+oC9PJ5SS7msvXr9JleGxydr1vONQ==
X-Received: by 2002:a05:6830:9c2:b0:606:1e0a:cc8d with SMTP id y2-20020a05683009c200b006061e0acc8dmr6107758ott.265.1651735501700;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d6:b0:326:72d:fd2d with SMTP id
 f22-20020a05680814d600b00326072dfd2dls1647404oiw.3.gmail; Thu, 05 May 2022
 00:25:01 -0700 (PDT)
X-Received: by 2002:a05:6808:2121:b0:326:7593:45b6 with SMTP id r33-20020a056808212100b00326759345b6mr640260oiw.181.1651735501380;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735501; cv=none;
        d=google.com; s=arc-20160816;
        b=y6uX81upxTc8kcWBzPh8aiQGbIIzhqCuJXEUiaX768PBcSsi1b9AFxADVHr1tSHgjk
         Inbfj6UJqpEZjJ7IFTNmxkU6hsCWY+y1TvX5kKrtXeCaBCEdA/SMoguuuNGq3yGOGze0
         RJ2YuvE68eK/WTy3IPkdtu7TMpIInDDLvGSIeakXIRiFFaEwVZDRBoCi+bc/GW/7vjBK
         9NF/EK7jNGFsywcAoYsv/SGMwheaMJKI8Oo/EPYxi4sTl4Lvs6VYQdP2AXMhY7VOiaCi
         RsQYyroVpExrN/keEq9BBRm0kU6NJrmur7qh9B4LVpEZgDTkXkKS4Ti7pJobbBRDapaT
         d6kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=deMcQZf2rwvxgyQGD7in8mESLk5fxT6vorLWV4tne3Q=;
        b=x1GSy13FsWFrJlJIDPx+27NDFLXJvwlTt80DizxIk1EqdLR2ifu+AdqwP7v1pU2h4E
         0h5H0JHg11J2OimMLoc20rXdgeAiRSk5nXoARR5M/lskcJ6SxWI7cJQTJutsUgLlPMg+
         VOUhzP2szzlHrinYmhMS4lKMe2eeJiXTUscNoX8cRW5mZXEr+9Dl5Ig2IvpdEwv3hnyA
         eL40p2FEbFB15iWnKUVoMxE1G1v1niVOgeEfDcpID3xKrGU1vbCjdD9HVQj0uNlsOt9i
         0u9JdEJEpVgyOfxr3kjV3Xv1fIWAJr7Oe/Oaraghzj66WrWnig07UZ17XzlG7M+YF6Ce
         byAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="LKb9i/3w";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id b5-20020aca6745000000b0032649611da3si49269oiy.2.2022.05.05.00.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenr019426;
	Thu, 5 May 2022 16:23:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenr019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 09/15] kbuild: stop merging *.symversions
Date: Thu,  5 May 2022 16:22:38 +0900
Message-Id: <20220505072244.1155033-10-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="LKb9i/3w";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

These merged *.symversions are not used any more.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
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
index 2742b7dd089a..07333181938b 100755
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
@@ -299,7 +285,6 @@ cleanup()
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-10-masahiroy%40kernel.org.
