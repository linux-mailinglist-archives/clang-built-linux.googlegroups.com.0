Return-Path: <clang-built-linux+bncBAABBBGZS3ZQKGQEMFT2KTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5686E17D831
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 03:40:06 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id y20sf5961352pfb.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 19:40:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583721605; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ao5NSF9CGNpwuakczmI9cmLqPySSmEdSvBqa6fNjF+PZzML82qV1cR0lGjhzz5nhQv
         m2kYw4lpAoqBQF/gzpxCBBSQs2cJ7mPOlD69F6wGXW1BGgEWarD1CjjXsMqZLPHNtT4g
         yDObJ69QDb+645zHHBannuUDauEPYdvRzk8sLjQq545Da+yQ4sX9eLWgobmQ3tqb/1ld
         C/N9H2g1E6Joz8AR9UdTDlcvBwIb09huJg97Qnkx1jf5ZPS84SuvJ/SHg79w1mUJl1Ad
         Kqm1uDED/o839pjEnbRmQcgpMNgPa3nKVjsQrOwxiq3/6W4t/NCwpdjZiwy/evcZwgGh
         81+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=SVCnaVbky+X+GdaGvqQsr2JgNAyFdlUZQSWtxm2MNCs=;
        b=Mmqgsj2Z7UywEqo/56lqu3slPcHspnIYA3Y2L7Yylw27YpIgoK1c4F0+nvUd/JnURa
         gPboDHcihvGLJD+pM/MItzhAQepNz/HurOzHtN5I73mmxAX+z777xCRvea5Rfi/z6rPf
         adQVZwoHaQwn5G3feOtp+mWYct+wwV3Nl3u2du+cNl3cP3AvYa9LKKmN9GJa0Ct6FgDI
         grIkBC0bcb4e2rKnylsUggWenSdQKaQnJIiqd+l1EJ4/SNFQKhbhiWIZxRvfjaB1Nu3A
         wIIDl1j+v9YBqfZ0Fg7mFDeOFOioH3Rv/8n9YFEsh96eqCJTTzUH98L+iRFj+dt3efxE
         gKAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Q5WCH5hw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVCnaVbky+X+GdaGvqQsr2JgNAyFdlUZQSWtxm2MNCs=;
        b=K4gdnnGRuciJynHnCkgq5sznfe0cnoRmrly7+otQTP6WeqFEiCVQF3XRE7zUcat78K
         cpu4+0ALOoGDw246DwWcEi6xCPXRkRpSYPY5ieuR7/xvy7cuE5cGbRK2hgTgiMkKemd4
         aDYxaY/YRJGb0mlAUiZSjsG1q4ED96/84EpKA0lXetRunBcCYFG6lKRWbLXRM6bgqbBP
         b92M0Khjv1UbYAUcOOhJdR0P5heiHxwcruJwOAD62OVEXB6+4sxRcIBNb5Yg4zMGOujt
         nWk3GOSCFm+xLWC4ceTbBFsSYQLBKD8QFjhNqe91KwQmtFEQZ4sjbePIc5zglrMZ7IEV
         kN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVCnaVbky+X+GdaGvqQsr2JgNAyFdlUZQSWtxm2MNCs=;
        b=jXTXpA2Zb11Gz4/WBfGO4vMqedjA5dJxpHtUyaq4OJE4dpEL4RL4iQjuqVeSb1tj1u
         DcZndPz47ebUr3MoGD+yCrVOJOb+CwNaelPd7+v5Frr0kR3JiGyIRUCCUE0MOgO3BFjT
         X45PI/6T31ARM0gxQO7IRrxMJj6Lgyl0AuDsdA/8Ev8k6zLBV6C+nEh7w7h3oesPaBC/
         03XnBZhYLCtyyCrN3mVhw6G00oi9hBwmkBLq2y0/i/zwnoFDL3vIymo4aiq3HJozku4H
         RdJL1mi7ajOaUHpZeHJnTbkn7K+gOmiMw37rJw3h+XI+bA0swZj+avu37QEbKrtuAgnv
         UeDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ03APGdnxLhTwXchDP4+ps1bkHoCIN3FZLMqD1xi/WqEWU4dREm
	r2yX3X4O7pP/tKtfGK4Nn/A=
