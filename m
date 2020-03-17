Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVUOYXZQKGQEA7OLATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B061890D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:55:35 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id v4sf22270947qvt.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:55:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584482134; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHS3FJW5paiWrt7IRcNMjHWgGHdMoNEmZ+/jvFkhFcAj2pbzfweEg/jP9UtA7vdZFV
         DC0NTHfc4YMZoaI+zVnAgxBZPD/IbnYQy4ellLxU8fIWc1JXoQDlkhyNuohDB3Q/nlb4
         y5YqAM7OsmHGJ1Sq6aphnLrvjJQ9qZqRM8Qdi0sfiwk2ILjInhpnxu69FnoYydb/AQ2W
         wOnn/TqDtdBYZsfCRIufE2yDhu3iR/sJ9EWjFAzdOlycoQiiUDIORuP3A1Zth1/Jce0v
         PZmV2Fx3RyxvCI6iXEkfo5Q9fmvckO0ANonNFuOnvt6KGoE3mDlk2GE1l2JHlzwChwfz
         h1HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Fm45RAQnvfnM584ASB7xAK70qLJvksxFfYTxs21eNP8=;
        b=Y7DsG/qbMLGJRPa3rhqtlLjYL93nwbUxAu0MxaFop/MR8DU0Tu9EEv1szm6SY1luUj
         6g1bfHOOPB1TLhYD2wU6Y+miuukSERiOtqpFBeWpJM87BP9ayRaqw6OiNcIQTLo50rAL
         lFHSUpKLT+njnXX8Xhn0E1K4B49wo91idZagEUXY2TA3vBzg+Exy1IqW1iw1qV0E+TZF
         x2hN3kUHlwRoKkOwhn9TPenO5eXtFO7JWJJkeuPhKKbQbDavP41R0Kqh11kFMe9PsaPp
         mvFXRGU+xz/YRSnRnB1t8mxY9pMDdZWog15sFDmPEML990AGUMzyGPRfyGLqonZdZgKZ
         7Hrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="f/XQqAF7";
       spf=pass (google.com: domain of 3vudxxgwkakipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3VUdxXgwKAKIPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fm45RAQnvfnM584ASB7xAK70qLJvksxFfYTxs21eNP8=;
        b=PE4RyouIWSBDxrH7EnD7YQ/uSDfiF4JTiXIxUVI66nbCFYh7taOUdrUcH70gtFZsV/
         UvDPV1pzr4yuKHFTyj0TQLBDZw4BjqSW542HhygPdEtWKxCU2M067o+kDWRhVfFCABW1
         AomISHja32h+i6E+p+hr3vCsKPpN4YasW1Nxdpr9ZjG1UziWvjAXqQz+ks9fJtjyCIQ2
         IXPckF9vLlF0oVSyqxixCpAe1RJmIuhypzjMYH+aksAjrxdVVox9F6o4eU0iOxfZ0LS5
         pCS6rqzESatiZ9zHhlGdAjEu8NwHKlfQnpGWzPq1rztp+hrA6Bt8hSA3EV2Y/naQzyu6
         fvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fm45RAQnvfnM584ASB7xAK70qLJvksxFfYTxs21eNP8=;
        b=A44owZOzhBJCxIYcpYCQiFWjm7fMog8fEx/+154pCXZB4Y0DuZH8CmdiBInvqJumM+
         9L6NFhcTnAftnBKkgRU2BA7B5Lg6QkksWgDwh7d1uRzlNgKkGrfC7d06M8/v5OHeUvZ3
         EBncrXkFI1nwXsIpM4pMrfLhnyhoXRwKVCs8TvwJYwbMxP0elq3esUHLI6oPqft/oqNJ
         sMS9ZBlC9/hy2r33k1GoFlwZGRe4JALMUuxOTTSXGLI+0MT283137D8pi9MYJSHllO2Q
         XjzkQV60XiAMQ5d4IniHoJVuPjyz/+U5ljo6x5llgOhNmzDGcXc/bjGNvB6c2KdvnkHS
         NHiw==
X-Gm-Message-State: ANhLgQ2y6a63HgSNGTnnMDn/o7Gll2PVCsWV4XaNjPDUZLHXNDb+9H31
	alDXQFJm7KNHkyQYL0UwdAg=
X-Google-Smtp-Source: ADFU+vvWq/dXzFzgtulESmqqE0V6DORpC9AnHZI1FMrGntZlrfj9+cmQTU63vSEIq+GcZRvW4EUNWw==
X-Received: by 2002:a25:ad1c:: with SMTP id y28mr1278938ybi.291.1584482134560;
        Tue, 17 Mar 2020 14:55:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls8184819ybb.9.gmail; Tue, 17
 Mar 2020 14:55:34 -0700 (PDT)
X-Received: by 2002:a25:e752:: with SMTP id e79mr1281022ybh.449.1584482134178;
        Tue, 17 Mar 2020 14:55:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584482134; cv=none;
        d=google.com; s=arc-20160816;
        b=Dxiu432tqE12/lGkoNCd2BgOZ0gN7aNounnUfGJ9zKlL2ondFMfgt/W5xr58eObqKO
         q2CMlkckPQAYvc++dmantvJkNKc6BlKMX10AtKXPrFULIgltDd45ORaj757T1EhPT4qg
         HtPUR9nIoXXbEQ8O+rxrUrZWM6kue6Ml9Fsb4xXF5tlhwpjqb/I9qlXZyT30Yz/0ZAPD
         X650wvzSnGg+3kdg+gZC5pjsnfQlK/3MrJ47nEp2O1o5g6pXyvFeuAU4dIp4E0Vo50Af
         1hVaKHgA41vMayvThdoSrX0LYgBqsbfAhxNBEQAH4kJHL9ohAVv0qB+Scofc9re9MzX2
         TgmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WT+AG0Sk/ZjsbVAj6df3wOLFgqAmNIj4Zm/1cV4P1Vo=;
        b=zesGQ5vrAOxnC/6cOcXRPDmiKbDVdz/KDw9D3CxjCFCjaANY0Xvb5gfbn3QfpAvpHq
         4UvjPCEIWGLW0A+5XrssmcVwBKJ/F+4CHhz3Ydas6I7eFkL5IreMxDnUOggGax7S+O0G
         3Zyc99lZ4EvCtBzXx8pylE4q/d744lm2OqZ7HGNeaMEpxQRunnmt9D0K2cC8jboWFCAK
         O1nlyOfPzxhj49Ww+SLbt0TINay8Rxn/HwSPNmJj8HMAqbt2eZKaTrbvnU2ek0o4sh2I
         HDc+KKkKHamp51Zb1AU75X6lmv2U2Pgp0cGzN0yUlMGx/UujkEnqIFYrw8aQdbD/X+lG
         fWSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="f/XQqAF7";
       spf=pass (google.com: domain of 3vudxxgwkakipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3VUdxXgwKAKIPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id l1si50279ybt.2.2020.03.17.14.55.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:55:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vudxxgwkakipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id f20so13499740plj.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 14:55:34 -0700 (PDT)
X-Received: by 2002:a17:90a:a511:: with SMTP id a17mr1330073pjq.178.1584482133186;
 Tue, 17 Mar 2020 14:55:33 -0700 (PDT)
Date: Tue, 17 Mar 2020 14:55:15 -0700
In-Reply-To: <20200317202404.GA20746@ubuntu-m2-xlarge-x86>
Message-Id: <20200317215515.226917-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v2] Makefile.llvm: simplify LLVM build
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, natechancellor@gmail.com
Cc: clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="f/XQqAF7";       spf=pass
 (google.com: domain of 3vudxxgwkakipfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3VUdxXgwKAKIPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Prior to this patch, building the Linux kernel with Clang
looked like:

$ make CC=clang

or when cross compiling:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang

which got very verbose and unwieldy when using all of LLVM's substitutes
for GNU binutils:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
  LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
  HOSTLD=ld.lld

This change adds a new Makefile under scripts/ which will be included in
the top level Makefile AFTER CC and friends are set, in order to make
the use of LLVM utilities when building a Linux kernel more ergonomic.

With this patch, the above now looks like:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y

Then you can "opt out" of certain LLVM utilities explicitly:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y AS=as

will instead invoke arm-linux-gnueabihf-as in place of clang for AS.

Or when not cross compiling:

$ make LLVM=y AS=as

This would make it more verbose to opt into just one tool from LLVM, but
this patch doesn't actually break the old style; just leave off LLVM=y.
Also, LLVM=y CC=clang would wind up prefixing clang with $CROSS_COMPILE.
In that case, it's recommended to just drop LLVM=y and use the old
style. So LLVM=y can be thought of as default to LLVM with explicit opt
ins for GNU, vs the current case of default to GNU and opt in for LLVM.

A key part of the design of this patch is to be minimally invasive to
the top level Makefile and not break existing workflows. We could get
more aggressive, but I'd prefer to save larger refactorings for another
day.

Finally, some linux distributions package specific versions of LLVM
utilities with naming conventions that use the version as a suffix, ie.
clang-11.  In that case, you can use LLVM=<number> and that number will
be used as a suffix. Example:

$ make LLVM=11

will invoke clang-11, ld.lld-11, llvm-objcopy-11, etc.

About the script:
The pattern used in the script is in the form:

ifeq "$(origin $(CC))" "file"
$(CC) := $(clang)
else
override $(CC) := $(CROSS_COMPILE)$(CC)
endif

"Metaprogramming" (eval) is used to template the above to make it more
concise for specifying all of the substitutions.

The "origin" of a variable tracks whether a variable was explicitly set
via "command line", "environment", was defined earlier via Makefile
"file", was provided by "default", or was "undefined".

Variable assignment in GNU Make has some special and complicated rules.

If the variable was set earlier explicitly in the Makefile, we can
simply reassign a new value to it. If a variable was unspecified, then
earlier assignments were executed and change the origin to file.
Otherwise, the variable was explicitly specified.

If a variable's "origin" was "command line" or "environment",
non-"override" assignments are not executed. The "override" directive
forces the assignment regardless of "origin".

Some tips I found useful for debugging for future travelers:

$(info $$origin of $$CC is $(origin CC))

at the start of the new script for all of the variables can help you
understand "default" vs "undefined" variable origins.

$(info $$CC is [${CC}])

in the top level Makefile after including the new script, for all of the
variables can help you check that they're being set as expected.

Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Rather than LLVM=1, use LLVM=y to enable all.
* LLVM=<anything other than y> becomes a suffix, LLVM_SUFFIX.
* strip has to be used on the LLVM_SUFFIX to avoid an extra whitespace.


 Makefile              |  4 ++++
 scripts/Makefile.llvm | 30 ++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 scripts/Makefile.llvm

diff --git a/Makefile b/Makefile
index 402f276da062..72ec9dfea15e 100644
--- a/Makefile
+++ b/Makefile
@@ -475,6 +475,10 @@ KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=
 
+ifneq ($(LLVM),)
+include scripts/Makefile.llvm
+endif
+
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
new file mode 100644
index 000000000000..0bab45a100a3
--- /dev/null
+++ b/scripts/Makefile.llvm
@@ -0,0 +1,30 @@
+LLVM_SUFFIX=
+
+ifneq ($(LLVM),y)
+LLVM_SUFFIX += -$(LLVM)
+endif
+
+define META_set =
+ifeq "$(origin $(1))" "file"
+$(1) := $(2)$(strip $(LLVM_SUFFIX))
+else
+override $(1) := $(CROSS_COMPILE)$($(1))
+endif
+endef
+
+$(eval $(call META_set,CC,clang))
+$(eval $(call META_set,AS,clang))
+$(eval $(call META_set,LD,ld.lld))
+$(eval $(call META_set,AR,llvm-ar))
+$(eval $(call META_set,NM,llvm-nm))
+$(eval $(call META_set,STRIP,llvm-strip))
+$(eval $(call META_set,OBJCOPY,llvm-objcopy))
+$(eval $(call META_set,OBJDUMP,llvm-objdump))
+$(eval $(call META_set,OBJSIZE,llvm-objsize))
+$(eval $(call META_set,READELF,llvm-readelf))
+$(eval $(call META_set,HOSTCC,clang))
+$(eval $(call META_set,HOSTCXX,clang++))
+$(eval $(call META_set,HOSTAR,llvm-ar))
+$(eval $(call META_set,HOSTLD,ld.lld))
+
+## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317215515.226917-1-ndesaulniers%40google.com.
