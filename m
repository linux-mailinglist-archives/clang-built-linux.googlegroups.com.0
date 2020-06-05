Return-Path: <clang-built-linux+bncBAABBYUW433AKGQEVSFAPQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CB81EEE92
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 02:01:39 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id u10sf2561925uad.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 17:01:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591315298; cv=pass;
        d=google.com; s=arc-20160816;
        b=L4TrbgKcoo2H5MAKgs8Ehh7t6zYARFC4vddFOs9F0T/4KR8ddjCQ6+sVZ5WPcQFOdO
         JB13CaXOL6cKJGdzg1Yy7v7GZPvv+WLC6PYwEozr4MxtPNylJ9TPYQpwnQGHoNRuGb1B
         aB6hrMpTcLvVWgHXMCJHB8zPI86QAk92Wu/wwVBObi11N1ZH/65EknZFYuJf3DVg7MEq
         hJcDeEh2JpqIeWdXZ8TMiPMfpqH2sUosJZFXZk//A1s+QF0GTbop0Jz5ZnAXoWftKCw0
         xrdOQr09/oH9FRViVP1Rds1dg5MKI00as/X5sdl1X02q2QcaJMdTA8Av/CBA+/02Y3XR
         fejQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=5vtc21FlKUx0gMpr8Fbdyf8U4ubLc+tFve5S4Ajsszc=;
        b=eXOZkAOtDJGFNgfjWmQ9eSBR5ZMPusm4yBkdbnoRyB1gtGBGTiRaW9JCywwaaa4WCA
         vudsbbDE1TE17EqnyBU/OkP0dmeL+28+Yzfvxh5vr6pqjIV2MQ8/ED1t/pfYEVt7EpOR
         vzownUuTipYkm5kHCzj7ZCRmGLJemYF2xktGzilnv5dtrsdwbdsdYl51bDub2YA4ogRA
         iv35EJl1z+hG4q4RdN3r9/HYlI1GD2OYyyE1RcaWMRhQkLb7l3ISuQSEa0YBtUvJpIBk
         RXy/OS4d4jILKsa637vGYH59BWZd68PqjXFOf1E8V1kLgGuqsznBodLtWKgg/sQbCtDn
         nToA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=fsyQpS9Y;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vtc21FlKUx0gMpr8Fbdyf8U4ubLc+tFve5S4Ajsszc=;
        b=LRmRqgb+Xir4OLgHjblAV6P/RACG6e5888BuU6j0hGaiF0TY2Qe5KYpWMNepd6UzRc
         PKdw9fAMoHOB1y2AEs+RlDeUAqMUtA5FF4VrVP176ylH9p6AvhlXGWFwM7DJM3e6Jr/k
         ybn+PkrCnvIoxmyPkrfA7DmGogYdfYayiNFXk+jJFT40sximrLZDPkcqLKQQF/aRkGH6
         rMOqtfNdqUWY0iXjcnXi3M14rVqXQHdGS8FeSoFG6cCE9TCwtk1zQBgLzkEifR5cfFVG
         TmoTB1tILBbsX1XpSnFvY6LxQNGxYAxE2hlY3TYOLi+pt70XLwuSBn+Ipy/g2qfUkAvX
         ItJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vtc21FlKUx0gMpr8Fbdyf8U4ubLc+tFve5S4Ajsszc=;
        b=ZUSUrHmBOt/+FRI7Vhw4tOOWNTWIU+7zOljwKWf9loR4CFHcfVmYWPRX6g/VhFxiII
         EkHvPHMOOTa9oklRm2eCDza8UvEoVkZe965LbNPtrC+SOHYFUXBcfPrMW9PVTjZ4yGyB
         pjBwEb6vTXzhjq6YMB8LT5hFUsVGD9oVMMBBnSLz6o5CeQbjRXv3Zh6KRUFoOXv8YeqF
         aEoy1tb3z03Z9siV+A4XqpcBfimU1aUw1QovQd1g0glT4ZX1Zb1E0K8PgZ90xhbZhEr6
         ifrL1wv4kGjLu2+wlQpm0X41e2oXl7SD4npChR1e39+ZHEvqg6wfjOhauI7JLvyFVrQR
         1FfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334jjDvMoqhTeDKeOTJVMfKZDGZ9WunUx5hwIdDviTm0XF91FQM
	Lcfl1ESCHq4UUzkfKYoh5RY=
