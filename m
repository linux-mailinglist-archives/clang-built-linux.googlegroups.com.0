Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBTH7XCEQMGQEOVH3KQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1370B3FCA0A
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:22 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id q12-20020a05683033cc00b00521230773b1sf4210921ott.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420941; cv=pass;
        d=google.com; s=arc-20160816;
        b=qtmq6Py861nrbd52u/QQXWn+GkgbGS1D18TQZ/28Pe+mxKSqbp5od7e3AvEnhuuz5K
         AWKJRdPUVwphKUkzh4YmWgMzaZvG7BsburaYy5pZm+kAsjeHf0eszDUXXebtwHNrAS6X
         RZyVnFvVzzjhojQ80itlGyRLQpOId8qu76bD/k1tgqt753eIAKh3DUva+uZX0xkYs4WW
         2IDqy4HFs829+yIEm31RJG05PkKLaWEKo/fOqDLBS7d6DosXje3wqY4b6LkC6QJQa4g+
         mhoUbEp/Z6Gru4h3yGSVw4L6IyTp7eEcw15yngdMgjFR246D1xDxU3qY255D3MIgb+Mb
         H8Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+kWW6+mDugZFr1B1K/xCYmPHHXdGS2qbIj1E71omH08=;
        b=YF1uNNGHOs58uSz2XL4zck+PmXvYI6bAFpj9CUFta61+gfdamcmB08PREKy9C7R0wH
         wxw9lB1hMkydaJTivx7UWe437Tdn9jJCl3RFa9jYyOaU5aVm9XrqdBGvRj1xUPndHR7f
         k4kTVXeaJqRtVx4W3iA7ntttB4g72hfYqsqBsqiABYrGimzUHWHFy892sk4F5OJcvuQY
         7rZRZl40/muQsVD97sD5dXRDa8snM7VEi/ylZveIT0td+odEDwBE+0k+v4jWhPgd/s3x
         q0EEn8l8CQOBZzRmwyE9QniFq6TqMV6DnVlDYZ/iV7aYXW5VMYPxWv6GECCbvE859Z5b
         QtPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kWW6+mDugZFr1B1K/xCYmPHHXdGS2qbIj1E71omH08=;
        b=AMc6uQggF+p9N50dtZUu1OroJtaHiKdoiQANqOeGiCj/a86u/M1mQ5DMKSnXYymoNr
         Y6ipjRMLRcAITOsfFtII0Y/ht9J+gIaQa34yAeC0cDe8PJoMGQs+HoSsOzXfhh2FZL9O
         W7jgsiXXAqYdIxQWf7dUHZkop1Gfackv0FCHZnlaQBCD7LqsDDp1Al58oO3hEYQSF8C+
         9S42x72rdoWtaQLThGiZmkcaX9yUp8FusqPkVASyuhspjOzBe2VbxCbBZjulFc9pif7P
         E+fKhlpfcmDZlOWB176Df5Lx9gqTLYlV0wH1KJwSFhAm/OORSF4BVAUtuJ+/ajrlSVUw
         hLxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kWW6+mDugZFr1B1K/xCYmPHHXdGS2qbIj1E71omH08=;
        b=j5JoeOuCa6pplKlDoaoHF1tcouDvSZnN1ZOe78syDxzlODTo+PDq2J5FCHCyAAxWAB
         t7f0EwT4IDlptHZJ6SDGnEYzrN5TzUFciMLzv7FwjBMhS1n/pCjLQuJFg8XKS2KC8ceH
         t+Y4yiE0BaIaiTanfFyAsT5wqp/z/X1wD8yKb2fXcckvQotjMHVL7GwbFrGfyZ2APrBz
         Ezn+iyGthH0b791RXo82t6MAzglK5oyzqZjAY+zSFiEsv5Gc97pj08JaWnSUlqb3XDha
         cjKu14DZ4RjpKRYM2JnO26kpI7TimkDMt4eB0E+XZ2Vjo1wNZjNY61QoLfozTeleRrBS
         g/6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uMiSP3xmYNEabwXR+wzjjhTBbKlcK8GZt7BaHe7AlmzFjQpb8
	uWU4Ms6IgUpkSf4hHSqwcJo=
X-Google-Smtp-Source: ABdhPJwZ031RXJoZjwoiXNuaNEzxRU5zTs3I9PWJbqebWNrZyXAKDRX4sX60m0vBOKB7mrj3/qSySg==
X-Received: by 2002:aca:1304:: with SMTP id e4mr3412495oii.89.1630420941046;
        Tue, 31 Aug 2021 07:42:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls4777662oiw.4.gmail; Tue,
 31 Aug 2021 07:42:20 -0700 (PDT)
X-Received: by 2002:aca:b7d6:: with SMTP id h205mr3395756oif.84.1630420940578;
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420940; cv=none;
        d=google.com; s=arc-20160816;
        b=tE30CdiEraB+5TF3gO2UuNwhNdWDd+KqzsGeqSxYm2+PfdQ+5psWIxzQaEumrHRY8U
         fgEe7enkCop9sJfBLSUZx1JpyQb1qklmccf7ZHWY4gX1SITHPZsC4NvT1mD4v5a7jNtZ
         xBDA3z4FPOPcnboQQf+0FxQB6uP/ltTjEidAnIFq6BgwQRvDpt9/0RLuuFbB8+whC1Iu
         WZVP/lv5kKzXbO6j1XEc7xIEeGn+s9itErPLFmFdos8Z3F07I4ZaOK4cwMpdUpK8VDhh
         uvwdmvzS745GGp8ofD9t8S4nRrR8es/CPSbJUY108/k41AU+Msxoavwu1Y9idwGj8438
         r6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=0ph5L5XAd1j5AqKPeWRG/vQ8X7YNt8QVGr+drRSFxUo=;
        b=N/w5yOisnkS2FRnEPOoaUPXMRg+8M8jPiL0y1NawDxEXmn1rsmXjktj0ad9NPEfHpN
         m9Q6cLToTIK2h0Qf0iNjNQ09MhmdDaKNuO3wDHdNhrZtZQenid9vayfhkcsMhkjTjtx2
         5MNCFyS72XIsOkAvArvhGvKefLtMjfKWxy7ELjRhYi9jgPObnZP4MPf70k/kSydX+mS8
         gozC7/bNIsBDPJm5BDAA8DvT6cvl6Bu8ltvGSLGgTjPAxlB3dI6Mc9yWhHN1kxcVRjRz
         DJenSbp7kSJjuidkDi3IGAvTtfTubnmTNm8z6shnt04FAo3jJSPU7qxAG7gjJRO7PogF
         lTxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id f21si257559oiw.2.2021.08.31.07.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="198723515"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="198723515"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="645345804"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga005.jf.intel.com with ESMTP; 31 Aug 2021 07:42:13 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfb002209;
	Tue, 31 Aug 2021 15:42:10 +0100
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
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        kernel test robot <lkp@intel.com>
Subject: [PATCH v6 kspp-next 11/22] x86: Add support for function granular KASLR
Date: Tue, 31 Aug 2021 16:41:03 +0200
Message-Id: <20210831144114.154-12-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

