Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBIV2W6EQMGQEMI72B7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB363FC381
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 09:41:24 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id y142-20020a627d94000000b003f27143ee19sf249909pfc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 00:41:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630395683; cv=pass;
        d=google.com; s=arc-20160816;
        b=R018ut28R7y9cjmx+C7tTAHKKXsUhin823dt/Z4GdjvE8FnE2qveD/hoCfQDp/wM3v
         aUZQBoiSrFij7zTKg94yvslRuYun/ZkF52IOnFX9LHGBemEvTw8Qn2qBPH9PED/MwuUN
         Blen1+pk1Sx7sa+65Belixz3kG0xI9eRAp7A4QoPbI8nBQmZoVtOOdyvuxdUaYP7d67p
         9e0d5eSpd24HSLnGDN/t+fESn2ccWq/wG2a0czZSztIsxvsUAd4+YOnbvUvLWwsUrGii
         ZlzsOa3euGHKFGH4gipTKoDS+bvohmL/Dryv4jZGoVFk/c9NPqGz/1QnmuMAl80Zv6kN
         JdBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=jzC35T/mTM2BMPr8GLGusFPPwQOV+UlTvzWRiSuKR8w=;
        b=rmLKZtyox+PVCqytLJpkuTcUBfXGaHT3ksk1Z8Mo63cJdkDxWrdmXF/l/nRCEo0kow
         DNJ1YL+w+zUKEJZ44EDin/UM1ci9KW4emN9JznQNqmoWzbrsXuIVa7wawoonkyuHmCX6
         Wp+dIuOIg7x2f/Mla6ziwhnKrMhOjdR2B371iz23ytgHaqezD3pN2xfrdqBWvD9TCn9T
         EY/ZvjphhoQ0DAcUmOl1S/GhNumSPDpysh2I4Zh48eRB/jSJdoPKS1ZOXlLEFTwR1UoD
         nORAvdoH7Hz8V1sBW1Vzf04GP8ebFgBtRM2M3i10X/l9+00a/+LtpS4GNMeogcN1IljB
         x6zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=NvwuNn67;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jzC35T/mTM2BMPr8GLGusFPPwQOV+UlTvzWRiSuKR8w=;
        b=JVXTib86k739Er99SOjliDeOsdbBmDZ4I09dIvnwN7g5HikCcXP8eyIoizO6HZd9A8
         k9NMc1KDAo4BiZMCqSkQWy1WbCEZ5FPDkDRk0bhysIwChQDJcLih44x16h5xsoqqHhiH
         i+P8PjGNPitlUVPvh5pUmghdHaML17oobCD73J6RNMy9iKjdw44TRdNrSW3bwY65do/X
         GECk4t3mQQQthOP7/9pUNFFUsOIsXPCAQkE1ryBaJOtDLWec6S/eexmT6GBvW4L3A+45
         649kuMILPgj1/ut02zxOp3k+brMnL5/xkOPXtSTN92lMhqPj2nfDyTo+EJ6nvEZQ4ovN
         sRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jzC35T/mTM2BMPr8GLGusFPPwQOV+UlTvzWRiSuKR8w=;
        b=XYVG/f1Vv36QqyCQkNq34/77RIBLRdOQgfYR7k0LL/rZrVM29Zn+mvU6z5K0bXW1Ca
         tzjR5dnAmQ6h4y30bw+11scW1jNPAijwQ/x/9wkEvPlhXtN8itGhUQP9fTOj98wjZKvC
         zx1/+5Dtn7fO98vN6JA1wd+iyrSgxkvEq1SfUbz/2VCA5hIMCeB30R8c4iq8P6x8Ye7J
         8yg6/1WF5O5O8wFZpgfN2O4AL1WzbJ+uNI/wnNeQkih+PZ+oY+ek8Ji8q6VePHBZPeP2
         SOPa+tLnZ4741uDRwDK8kRB+Ehm9v+QTQ/B3vwJQlgjNI+9K0OUMQuoS8J4rS75q5yb5
         UbbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vYpUh+2eHBSggn6zd8weuRJ2eASNshm6TAwDb7l6q6rciBU+X
	EHfZvP2iaW+4Z7GTXp80Vls=