X-Google-Smtp-Source: ABdhPJzaFL5tjTEKjcqy+mVoGbPis/nYBqXRsaDmY7Np1u/X3smDgGDkYzaS6E/K4aavKOpyra/96g==
X-Received: by 2002:a67:2fc9:: with SMTP id v192mr5267062vsv.151.1591315298311;
        Thu, 04 Jun 2020 17:01:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6e47:: with SMTP id j68ls913561vsc.1.gmail; Thu, 04 Jun
 2020 17:01:38 -0700 (PDT)
X-Received: by 2002:a05:6102:22ca:: with SMTP id a10mr5171668vsh.152.1591315298009;
        Thu, 04 Jun 2020 17:01:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591315298; cv=none;
        d=google.com; s=arc-20160816;
        b=or53QiPTfsNIshdB/ZA0Vx2Hx1aGYRx5jRd9dSZ7A/A+HMS8waoUJkCF2v0omV7KDd
         9L+xvhBaeIQmebXYAxWQ50P7hHA+a0O2HUHzujll+/3CkCCrT4dNbXFiwuRp2RXFTImp
         gvG7/+RWRxVU2fzAIdXnTlZzORnN4j5cnp2UCSJWqhQuKR/beOL0D5IDT/v8FkBzOc0b
         ehICYFmPFLfneAg1+5hN/LuAJcZQ7/Cge9cTnPimZlwVQ1RG4wkbLM7RmffdN4dr+3OK
         XyHGzj+4B4syNlv7mHNCj1zjP7UEBqV7DLX3vh2+yNYsmn+P+wMz+8bd5XvxPKDYVJbg
         1lKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=9JL8mvQwy+Q0hLJa7h0p6p7R2yQdcRE5qvZum3vex+Y=;
        b=xLeKs5cgSRSNQ8wv7FgmM0DalbjtR2iIS2Cvw6zgtBPJwL0wII2A1XIqSfwu4spiUh
         l/ZtzWnDPy4isF4FYtbqrPf6Nwh2WiWB1Flc6VFYh9Yssj7aYs6k2dzQdasEHJlGJ8Je
         p+HQCrsNZtDhxoouda1no+wzJHaAAya6C0JHkFpMxFu7KCH2FVRI39q6PGN+PpDJLcBi
         6oV7VuNdeKaVJ062YHrGUiil5nOVGZuyKuu17nT7nXTbblbsXFa/MwAHAQ3V+OYrXP3U
         J/Eutdu8wM7jqwKh0UpCBVQskfeNE6LG+MckZ2QrMpc4ECEzwHwyKpoA5DX2cj9taOAR
         cLYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=fsyQpS9Y;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id t9si436019vkb.1.2020.06.04.17.01.37
        for <clang-built-linux@googlegroups.com>;
        Thu, 04 Jun 2020 17:01:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net (linux.microsoft.com [13.77.154.182])
	by linux.microsoft.com (Postfix) with ESMTPSA id 1825120B7185;
	Thu,  4 Jun 2020 17:01:37 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 1825120B7185
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
To: Dave Young <dyoung@redhat.com>,
	Baoquan He <bhe@redhat.com>
Cc: Vivek Goyal <vgoyal@redhat.com>,
	kexec@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tyler Hicks <tyhicks@linux.microsoft.com>
Subject: [PATCH][RFC] kdump: append kernel build-id string to VMCOREINFO
Date: Thu,  4 Jun 2020 17:01:31 -0700
Message-Id: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: vijayb@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=fsyQpS9Y;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

Make kernel GNU build-id available in VMCOREINFO.  Having
build-id in VMCOREINFO facilitates presenting appropriate kernel
namelist image with debug information file to kernel crash dump
analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
key for crash analysis automation.

Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
---
Regarding if this patch is necessary or matching of linux_banner
and OSRELEASE in VMCOREINFO employed by crash(8) meets the
need -- IMO, build-id approach more foolproof, in most instances it
is a cryptographic hash generated using internal code/ELF bits unlike
kernel version string upon which linux_banner is based that is
external to the code.  I feel each is intended for a different purpose.
Also OSRELEASE is not suitable when two different kernel builds
from same version with different features enabled.