This commit contains the changes required to re-layout the kernel text
sections generated by -ffunction-sections shortly after decompression.
Documentation of the feature is also added.

After decompression, the decompressed image's elf headers are parsed.
In order to manually update certain data structures that are built with
relative offsets during the kernel build process, certain symbols are
not stripped by objdump and their location is retained in the elf symbol
tables. These addresses are saved.

If the image was built with -ffunction-sections, there will be ELF section
headers present which contain information about the address range of each
section. Anything that is not broken out into function sections (i.e. is
consolidated into .text) is left in it's original location, but any other
executable section which begins with ".text." is located and shuffled
randomly within the remaining text segment address range.

After the sections have been copied to their new locations, but before
relocations have been applied, the kallsyms tables must be updated to
reflect the new symbol locations. Because it is expected that these tables
will be sorted by address, the kallsyms tables will need to be sorted
after the update.

When applying relocations, the address of the relocation needs to be
adjusted by the offset from the original location of the section that was
randomized to it's new location. In addition, if a value at that relocation
was a location in the text segment that was randomized, it's value will be
adjusted to a new location.

After relocations have been applied, the exception table must be updated
with new symbol locations, and then re-sorted by the new address. The
orc table will have been updated as part of applying relocations, but since
it is expected to be sorted by address, it will need to be resorted.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Tested-by: Tony Luck <tony.luck@intel.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reported-by: kernel test robot <lkp@intel.com> # #if -> #ifdef
[ alobakin: fix .altinstr_replacement relocations ]
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/x86/boot/compressed/Makefile        |   2 +
 arch/x86/boot/compressed/fgkaslr.c       | 905 +++++++++++++++++++++++
 arch/x86/boot/compressed/misc.c          | 154 +++-
 arch/x86/boot/compressed/misc.h          |  28 +
 arch/x86/boot/compressed/utils.c         |  13 +
 arch/x86/boot/compressed/vmlinux.symbols |  19 +
 arch/x86/include/asm/boot.h              |  13 +-
 arch/x86/kernel/vmlinux.lds.S            |   2 +
 include/uapi/linux/elf.h                 |   1 +
 9 files changed, 1110 insertions(+), 27 deletions(-)
 create mode 100644 arch/x86/boot/compressed/fgkaslr.c
 create mode 100644 arch/x86/boot/compressed/utils.c
 create mode 100644 arch/x86/boot/compressed/vmlinux.symbols

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index c31a24161fbf..e12fb0c8f4fc 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -89,6 +89,7 @@ vmlinux-objs-y := $(obj)/vmlinux.lds $(obj)/kernel_info.o $(obj)/head_$(BITS).o
 
 vmlinux-objs-$(CONFIG_EARLY_PRINTK) += $(obj)/early_serial_console.o
 vmlinux-objs-$(CONFIG_RANDOMIZE_BASE) += $(obj)/kaslr.o
+vmlinux-objs-$(CONFIG_FG_KASLR) += $(obj)/fgkaslr.o $(obj)/utils.o
 ifdef CONFIG_X86_64
 	vmlinux-objs-y += $(obj)/ident_map_64.o
 	vmlinux-objs-y += $(obj)/idt_64.o $(obj)/idt_handlers_64.o
@@ -108,6 +109,7 @@ $(obj)/vmlinux: $(vmlinux-objs-y) $(efi-obj-y) FORCE
 OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
 
 ifdef CONFIG_FG_KASLR
+OBJCOPYFLAGS += --keep-symbols=$(srctree)/$(src)/vmlinux.symbols
 RELOCS_ARGS += --fg-kaslr
 endif
 
