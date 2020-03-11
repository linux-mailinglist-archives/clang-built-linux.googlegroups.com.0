Return-Path: <clang-built-linux+bncBAABBXWQUXZQKGQETN6EF4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4B218250A
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 23:38:23 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id b17sf1954233oib.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 15:38:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583966302; cv=pass;
        d=google.com; s=arc-20160816;
        b=JcL15E8fU4d5kpVqqo+lX7PM18L27bk9IBseUUdvUtAbL4uqWgmyWjKQAlYGfR1Dw6
         lRHEsQQuYIGQ1az8ERplVEVt53x3oTxLgclcDv8iXOVaZCUbr6sBy7qgPWdNLviL/49d
         MrwvZ7ArZVxAoN0GHGnWpViEmD0TJJYQJ8YrqSNmltHtc5MiPJojUsZ9xk7lbnSPP1SK
         /BrhuAlK0h2rnu+Lx765fuUnqFDr+i+6tQK8Dvjj02lUWn/p4haFBioEiVUt6qW7GSZa
         JpCndTewkZduC1ndaJjZzfpQAy/PlNtnbHho8GBe9brjCe4GirMl+OcDQx0jFIpc6INQ
         aRrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=KtQTpU9d7AHn1FWyDSXERAbM5UcQCzSG6va075Mq1Ok=;
        b=v+A/mh+RDhsnuIDlsqrj9mEziLeJYGeyAj23h8n7BC8E3/FopRSdUDKzdx8ViSQ5Vj
         Gv9lFFQn4uM1N7PYq4zdSYGUt6zb6UQ2grmq1JZff+bgJQt9vckVfCqszHIZkg4Pncbl
         3Hq4l5A3SOVmn0Eg8wv5A3ju3y0QlkIhgnWzzRq3E4F0NbizHKwd4TWh4cf8/X0vAxQ2
         l56XD2c4KHxKs/RvdRDrDKFeiv1dLYJkUuh7dH53dqJceR0buvS+Amn54g8cPq3IjeJn
         hAS9P1iT6zTZYKnaGB9a3v3dA3E9aWPFFld14Kg68uELJtjQtmDcSymCfA+Etko1QtJa
         +WYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0Qv5mtex;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KtQTpU9d7AHn1FWyDSXERAbM5UcQCzSG6va075Mq1Ok=;
        b=KeVsafFedwnU7r0hg2tLM008qQh9lP84OUbHhx/Iokv3TT+kXzsET36y0Ym2L636WI
         xRwpStP/DArd8MJVrcknTXoGPLxXRhAugwssj2013EBFafwirabRCKLZ3vnTlKWU2gLX
         rfREMT/89OKWk6zApYuw7tme0UwHq0oqkwTQM9C9ctqKYfgo45fizftqGJ6xoC25J9uy
         xaS8CZu2d3tY87T1VjE+PcnDpvCC1iZ413skWZsMQrHU1o9m4afangvryOsRYY0Tp4v7
         B/TwXr3Jl6ZqgWJtt6iCnPqHqwGue1HkhqbRBMYYCEQOmHSsq2o0Tmlzua5waHezuKFj
         DvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KtQTpU9d7AHn1FWyDSXERAbM5UcQCzSG6va075Mq1Ok=;
        b=SSqOzo5DMC6K1dEO9GEuJ85QvLoOxDUiHsLaAI58jhWbtOHwVE5oyRwLogSpJtU2A7
         wxqZ6GVd1OLJR5+95mGg4oVgPGwzuU7cSDCmoCMvvpk4thSyd7v4YrnTqHt/8rO6f/b9
         ZtT0ymTHAKFdtsHWNHjMU1K2PMXmu3DSfaKuU0kZ3lPV0k2/D7yHcwPjS7dEgcKEOT68
         CojANbwKbx8oevkeBFzIRVzAsQqZNV5QiDa+qtXZQawcAUhZtzNcZHUA60CPOmcHF/P3
         gQ7L9VbWX8YKxAfh0mG34U5xX8ZOweyyIPhU5n9VUJIW63NfTKrYc3bUVSm6tCqH7HUK
         gVCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1h2Qu8iUvKPKox9FNRUaxNfWtUlT2K8gfHfX7DaJfkw0AcS2Lg
	5YlNhpuq6tmABAQkj1NKfy0=
