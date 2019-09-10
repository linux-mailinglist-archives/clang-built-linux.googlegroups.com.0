Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBN723XVQKGQEJIT264Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 598D8AE854
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:47 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id y6sf9357766edq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111927; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jn50A6kGeb1lhNyPK/wAdEDdIfd3dc2Bdi76EOwfLqLRvsK/LUtprtEbkWxuRkJ/fK
         0VNnA6bRIPL3K//H2G44FVbaE9pNfTttBN5ns5a9sVqNqZIbyfeWE86Lj4CrBQMFOxEq
         1sFpgoOAnzHRHzfBOCYgOz0Vsdlkt9W/RWIuRat4NShOJ8h01nyJLL8UuDgWssfbiXKt
         zUQnGe3Psk7fZ0PXh5BIow1eyuZazz+cPYnstBh1rddhQHXjUB3bEwIaxTuckZRIj3HR
         I33UTqEhBjmwsWpWGO0g05/4efbYaNpiorRVORL2xa0RSdOzGcDKRbH3uddLKhNU+GIv
         APhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Sj2WfxSzNZZnG26Oxzl3ldGmndegqaycHhqi7CeZ8TE=;
        b=T/+VyhvEyGOWSAeKV9rZAzJ5fz90WMr/O/k8z0aN6ge6P5rUfuyvO8ivHKGVet/Rp/
         O1JRpLTqyv8BoCJ4d2KdcGZ/OJjqPSu2XgJIHin4g4kG5B8/S8wCmUoOKV3pn6/7KeSz
         Tf9xeQHlkBC6knWfhcH94z114ytFLnC+B94NxHz4OetG43zZKti2/fN4D4V6Jg0i2tB2
         ubbT6KQJN9g6hlBepAUD6jKilP3+e3f3LArXZy73bgWW80TwYt+U3RJbCv4Vfi0XWFnJ
         7Fghro4Ol6kWzoyrJN8KgNGJTfnsTr5ZmtKv0fWWLovsII33Jt2SRC+WLZ9bLQDZHK84
         QjfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KB7YHJmY;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sj2WfxSzNZZnG26Oxzl3ldGmndegqaycHhqi7CeZ8TE=;
        b=pw+drrK4p4zdWo/H3lWIwG502YgKXZBvcpCdgpzpUz5CJwLhRI4QQS4NdCwBccZspR
         XuPvbYa61RP5Jn6JP/0notQZ/YdIGrWlqrnLj9wawQDR1pHUmRyEc6Xx/lD4+OEhDBhB
         Dg/nPeuQcnjiHjkjGyHnppGewxR5eomvRX5AHeHYeT6cZ6Z6qpjsAvhJc1BrfAvWtyQR
         MGEx85YIIgBfV7ZXKLt3Q804YC4fLn6nCLMNm8wzb9zQ/t174wC7jturwTQiXou6RLvU
         TNMzvyqVYLeNjeqHo4y037zsHkk/ctE/qdQxQcIsUKnTPEowesLQKmtH/RzmEGTKHJ10
         JQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sj2WfxSzNZZnG26Oxzl3ldGmndegqaycHhqi7CeZ8TE=;
        b=pOnRHxZZJgtdAfoSA5XMuyDnr5hJkh5rVJbQmvyvNiaEJ3IhAPmpZjG1kFPvss3+HG
         ngodPZkEKREhMLVjBdPdKXiq+0RbrI6zr6Ne72NH2jxnS+l5LBF+nyczIcZ4BcsaKU0G
         o1s3B1q30bdu0OfjUktHIhs/M9VoZ2SXwAXWdSFw2nrQJHHDB2WzAveYFBxfNKHBqL56
         Olamg+Ca8COIIZGECaX4pT/o7+Nb/KxXvtoS0Bhv0/vvtGfTKQbgPfuYkxh+m+Q+dLmi
         HRCOvwO15BGEi2VVRrgBBvdHRv0SlBgYgAhugryAn42jHMbhSMIXJ05AUqfqQIssJ7+0
         WqyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdf6oVIp3PamypoJLBx3CCsXc1TG26qyZSDcadZi1uZhW/pkk8
	/b4VAfCSQchJkZQ7/tDnDU8=
X-Google-Smtp-Source: APXvYqz7JxW8rSNFKYge/CTEfMZfIQs+WxjPzJVFYrAytg7XS4F71GrMuK3/bjzaZIG921DbISKyIA==
X-Received: by 2002:a17:906:6403:: with SMTP id d3mr14766801ejm.99.1568111927077;
        Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:15d4:: with SMTP id l20ls557692ejd.13.gmail; Tue, 10
 Sep 2019 03:38:46 -0700 (PDT)
