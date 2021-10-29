Return-Path: <clang-built-linux+bncBAABB35T52FQMGQELYUHMSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E0D43F77D
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Oct 2021 08:51:29 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id v188-20020acadec5000000b002991e2471dcsf4511474oig.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Oct 2021 23:51:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635490287; cv=pass;
        d=google.com; s=arc-20160816;
        b=q02Cumjz30CThIi0yPEfEc+IAE+7dJkrNkPqWE4wjRoVclIGutTCIFQ2yQ02tXAd7w
         +Cm+0hmF+RQNZnntSJuRt/rh/WJa8Bh/5p2bv3pXgNBrgofiRAfqpORRqU4fNZKvSqlp
         5Z2X5nrzhG5yLgAAmGxvUzZ7+vpOEuV1ZwEFT02VBYNJXJew6runjYWAep8oROq15kk7
         HRMGQuOtC62eHwQ+ijtVctkYtOeH2Rfre0BB9CAabG/Kc6WGNf3wKnLoQHjki88uAz0q
         VPoKhsKvPiK6j5jcfa7v6VIyQsyXAhgIj7jRIOPYxhjxSVVy2VVNXtBIjL25/CFpbEQ+
         AjLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xDSCnjRdIndr8utQvGI3TmLgTummlMQ2u/wW+S05xJo=;
        b=PCoMuCQBL+c0Px8r3yHYgAyQVJUzM9veMigWH5C0N2p+kta18oN6vwYRSWBH6raRfX
         H0ETdkxMpw2n/BwmVletO8IimZyDAnuEj5sJU9NlatZMGBDtKozrwjNt1NNvZFgEKim0
         0YevK7V/IVWGfPpelN3FkkAzLHOBDLBvaMKZ4TpMzztzUWnpphMh1Vx5J7oPg3CghEWg
         diXPKgRasumi9qmCqWUz23ejFEiSnipa6Ar6KYWXFpT9Pshi4PXZ8yTj5Bpy4JVoCe6b
         i/tRDE9vzXsQgWcBPv4DBCNxSDzvDC8pge0l2dIU6mAMWrHim/Y3S+WjViF41KY3kD+V
         8RAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=shaolexi@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDSCnjRdIndr8utQvGI3TmLgTummlMQ2u/wW+S05xJo=;
        b=Cjcoem0YOTc25NlcK9OoSo14DlKbtiD3pQeOGKkYdqF1rBnGyylaY9n9GkHBvh9KOK
         yNjDBWwv9jLvXzsz2p3daiNE6yL2eVELJ53OAIFQoquB/X7HiIrPA11Oz/kE1vgotMXN
         Q/hj2aUIFfcTqHcgDwrX9iJuDBVGu1g4cjZXUSnuBQS0g+7IsLekSaYEg+odP2J5Cun1
         jCOqRe7szoh1bC3VRGV7Xijxldue1sffrYtNDBZmJjCJSHgYdPLVyujCkCXOotFuHdam
         pB2owrIol8w96b6O5GDhyglfXs+KSiV89j+CRWCI8SIOGIlVzmGJkKjV/3rbBdq2GYyU
         glBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDSCnjRdIndr8utQvGI3TmLgTummlMQ2u/wW+S05xJo=;
        b=JcAr6eMDyS3k0m1BhZ/gin1YLc897Wh9d/QVGAwmmofl+haWhEouS6TGUXJdhI8WlW
         7PVluS45aPaDeQb8SDuPgEyK2jKHkD4xjEIkxBuoDnxfkHBBdHfsz+03xo7Pdm6EixJn
         KEEkLMCcrjDE1XpkTN2J004/CBeKhFDIg8UGzpePTW1XnkjeLppAuKMSjEogZdwS8wUY
         td8IytleFnm6ti+iudaHmW6bUl3FYAJYqWVTgJSn1Pf9qvo9914K3X6bN4uQRlVN9tK0
         qGGI2HmnmxA+jb04iMAOftf6/9Gu72f61FaIdWjmdsro5/abyfIFc8owkPKvznxMtfx0
         amrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q8fn1l/3N6CzLHtTKoWc5mn8fjJ8YrwH1GtLawR2m1eh+KG6v
	CwguDT9ZGp85FOC0o6jGQ+E=
