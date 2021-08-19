Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQWZ62EAMGQEP7ZUGUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 193683F0FB7
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:58:43 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id b24-20020ab069180000b02902ab6e795eabsf948986uas.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:58:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334722; cv=pass;
        d=google.com; s=arc-20160816;
        b=xYqerSD1/6VR7c9hM4wUWbE4VQ1ISPeycDHq3GEGSePiu3dtRsVAoxwThhQZT3SgYG
         Aycr+cedOoB6o7/t7o9FeRGf4a5/PlrPuvtv3FuTzdUrmRHlZOjozxfuo83lcgjk3FiU
         j5hpUfATLBcvgOA6Om7DkfB5oxKElCQgOrDAq7Wn2/Iq6l5Q73itiC+C9UaTPYluFpOU
         x2chE54kKRY7kedRvZgw//7bWZZ6hIRxK1b7KHB7skGZVDtkqV3YOGvuYmrGoNGz5DJT
         RHv/W3ztmGk6QwZ/GKvHrQmyvIx/K4rre3rdtWoBVKJ9D0jz0WwTti2BPXCriaxYp2dN
         MzoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=yuTWKuMl4hKR5c+fvD6oMZzdodvoduubB5w9gzl1u3U=;
        b=aY3pfuK9z4vU0K33ZnmjLY4Zlh/9y4PVOC43tz6NC1DnwHVopQepaVzZYpD2p8ceWj
         2o3gAbHbWWi8sIGEq1u2gB8XX0E6d3s+S1HGlVlQ1XmQmoD8we/laYuexiwvO5ARYMmY
         kr4hkh5vTvf2GKrRNdGuosakFeccjXgEgVR2DgVZRKUgFBvD4QR5CpOxHAff3wqVp6ba
         ngJWCuomckJ209QtXBRYeIEaEvRXn8Uz1nCxt22QZlH9asSNlL2LYv1gv8y9bTFw46IS
         PtwoMoLwIg1j2tllPc/pgas6BoHFeyTKp53eER4M0yUJdTEZNP4YcgE5UDPL/RlVDM4o
         HaAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EVYycanf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yuTWKuMl4hKR5c+fvD6oMZzdodvoduubB5w9gzl1u3U=;
        b=Hd6XYd2v7OG8YIeryHcnZWl3xbjslIYZK1lJg9sQQ7AgQTyzL85JxS7wPpPTOs9Rzm
         mwyBpJc2FNziLTfT90jSNBGCMYPP0blUZtdir97PpyxMf8H42XvU9mEDvbg2Av5hKYjY
         YIqgA7epfZl1/n/LkhzOkM1FhhynXpHkSlQYltU97fiMRGQiTBCRxtJpW/Kfys13gvSD
         puGSVu363SMlTk73R0UqZxOgtWv6mr21j8E4BgY1X6OBh0GxIMlB/fmnEZk9vxnDeFQ6
         dIO6llefBmfWRwrV+U02SXVAMtCgcX3SSfmQE1SjqSedTdtUq+JRhAp7lwbZyYxciNlw
         expw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yuTWKuMl4hKR5c+fvD6oMZzdodvoduubB5w9gzl1u3U=;
        b=A7MAjADdlgVjiFBjOpZwDiEhT28Xh5AD/N4SLUOVKaawBaVUWRCftq3spD/bple8EQ
         y9xgVbgv5yeTAb0AdooDXxwa8QTMtIG6x4pGnGufkqCGQ0Hj5lxlw6c6Ui61S39bvMAo
         viPEw4AlGYrsC8zFfpwA8TL0+v/ZDpv0pHZk9NXMY8T6SGQHrGqV5JZwqCXhsixtLKYm
         g13snl9oQveKXv45lozdliizEE1Vwru0DiGtb7/OjoqUAUBMTf3B6lyG0iQSXdppe7c5
         2o9CfgWOvHyq+OCxrD22+S4BLQcoJxT9i/5gmUve55ugwUPf+JO5JZyAYDk18YIYk43F
         Y0Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CjDU51eyZIhWIRVgwj56ynhMKvlec1TrNNY+4jLvV2M8vQH91
	fsH7fYutoAbdwqdm1W6szUM=
X-Google-Smtp-Source: ABdhPJwM236cq6+HdxCegPNts+uoYQxTtAt/deCOmS+GHCrpf/aBQlmawgJ21mdg1brFAmEjErnsjw==
X-Received: by 2002:ab0:54c4:: with SMTP id q4mr9121551uaa.74.1629334722174;
        Wed, 18 Aug 2021 17:58:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:5e03:: with SMTP id s3ls729112vsb.11.gmail; Wed, 18 Aug
 2021 17:58:41 -0700 (PDT)
