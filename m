Return-Path: <clang-built-linux+bncBAABBUPFQ33QKGQEJRM4T7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E201F60FA
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 06:28:03 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id i1sf2015980pjs.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 21:28:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591849681; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlDX6dG7v4Guuz+1ChDyreF/cVeBDSS6lgtHY13yUaYuj7iiC5Wm+T3fEI4u8Td8M4
         6BXk+Jmp+MAJmtRTqePnkCKps3KuXMlTgTYCfs1MFOPvRstnp2TsA/gHcBn3VD9lAmUx
         4MAvPFWgec/2Ds2HniOJZkEDIZnY/wqQnFclCJiGvHDI0C4qc4/VgJ0NNu7O1GxGoXKE
         jyQVVjTySrqLS2ns5mVS2H5BxwLiFfCyEK+LIWOGoZZO3VxuuuqlYIel4AfIE3EM5tck
         NST/BPOEPZmyl8/It2naYeHK9jremeVeVlnEGjxzx5C6fB/1G/VuDbJEK+GiKYNKvNgf
         IMrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=m23g4RjqAjXZoCvy/wcHIi3Br5plBz0D+urBBoD73+g=;
        b=p+eDaAfiAIVXwMItMRwCxc2YqYo1Yqhokfutun/fJMoQWDFtd/lVYyWol5FWysu3nm
         PCJXlfna6yw5x+gwZG+Kx55Y9cpcwRwMnj7Yk406U/BFTnzAA0OHY+FzR0EPTdMvZPag
         VJC79/EZnE0O70HAsebrwRjZxpAnJS6myZRinLgMDY6z5DwhuZscCwYMZvk5puRXEbpv
         6k1WNU8SgM6I65cxsysOfWOIj2peJId2LrQYS1Ekc6Z885m+nepqx+iIWuKcjx4l5kO6
         rwP1jFL+J1rReh+GSN3N521EdyvhyTOVGWUh92L3gv84679+ugBzOTJHzE0tob5clCw7
         Fflg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=eY8LDytR;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m23g4RjqAjXZoCvy/wcHIi3Br5plBz0D+urBBoD73+g=;
        b=KsxJIArlk8N7cMQCylIpS075haPR482H0kL0ufa8raJSchJqEdKg5ENWBhbktpglNs
         Cy79StDgh1Iutx9j/fp6drbntkgsOa4CO1f3ffdDfPVFpYlgF6wciVpnZt+iWawKmmTQ
         9ZSp7AYC9zqzbWbqwxCOdUmCbkomOlEI+kxIX3wY3srzH4Rr8wPHourGvBOEmSqjgI1r
         ruC3QNIzy4Gn3bySELv2Eip5+HXGLmyLzbAAty55G4JuRVVzsClbSy7Hr+t3KElIvu7n
         OiqclphhO8v7/ngs6/bBUMXwt8UUsSPsupFjRSF1YdvMWV5Hl3ggTPg4anwLQssxnaSQ
         nJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m23g4RjqAjXZoCvy/wcHIi3Br5plBz0D+urBBoD73+g=;
        b=V1yxoHyMdzZO3zvssCQFHX9J1fqbiu9yZF6glP76UivxkuVrN7c2/3+PMFb7TNECn0
         x8nN2ctpCNqDwQVtOV8I8Hy9MwrwiiGmoi+4aKuNzfyBhpaDv2k8MQz2BoBx+C2oOrCD
         41QHXFzoy6FIAOORswkWdSy6DooJTokiEEqdylLTyuZwkMRYOuC8aUU3ab/fFmhjjwzp
         rHaMohyaZyNnPCOylqgJzT39PJNK0EtB1xMf3hjrA55y9vSi8QsGmXaW24giKGADGydT
         jPaFcX0xlbUWYFUH1QMncYYnE5YwFaor6/mNGleULYIFAL3mNd4Wwq8PFj+6ziK8zv+u
         EZxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Y+jD7yxnYa1INPbsJlwOhphxNvxcWgz3VWELqZahgsQoo8JFQ
	qWl410TFjuuLppROH1N6QWc=
X-Google-Smtp-Source: ABdhPJxfv5elXuhTVzF76aLVQZIT91CMGOlKKy/W+S3hRK6ewqHi9YgujY4NmBMvcJMRxP8TDSfTDg==
X-Received: by 2002:a17:902:e78f:: with SMTP id cp15mr5813341plb.41.1591849681612;
        Wed, 10 Jun 2020 21:28:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b10a:: with SMTP id q10ls347853plr.0.gmail; Wed, 10
 Jun 2020 21:28:01 -0700 (PDT)