X-Google-Smtp-Source: ADFU+vss4Lt8wgIEcyCMJFVGNJphF/KgbBha/wPjA7E/PC4ljIDlSEP+S1pJkEoZ59GzILzUE3aMYA==
X-Received: by 2002:a17:90a:bd0d:: with SMTP id y13mr443691pjr.12.1583721605000;
        Sun, 08 Mar 2020 19:40:05 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:150:: with SMTP id 77ls2973438pgb.0.gmail; Sun, 08 Mar
 2020 19:40:04 -0700 (PDT)
X-Received: by 2002:a63:2cd6:: with SMTP id s205mr13767953pgs.112.1583721604608;
        Sun, 08 Mar 2020 19:40:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583721604; cv=none;
        d=google.com; s=arc-20160816;
        b=nxDW/t8tN6ROzZzM2R3rolZwygercndXZrqzpDF7NL4xwvNOdniyVdPjUxWQeVYnHu
         0qTGDpNQ4ZfglKqSCPdEdLWHMLXB6FVuG5FHtzci2t4IWMn/+/Hg0PEaues5QkIIZ6FQ
         CYpukLef6CkWRTyr/czUTLf8m8KPXUi+nPwPNPCTzbv2afKO3v88rKqgYINNOYduM+rv
         y2ksTTWBToAWbaRkS7Jwr6vlAajcUlI0OaKGpLoMREMgUt4VNi5g3J+yJaimpHePre7b
         IeUhHoUXefc9Z8p4nZVzU7MqARXv0jqGqBL3UfFGyDRMz8ztiaynL3TlSL/P3KKtG/s+
         KwSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=x8rj79kPynZM9/V603rL/WARuM62A6eFpkOiK9ry+jE=;
        b=EZysUGwITJYiPhpP9eJA4kQF5zY7YL3kWX/T2kNtRkyNEaR+vc53kAfzGTxKBYJ+Wp
         oHXXjk1J/v94s/5RhdqPOLKn6DPd63omoz7ZL14rnK6E1Ill/WgdXb3Z2wQBj1OHlHdS
         iSOSbae4v/MtM/uu50a1VTQd11JAS1/2Xuq86pnCds42UsXGePkka4Cxr5l0vWDqN2fj
         FXxB0/kIemdDImwO8/i8/2FxtQGgthkFNyJRRZsqnqKwa9+sN4XixY6bPnbaW18tVs0a
         tUOcBQSs7Yo487UiKrm2NhuTKyDN02k+6VbmIBGlgfDMw5ApPHZ14pZ9DncQyUsoqcQD
         yOHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Q5WCH5hw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id mv5si1041368pjb.0.2020.03.08.19.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 19:40:04 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 0292dL7g029360;
	Mon, 9 Mar 2020 11:39:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 0292dL7g029360
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
        clang-built-linux@googlegroups.com,
        =?UTF-8?q?F=8F=AB=A7ng-ru=8F=AB=C0=20S=8F=AB=D2ng?= <maskray@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH] kbuild: link lib-y objects to vmlinux forcibly when CONFIG_MODULES=y
Date: Mon,  9 Mar 2020 11:39:10 +0900
Message-Id: <20200309023910.25370-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Q5WCH5hw;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
---

 Makefile               |  7 ++++++-
 scripts/Makefile.build | 17 -----------------
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 86035d866f2c..07f89d2a581a 100644
--- a/Makefile
+++ b/Makefile
@@ -1031,8 +1031,13 @@ init-y		:= $(patsubst %/, %/built-in.a, $(init-y))
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200309023910.25370-1-masahiroy%40kernel.org.