X-Google-Smtp-Source: ABdhPJxq1wjJNnPtPyN0nAKVG3K7PYK+2meHmoXe6QQRZ+SvDYmG4ebOxWjVdzhuouW2i5/SEfGhmQ==
X-Received: by 2002:a17:90a:cc8:: with SMTP id 8mr3906366pjt.194.1630395682831;
        Tue, 31 Aug 2021 00:41:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:dacd:: with SMTP id q13ls3699732plx.2.gmail; Tue, 31
 Aug 2021 00:41:22 -0700 (PDT)
X-Received: by 2002:a17:90a:448f:: with SMTP id t15mr3807748pjg.21.1630395682256;
        Tue, 31 Aug 2021 00:41:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630395682; cv=none;
        d=google.com; s=arc-20160816;
        b=obrvkoFF4msZYJZlwcrl8ar9ArAwzW8QzVzR3TWvZCUgmTDgifVtyFtweto/OSxlHI
         1cruioGwtlxjOuvUAVFmP1lturi8hOcNzQxx9/QZs44RYInVsMyLg9P8i7G4TDDFFdd6
         OKiN35sh5NYKCK/GLzB0xzo7XIF4qjIghbnQ2n5GeMPfgdiE8Y0kW5Mb8tSTCjMODjme
         q7dptiI5BJaWKB+v2MF3WCtNNN3GmLeDrCCU+i4M8KGa5//HIP3Edk35QVmqY1Sd++06
         JJ/0WXqUe+/ZRagQFbeJB2wNT7Av4Tk7OLpe3Hg8ThuyBwpdDU15VTUkHshVZBR2DeVR
         BqlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=3akODLEQeOhOL8o5pclirX6TlmJfXCQyPTiSEAbOozo=;
        b=NrQXO2X/n8y1Bdlul5DUUBeB+sFyaOv7UVpEHoWnS7zvtzWAcEdI9eoERgd4ojFtbs
         GNH29BCPwweYDFueXJ7Pe27t4dCBsbhErU6qpQlOi0NUoU4UZGyPrR054SG1pOKfP61W
         D1QfztY9cgjpjcBFrpDvFrBe3MPEGaLwBQYpvz3qNM2xMoJWknPK3L9CrMaunyNyw3BV
         pSKvadDjKc8DEUuCgRhgesCG5ijXaGwV5PQH+ooC3WYBcxIiM2HGruzITohjhxom/YuD
         uAv5YwaVgsCRrVY9zjsOdSXBPAVXSW2IUfLNu3ccD1NneF0CS4HYVcT22CChJjNQyVkV
         RHcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=NvwuNn67;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id w9si163838pjb.3.2021.08.31.00.41.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 00:41:22 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 17V7e8Ec031407;
	Tue, 31 Aug 2021 16:40:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 17V7e8Ec031407
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/13] kbuild: always postpone CRC links for module versioning
Date: Tue, 31 Aug 2021 16:40:02 +0900
Message-Id: <20210831074004.3195284-12-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210831074004.3195284-1-masahiroy@kernel.org>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=NvwuNn67;       spf=softfail
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

When CONFIG_MODVERSIONS=y, the CRCs of EXPORT_SYMBOL are linked into
*.o files in-place.

It is impossible for Clang LTO because *.o files are not ELF, but LLVM
bitcode. The CRCs are stored in separate *.symversions files, and then
supplied to the modpost link.

Let's do so for CONFIG_LTO_CLANG=n, and unify the module versioning code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---

 scripts/Makefile.build  | 32 ++++++--------------------------
 scripts/link-vmlinux.sh | 22 ++++++++++++++--------
 2 files changed, 20 insertions(+), 34 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index b94dfc87b7fa..50a6765c9a14 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -158,17 +158,12 @@ quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
 ifdef CONFIG_MODVERSIONS
 # When module versioning is enabled the following steps are executed:
 # o compile a <file>.o from <file>.c
-# o if <file>.o doesn't contain a __ksymtab version, i.e. does
-#   not export symbols, it's done.
+# o if <file>.o doesn't contain __ksymtab* symbols, i.e. does
+#   not export symbols, create an empty *.symversions
 # o otherwise, we calculate symbol versions using the good old
 #   genksyms on the preprocessed source and postprocess them in a way
 #   that they are usable as a linker script