X-Received: by 2002:a17:906:434f:: with SMTP id z15mr15810613ejm.214.1568111926714;
        Tue, 10 Sep 2019 03:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111926; cv=none;
        d=google.com; s=arc-20160816;
        b=vYd+rcmmvQTwtNB2ZtA/piqgZz+7gtZuAAAAqsrb6ZN6GFMdlnVPgO3ZX6NmBHfg8U
         7m44NCPMeU/T388xR2OKnWTtZ4VbcEMeDM0ikOK2wRw7BwCwOrcZdrTsX1IycBXWSwYh
         0H7uARaYxu7Y4FSUJP+iVJlahE9ZnuB1pym7Nq2xjcMxj1mY81+eYZnJwq/Mgy52TXWj
         w3Cz7CfJ0l9av18WugeL8nQyotn6ZoCVhDn41SK1+ldxrAsWrb0LCmf1sh98APD0Xlyp
         LJEy2MdereRnQwnRGHuJrm0/U+Hxjg5lGCfjrNGGBpILfqUtcKCecv191LP6edP7byNI
         Myyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IxZ/+fqqCuVj1pULMKRHJJXa1zIHgEU0C4IiN6cmJWE=;
        b=rApCKzkeyf/nstVbD+g02M8jb+O2JPn7NaKVwA+9dbUB87/DceM2hume6+FWJ0xOXn
         c/vb6CGdLPIp+Bm7ReDI6kOVGWGyPcMyqmjNukAC5jU/CjMJJwanGGW3ufeaoWB7V39h
         USU6LUWamm0tXqPIg0+B/Agdl5gut2oZBxr+Q5/JfhBy/Zx7lQS/bj+0JhScmexT1GnI
         hxvYc2vr9edRxyEv5OKKg0CE40ScSe0wsdVT5/nnVB5g7RVtwYD5+iEEWAVgDUW0MPcd
         H7+vAFCSNh8MNjRW7q3JKSt50q7S+te0ey606LC7K97fAC1L+5i7/lvgQ3U/7ykyG66u
         +/Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KB7YHJmY;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id v25si1153960edw.5.2019.09.10.03.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id x80so13045706lff.3
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:46 -0700 (PDT)
X-Received: by 2002:ac2:50c5:: with SMTP id h5mr1193865lfm.105.1568111926190;
        Tue, 10 Sep 2019 03:38:46 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:45 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 07/11] samples: bpf: add makefile.prog for separate CC build
Date: Tue, 10 Sep 2019 13:38:26 +0300
Message-Id: <20190910103830.20794-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KB7YHJmY;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The makefile.prog is added only, will be used in sample/bpf/Makefile
later in order to switch cross-compiling on CC from HOSTCC.

The HOSTCC is supposed to build binaries and tools running on the host
afterwards, in order to simplify build or so, like "fixdep" or else.
In case of cross compiling "fixdep" is executed on host when the rest
samples should run on target arch. In order to build binaries for
target arch with CC and tools running on host with HOSTCC, lets add
Makefile.prog for simplicity, having definition and routines similar
to ones, used in script/Makefile.host. This allows later add
cross-compilation to samples/bpf with minimum changes.

Makefile.prog contains only stuff needed for samples/bpf, potentially
can be reused and extended for other prog sets later and now needed
only for unblocking tricky samples/bpf cross compilation.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile.prog | 77 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 samples/bpf/Makefile.prog

diff --git a/samples/bpf/Makefile.prog b/samples/bpf/Makefile.prog
new file mode 100644
index 000000000000..3781999b9193
--- /dev/null
+++ b/samples/bpf/Makefile.prog
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Building binaries on the host system
+# Binaries are not used during the compilation of the kernel, and intendent
+# to be build for target board, target board can be host ofc. Added to build
+# binaries to run not on host system.
+#
+# Only C is supported, but can be extended for C++.
+#
+# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
+# progs-y := xsk_example
+# Will compile xdpsock_example.c and create an executable named xsk_example
+#
+# progs-y    := xdpsock
+# xdpsock-objs := xdpsock_1.o xdpsock_2.o
+# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
+# xdpsock, based on xdpsock_1.o and xdpsock_2.o
+#
+# Inherited from scripts/Makefile.host
+#
+__progs := $(sort $(progs-y))
+
+# C code
+# Executables compiled from a single .c file
+prog-csingle	:= $(foreach m,$(__progs), \
+			$(if $($(m)-objs)$($(m)-cxxobjs),,$(m)))
+
+# C executables linked based on several .o files
+prog-cmulti	:= $(foreach m,$(__progs),\
+		   $(if $($(m)-cxxobjs),,$(if $($(m)-objs),$(m))))
+
+# Object (.o) files compiled from .c files
+prog-cobjs	:= $(sort $(foreach m,$(__progs),$($(m)-objs)))
+
+prog-csingle	:= $(addprefix $(obj)/,$(prog-csingle))
+prog-cmulti	:= $(addprefix $(obj)/,$(prog-cmulti))
+prog-cobjs	:= $(addprefix $(obj)/,$(prog-cobjs))
+
+#####
+# Handle options to gcc. Support building with separate output directory
+
+_progc_flags   = $(PROGS_CFLAGS) \
+                 $(PROGCFLAGS_$(basetarget).o)
+
+# $(objtree)/$(obj) for including generated headers from checkin source files
+ifeq ($(KBUILD_EXTMOD),)
+ifdef building_out_of_srctree
+_progc_flags   += -I $(objtree)/$(obj)
+endif
+endif
+
+progc_flags    = -Wp,-MD,$(depfile) $(_progc_flags)
+
+# Create executable from a single .c file
+# prog-csingle -> Executable
+quiet_cmd_prog-csingle 	= CC  $@
+      cmd_prog-csingle	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ $< \
+		$(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
+$(prog-csingle): $(obj)/%: $(src)/%.c FORCE
+	$(call if_changed_dep,prog-csingle)
+
+# Link an executable based on list of .o files, all plain c
+# prog-cmulti -> executable
+quiet_cmd_prog-cmulti	= LD  $@
+      cmd_prog-cmulti	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ \
+			  $(addprefix $(obj)/,$($(@F)-objs)) \
+			  $(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
+$(prog-cmulti): $(prog-cobjs) FORCE
+	$(call if_changed,prog-cmulti)
+$(call multi_depend, $(prog-cmulti), , -objs)
+
+# Create .o file from a single .c file
+# prog-cobjs -> .o
+quiet_cmd_prog-cobjs	= CC  $@
+      cmd_prog-cobjs	= $(CC) $(progc_flags) -c -o $@ $<
+$(prog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
+	$(call if_changed_dep,prog-cobjs)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-8-ivan.khoronzhuk%40linaro.org.