X-Google-Smtp-Source: ADFU+vuGCyCQK14NCISmgfYiZQeElndHxtxRdqi3K8N58sSYdw6/hgCt2dFo1PtyJoKLvAKQWEuWXA==
X-Received: by 2002:a9d:450a:: with SMTP id w10mr4102741ote.114.1583966302383;
        Wed, 11 Mar 2020 15:38:22 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:355b:: with SMTP id w27ls128875oog.6.gmail; Wed, 11 Mar
 2020 15:38:22 -0700 (PDT)
X-Received: by 2002:a4a:a105:: with SMTP id i5mr967919ool.86.1583966302057;
        Wed, 11 Mar 2020 15:38:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583966302; cv=none;
        d=google.com; s=arc-20160816;
        b=HVcL5MJII9QUlEkcifQXAw50CbOnQTJgT9bK1xqGQTehzR1nRHE6Ykc2iX67/skBST
         5YAVQeJ9ZGBIr6/EbiyBKjSQScUwv/xsGQMQygMYjkJKUQkzpEnogUmjM6vc5z3WE1uO
         VFJLhCHb7bsLS0Cusjk1VaMVaR0YQe3u2DgmqP5UT6BiiYqXu6sGWTrqAGO4N8O0Ewi4
         763lXgqW5ZJ1W8Cl+7YwECevNCXI5iNayQrx0sJsypL2a8eio52CzwHBcAr258NSLTZ1
         j2S9qS2CByW9yC0wqvTDdg4J726IQYr6UjnV+J3mk7PAh3I+uHqtsEMA6k8yMqpVhp6b
         BXUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=eV641mEtJcxSe/x4CJ7sZRwpUKMRqHWiX6uSM6ikt7k=;
        b=eDQsLSLd1T8GOAqmj+K8QxercBF2Kq6emkLcc3Be53rB7Jv8LG34hRuKzlDQrlSeDt
         qQ3Y/xIJ1DXZc49/90F76t3jKfdgRbfA5EARzDMOFkQvN28sUI5rVk4b/cna9Box2WcB
         whml6TWuIAT41YFo1CEDK9fP29dUP82ifT7W8Wcgqw9AuyzLHm5o7Hb8+8rtVHjfXs3Z
         V8bQpG5rBPeu+kbGuGiWDQFqM4JiidiPCESJ51gwryO+uEAVNJqtXXi88lbcHZ1AlupC
         pfyukrCJhaKra+GqxOkxRM/oCNwbTMdhGrr+/nYLDzZjZoRyvyGNW+J2UYmoLTC+fSFE
         u7dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0Qv5mtex;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id d188si168199oig.0.2020.03.11.15.38.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:38:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 02BMbYqg019805;
	Thu, 12 Mar 2020 07:37:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 02BMbYqg019805
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: sparclinux@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
        clang-built-linux@googlegroups.com, Al Viro <viro@zeniv.linux.org.uk>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly when CONFIG_MODULES=y
Date: Thu, 12 Mar 2020 07:37:25 +0900
Message-Id: <20200311223725.27662-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311223725.27662-1-masahiroy@kernel.org>
References: <20200311223725.27662-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=0Qv5mtex;       spf=softfail
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

Kbuild supports not only obj-y but also lib-y to list objects linked to
vmlinux.

The difference between them is that all the objects from obj-y are
forcibly linked to vmlinux by using --whole-archive, whereas the objects
from lib-y are linked as needed; if there is no user of a lib-y object,
it is not linked.

lib-y is intended to list utility functions that may be called from all
over the place (and may be unused at all), but it is a problem for
EXPORT_SYMBOL(). Even if there is no call-site in the vmlinux, we need
to keep exported symbols for the use from loadable modules.

