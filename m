Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBPWWYDVQKGQEREXYMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3DEA94F2
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:10 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id r25sf156577edp.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632190; cv=pass;
        d=google.com; s=arc-20160816;
        b=HXKcJzOu+WoGLbQ19Iz0wzonGBgvqdBvM+f2SYYqSA3q7G1UoDn22rcOP/fuJEHY7k
         nlDj+2wyA5cpZ2Y/O5S2O7L2UdWGChcl74lvIaGMjn8lTKizfzqXc2Bx3yonms59VbCZ
         carqUJ0LSMJkQNqQeNRMAzqmnVGXIhTem5QVjwefxChtzc9n4aUiDRJKLHNOHCXkc7av
         JAYYdAGFfXwJsW6kvpQPifBOdmDhivJC4DFBaEXP6OSQbL44sxN2mb0K08cEPzpkZgru
         Nn2n/vmD4Qmjxi6qMyjvQLiSl0s441nI0VsY8UrHQHraG4SaBaDNJ5uj/nvxCiDRnwBz
         Gjbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=3/6noIiLEWFhm/RbLkiCQW3rLQTiiUMifgez/KD+TtY=;
        b=LGe3R8ORYiIk+wQL324Ij31snif5sYmY22DQudmDUrQCR0OeMK7R5VeBk8yFB/zVcI
         eUQ9qft/66lK/PPlY46jUz65Hs46gAn9eLP4Yl6tz7jQ6n1NGXjhVXVi2lgkuO75/f6H
         iuY4NqxxTgBin1Usta7JtziOh7/UNc2qEDFlS8DTCeJ/l5IkyV3pJeJGyEYCDpU+mbf+
         H4lVgPStrBpFsrzOJtLAZQxB+YhhUQ4/VdkvPUAJ/v9iojvBBu4EPMwzxRbtIXmXvm7r
         dJUGv/Q373nNMQ/vxqwBbVkgxKenhQStTtOwU032Betnomv9zLE6onHjDLusaCkkYYJ0
         nT0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=N+hBm0Fd;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/6noIiLEWFhm/RbLkiCQW3rLQTiiUMifgez/KD+TtY=;
        b=XrIzXLcYnLHfKsa3gdaQ1A5dwc9Tn3/8x4ymd0mmePYc43HYLYRp0DNkqqGKKRfnVy
         baS4wLGiq4aduMylAPFkowlYwxC1pm4AdePgyrqRHx2gDuQi12tOuIkIOW/uQ8D9uHTN
         9eityCAZ8VAII8vE8DBKSA7PihYH65RKcJ3WrvRcL+a2fm/fRdk4XaGXCOX4qLm3rOzh
         QtFeafFGh6m/BtRm3kYPPAVSwmLUpLm2utZ1gk/blTcL7NacbfsfrHCzQb9rVP4MkAmn
         3jCJ0eIAZa0u99cExP7lj16DZke1t4BYDZi8GqRtCPRJmb26pz4b2LR7YiaSrNWNi81B
         6C7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/6noIiLEWFhm/RbLkiCQW3rLQTiiUMifgez/KD+TtY=;
        b=WP0m3ksEEnbKrgKRfcthNiyxGajGTOnS1HPgXeQwVYM4jewf3xchyG5sr7or1kE/Sn
         BSE7s/ynONBMrVpsZvyDtnHHatQSvXbTAbRNS0kg6m7F7XKQ6UaRFjQbVhpgl5lkpLP1
         rGy6U7hvILXc7tQWHnjwA2q5zcVbQSHhRiRwoRAodQ071T7d+uf40ONXjf1v54+haI3I
         htUEYG9fu/HFe2y5VLyP6xQA7qX85tmd742Lu7tHAp1dDvQ0faghvoMChPTvuebGqeAC
         lcESHu/8Ifev7ZArmy8q6sMX5PFowJpEhwCiZkhgraM+JaoUaL0vbv6SUwz5RBPvFpo8
         lieA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/LZQnJinjdA20EA9mzZAopoAX9NJ0gjRrBevu1+EIbwsgzM/1
	40olXVilBKWS9lSZyuWmyUQ=