X-Google-Smtp-Source: ABdhPJz3eeSAzEtspUgheoCfLOCKUv7OFt0YpWYiLUL8R8vGzLiyepOVuXy+KXoWzpbvKZoD59hphg==
X-Received: by 2002:aca:ba04:: with SMTP id k4mr6877892oif.76.1635490287644;
        Thu, 28 Oct 2021 23:51:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b60a:: with SMTP id g10ls1549458oif.5.gmail; Thu, 28 Oct
 2021 23:51:27 -0700 (PDT)
X-Received: by 2002:a05:6808:643:: with SMTP id z3mr6605815oih.156.1635490287294;
        Thu, 28 Oct 2021 23:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635490287; cv=none;
        d=google.com; s=arc-20160816;
        b=mHAKuxVoHAehtN4IZOZ+RAwkMl9EE58pmX+zf3xPATeSkc3B36N26i7Wz49SulKlZm
         RMgyp87h6jg/EMT/k2omMB2Gjs7M7zDuIJiwM3GxI0LRCHTltlKi9394JwH8CCXMP75w
         tGHr/+I7wiYIqunvfMRH1mL/0hknhfBaXwrhb+HnYirdxa10sayDm7NL7oMpUPhP9aEF
         A+HXZsEjxzeJOY7ol3aC17MR7Mn3+woWiClxtB980uIOiLXQJisbQM2QOdIfjCBoqIbu
         vEGkWpLA49sORYK1EVkYzJUwnZr0uQVTwmwNFpGO0Jblh1Ng9jn75JemsYl40hFH2SOY
         15fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=AuVnx9RBuPtpx1Fqc57z3Wujpa9oh0AUMambDtcRv40=;
        b=sFAp2rkaKYNmB0Gpz7DmrRWiG9qRgxC1G7kEZV1ipEDdGXsnrt4gzj2lk156MGf8ED
         l+51gb1VXWzYjcdnRbxD1pV7zDfDDWtgt01Lz86rzNZ7vfH4k5tAUTTBihDYumpII057
         2GFBe9voWQhu2uU+9XZx+bHpE7+WdFpYcqLlHPSavvTVaWBfCpUPB9Kn8j5R2++hwN8h
         8uk2F+VkdXcNzUZe46WJ/BSILUlAPBc+j48oyDnU6vqIWuQvusOy7QMdECGhGotHwYoX
         XNVwCwuPewTpgzywsz7QIQfGRzReCGywcdvxLZrSPvZbocDBYAM0eheB5gch6Oym0JL/
         HtCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=shaolexi@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id v21si462126oto.0.2021.10.28.23.51.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Oct 2021 23:51:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggeme762-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4HgY232Lp1z8tx9;
	Fri, 29 Oct 2021 14:49:31 +0800 (CST)
Received: from huawei.com (10.67.189.2) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.15; Fri, 29
 Oct 2021 14:50:54 +0800
From: Lexi Shao <shaolexi@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-perf-users@vger.kernel.org>
CC: <james.clark@arm.com>, <acme@kernel.org>,
	<alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
	<mark.rutland@arm.com>, <mingo@redhat.com>, <namhyung@kernel.org>,
	<nixiaoming@huawei.com>, <peterz@infradead.org>, <qiuxi1@huawei.com>,
	<shaolexi@huawei.com>, <wangbing6@huawei.com>, <jeyu@kernel.org>,
	<ast@kernel.org>, <daniel@iogearbox.net>, <andrii@kernel.org>,
	<kafai@fb.com>, <songliubraving@fb.com>, <yhs@fb.com>,
	<john.fastabend@gmail.com>, <kpsingh@kernel.org>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: [PATCH v2 2/2] kallsyms: ignore arm mapping symbols when loading module
Date: Fri, 29 Oct 2021 14:50:38 +0800
Message-ID: <20211029065038.39449-3-shaolexi@huawei.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <20211029065038.39449-1-shaolexi@huawei.com>
References: <cb7e9ef7-eda4-b197-df8a-0b54f9b56181@arm.com>
 <20211029065038.39449-1-shaolexi@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.189.2]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