diff --git a/arch/x86/boot/compressed/fgkaslr.c b/arch/x86/boot/compressed/fgkaslr.c
new file mode 100644
index 000000000000..0de99af5fc8d
--- /dev/null
+++ b/arch/x86/boot/compressed/fgkaslr.c
@@ -0,0 +1,905 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This contains the routines needed to reorder the kernel text section
+ * at boot time.
+ *
+ * Copyright (C) 2020-2021, Intel Corporation.
+ * Author: Kristen Carlson Accardi <kristen@linux.intel.com>
+ */
+
+#include "misc.h"
+#include "error.h"
+#include "pgtable.h"
+#include "../string.h"
+#include "../voffset.h"
+#include <linux/sort.h>
+#include <linux/bsearch.h>
+#include "../../include/asm/extable.h"
+#include "../../include/asm/orc_types.h"
+
+/*
+ * Longest parameter of 'fgkaslr=' is 'off' right now, plus an extra '\0'
+ * for termination.
+ */
+#define MAX_FGKASLR_ARG_LENGTH 4
+static int nofgkaslr;
+
+/*
+ * Use normal definitions of mem*() from string.c. There are already
+ * included header files which expect a definition of memset() and by
+ * the time we define memset macro, it is too late.
+ */
+#undef memcpy
+#undef memset
+#define memzero(s, n)	memset((s), 0, (n))
+#define memmove		memmove
+
+void *memmove(void *dest, const void *src, size_t n);
+
+static unsigned long percpu_start;
+static unsigned long percpu_end;
+
+static long addr_kallsyms_names;
+static long addr_kallsyms_offsets;
+static long addr_kallsyms_num_syms;
+static long addr_kallsyms_relative_base;
+static long addr_kallsyms_markers;
+static long addr___start___ex_table;
+static long addr___stop___ex_table;
+static long addr___altinstr_replacement;
+static long addr___altinstr_replacement_end;
+static long addr__stext;
+static long addr__etext;
+static long addr__sinittext;
+static long addr__einittext;
+static long addr___start_orc_unwind_ip;
+static long addr___stop_orc_unwind_ip;
+static long addr___start_orc_unwind;
+
+/* addresses in mapped address space */
+static int *base;
+static u8 *names;
+static unsigned long relative_base;
+static unsigned int *markers_addr;
+
+struct kallsyms_name {
+	u8 len;
+	u8 indecis[256];
+};
+
+static struct kallsyms_name *names_table;
+
+static struct orc_entry *cur_orc_table;
+static int *cur_orc_ip_table;
+
+/* Array of pointers to sections headers for randomized sections */
+Elf_Shdr **sections;
+
+/* Number of elements in the randomized section header array (sections) */
+static int sections_size;
+
+/* Array of all section headers, randomized or otherwise */
+static Elf_Shdr *sechdrs;
+
+static bool is_orc_unwind(long addr)
+{
+	if (addr >= addr___start_orc_unwind_ip &&
+	    addr < addr___stop_orc_unwind_ip)
+		return true;
+	return false;
+}
+
+static bool is_text(long addr)
+{
+	if ((addr >= addr__stext && addr < addr__etext) ||
+	    (addr >= addr__sinittext && addr < addr__einittext) ||
+	    (addr >= addr___altinstr_replacement &&
+	     addr <= addr___altinstr_replacement_end))
+		return true;
+	return false;
+}
+
+bool is_percpu_addr(long pc, long offset)
+{
+	unsigned long ptr;
+	long address;
+
+	address = pc + offset + 4;
+
+	ptr = (unsigned long)address;
+
+	if (ptr >= percpu_start && ptr < percpu_end)
+		return true;
+
+	return false;
+}
+
+static int cmp_section_addr(const void *a, const void *b)
+{
+	unsigned long ptr = (unsigned long)a;
+	Elf_Shdr *s = *(Elf_Shdr **)b;
+	unsigned long end = s->sh_addr + s->sh_size;
+
+	if (ptr >= s->sh_addr && ptr < end)
+		return 0;
+
+	if (ptr < s->sh_addr)
+		return -1;
+
+	return 1;
+}
+
+static int cmp_section_addr_orc(const void *a, const void *b)
+{
+	unsigned long ptr = (unsigned long)a;
+	Elf_Shdr *s = *(Elf_Shdr **)b;
+	unsigned long end = s->sh_addr + s->sh_size;
+
+	/* orc relocations can be one past the end of the section */
+	if (ptr >= s->sh_addr && ptr <= end)
+		return 0;
+
+	if (ptr < s->sh_addr)
+		return -1;
+
+	return 1;
+}
+
+/*
+ * Discover if the orc_unwind address is in a randomized section and if so,
+ * adjust by the saved offset.
+ */
+Elf_Shdr *adjust_address_orc(long *address)
+{
+	Elf_Shdr **s;
+	Elf_Shdr *shdr;
+
+	if (nofgkaslr)
+		return NULL;
+
+	s = bsearch((const void *)*address, sections, sections_size, sizeof(*s),
+		    cmp_section_addr_orc);
+	if (s) {
+		shdr = *s;
+		*address += shdr->sh_offset;
+		return shdr;
+	}
+
+	return NULL;
+}
+
+/*
+ * Discover if the address is in a randomized section and if so, adjust
+ * by the saved offset.
+ */
+Elf_Shdr *adjust_address(long *address)
+{
+	Elf_Shdr **s;
+	Elf_Shdr *shdr;
+
+	if (nofgkaslr)
+		return NULL;
+
+	s = bsearch((const void *)*address, sections, sections_size, sizeof(*s),
+		    cmp_section_addr);
+	if (s) {
+		shdr = *s;
+		*address += shdr->sh_offset;
+		return shdr;
+	}
+
+	return NULL;
+}
+
+void adjust_relative_offset(long pc, long *value, Elf_Shdr *section)
+{
+	Elf_Shdr *s;
+	long address;
+
+	if (nofgkaslr)
+		return;
+
+	/*
+	 * sometimes we are updating a relative offset that would
+	 * normally be relative to the next instruction (such as a call).
+	 * In this case to calculate the target, you need to add 32bits to
+	 * the pc to get the next instruction value. However, sometimes
+	 * targets are just data that was stored in a table such as ksymtab
+	 * or cpu alternatives. In this case our target is not relative to
+	 * the next instruction.
+	 */
+
+	/* Calculate the address that this offset would call. */
+	if (!is_text(pc))
+		address = pc + *value;
+	else
+		address = pc + *value + 4;
+
+	/*
+	 * orc ip addresses are sorted at build time after relocs have
+	 * been applied, making the relocs no longer valid. Skip any
+	 * relocs for the orc_unwind_ip table. These will be updated
+	 * separately.
+	 */
+	if (is_orc_unwind(pc))
+		return;
+
+	s = adjust_address(&address);
+
+	/*
+	 * if the address is in section that was randomized,
+	 * we need to adjust the offset.
+	 */
+	if (s)
+		*value += s->sh_offset;
+
+	/*
+	 * If the PC that this offset was calculated for was in a section
+	 * that has been randomized, the value needs to be adjusted by the
+	 * same amount as the randomized section was adjusted from it's original
+	 * location.
+	 */
+	if (section)
+		*value -= section->sh_offset;
+}
+
+static void kallsyms_swp(void *a, void *b, int size)
+{
+	int idx1, idx2;
+	int temp;
+	struct kallsyms_name name_a;
+
+	/* Determine our index into the array. */
+	idx1 = (int *)a - base;
+	idx2 = (int *)b - base;
+	temp = base[idx1];
+	base[idx1] = base[idx2];
+	base[idx2] = temp;
+
+	/* Swap the names table. */
+	memcpy(&name_a, &names_table[idx1], sizeof(name_a));
+	memcpy(&names_table[idx1], &names_table[idx2],
+	       sizeof(struct kallsyms_name));
+	memcpy(&names_table[idx2], &name_a, sizeof(struct kallsyms_name));
+}
+
+static int kallsyms_cmp(const void *a, const void *b)
+{
+	int addr_a, addr_b;
+	unsigned long uaddr_a, uaddr_b;
+
+	addr_a = *(int *)a;
+	addr_b = *(int *)b;
+
+	if (addr_a >= 0)
+		uaddr_a = addr_a;
+	if (addr_b >= 0)
+		uaddr_b = addr_b;
+
+	if (addr_a < 0)
+		uaddr_a = relative_base - 1 - addr_a;
+	if (addr_b < 0)
+		uaddr_b = relative_base - 1 - addr_b;
+
+	if (uaddr_b > uaddr_a)
+		return -1;
+
+	return 0;
+}
+
+static void deal_with_names(int num_syms)
+{
+	int num_bytes;
+	int i, j;
+	int offset;
+
+	/* we should have num_syms kallsyms_name entries */
+	num_bytes = num_syms * sizeof(*names_table);
+	names_table = malloc(num_syms * sizeof(*names_table));
+	if (!names_table) {
+		debug_putstr("\nbytes requested: ");
+		debug_puthex(num_bytes);
+		error("\nunable to allocate space for names table\n");
+	}
+
+	/* read all the names entries */
+	offset = 0;
+	for (i = 0; i < num_syms; i++) {
+		names_table[i].len = names[offset];
+		offset++;
+		for (j = 0; j < names_table[i].len; j++) {
+			names_table[i].indecis[j] = names[offset];
+			offset++;
+		}
+	}
+}
+
+static void write_sorted_names(int num_syms)
+{
+	int i, j;
+	int offset = 0;
+	unsigned int *markers;
+
+	/*
+	 * we are going to need to regenerate the markers table, which is a
+	 * table of offsets into the compressed stream every 256 symbols.
+	 * this code copied almost directly from scripts/kallsyms.c
+	 */
+	markers = malloc(sizeof(unsigned int) * ((num_syms + 255) / 256));
+	if (!markers) {
+		debug_putstr("\nfailed to allocate heap space of ");
+		debug_puthex(((num_syms + 255) / 256));
+		debug_putstr(" bytes\n");
+		error("Unable to allocate space for markers table");
+	}
+
+	for (i = 0; i < num_syms; i++) {
+		if ((i & 0xFF) == 0)
+			markers[i >> 8] = offset;
+
+		names[offset] = (u8)names_table[i].len;
+		offset++;
+		for (j = 0; j < names_table[i].len; j++) {
+			names[offset] = (u8)names_table[i].indecis[j];
+			offset++;
+		}
+	}
+
+	/* write new markers table over old one */
+	for (i = 0; i < ((num_syms + 255) >> 8); i++)
+		markers_addr[i] = markers[i];
+
+	free(markers);
+	free(names_table);
+}
+
+static void sort_kallsyms(unsigned long map)
+{
+	int num_syms;
+	int i;
+
+	debug_putstr("\nRe-sorting kallsyms...\n");
+
+	num_syms = *(int *)(addr_kallsyms_num_syms + map);
+	base = (int *)(addr_kallsyms_offsets + map);
+	relative_base = *(unsigned long *)(addr_kallsyms_relative_base + map);
+	markers_addr = (unsigned int *)(addr_kallsyms_markers + map);
+	names = (u8 *)(addr_kallsyms_names + map);
+
+	/*
+	 * the kallsyms table was generated prior to any randomization.
+	 * it is a bunch of offsets from "relative base". In order for
+	 * us to check if a symbol has an address that was in a randomized
+	 * section, we need to reconstruct the address to it's original
+	 * value prior to handle_relocations.
+	 */
+	for (i = 0; i < num_syms; i++) {
+		unsigned long addr;
+		int new_base;
+
+		/*
+		 * according to kernel/kallsyms.c, positive offsets are absolute
+		 * values and negative offsets are relative to the base.
+		 */
+		if (base[i] >= 0)
+			addr = base[i];
+		else
+			addr = relative_base - 1 - base[i];
+
+		if (adjust_address(&addr)) {
+			/* here we need to recalcuate the offset */
+			new_base = relative_base - 1 - addr;
+			base[i] = new_base;
+		}
+	}
+
+	/*
+	 * here we need to read in all the kallsyms_names info
+	 * so that we can regenerate it.
+	 */
+	deal_with_names(num_syms);
+
+	sort(base, num_syms, sizeof(int), kallsyms_cmp, kallsyms_swp);
+
+	/* write the newly sorted names table over the old one */
+	write_sorted_names(num_syms);
+}
+
+/*
+ * We need to include this file here rather than in utils.c because
+ * some of the helper functions in extable.c are used to update
+ * the extable below and are defined as "static" in extable.c
+ */
+#include "../../../../lib/extable.c"
+
+static inline unsigned long
+ex_fixup_handler(const struct exception_table_entry *x)
+{
+	return ((unsigned long)&x->handler + x->handler);
+}
+
+static inline unsigned long
+ex_fixup_addr(const struct exception_table_entry *x)
+{
+	return ((unsigned long)&x->fixup + x->fixup);
+}
+
+static void update_ex_table(unsigned long map)
+{
+	struct exception_table_entry *start_ex_table =
+		(struct exception_table_entry *)(addr___start___ex_table + map);
+	struct exception_table_entry *stop_ex_table =
+		(struct exception_table_entry *)(addr___stop___ex_table + map);
+	int num_entries =
+		(addr___stop___ex_table - addr___start___ex_table) /
+		sizeof(struct exception_table_entry);
+	int i;
+
+	debug_putstr("\nUpdating exception table...");
+	for (i = 0; i < num_entries; i++) {
+		unsigned long insn = ex_to_insn(&start_ex_table[i]);
+		unsigned long fixup = ex_fixup_addr(&start_ex_table[i]);
+		unsigned long handler = ex_fixup_handler(&start_ex_table[i]);
+		unsigned long addr;
+		Elf_Shdr *s;
+
+		/* check each address to see if it needs adjusting */
+		addr = insn - map;
+		s = adjust_address(&addr);
+		if (s)
+			start_ex_table[i].insn += s->sh_offset;
+
+		addr = fixup - map;
+		s = adjust_address(&addr);
+		if (s)
+			start_ex_table[i].fixup += s->sh_offset;
+
+		addr = handler - map;
+		s = adjust_address(&addr);
+		if (s)
+			start_ex_table[i].handler += s->sh_offset;
+	}
+}
+
+static void sort_ex_table(unsigned long map)
+{
+	struct exception_table_entry *start_ex_table =
+		(struct exception_table_entry *)(addr___start___ex_table + map);
+	struct exception_table_entry *stop_ex_table =
+		(struct exception_table_entry *)(addr___stop___ex_table + map);
+
+	debug_putstr("\nRe-sorting exception table...");
+
+	sort_extable(start_ex_table, stop_ex_table);
+}
+
+static inline unsigned long orc_ip(const int *ip)
+{
+	return (unsigned long)ip + *ip;
+}
+
+static void orc_sort_swap(void *_a, void *_b, int size)
+{
+	struct orc_entry *orc_a, *orc_b;
+	struct orc_entry orc_tmp;
+	int *a = _a, *b = _b, tmp;
+	int delta = _b - _a;
+
+	/* Swap the .orc_unwind_ip entries: */
+	tmp = *a;
+	*a = *b + delta;
+	*b = tmp - delta;
+
+	/* Swap the corresponding .orc_unwind entries: */
+	orc_a = cur_orc_table + (a - cur_orc_ip_table);
+	orc_b = cur_orc_table + (b - cur_orc_ip_table);
+	orc_tmp = *orc_a;
+	*orc_a = *orc_b;
+	*orc_b = orc_tmp;
+}
+
+static int orc_sort_cmp(const void *_a, const void *_b)
+{
+	struct orc_entry *orc_a;
+	const int *a = _a, *b = _b;
+	unsigned long a_val = orc_ip(a);
+	unsigned long b_val = orc_ip(b);
+
+	if (a_val > b_val)
+		return 1;
+	if (a_val < b_val)
+		return -1;
+
+	/*
+	 * The "weak" section terminator entries need to always be on the left
+	 * to ensure the lookup code skips them in favor of real entries.
+	 * These terminator entries exist to handle any gaps created by
+	 * whitelisted .o files which didn't get objtool generation.
+	 */
+	orc_a = cur_orc_table + (a - cur_orc_ip_table);
+	return orc_a->sp_reg == ORC_REG_UNDEFINED && !orc_a->end ? -1 : 1;
+}
+
+static void update_orc_table(unsigned long map)
+{
+	int i;
+	int num_entries =
+		(addr___stop_orc_unwind_ip - addr___start_orc_unwind_ip) / sizeof(int);
+
+	cur_orc_ip_table = (int *)(addr___start_orc_unwind_ip + map);
+	cur_orc_table = (struct orc_entry *)(addr___start_orc_unwind + map);
+
+	debug_putstr("\nUpdating orc tables...\n");
+	for (i = 0; i < num_entries; i++) {
+		unsigned long ip = orc_ip(&cur_orc_ip_table[i]);
+		Elf_Shdr *s;
+
+		/* check each address to see if it needs adjusting */
+		ip = ip - map;
+
+		/*
+		 * objtool places terminator entries just outside the end of
+		 * the section. To identify an orc_unwind_ip address that might
+		 * need adjusting, the address should be compared differently
+		 * than a normal address.
+		 */
+		s = adjust_address_orc(&ip);
+		if (s)
+			cur_orc_ip_table[i] += s->sh_offset;
+	}
+}
+
+static void sort_orc_table(unsigned long map)
+{
+	int num_entries =
+		(addr___stop_orc_unwind_ip - addr___start_orc_unwind_ip) / sizeof(int);
+
+	cur_orc_ip_table = (int *)(addr___start_orc_unwind_ip + map);
+	cur_orc_table = (struct orc_entry *)(addr___start_orc_unwind + map);
+
+	debug_putstr("\nRe-sorting orc tables...\n");
+	sort(cur_orc_ip_table, num_entries, sizeof(int), orc_sort_cmp,
+	     orc_sort_swap);
+}
+
+void post_relocations_cleanup(unsigned long map)
+{
+	if (!nofgkaslr) {
+		update_ex_table(map);
+		sort_ex_table(map);
+		update_orc_table(map);
+		sort_orc_table(map);
+	}
+
+	/*
+	 * maybe one day free will do something. So, we "free" this memory
+	 * in either case
+	 */
+	free(sections);
+	free(sechdrs);
+}
+
+void pre_relocations_cleanup(unsigned long map)
+{
+	if (nofgkaslr)
+		return;
+
+	sort_kallsyms(map);
+}
+
+static void shuffle_sections(int *list, int size)
+{
+	int i;
+	unsigned long j;
+	int temp;
+
+	for (i = size - 1; i > 0; i--) {
+		j = kaslr_get_random_long(NULL) % (i + 1);
+
+		temp = list[i];
+		list[i] = list[j];
+		list[j] = temp;
+	}
+}
+
+static void move_text(int num_sections, char *secstrings, Elf_Shdr *text,
+		      void *source, void *dest, Elf64_Phdr *phdr)
+{
+	unsigned long adjusted_addr;
+	int copy_bytes;
+	void *stash;
+	Elf_Shdr **sorted_sections;
+	int *index_list;
+	int i, j;
+
+	memmove(dest, source + text->sh_offset, text->sh_size);
+	copy_bytes = text->sh_size;
+	dest += text->sh_size;
+	adjusted_addr = text->sh_addr + text->sh_size;
+
+	/*
+	 * we leave the sections sorted in their original order
+	 * by s->sh_addr, but shuffle the indexes in a random
+	 * order for copying.
+	 */
+	index_list = malloc(sizeof(int) * num_sections);
+	if (!index_list)
+		error("Failed to allocate space for index list");
+
+	for (i = 0; i < num_sections; i++)
+		index_list[i] = i;
+
+	shuffle_sections(index_list, num_sections);
+
+	/*
+	 * to avoid overwriting earlier sections before they can get
+	 * copied to dest, stash everything into a buffer first.
+	 * this will cause our source address to be off by
+	 * phdr->p_offset though, so we'll adjust s->sh_offset below.
+	 *
+	 * TBD: ideally we'd simply decompress higher up so that our
+	 * copy wasn't in danger of overwriting anything important.
+	 */
+	stash = malloc(phdr->p_filesz);
+	if (!stash)
+		error("Failed to allocate space for text stash");
+
+	memcpy(stash, source + phdr->p_offset, phdr->p_filesz);
+
+	/* now we'd walk through the sections. */
+	for (j = 0; j < num_sections; j++) {
+		unsigned long aligned_addr;
+		Elf_Shdr *s;
+		const char *sname;
+		void *src;
+		int pad_bytes;
+
+		s = sections[index_list[j]];
+
+		sname = secstrings + s->sh_name;
+
+		/* align addr for this section */
+		aligned_addr = ALIGN(adjusted_addr, s->sh_addralign);
+
+		/*
+		 * copy out of stash, so adjust offset
+		 */
+		src = stash + s->sh_offset - phdr->p_offset;
+
+		/*
+		 * Fill any space between sections with int3
+		 */
+		pad_bytes = aligned_addr - adjusted_addr;
+		memset(dest, 0xcc, pad_bytes);
+
+		dest = (void *)ALIGN((unsigned long)dest, s->sh_addralign);
+
+		memmove(dest, src, s->sh_size);
+
+		dest += s->sh_size;
+		copy_bytes += s->sh_size + pad_bytes;
+		adjusted_addr = aligned_addr + s->sh_size;
+
+		/* we can blow away sh_offset for our own uses */
+		s->sh_offset = aligned_addr - s->sh_addr;
+	}
+
+	free(index_list);
+
+	/*
+	 * move remainder of text segment. Ok to just use original source
+	 * here since this area is untouched.
+	 */
+	memmove(dest, source + text->sh_offset + copy_bytes,
+		phdr->p_filesz - copy_bytes);
+	free(stash);
+}
+
+#define GET_SYM(name)							\
+	do {								\
+		if (!addr_ ## name) {					\
+			if (strcmp(#name, strtab + sym->st_name) == 0) {\
+				addr_ ## name = sym->st_value;		\
+				continue;				\
+			}						\
+		}							\
+	} while (0)
+
+static void parse_symtab(Elf64_Sym *symtab, char *strtab, long num_syms)
+{
+	Elf64_Sym *sym;
+
+	if (!symtab || !strtab)
+		return;
+
+	debug_putstr("\nLooking for symbols... ");
+
+	/*
+	 * walk through the symbol table looking for the symbols
+	 * that we care about.
+	 */
+	for (sym = symtab; --num_syms >= 0; sym++) {
+		if (!sym->st_name)
+			continue;
+
+		GET_SYM(kallsyms_num_syms);
+		GET_SYM(kallsyms_offsets);
+		GET_SYM(kallsyms_relative_base);
+		GET_SYM(kallsyms_names);
+		GET_SYM(kallsyms_markers);
+		GET_SYM(__altinstr_replacement);
+		GET_SYM(__altinstr_replacement_end);
+		GET_SYM(_stext);
+		GET_SYM(_etext);
+		GET_SYM(_sinittext);
+		GET_SYM(_einittext);
+		GET_SYM(__start_orc_unwind_ip);
+		GET_SYM(__stop_orc_unwind_ip);
+		GET_SYM(__start_orc_unwind);
+		GET_SYM(__start___ex_table);
+		GET_SYM(__stop___ex_table);
+	}
+}
+
+void layout_randomized_image(void *output, Elf64_Ehdr *ehdr, Elf64_Phdr *phdrs)
+{
+	Elf64_Phdr *phdr;
+	Elf_Shdr *s;
+	Elf_Shdr *text = NULL;
+	Elf_Shdr *percpu = NULL;
+	char *secstrings;
+	const char *sname;
+	int num_sections = 0;
+	Elf64_Sym *symtab = NULL;
+	char *strtab = NULL;
+	long num_syms = 0;
+	void *dest;
+	int i;
+	char arg[MAX_FGKASLR_ARG_LENGTH];
+	Elf_Shdr shdr;
+	unsigned long shnum;
+	unsigned int shstrndx;
+
+	debug_putstr("\nParsing ELF section headers... ");
+
+	/*
+	 * Even though fgkaslr may have been disabled, we still
+	 * need to parse through the section headers to get the
+	 * start and end of the percpu section. This is because
+	 * if we were built with CONFIG_FG_KASLR, there are more
+	 * relative relocations present in vmlinux.relocs than
+	 * just the percpu, and only the percpu relocs need to be
+	 * adjusted when using just normal base address kaslr.
+	 */
+	if (cmdline_find_option_bool("nofgkaslr")) {
+		warn("FG_KASLR disabled on cmdline.");
+		nofgkaslr = 1;
+	}
+
+	/* read the first section header */
+	shnum = ehdr->e_shnum;
+	shstrndx = ehdr->e_shstrndx;
+	if (shnum == SHN_UNDEF || shstrndx == SHN_XINDEX) {
+		memcpy(&shdr, output + ehdr->e_shoff, sizeof(shdr));
+		if (shnum == SHN_UNDEF)
+			shnum = shdr.sh_size;
+		if (shstrndx == SHN_XINDEX)
+			shstrndx = shdr.sh_link;
+	}
+
+	/* we are going to need to allocate space for the section headers */
+	sechdrs = malloc(sizeof(*sechdrs) * shnum);
+	if (!sechdrs)
+		error("Failed to allocate space for shdrs");
+
+	sections = malloc(sizeof(*sections) * shnum);
+	if (!sections)
+		error("Failed to allocate space for section pointers");
+
+	memcpy(sechdrs, output + ehdr->e_shoff,
+	       sizeof(*sechdrs) * shnum);
+
+	/* we need to allocate space for the section string table */
+	s = &sechdrs[shstrndx];
+
+	secstrings = malloc(s->sh_size);
+	if (!secstrings)
+		error("Failed to allocate space for shstr");
+
+	memcpy(secstrings, output + s->sh_offset, s->sh_size);
+
+	/*
+	 * now we need to walk through the section headers and collect the
+	 * sizes of the .text sections to be randomized.
+	 */
+	for (i = 0; i < shnum; i++) {
+		s = &sechdrs[i];
+		sname = secstrings + s->sh_name;
+
+		if (s->sh_type == SHT_SYMTAB) {
+			/* only one symtab per image */
+			if (symtab)
+				error("Unexpected duplicate symtab");
+
+			symtab = malloc(s->sh_size);
+			if (!symtab)
+				error("Failed to allocate space for symtab");
+
+			memcpy(symtab, output + s->sh_offset, s->sh_size);
+			num_syms = s->sh_size / sizeof(*symtab);
+			continue;
+		}
+
+		if (s->sh_type == SHT_STRTAB && i != ehdr->e_shstrndx) {
+			if (strtab)
+				error("Unexpected duplicate strtab");
+
+			strtab = malloc(s->sh_size);
+			if (!strtab)
+				error("Failed to allocate space for strtab");
+
+			memcpy(strtab, output + s->sh_offset, s->sh_size);
+		}
+
+		if (!strcmp(sname, ".text")) {
+			if (text)
+				error("Unexpected duplicate .text section");
+
+			text = s;
+			continue;
+		}
+
+		if (!strcmp(sname, ".data..percpu")) {
+			/* get start addr for later */
+			percpu = s;
+			continue;
+		}
+
+		if (!(s->sh_flags & SHF_ALLOC) ||
+		    !(s->sh_flags & SHF_EXECINSTR) ||
+		    !(strstarts(sname, ".text")))
+			continue;
+
+		sections[num_sections] = s;
+
+		num_sections++;
+	}
+	sections[num_sections] = NULL;
+	sections_size = num_sections;
+
+	parse_symtab(symtab, strtab, num_syms);
+
+	for (i = 0; i < ehdr->e_phnum; i++) {
+		phdr = &phdrs[i];
+
+		switch (phdr->p_type) {
+		case PT_LOAD:
+			if ((phdr->p_align % 0x200000) != 0)
+				error("Alignment of LOAD segment isn't multiple of 2MB");
+			dest = output;
+			dest += (phdr->p_paddr - LOAD_PHYSICAL_ADDR);
+			if (!nofgkaslr &&
+			    (text && phdr->p_offset == text->sh_offset)) {
+				move_text(num_sections, secstrings, text,
+					  output, dest, phdr);
+			} else {
+				if (percpu &&
+				    phdr->p_offset == percpu->sh_offset) {
+					percpu_start = percpu->sh_addr;
+					percpu_end = percpu_start +
+							phdr->p_filesz;
+				}
+				memmove(dest, output + phdr->p_offset,
+					phdr->p_filesz);
+			}
+			break;
+		default: /* Ignore other PT_* */
+			break;
+		}
+	}
+
+	/* we need to keep the section info to redo relocs */
+	free(secstrings);
+
+	free(phdrs);
+}
diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index a4339cb2d247..34b2b3174727 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -207,10 +207,21 @@ static void handle_relocations(void *output, unsigned long output_len,
 	if (IS_ENABLED(CONFIG_X86_64))
 		delta = virt_addr - LOAD_PHYSICAL_ADDR;
 
-	if (!delta) {
-		debug_putstr("No relocation needed... ");
-		return;
+	/*
+	 * it is possible to have delta be zero and still have enabled
+	 * fg kaslr. We need to perform relocations for fgkaslr regardless
+	 * of whether the base address has moved.
+	 */
+	if (!IS_ENABLED(CONFIG_FG_KASLR) ||
+	    cmdline_find_option_bool("nokaslr")) {
+		if (!delta) {
+			debug_putstr("No relocation needed... ");
+			return;
+		}
 	}
+
+	pre_relocations_cleanup(map);
+
 	debug_putstr("Performing relocations... ");
 
 	/*
@@ -234,35 +245,106 @@ static void handle_relocations(void *output, unsigned long output_len,
 	 */
 	for (reloc = output + output_len - sizeof(*reloc); *reloc; reloc--) {
 		long extended = *reloc;
+		long value;
+
+		/*
+		 * if using fgkaslr, we might have moved the address
+		 * of the relocation. Check it to see if it needs adjusting
+		 * from the original address.
+		 */
+		adjust_address(&extended);
+
 		extended += map;
 
 		ptr = (unsigned long)extended;
 		if (ptr < min_addr || ptr > max_addr)
 			error("32-bit relocation outside of kernel!\n");
 
-		*(uint32_t *)ptr += delta;
+		value = *(int32_t *)ptr;
+
+		/*
+		 * If using fgkaslr, the value of the relocation
+		 * might need to be changed because it referred
+		 * to an address that has moved.
+		 */
+		adjust_address(&value);
+
+		value += delta;
+
+		*(uint32_t *)ptr = value;
 	}
 #ifdef CONFIG_X86_64
 	while (*--reloc) {
 		long extended = *reloc;
+		long value;
+		long oldvalue;
+		Elf64_Shdr *s;
+
+		/*
+		 * if using fgkaslr, we might have moved the address
+		 * of the relocation. Check it to see if it needs adjusting
+		 * from the original address.
+		 */
+		s = adjust_address(&extended);
+
 		extended += map;
 
 		ptr = (unsigned long)extended;
 		if (ptr < min_addr || ptr > max_addr)
 			error("inverse 32-bit relocation outside of kernel!\n");
 
-		*(int32_t *)ptr -= delta;
+		value = *(int32_t *)ptr;
+		oldvalue = value;
+
+		/*
+		 * If using fgkaslr, these relocs will contain
+		 * relative offsets which might need to be
+		 * changed because it referred
+		 * to an address that has moved.
+		 */
+		adjust_relative_offset(*reloc, &value, s);
+
+		/*
+		 * only percpu symbols need to have their values adjusted for
+		 * base address kaslr since relative offsets within the .text
+		 * and .text.* sections are ok wrt each other.
+		 */
+		if (is_percpu_addr(*reloc, oldvalue))
+			value -= delta;
+
+		*(int32_t *)ptr = value;
 	}
 	for (reloc--; *reloc; reloc--) {
 		long extended = *reloc;
+		long value;
+
+		/*
+		 * if using fgkaslr, we might have moved the address
+		 * of the relocation. Check it to see if it needs adjusting
+		 * from the original address.
+		 */
+		adjust_address(&extended);
+
 		extended += map;
 
 		ptr = (unsigned long)extended;
 		if (ptr < min_addr || ptr > max_addr)
 			error("64-bit relocation outside of kernel!\n");
 
-		*(uint64_t *)ptr += delta;
+		value = *(int64_t *)ptr;
+
+		/*
+		 * If using fgkaslr, the value of the relocation
+		 * might need to be changed because it referred
+		 * to an address that has moved.
+		 */
+		adjust_address(&value);
+
+		value += delta;
+
+		*(uint64_t *)ptr = value;
 	}
+	post_relocations_cleanup(map);
 #endif
 }
 #else
@@ -271,6 +353,35 @@ static inline void handle_relocations(void *output, unsigned long output_len,
 { }
 #endif
 
+static void layout_image(void *output, Elf_Ehdr *ehdr, Elf_Phdr *phdrs)
+{
+	int i;
+	void *dest;
+	Elf_Phdr *phdr;
+
+	for (i = 0; i < ehdr->e_phnum; i++) {
+		phdr = &phdrs[i];
+
+		switch (phdr->p_type) {
+		case PT_LOAD:
+#ifdef CONFIG_X86_64
+			if ((phdr->p_align % 0x200000) != 0)
+				error("Alignment of LOAD segment isn't multiple of 2MB");
+#endif
+#ifdef CONFIG_RELOCATABLE
+			dest = output;
+			dest += (phdr->p_paddr - LOAD_PHYSICAL_ADDR);
+#else
+			dest = (void *)(phdr->p_paddr);
+#endif
+			memmove(dest, output + phdr->p_offset, phdr->p_filesz);
+			break;
+		default: /* Ignore other PT_* */
+			break;
+		}
+	}
+}
+
 static void parse_elf(void *output)
 {
 #ifdef CONFIG_X86_64
@@ -282,6 +393,7 @@ static void parse_elf(void *output)
 #endif
 	void *dest;
 	int i;
+	int nokaslr;
 
 	memcpy(&ehdr, output, sizeof(ehdr));
 	if (ehdr.e_ident[EI_MAG0] != ELFMAG0 ||
@@ -292,6 +404,12 @@ static void parse_elf(void *output)
 		return;
 	}
 
+	if (IS_ENABLED(CONFIG_FG_KASLR)) {
+		nokaslr = cmdline_find_option_bool("nokaslr");
+		if (nokaslr)
+			warn("FG_KASLR disabled: 'nokaslr' on cmdline.");
+	}
+
 	debug_putstr("Parsing ELF... ");
 
 	phdrs = malloc(sizeof(*phdrs) * ehdr.e_phnum);
@@ -300,26 +418,10 @@ static void parse_elf(void *output)
 
 	memcpy(phdrs, output + ehdr.e_phoff, sizeof(*phdrs) * ehdr.e_phnum);
 
-	for (i = 0; i < ehdr.e_phnum; i++) {
-		phdr = &phdrs[i];
-
-		switch (phdr->p_type) {
-		case PT_LOAD:
-#ifdef CONFIG_X86_64
-			if ((phdr->p_align % 0x200000) != 0)
-				error("Alignment of LOAD segment isn't multiple of 2MB");
-#endif
-#ifdef CONFIG_RELOCATABLE
-			dest = output;
-			dest += (phdr->p_paddr - LOAD_PHYSICAL_ADDR);
-#else
-			dest = (void *)(phdr->p_paddr);
-#endif
-			memmove(dest, output + phdr->p_offset, phdr->p_filesz);
-			break;
-		default: /* Ignore other PT_* */ break;
-		}
-	}
+	if (IS_ENABLED(CONFIG_FG_KASLR) && !nokaslr)
+		layout_randomized_image(output, &ehdr, phdrs);
+	else
+		layout_image(output, &ehdr, phdrs);
 
 	free(phdrs);
 }
diff --git a/arch/x86/boot/compressed/misc.h b/arch/x86/boot/compressed/misc.h
index 1a2e422dc357..5368894a0dce 100644
--- a/arch/x86/boot/compressed/misc.h
+++ b/arch/x86/boot/compressed/misc.h
@@ -81,6 +81,34 @@ struct mem_vector {
 	u64 size;
 };
 
+#ifdef CONFIG_X86_64
+#define Elf_Ehdr Elf64_Ehdr
+#define Elf_Phdr Elf64_Phdr
+#define Elf_Shdr Elf64_Shdr
+#else
+#define Elf_Ehdr Elf32_Ehdr
+#define Elf_Phdr Elf32_Phdr
+#define Elf_Shdr Elf32_Shdr
+#endif
+
+#ifdef CONFIG_FG_KASLR
+void layout_randomized_image(void *output, Elf_Ehdr *ehdr, Elf_Phdr *phdrs);
+void pre_relocations_cleanup(unsigned long map);
+void post_relocations_cleanup(unsigned long map);
+Elf_Shdr *adjust_address(long *address);
+void adjust_relative_offset(long pc, long *value, Elf_Shdr *section);
+bool is_percpu_addr(long pc, long offset);
+#else
+static inline void layout_randomized_image(void *output, Elf_Ehdr *ehdr,
+					   Elf_Phdr *phdrs) { }
+static inline void pre_relocations_cleanup(unsigned long map) { }
+static inline void post_relocations_cleanup(unsigned long map) { }
+static inline Elf_Shdr *adjust_address(long *address) { return NULL; }
+static inline void adjust_relative_offset(long pc, long *value,
+					  Elf_Shdr *section) { }
+static inline bool is_percpu_addr(long pc, long offset) { return true; }
+#endif
+
 #ifdef CONFIG_RANDOMIZE_BASE
 /* kaslr.c */
 void choose_random_location(unsigned long input,
diff --git a/arch/x86/boot/compressed/utils.c b/arch/x86/boot/compressed/utils.c
new file mode 100644
index 000000000000..7c3c745f6251
--- /dev/null
+++ b/arch/x86/boot/compressed/utils.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This contains various libraries that are needed for FG-KASLR.
+ *
+ * Copyright (C) 2020-2021, Intel Corporation.
+ * Author: Kristen Carlson Accardi <kristen@linux.intel.com>
+ */
+
+#define _LINUX_KPROBES_H
+#define NOKPROBE_SYMBOL(fname)
+
+#include "../../../../lib/sort.c"
+#include "../../../../lib/bsearch.c"
diff --git a/arch/x86/boot/compressed/vmlinux.symbols b/arch/x86/boot/compressed/vmlinux.symbols
new file mode 100644
index 000000000000..da41f3ee153c
--- /dev/null
+++ b/arch/x86/boot/compressed/vmlinux.symbols
@@ -0,0 +1,19 @@
+kallsyms_offsets
+kallsyms_addresses
+kallsyms_num_syms
+kallsyms_relative_base
+kallsyms_names
+kallsyms_token_table
+kallsyms_token_index
+kallsyms_markers
+__start___ex_table
+__stop___ex_table
+__altinstr_replacement
+__altinstr_replacement_end
+_sinittext
+_einittext
+_stext
+_etext
+__start_orc_unwind_ip
+__stop_orc_unwind_ip
+__start_orc_unwind
diff --git a/arch/x86/include/asm/boot.h b/arch/x86/include/asm/boot.h
index 9191280d9ea3..ce5fdee49046 100644
--- a/arch/x86/include/asm/boot.h
+++ b/arch/x86/include/asm/boot.h
@@ -24,7 +24,18 @@
 # error "Invalid value for CONFIG_PHYSICAL_ALIGN"
 #endif
 
-#if defined(CONFIG_KERNEL_BZIP2)
+#ifdef CONFIG_FG_KASLR
+/*
+ * We need extra boot heap when using fgkaslr because we make a copy
+ * of the original decompressed kernel to avoid issues with writing
+ * over ourselves when shuffling the sections. We also need extra
+ * space for resorting kallsyms after shuffling. This value could
+ * be decreased if free() would release memory properly, or if we
+ * could avoid the kernel copy. It would need to be increased if we
+ * find additional tables that need to be resorted.
+ */
+# define BOOT_HEAP_SIZE		0x4800000
+#elif defined(CONFIG_KERNEL_BZIP2)
 # define BOOT_HEAP_SIZE		0x400000
 #elif defined(CONFIG_KERNEL_ZSTD)
 /*
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index efd9e9ea17f2..9692e990145b 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -290,7 +290,9 @@ SECTIONS
 	 * get the address and the length of them to patch the kernel safely.
 	 */
 	.altinstr_replacement : AT(ADDR(.altinstr_replacement) - LOAD_OFFSET) {
+		__altinstr_replacement = .;
 		*(.altinstr_replacement)
+		__altinstr_replacement_end = .;
 	}
 
 	/*
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index 61bf4774b8f2..1c74d9594919 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -299,6 +299,7 @@ typedef struct elf64_phdr {
 #define SHN_LIVEPATCH	0xff20
 #define SHN_ABS		0xfff1
 #define SHN_COMMON	0xfff2
+#define SHN_XINDEX	0xffff
 #define SHN_HIRESERVE	0xffff
  
 typedef struct elf32_shdr {
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-12-alexandr.lobakin%40intel.com.