Commit 7f2084fa55e6 ("[kbuild] handle exports in lib-y objects reliably")
worked around it by linking a dummy object, lib-ksyms.o, which contains
references to all the symbols exported from lib.a in that directory.
It uses the linker script command, EXTERN. Unfortunately, the meaning of
EXTERN of ld.lld is different from that of ld.bfd. Therefore, this does
not work with LD=ld.lld (CBL issue #515).

Anyway, the build rule of lib-ksyms.o is somewhat tricky. So, I want to
get rid of it.

At first, I was thinking of accumulating lib-y objects into obj-y
(or even replacing lib-y with obj-y entirely), but the lib-y syntax
is used beyond the ordinary use in lib/ and arch/*/lib/.

Examples:

 - drivers/firmware/efi/libstub/Makefile builds lib.a, which is linked
   into vmlinux in the own way (arm64), or linked to the decompressor
   (arm, x86).

 - arch/alpha/lib/Makefile builds lib.a which is linked not only to
   vmlinux, but also to bootloaders in arch/alpha/boot/Makefile.

 - arch/xtensa/boot/lib/Makefile builds lib.a for use from
   arch/xtensa/boot/boot-redboot/Makefile.

One more thing, adding everything to obj-y would increase the vmlinux
size of allnoconfig (or tinyconfig).

For less impact, I tweaked the destination of lib.a at the top Makefile;
when CONFIG_MODULES=y, lib.a goes to KBUILD_VMLINUX_OBJS, which is
forcibly linked to vmlinux, otherwise lib.a goes to KBUILD_VMLINUX_LIBS
as before.

The size impact for normal usecases is quite small since at lease one
symbol in every lib-y object is eventually called by someone. In case
you are intrested, here are the figures.

x86_64_defconfig:

   text	   data	    bss	    dec	    hex	filename
19566602 5422072 1589328 26578002 1958c52 vmlinux.before
19566932 5422104 1589328 26578364 1958dbc vmlinux.after

The case with the biggest impact is allnoconfig + CONFIG_MODULES=y.

ARCH=x86 allnoconfig + CONFIG_MODULES=y:

   text	   data	    bss	    dec	    hex	filename
1175162	 254740	1220608	2650510	 28718e	vmlinux.before
1177974	 254836	1220608	2653418	 287cea	vmlinux.after

Hopefully this is still not a big deal. The per-file trimming with the
static library is not so effective after all.

If fine-grained optimization is desired, some architectures support
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION, which trims dead code per-symbol
basis. When LTO is supported in mainline, even better optimization will
be possible.

Link: https://github.com/ClangBuiltLinux/linux/issues/515
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reported-by: kbuild test robot <lkp@intel.com>
---

Changes in v2: None

 Makefile               |  7 ++++++-
 scripts/Makefile.build | 17 -----------------
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 6a538b79e61e..2cdbd4b3e36d 100644
--- a/Makefile
+++ b/Makefile
@@ -1034,8 +1034,13 @@ init-y		:= $(patsubst %/, %/built-in.a, $(init-y))
 core-y		:= $(patsubst %/, %/built-in.a, $(core-y))
 drivers-y	:= $(patsubst %/, %/built-in.a, $(drivers-y))
 net-y		:= $(patsubst %/, %/built-in.a, $(net-y))
+libs-y2		:= $(patsubst %/, %/built-in.a, $(filter %/, $(libs-y)))
+ifdef CONFIG_MODULES
+libs-y1		:= $(filter-out %/, $(libs-y))
+libs-y2		+= $(patsubst %/, %/lib.a, $(filter %/, $(libs-y)))
+else
 libs-y1		:= $(patsubst %/, %/lib.a, $(libs-y))
-libs-y2		:= $(patsubst %/, %/built-in.a, $(filter-out %.a, $(libs-y)))
+endif
 virt-y		:= $(patsubst %/, %/built-in.a, $(virt-y))
 
 # Externally visible symbols (used by link-vmlinux.sh)
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a1730d42e5f3..356601994f3a 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -65,7 +65,6 @@ endif
 
 ifneq ($(strip $(lib-y) $(lib-m) $(lib-)),)
 lib-target := $(obj)/lib.a
-real-obj-y += $(obj)/lib-ksyms.o
 endif
 
 ifdef need-builtin
@@ -410,22 +409,6 @@ $(lib-target): $(lib-y) FORCE
 
 targets += $(lib-target)
 
-dummy-object = $(obj)/.lib_exports.o
-ksyms-lds = $(dot-target).lds
-
-quiet_cmd_export_list = EXPORTS $@
-cmd_export_list = $(OBJDUMP) -h $< | \
-	sed -ne '/___ksymtab/s/.*+\([^ ]*\).*/EXTERN(\1)/p' >$(ksyms-lds);\
-	rm -f $(dummy-object);\
-	echo | $(CC) $(a_flags) -c -o $(dummy-object) -x assembler -;\
-	$(LD) $(ld_flags) -r -o $@ -T $(ksyms-lds) $(dummy-object);\
-	rm $(dummy-object) $(ksyms-lds)
-
-$(obj)/lib-ksyms.o: $(lib-target) FORCE
-	$(call if_changed,export_list)
-
-targets += $(obj)/lib-ksyms.o
-
 endif
 
 # NOTE:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200311223725.27662-2-masahiroy%40kernel.org.
