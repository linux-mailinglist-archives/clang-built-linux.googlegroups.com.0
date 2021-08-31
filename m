Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBXX7XCEQMGQE3NQOIPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD413FCA22
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:40 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id c6-20020aca35060000b029025c5504f461sf7052776oia.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420959; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1guysO9uWA7hFgHWB/2OTp7eXqMB4/fHpPxIFssdKBGDgVOp56N9ChYG9fqzbtMMa
         dn7azRSBAz4dvUTI6iJg7b4OJk3qMGu15IjvU0MKNpfBKAXuXqmFlmlKhX9GmY0A4nOh
         PJgKyOq3wnsQqIACtv+DqWeJzxzLS//rBgm2wjJUPGepqibVxgJFQYBSNuo5hw2jRbA4
         z/fLlc11OhCEGfb1/B7lG6kIwDnvWDjwysz3UmIAipkAB71RPfo3CBdaXY9n/qDzQw36
         rCs9ClFNXYSbxWz9cbxdKo6zrmKSwv6rKQ4WMwy7Ff/oeN8RcnDNBEx/HXkf9Woi+vAL
         6/2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y/No4yGELioaM5fDAWqpX/El3RhaF5NyhqwLXMi8Kvc=;
        b=VaclJR67SOagUmkybWFJ/1F85K3MkkRgDYFCYtM4VsgZZIJGUX6N0R1SRVUyVjX9II
         6KUzuxgfrerP9SXX8LlGu1uKvwbE+A8neSV3v+71WrKwE+o4ArDqPF+oBfHTUUY2U7Ni
         0k4oeaStdNmZcOT/3ss4NaYvKTpCrdripu1tfswX9Mp7nQosHhyMLDeRRBF9HozVmAqz
         Twnc9FGwO/PiykwxoOlN0OMVVnE2mTYWpt1zonmZohPq52E6znnDg5ULrMNUpDQoqUn7
         4GNqRVUT3OmqeKjRQa+h9fO5LrW2AwKEhEbyba/uIbwJ3400UGsyDrQMZ46z/godHUPB
         MTww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/No4yGELioaM5fDAWqpX/El3RhaF5NyhqwLXMi8Kvc=;
        b=oIi0159V7lKmjXn6IpZ6SBenamRf7kWm4rHS6O9qTKvU5ZCLMb4ita/a8TnyQsvnGc
         odPWBhQtZW207Qd2NJ9ObnHMp6g2bEVjfKH0NQiiUAev1mY8fXjXkKbFLtZ7Q3RUw/vp
         paRsgqbIV+Ot7TzJ6pvG4kPiwKl5aGjozLvMzrivAZyD7eZLpm0YfHWGcJlxCysFyH10
         QwcbI2gS3bLU/s15coI80ogjHPVIQdQ0ChupRsYFPKkA4y9CnqrUaK/ldPFFF+zWpaNO
         Sq6AdbTneOwas/aOdqIvN6+w1Ah3BGiBTo1hyoW7xo4JzERz7ciQow2w+i3gkTIGYYqG
         xSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/No4yGELioaM5fDAWqpX/El3RhaF5NyhqwLXMi8Kvc=;
        b=m5WnQit4xa1SsnT6CFbsCkr3it/TC9J9duBd47yTuU7s/hng7eGpswSNlFjnJbfZCn
         wimJGLsrsdyH/WHFWOFULiUy2nJzU8UBvO3Cns1XOCpxPWLtpJSxN/HnzaRzL9mpaDoY
         b/aaBMYJh7X1w/BYJM8tDQnSthJyKauAYWcC8ZFShxjo+NKPYTTfb047Jlbigog7er+b
         BeL2RlrgA1TMLzzYdae3TCu/gkUjzlUL7IanaSmFWfAwi6CgR/UOkQWLaldoVCA6ALMP
         iB8BpiL6xIc3yVsJkwWlETbMpbo8QEgmo+KIT9w+WcxUXhPTUTFT2Ix60Y3m0B7WaIS/
         46TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WXcuPooblejaad33dBIHHJCeixhA0po8SyUyOpusP3QzlcN87
	958CbWxTgGP6fQP039AX2cs=
X-Google-Smtp-Source: ABdhPJxdzwQi582qZ/91s6aAaUiXlgCgrHQF4TDLl5gl/B9olQq+ltISw4pNDM9i2s2Ha7c3X/Hxmg==
X-Received: by 2002:a05:6808:8f9:: with SMTP id d25mr3445709oic.114.1630420958878;
        Tue, 31 Aug 2021 07:42:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:20d:: with SMTP id l13ls4482492oie.5.gmail; Tue, 31
 Aug 2021 07:42:38 -0700 (PDT)