-# o generate .tmp_<file>.o from <file>.o using the linker to
-#   replace the unresolved symbols __crc_exported_symbol with
-#   the actual value of the checksum generated by genksyms
-# o remove .tmp_<file>.o to <file>.o
 
-ifdef CONFIG_LTO_CLANG
 # Generate .o.symversions files for each .o with exported symbols, and link these
 # to the kernel and/or modules at the end.
 cmd_modversions_c =								\
@@ -178,18 +173,6 @@ cmd_modversions_c =								\
 	else									\
 		rm -f $@.symversions;						\
 	fi;
-else
-cmd_modversions_c =								\
-	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
-		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
-		    > $(@D)/.tmp_$(@F:.o=.ver);					\
-										\
-		$(LD) $(KBUILD_LDFLAGS) -r -o $(@D)/.tmp_$(@F) $@ 		\
-			-T $(@D)/.tmp_$(@F:.o=.ver);				\
-		mv -f $(@D)/.tmp_$(@F) $@;					\
-		rm -f $(@D)/.tmp_$(@F:.o=.ver);					\
-	fi
-endif
 endif
 
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
@@ -358,12 +341,9 @@ ifdef CONFIG_ASM_MODVERSIONS
 cmd_modversions_S =								\
 	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
 		$(call cmd_gensymtypes_S,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
-		    > $(@D)/.tmp_$(@F:.o=.ver);					\
-										\
-		$(LD) $(KBUILD_LDFLAGS) -r -o $(@D)/.tmp_$(@F) $@ 		\
-			-T $(@D)/.tmp_$(@F:.o=.ver);				\
-		mv -f $(@D)/.tmp_$(@F) $@;					\
-		rm -f $(@D)/.tmp_$(@F:.o=.ver);					\
+		    > $@.symversions;						\
+	else									\
+		rm -rf $@.symversions;						\
 	fi
 endif
 
@@ -434,7 +414,7 @@ $(obj)/lib.a: $(lib-y) FORCE
 # Rule to prelink modules
 #
 
-ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
+ifdef CONFIG_MODVERSIONS
 
 cmd_merge_symver = $(PERL) scripts/merge-symvers.pl -a $(AR) -o $@ $<
 
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 0cc6a03f2cb1..366af3a9d039 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -52,8 +52,7 @@ gen_initcalls()
 		> .tmp_initcalls.lds
 }
 
-# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
-# .tmp_symversions.lds
+# Collect generated symbol versions into .tmp_symversions.lds
 gen_symversions()
 {
 	info GEN .tmp_symversions.lds
@@ -75,14 +74,13 @@ modpost_link()
 		${KBUILD_VMLINUX_LIBS}				\
 		--end-group"
 
+	if [ -n "${CONFIG_MODVERSIONS}" ]; then
+		lds="${lds} -T .tmp_symversions.lds"
+	fi
+
 	if [ -n "${CONFIG_LTO_CLANG}" ]; then
 		gen_initcalls
-		lds="-T .tmp_initcalls.lds"
-
-		if [ -n "${CONFIG_MODVERSIONS}" ]; then
-			gen_symversions
-			lds="${lds} -T .tmp_symversions.lds"
-		fi
+		lds="${lds} -T .tmp_initcalls.lds"
 
 		# This might take a while, so indicate that we're doing
 		# an LTO link
@@ -179,6 +177,10 @@ vmlinux_link()
 
 	ldflags="${ldflags} ${wl}--script=${objtree}/${KBUILD_LDS}"
 
+	if [ -n "${CONFIG_MODVERSIONS}" ]; then
+		ldflags="${ldflags} ${wl}--script=.tmp_symversions.lds"
+	fi
+
 	# The kallsyms linking does not need debug symbols included.
 	if [ "$output" != "${output#.tmp_vmlinux.kallsyms}" ] ; then
 		ldflags="${ldflags} ${wl}--strip-debug"
@@ -332,6 +334,10 @@ fi;
 # final build of init/
 ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
 
+if [ -n "${CONFIG_MODVERSIONS}" ]; then
+	gen_symversions
+fi
+
 #link vmlinux.o
 modpost_link vmlinux.o
 objtool_link vmlinux.o
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831074004.3195284-12-masahiroy%40kernel.org.