X-CFilter-Loop: Reflected
X-Original-Sender: shaolexi@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of shaolexi@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=shaolexi@huawei.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=huawei.com
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

Arm modules contains mapping symbols(e.g. $a $d) which are ignored in
module_kallsyms_on_each_symbol. However, these symbols are still
displayed when catting /proc/kallsyms. This confuses tools(e.g. perf)
that resolves kernel symbols with address using information from
/proc/kallsyms. See discussion in Link:
https://lore.kernel.org/all/c7dfbd17-85fd-b914-b90f-082abc64c9d1@arm.com/

Being left out in vmlinux(see scripts/kallsyms.c is_ignored_symbol) and
kernelspace API implies that these symbols are not used in any cases.
So we can ignore them in the first place by not adding them to module
kallsyms.

Signed-off-by: Lexi Shao <shaolexi@huawei.com>
---
 kernel/module.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/kernel/module.c b/kernel/module.c
index 5c26a76e800b..b30cbbe144c7 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2662,16 +2662,22 @@ static char elf_type(const Elf_Sym *sym, const struct load_info *info)
 	return '?';
 }
 
-static bool is_core_symbol(const Elf_Sym *src, const Elf_Shdr *sechdrs,
-			unsigned int shnum, unsigned int pcpundx)
+static inline int is_arm_mapping_symbol(const char *str);
+static bool is_core_symbol(const Elf_Sym *src, const struct load_info *info)
 {
 	const Elf_Shdr *sec;
+	const Elf_Shdr *sechdrs = info->sechdrs;
+	unsigned int shnum = info->hdr->e_shnum;
+	unsigned int pcpundx = info->index.pcpu;
 
 	if (src->st_shndx == SHN_UNDEF
 	    || src->st_shndx >= shnum
 	    || !src->st_name)
 		return false;
 
+	if (is_arm_mapping_symbol(&info->strtab[src->st_name]))
+		return false;
+
 #ifdef CONFIG_KALLSYMS_ALL
 	if (src->st_shndx == pcpundx)
 		return true;
@@ -2714,8 +2720,7 @@ static void layout_symtab(struct module *mod, struct load_info *info)
 	/* Compute total space required for the core symbols' strtab. */
 	for (ndst = i = 0; i < nsrc; i++) {
 		if (i == 0 || is_livepatch_module(mod) ||
-		    is_core_symbol(src+i, info->sechdrs, info->hdr->e_shnum,
-				   info->index.pcpu)) {
+		    is_core_symbol(src+i, info)) {
 			strtab_size += strlen(&info->strtab[src[i].st_name])+1;
 			ndst++;
 		}
@@ -2778,8 +2783,7 @@ static void add_kallsyms(struct module *mod, const struct load_info *info)
 	for (ndst = i = 0; i < mod->kallsyms->num_symtab; i++) {
 		mod->kallsyms->typetab[i] = elf_type(src + i, info);
 		if (i == 0 || is_livepatch_module(mod) ||
-		    is_core_symbol(src+i, info->sechdrs, info->hdr->e_shnum,
-				   info->index.pcpu)) {
+		    is_core_symbol(src+i, info)) {
 			mod->core_kallsyms.typetab[ndst] =
 			    mod->kallsyms->typetab[i];
 			dst[ndst] = src[i];
@@ -4246,8 +4250,7 @@ static const char *find_kallsyms_symbol(struct module *mod,
 		 * We ignore unnamed symbols: they're uninformative
 		 * and inserted at a whim.
 		 */
-		if (*kallsyms_symbol_name(kallsyms, i) == '\0'
-		    || is_arm_mapping_symbol(kallsyms_symbol_name(kallsyms, i)))
+		if (*kallsyms_symbol_name(kallsyms, i) == '\0')
 			continue;
 
 		if (thisval <= addr && thisval > bestval) {
-- 
2.12.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211029065038.39449-3-shaolexi%40huawei.com.