X-Google-Smtp-Source: APXvYqw9toaHqaJXgbWIzpQYTWkjbwYLQ82vrvPySohGNRAvA3ACfzD2n97tJwYOfTrcW4gEu99RHA==
X-Received: by 2002:a50:fc12:: with SMTP id i18mr373760edr.23.1567632190353;
        Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ed99:: with SMTP id h25ls59899edr.13.gmail; Wed, 04 Sep
 2019 14:23:09 -0700 (PDT)
X-Received: by 2002:a05:6402:13cb:: with SMTP id a11mr349383edx.161.1567632189955;
        Wed, 04 Sep 2019 14:23:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632189; cv=none;
        d=google.com; s=arc-20160816;
        b=mBge+0wB0AIlJMl+kqhoVi/PVG10YI+WR88aS/uSuKRp2aleT+d7PH5q2UzUptETxE
         biZUcjEVIh+dGnbpfNK7pIE+0tk+eG5htyWPh67XbK7vwiBoTOmwQyC0gdvL5GSZBkGK
         dmS3QY1nicF02qRAhLQ9qygICEmeeZBM2ySIbcd4617kZ/H/RT/IcdPapdLfDKXFp1pq
         k1efg38Z4v8E26LjZZ69/VB/4Mu9aZWmdYQSWGFCUOTl3xqmPHIE0d/OKG4h421e9KD9
         pj+xLjbqfY7LJ41Fon6/LHlpimDKUrcwEK2j9sDXgVUoc0+X/fnav3Gb2/W6zYrj2/eY
         BmIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=S7BH2bOuqpWzG3KQU2G046M8ZupbTAkU+KR6zMOgNJI=;
        b=SHyykYCeS2gYtGBeZCGSnafto3JLnUyBaaewKhnUadPTRWq4ywTNKQCjAfAVkss1J4
         uD0E5XV24qt70hmUJOWyF7QmaANDBh28XPChY3QxgOUX8nPvOW5FZAMkCAnTuLVIQABI
         ZdutuKCl6RPgB6s1SK9/XThy1TOVbvsWqEwvzXL1r2ifKHyvrrlXELNLxywAkI4liJn8
         eVwvAU4v7CxibidN0y3WrBE4f1T0O+krsTbEPXJgocNtEZn+TMfeImzfq+dRHzgKOER1
         CHls16LnWFdpeTCBia1i3ZFGsRMx1eqCKU1dJ/Ustp5Ndhr/DLXP4xCT2nifVg9MaOya
         nPxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=N+hBm0Fd;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q18si10509ejp.0.2019.09.04.14.23.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id l14so213443lje.2
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:09 -0700 (PDT)
X-Received: by 2002:a2e:6111:: with SMTP id v17mr24187411ljb.30.1567632189413;
        Wed, 04 Sep 2019 14:23:09 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
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
Subject: [PATCH bpf-next 7/8] samples: bpf: add makefile.prog for separate CC build
Date: Thu,  5 Sep 2019 00:22:11 +0300
Message-Id: <20190904212212.13052-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=N+hBm0Fd;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

The HOSTCC is supposed to build binaries and tools running on the host
afterwards, in order to simplify build or so, like "fixdep" or else.
In case of cross compiling "fixdep" is executed on host when the rest
samples should run on target arch. In order to build binaries for
target arch with CC and tools running on host with HOSTCC, lets add
Makefile.prog for simplicity, having definition and routines similar
to ones, used in script/Makefile.host. That allows later add
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
index 000000000000..1d138bc21dd4
--- /dev/null
+++ b/samples/bpf/Makefile.prog
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Building binaries on the host system
+# Binaries are not used during the compilation of the kernel, and intendent to
+# be build for target board, target board can be host ofc. Added to build
+# binaries to run not on host system.
+#
+# Only C is supported, but can be extended for C++.
+#
+# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
+# progs-y := xdpsock_example
+# Will compile xdpsock_example.c and create an executable named xdpsock_example
+#
+# progs-y    := xdpsock
+# xdpsock-objs := xdpsock_user.o xdpsock_user2.o
+# Will compile xdpsock.c and xdpsock.c, and then link the executable
+# xdpsock, based on xdpsock_user.o and xdpsock_user2.o
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-8-ivan.khoronzhuk%40linaro.org.