X-Received: by 2002:aca:5a8b:: with SMTP id o133mr3476616oib.79.1630420958390;
        Tue, 31 Aug 2021 07:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420958; cv=none;
        d=google.com; s=arc-20160816;
        b=ckajh3OlZxjiU9k7/NX4YLXWZ73Msro0Jz6xM0APkZYAfU0zJf4CskPwr8VD6/RacK
         L/Y0J0pINRgAFDysmhw3zoMT1csp+0QVFaWJj3NowTc/sc+0zb9639iBTTsZM5h8Asbi
         LM34W1IQ+qXI12QSN/WWyGhqk6JbIbvfOOlAkNU+Y/ei8HtjWQ6oGdAXnuypwpw1pCx+
         mr1g8Joi3VNCp0lMFEk+1bcZsCle20yJcJVnOmJ5XZdlEeQ+Fl9kQqAnhb8yy8bHjoJs
         Iz27riDI560KK6dg135ZcwSD9G1cVCVQZ2CTOGAXbiazgy3nXvuVXs71nXHPPz8Y/pML
         6NRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Nd3Ua3w7nYOnda6l41PR4nQaj5qMunAgBzuuD3dOEdI=;
        b=IWRZJDd4Q9HQ1vvyNfj/LGdgv81+5umZyhOK7U4Th2wLOGNArKGIplO0+Qn08SsYhh
         ivNHA3kvrWsS0KBfr5hQ6c864CoD03f4NxTyfqGZFmosuc1JdPTKvl6lgkxmKGXlcS/5
         zhf5j1lVo/o7Ascu7vUif6WIbdrGUupH+sWFYvfLq/OKIjTHZ1kBp9xYxRnQCeHaS+To
         /Xr44f2fK7gJzoAuzI+DSzsbjODRplYV9hhm8X1judiGnooGfLUuMKsK1KD99f+fvdZ2
         plWYW3XCCDbT4jLSBhkFFkVPHsCOB4AOFekL0I7U5Ebz2FpVMMaWqA0b5TqY86Nq0lQX
         +qWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id bf14si235307oib.0.2021.08.31.07.42.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218496961"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218496961"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="689989930"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga005.fm.intel.com with ESMTP; 31 Aug 2021 07:42:32 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfl002209;
	Tue, 31 Aug 2021 15:42:30 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 21/22] Documentation: add a documentation for FG-KASLR
Date: Tue, 31 Aug 2021 16:41:13 +0200
Message-Id: <20210831144114.154-22-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kristen Carlson Accardi <kristen@linux.intel.com>

Describe the main principles behind the FG-KASLR hardening feature
in a new doc section.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 .../admin-guide/kernel-parameters.txt         |   6 +
 Documentation/security/fgkaslr.rst            | 172 ++++++++++++++++++
 Documentation/security/index.rst              |   1 +
 3 files changed, 179 insertions(+)
 create mode 100644 Documentation/security/fgkaslr.rst

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index bdb22006f713..f63175a13147 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2211,6 +2211,12 @@
 			kernel and module base offset ASLR (Address Space
 			Layout Randomization).
 
+	nofgkaslr	[KNL]
+			When CONFIG_FG_KASLR is set, this parameter
+			disables kernel function granular ASLR
+			(Address Space Layout Randomization).
+			See Documentation/security/fgkaslr.rst.
+
 	kasan_multi_shot
 			[KNL] Enforce KASAN (Kernel Address Sanitizer) to print
 			report on every invalid memory access. Without this