Currently for most linux (and non-linux) systems build-id can be
extracted using standard methods for file types such as user mode crash
dumps, shared libraries, loadable kernel modules etc.  This is an
exception for linux kernel dump.  Having build-id in VMCOREINFO brings
some uniformity for automation tools.

 include/linux/crash_core.h |  6 +++++
 kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
index 525510a9f965..6594dbc34a37 100644
--- a/include/linux/crash_core.h
+++ b/include/linux/crash_core.h
@@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
 
 #define VMCOREINFO_OSRELEASE(value) \
 	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
+#define VMCOREINFO_BUILD_ID(value) \
+	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
 #define VMCOREINFO_PAGESIZE(value) \
 	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
 #define VMCOREINFO_SYMBOL(name) \
@@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
 extern size_t vmcoreinfo_size;
 extern u32 *vmcoreinfo_note;
 
+/* raw contents of kernel .notes section */
+extern const void __start_notes __weak;
+extern const void __stop_notes __weak;
+
 Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
 			  void *data, size_t data_len);
 void final_note(Elf_Word *buf);
diff --git a/kernel/crash_core.c b/kernel/crash_core.c
index 9f1557b98468..c094db478803 100644
--- a/kernel/crash_core.c
+++ b/kernel/crash_core.c
@@ -11,6 +11,8 @@
 #include <asm/page.h>
 #include <asm/sections.h>
 
+#include <crypto/sha.h>
+
 /* vmcoreinfo stuff */
 unsigned char *vmcoreinfo_data;
 size_t vmcoreinfo_size;
@@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
 }
 EXPORT_SYMBOL(paddr_vmcoreinfo_note);
 
+#define NOTES_SIZE (&__stop_notes - &__start_notes)
+#define BUILD_ID_MAX SHA1_DIGEST_SIZE
+#define NT_GNU_BUILD_ID 3
+
+struct elf_note_section {
+	struct elf_note	n_hdr;
+	u8 n_data[];
+};
+
+/*
+ * Add build ID from .notes section as generated by the GNU ld(1)
+ * or LLVM lld(1) --build-id option.
+ */
+static void add_build_id_vmcoreinfo(void)
+{
+	char build_id[BUILD_ID_MAX * 2 + 1];
+	int n_remain = NOTES_SIZE;
+
+	while (n_remain >= sizeof(struct elf_note)) {
+		const struct elf_note_section *g_build_id =
+			&__start_notes + NOTES_SIZE - n_remain;
+		const u32 n_namesz = g_build_id->n_hdr.n_namesz;
+
+		if (g_build_id->n_hdr.n_type == NT_GNU_BUILD_ID &&
+		    n_namesz != 0 &&
+		    !strcmp((char *)&g_build_id->n_data[0], "GNU")) {
+			if (g_build_id->n_hdr.n_descsz <= BUILD_ID_MAX) {
+				const u32 n_descsz = g_build_id->n_hdr.n_descsz;
+				const u8 *s = &g_build_id->n_data[n_namesz];
+
+				s = PTR_ALIGN(s, 4);
+				bin2hex(build_id, s, n_descsz);
+				build_id[2 * n_descsz] = '\0';
+				VMCOREINFO_BUILD_ID(build_id);
+				return;
+			}
+			pr_warn("Build ID is too large to include in vmcoreinfo: %lu > %lu\n",
+				g_build_id->n_hdr.n_descsz,
+				BUILD_ID_MAX);
+			return;
+		}
+		n_remain -= sizeof(struct elf_note) +
+			ALIGN(g_build_id->n_hdr.n_namesz, 4) +
+			ALIGN(g_build_id->n_hdr.n_descsz, 4);
+	}
+}
+
 static int __init crash_save_vmcoreinfo_init(void)
 {
 	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);
@@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
 	}
 
 	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
+	add_build_id_vmcoreinfo();
 	VMCOREINFO_PAGESIZE(PAGE_SIZE);
 
 	VMCOREINFO_SYMBOL(init_uts_ns);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1591315291-66957-1-git-send-email-vijayb%40linux.microsoft.com.