X-Received: by 2002:a17:90a:f184:: with SMTP id bv4mr6300038pjb.57.1591849681209;
        Wed, 10 Jun 2020 21:28:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591849681; cv=none;
        d=google.com; s=arc-20160816;
        b=x/axeT4G9HrGSuX1VXd88Tc9jLd/EE9qiG27BDeZhRONs/5OW9t8oityV37fFhO0qV
         rsVMdhUaO+HKSXpsXIgPDDgIOLXtsP3U8sHdQdAQjirPHDt8Evnm1J4Afxj/yz1YhHb/
         zGcMN6PN6uaRGXVWd4quvz1FQeWNJTW13PvO3E50VFWc8VekQ0Z7fWkqwNDyA9RfMR1e
         alPq7PIZsS4Di3D2xElBOT923dTK+1thxRmZYoU7gF91pSatHcC1swekXmNEYgx2lOQD
         VXqQ8ljECnJq4NIsLPIBWe/xeNzW1npjoQVZn16VzdWiYFWbJTBAciKvxnmRoGKD6mIA
         LTtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=Rqj0PR+NrzTyHr6jbTe+YqJeUIzjprQ19xAuqb8Gon0=;
        b=qKubqE0kgmM/U9ZNSpknyAEr0gOq97Gsjvf2MwuzCGCQDBhKmpI7WBS43HZ2zbclOG
         w98dPYGYK2RtMYBwxeK0qO/SaN/ktSWqN/AbyZoUwshaTGVKB8HMn+ZYKbIAHE1lszBv
         OpEMwHkvr8mRovylMccWcFQWzt+1oxdUqKZrdGsk9XsXZmoieF+inSml5vZlEtObEUPK
         pfG9MneTlgX32iIEgheFhiz/Vy+h57yn/vOO6/1XxWTt9/h7Q9l3q8Ky8PFp/5v4R2gj
         xpi6JlaRfZtEQfPVtxTnvH7fw9IpeNMVoxQAO/IvbW/8xpxMb1/XXoYuuLpyj233smCc
         U5cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=eY8LDytR;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id ds21si140049pjb.3.2020.06.10.21.28.01
        for <clang-built-linux@googlegroups.com>;
        Wed, 10 Jun 2020 21:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net (linux.microsoft.com [13.77.154.182])
	by linux.microsoft.com (Postfix) with ESMTPSA id 7C40E20B4778;
	Wed, 10 Jun 2020 21:28:00 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 7C40E20B4778
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
To: Dave Young <dyoung@redhat.com>,
	Baoquan He <bhe@redhat.com>
Cc: Vivek Goyal <vgoyal@redhat.com>,
	kexec@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tyler Hicks <tyhicks@linux.microsoft.com>
Subject: [PATCH v2][RFC] kdump: append kernel build-id string to VMCOREINFO
Date: Wed, 10 Jun 2020 21:27:52 -0700
Message-Id: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: vijayb@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=eY8LDytR;
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
dumps, shared libraries, loadable kernel modules etc.,  This is an
exception for linux kernel dump.  Having build-id in VMCOREINFO brings
some uniformity for automation tools.

Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
---
Changes since v2:
-----------------
- v1 was sent out as a single patch which can be seen here:
  http://lists.infradead.org/pipermail/kexec/2020-June/025202.html
- moved justification to commit commit log
- renamed 'g_build_id' to 'note_sec'
- fixed format specifier in pr_warn() from '%lu' to '%u' (failed to
  catch warning in v1)

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
index 9f1557b98468..64ac359cd17e 100644
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
+		const struct elf_note_section *note_sec =
+			&__start_notes + NOTES_SIZE - n_remain;
+		const u32 n_namesz = note_sec->n_hdr.n_namesz;
+
+		if (note_sec->n_hdr.n_type == NT_GNU_BUILD_ID &&
+		    n_namesz != 0 &&
+		    !strcmp((char *)&note_sec->n_data[0], "GNU")) {
+			if (note_sec->n_hdr.n_descsz <= BUILD_ID_MAX) {
+				const u32 n_descsz = note_sec->n_hdr.n_descsz;
+				const u8 *s = &note_sec->n_data[n_namesz];
+
+				s = PTR_ALIGN(s, 4);
+				bin2hex(build_id, s, n_descsz);
+				build_id[2 * n_descsz] = '\0';
+				VMCOREINFO_BUILD_ID(build_id);
+				return;
+			}
+			pr_warn("Build ID is too large to include in vmcoreinfo: %u > %u\n",
+				note_sec->n_hdr.n_descsz,
+				BUILD_ID_MAX);
+			return;
+		}
+		n_remain -= sizeof(struct elf_note) +
+			ALIGN(note_sec->n_hdr.n_namesz, 4) +
+			ALIGN(note_sec->n_hdr.n_descsz, 4);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1591849672-34104-1-git-send-email-vijayb%40linux.microsoft.com.