diff --git a/Documentation/security/fgkaslr.rst b/Documentation/security/fgkaslr.rst
new file mode 100644
index 000000000000..50dc24f675b5
--- /dev/null
+++ b/Documentation/security/fgkaslr.rst
@@ -0,0 +1,172 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=====================================================================
+Function Granular Kernel Address Space Layout Randomization (fgkaslr)
+=====================================================================
+
+:Date: 6 April 2020
+:Author: Kristen Accardi
+
+Kernel Address Space Layout Randomization (KASLR) was merged into the kernel
+with the objective of increasing the difficulty of code reuse attacks. Code
+reuse attacks reused existing code snippets to get around existing memory
+protections. They exploit software bugs which expose addresses of useful code
+snippets to control the flow of execution for their own nefarious purposes.
+KASLR as it was originally implemented moves the entire kernel code text as a
+unit at boot time in order to make addresses less predictable. The order of the
+code within the segment is unchanged - only the base address is shifted. There
+are a few shortcomings to this algorithm.
+
+1. Low Entropy - there are only so many locations the kernel can fit in. This
+   means an attacker could guess without too much trouble.
+2. Knowledge of a single address can reveal the offset of the base address,
+   exposing all other locations for a published/known kernel image.
+3. Info leaks abound.
+
+Finer grained ASLR has been proposed as a way to make ASLR more resistant
+to info leaks. It is not a new concept at all, and there are many variations
+possible. Function reordering is an implementation of finer grained ASLR
+which randomizes the layout of an address space on a function level
+granularity. The term "fgkaslr" is used in this document to refer to the
+technique of function reordering when used with KASLR, as well as finer grained
+KASLR in general.
+
+The objective of this patch set is to improve a technology that is already
+merged into the kernel (KASLR). This code will not prevent all code reuse
+attacks, and should be considered as one of several tools that can be used.
+
+Implementation Details
+======================
+
+The over-arching objective of the fgkaslr implementation is incremental
+improvement over the existing KASLR algorithm. It is designed to work with
+the existing solution, and there are two main area where code changes occur:
+Build time, and Load time.
+
+Build time
+----------
+
+GCC has had an option to place functions into individual .text sections
+for many years now (-ffunction-sections). This option is used to implement
+function reordering at load time. The final compiled vmlinux retains all the
+section headers, which can be used to help find the address ranges of each
+function. Using this information and an expanded table of relocation addresses,
+individual text sections can be shuffled immediately after decompression.
+Some data tables inside the kernel that have assumptions about order
+require sorting after the update. In order to modify these tables,
+a few key symbols from the objcopy symbol stripping process are preserved
+for use after shuffling the text segments. Any special input sections which are
+defined by the kernel build process and collected into the .text output
+segment are left unmodified and will still be present inside the .text segment,
+unrandomized other than normal base address randomization.
+
+Load time
+---------
+
+The boot kernel was modified to parse the vmlinux elf file after
+decompression to check for symbols for modifying data tables, and to
+look for any .text.* sections to randomize. The sections are then shuffled,
+and tables are updated or resorted. The existing code which updated relocation
+addresses was modified to account for not just a fixed delta from the load
+address, but the offset that the function section was moved to. This requires
+inspection of each address to see if it was impacted by a randomization.
+
+In order to hide the new layout, symbols reported through /proc/kallsyms will
+be displayed in a random order.
+
+Performance Impact
+==================
+
+There are two areas where function reordering can impact performance: boot
+time latency, and run time performance.
+
+Boot time latency
+-----------------
+
+This implementation of finer grained KASLR impacts the boot time of the kernel
+in several places. It requires additional parsing of the kernel ELF file to
+obtain the section headers of the sections to be randomized. It calls the
+random number generator for each section to be randomized to determine that
+section's new memory location. It copies the decompressed kernel into a new
+area of memory to avoid corruption when laying out the newly randomized
+sections. It increases the number of relocations the kernel has to perform at
+boot time vs. standard KASLR, and it also requires a lookup on each address
+that needs to be relocated to see if it was in a randomized section and needs
+to be adjusted by a new offset. Finally, it re-sorts a few data tables that
+are required to be sorted by address.
+
+Booting a test VM on a modern, well appointed system showed an increase in
+latency of approximately 1 second.
+
+Run time
+--------
+
+The performance impact at run-time of function reordering varies by workload.
+Randomly reordering the functions will cause an increase in cache misses
+for some workloads. Some workloads perform significantly worse under FGKASLR,
+while others stay the same or even improve. In general, it will depend on the
+code flow whether or not finer grained KASLR will impact a workload, and how
+the underlying code was designed. Because the layout changes per boot, each
+time a system is rebooted the performance of a workload may change.
+
+Image Size
+==========
+
+fgkaslr increases the size of the kernel binary due to the extra section
+headers that are included, as well as the extra relocations that need to
+be added. You can expect fgkaslr to increase the size of the resulting
+vmlinux by about 3%, and the compressed image (bzImage) by 15%.
+
+Memory Usage
+============
+
+fgkaslr increases the amount of heap that is required at boot time,
+although this extra memory is released when the kernel has finished
+decompression. As a result, it may not be appropriate to use this feature
+on systems without much memory.
+
+Building
+========
+
+To enable fine grained KASLR, you need to have the following config options
+set (including all the ones you would use to build normal KASLR)
+
+``CONFIG_FG_KASLR=y``
+
+fgkaslr for the kernel is only supported for the X86_64 architecture.
+
+Modules
+=======
+
+Modules are randomized similarly to the rest of the kernel by shuffling
+the sections at load time prior to moving them into memory. The module must
+also have been build with the -ffunction-sections compiler option.
+
+Although fgkaslr for the kernel is only supported for the X86_64 architecture,
+it is possible to use fgkaslr with modules on other architectures. To enable
+this feature, select the following config option:
+
+``CONFIG_MODULE_FG_KASLR``
+
+This option is selected automatically for X86_64 when CONFIG_FG_KASLR is set.
+
+Disabling
+=========
+
+Disabling normal kaslr using the nokaslr command line option also disables
+fgkaslr. In addition, it is possible to disable fgkaslr separately by booting
+with "nofgkaslr" on the commandline.
+
+Further Information
+===================
+
+There are a lot of academic papers which explore finer grained ASLR.
+This paper in particular contributed significantly to the implementation design.
+
+Selfrando: Securing the Tor Browser against De-anonymization Exploits,
+M. Conti, S. Crane, T. Frassetto, et al.
+
+For more information on how function layout impacts performance, see:
+
+Optimizing Function Placement for Large-Scale Data-Center Applications,
+G. Ottoni, B. Maher
diff --git a/Documentation/security/index.rst b/Documentation/security/index.rst
index 16335de04e8c..41444124090f 100644
--- a/Documentation/security/index.rst
+++ b/Documentation/security/index.rst
@@ -7,6 +7,7 @@ Security Documentation
 
    credentials
    IMA-templates
+   fgkaslr
    keys/index
    lsm
    lsm-development
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-22-alexandr.lobakin%40intel.com.