X-Received: by 2002:a05:6102:ac6:: with SMTP id m6mr10048630vsh.55.1629334721683;
        Wed, 18 Aug 2021 17:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334721; cv=none;
        d=google.com; s=arc-20160816;
        b=yxfnNu4T2QBB6CypBNa1EkkufI06PNagDiMi9Qhp3Xxv7RJ9PXVzawd9jtAVyHOfqq
         1m/DDgeyep8McQ/o9Xmzgzq/IF8iFAx9WcUl4991vBw5HUEhzUbe7LHhEC4SKejWZFb8
         3GqWYFz1TadwQM6nOcO94Qq4vlKKo7EBkEOogzFEGj6iTGswaHbQ/IVF353XSdCT5f5K
         pTKM+O2a0N1imuvftPZTtBl4StJ3vw6NKuHAO+X4LcQZ2XbWJB13OSTBSsFtcf1rLPgC
         P14khzZkshUpRYCT5vV+tj0P3bnxZ5L4SBaMvWafXpMNII6pAHO2lhgI1gddMPin6JeH
         gQgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=xt2zcw+pYyWVZAgR/pWyQdOfFm5v/zBCFRnsJjm5W+g=;
        b=BP/5U3lp1elbAGgeh2xhNe5lDG+qOuBVKC2paRPBoA9lH5rl/IhVd8g/Qqvce3IcKu
         PyNJw4DcDcVbeLNMQjhiDvpaL33uIzgoQYWqDkoRpholYQkKo9R9Drh+YUFHw8CJ85o2
         CHFDZYV1Akm0//tWAGbuE0rI3usH38rGS69gYdhnOPwnevYryQfkqyh2Ah1gMhX1WBXf
         iVbXA+YXLnCZDX48rSdPKjW/orXec/uQQV/M67Mo5F19XsKMR7Dv8f8KLV0QNyKJMjS/
         DLE/8zsVApGRuobyy1NqN/HgaIyRxSFT6YbXsl3zPJCA1DS00rNZtxQUaBdsGFGEMz8V
         kaUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EVYycanf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id r11si75699vsl.2.2021.08.18.17.58.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:58:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 17J0vl4u017219;
	Thu, 19 Aug 2021 09:57:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 17J0vl4u017219
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 11/13] kbuild: always postpone CRC links for module versioning
Date: Thu, 19 Aug 2021 09:57:42 +0900
Message-Id: <20210819005744.644908-12-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819005744.644908-1-masahiroy@kernel.org>
References: <20210819005744.644908-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EVYycanf;       spf=softfail
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

When CONFIG_MODVERSIONS=y, the CRCs of EXPORT_SYMBOL are linked into
*.o files in-place.

It is impossible for Clang LTO because *.o files are not ELF, but LLVM
bitcode. The CRCs are stored in separate *.symversions files, and then
supplied to the modpost link.

Let's do so for CONFIG_LTO_CLANG=n is possible, and unify the module
versioning code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build  | 32 ++++++--------------------------
 scripts/link-vmlinux.sh | 22 ++++++++++++++--------
 2 files changed, 20 insertions(+), 34 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 957addea830b..874e84a1f3fc 100644
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
@@ -348,12 +331,9 @@ ifdef CONFIG_ASM_MODVERSIONS
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
 
@@ -424,7 +404,7 @@ $(obj)/lib.a: $(lib-y) FORCE
 # Rule to prelink modules
 #
 
-ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
+ifdef CONFIG_MODVERSIONS
 
 cmd_merge_symver =					\
 	rm -f $@;					\
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 17976609c2d8..66ced6ff8e65 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -59,8 +59,7 @@ append_symversion()
 	fi
 }
 
-# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
-# .tmp_symversions.lds
+# Collect generated symbol versions into .tmp_symversions.lds
 gen_symversions()
 {
 	info GEN .tmp_symversions.lds
@@ -94,14 +93,13 @@ modpost_link()
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
@@ -198,6 +196,10 @@ vmlinux_link()
 
 	ldflags="${ldflags} ${wl}--script=${objtree}/${KBUILD_LDS}"
 
+	if [ -n "${CONFIG_MODVERSIONS}" ]; then
+		ldflags="${ldflags} ${wl}--script=.tmp_symversions.lds"
+	fi
+
 	# The kallsyms linking does not need debug symbols included.
 	if [ "$output" != "${output#.tmp_vmlinux.kallsyms}" ] ; then
 		ldflags="${ldflags} ${wl}--strip-debug"
@@ -351,6 +353,10 @@ fi;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819005744.644908-12-masahiroy%40kernel.org.
