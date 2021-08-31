Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBU77XCEQMGQE2ZVIEJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 736163FCA0D
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:28 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id p23-20020a05620a22f700b003d5ac11ac5csf6334771qki.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420947; cv=pass;
        d=google.com; s=arc-20160816;
        b=RNdD0uSFpUNWycZ47oOp5vF9EIfxdRDAvoDVn7t6zg1iYXMU0ZlCzAU0syBKkhtfLf
         jt4yeCq6f/H791QS0EaW0BCeEDwH0+XQWC5rqo1FHaFZBl8TG0qae54e636V90LLOx7r
         aaVuSs7ynfLpQ54blbUWuVax/LqPpuYBmXnpzOuPOyRe8u5P9Z5jpga5/nOFXls8XvJt
         cO/4et//PMwWB3wpT1NO61HJMouEZaLPYQdQAPUeOmwCIsLZduKVIjEU3KTax8FgSrOu
         6ijpVygBZxkOBWPy+W6wkXqaxiy57ZDwXypdsrRIk47VDBOQrqayXZPJCp/sFCADRXS2
         qLgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=r0E3jIU8y06XGijc5xPuRAaed1d4iWJwWZBc5Q4dR4I=;
        b=WRbXN5RkqhSM767L+XuWtxkt/dvq2zT1WUvqplDeHyLfuszmVdtvGm88in4J2jVEC4
         gzC3DgjLlyBr4gqAIEapeAoYNtKiaehUbIH+dKonq/d2uNa0dHZ2vU8AzWzo6odKQHas
         HuSbXweljJypzgHjuQEq1wKA+6+2mDJs/Z8Vj0qeOwK6L8e/vVlnw1c6MLYMpRg0Ssdz
         pC1uBRJBzas+HKxfmGlqnhhqDVn5hnyktxkJppZznnxH21PeE8JdDw2q+V8yCyb1rB7u
         6/B4fKOt/4KQCph6uhitDBzX8cOn0I8MzzQAlmzhW/VcrowLSWDM1yGRosLs7lHQ+IYd
         EEng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r0E3jIU8y06XGijc5xPuRAaed1d4iWJwWZBc5Q4dR4I=;
        b=jxU1gFuEUhRZlfqkJ2SeAGHuM75FpaTiX4oP5CPF790vdGePvUEHLCjYNG0KTRcIzC
         Rj3dUTMijl+VvWSQKiPakEbft7XsxMGSOp9kUDNiPWGN9HIYDB+RJ/84sHBHAxejbeTe
         JZESETQfJwWP1cTUGueLqKnkwZEDd9Bz4K0IVmUncM/7/Z0V5fD8+Y42YzbGPtjo+qst
         SHD/vI5oVGjGwFQ4C2716+JosK6XSWF++Apbd+4EIqGA9gM3CdD8oMFv+imjxvCsIni5
         MReTeetiKYihjvJZAtJL1Dm/SM0CVpB0PVIARaP2p8ptanBJTBxDZNtksrfwjkcnwZkn
         EwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r0E3jIU8y06XGijc5xPuRAaed1d4iWJwWZBc5Q4dR4I=;
        b=Nluv9LwAamhbh5bqzWnIG59BXsuJdrb8WZSWUiEx2LZHTntdnbU82d7p/UbVYhcWgL
         ySk3LZ6rJFx861LcmtHlt3WMJS760gsZcCvCgEbMlcgshNvRoeEVm0Hjze85ZmZ5vdT7
         B8BFWIKpH2QeNT7+pKwSQ2qJnoucE4rfC08XaeE2FdAaBV2hLI/xj7w4MMkSW3kFM8k2
         SBfd74urGYiAYstjDbAMj2zXPWvEl/z2huwF62k/hzIHanGsPEg/WY3Il/fjrl2DeiGF
         SLcYBQlSEwTNXkYkO92S1ab2Qy4D1jwsTT36uiWO5kTH1W5552fLOgzyOdC/tdiv+RwR
         ISgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nIflFM3KeNRPTcUB4NoTiuwVaQwQI26oSc7JzjFP+crQmega2
	T/Us3VdhL23jlecCKooV+CY=
X-Google-Smtp-Source: ABdhPJxKcIa2XvVFsWwB3DFiuYdU33BiUQQOsDYOxmGFyslXjE3Pcm07p6szoD0GOAm2//1CpBiR5Q==
X-Received: by 2002:ad4:4e0f:: with SMTP id dl15mr16997308qvb.60.1630420947630;
        Tue, 31 Aug 2021 07:42:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1582:: with SMTP id d2ls12812060qkk.9.gmail; Tue,
 31 Aug 2021 07:42:27 -0700 (PDT)
X-Received: by 2002:ae9:c20c:: with SMTP id j12mr3245550qkg.317.1630420947113;
        Tue, 31 Aug 2021 07:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420947; cv=none;
        d=google.com; s=arc-20160816;
        b=qzUvNACYcvas//M0s4NCt3sHi+kKcrX1bqbXUVykZq0CH24kqdbcwKb9tEzUdpa6OC
         1M6w+CxokegwBZ1t0Y6oq8DulwNo0JcYhkiAHnkzS3aCs3cbsB8v/pTgPYmq9evyWrZD
         1BUScADowPOdiQ5vVSdkZ97fKiy9v95TpzHOBDBF0N25CEZBGLBhW73G4FOBGCNFkrbZ
         lf8XuXAb+QnhXJ7nolm81Ak0SGdz6xZObZcU6L1UWvx6XxAK4+3F97SGu7KnUBx6s2zG
         MdRgBsRlU6hGK5krmD6CNTTVcQLo5EGnUpIVDmPMnaa480FIbj06ri5wCa5qAzw54KVl
         Wy5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=TRgK0K2ffxEW4Qc/7p2zF3Jb+fdICSpLuNzU1xGuTfw=;
        b=ULdlSJRBzqKnK84osCEAAMg0p5hmLdid2WZlWo3RrfGANEVKAMCFhisK+kXuY7HZmY
         keGt325eeAMISjD7IVDTkl8eLmI/vmTHfp05ozeXU2RoX9lyZkuG2PlCtN0ziZREjqne
         rfuw17I7OUG88UcLr9o/knXZc+h0OyI9wdWR7LRXkGb0Lw7F+mvP+TtdBeAfjVG8uyWt
         JHuZ/Zf+ip4TsRRHM48GVHUnxDfQlGQSv28o1SXyKP4WQt6CNNLJUK+Y9A9BVCZ3qu6e
         Ia3yL9R3D7Vx8ipe+F7dQleBjbCjSWu+jIj7PhNqskhjJCwKNvaR4hAOcQ8hjR3zcie8
         L2WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 6si1278907qkh.3.2021.08.31.07.42.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="279497209"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="279497209"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="466478304"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga007.jf.intel.com with ESMTP; 31 Aug 2021 07:42:21 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmff002209;
	Tue, 31 Aug 2021 15:42:18 +0100
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
Subject: [PATCH v6 kspp-next 15/22] kallsyms: Hide layout
Date: Tue, 31 Aug 2021 16:41:07 +0200
Message-Id: <20210831144114.154-16-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31
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

This patch makes /proc/kallsyms display in a random order, rather
than sorted by address in order to hide the newly randomized address
layout.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Tested-by: Tony Luck <tony.luck@intel.com>
Reported-by: kernel test robot <lkp@intel.com> # swap.cocci
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 kernel/kallsyms.c | 158 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 157 insertions(+), 1 deletion(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 0ba87982d017..5ffdcc2fb88e 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -563,6 +563,12 @@ struct kallsym_iter {
 	int show_value;
 };
 
+struct kallsyms_shuffled_iter {
+	struct kallsym_iter iter;
+	loff_t total_syms;
+	loff_t shuffled_index[];
+};
+
 int __weak arch_get_kallsym(unsigned int symnum, unsigned long *value,
 			    char *type, char *name)
 {
@@ -810,7 +816,7 @@ bool kallsyms_show_value(const struct cred *cred)
 	}
 }
 
-static int kallsyms_open(struct inode *inode, struct file *file)
+static int __kallsyms_open(struct inode *inode, struct file *file)
 {
 	/*
 	 * We keep iterator in m->private, since normal case is to
@@ -831,6 +837,156 @@ static int kallsyms_open(struct inode *inode, struct file *file)
 	return 0;
 }
 
+/*
+ * When function granular kaslr is enabled, we need to print out the symbols
+ * at random so we don't reveal the new layout.
+ */
+#ifdef CONFIG_FG_KASLR
+static int update_random_pos(struct kallsyms_shuffled_iter *s_iter,
+			     loff_t pos, loff_t *new_pos)
+{
+	loff_t new;
+
+	if (pos >= s_iter->total_syms)
+		return 0;
+
+	new = s_iter->shuffled_index[pos];
+
+	/*
+	 * normally this would be done as part of update_iter, however,
+	 * we want to avoid triggering this in the event that new is
+	 * zero since we don't want to blow away our pos end indicators.
+	 */
+	if (new == 0) {
+		s_iter->iter.name[0] = '\0';
+		s_iter->iter.nameoff = get_symbol_offset(new);
+		s_iter->iter.pos = new;
+	}
+
+	*new_pos = new;
+	return 1;
+}
+
+static void *shuffled_start(struct seq_file *m, loff_t *pos)
+{
+	struct kallsyms_shuffled_iter *s_iter = m->private;
+	loff_t new_pos;
+
+	if (!update_random_pos(s_iter, *pos, &new_pos))
+		return NULL;
+
+	return s_start(m, &new_pos);
+}
+
+static void *shuffled_next(struct seq_file *m, void *p, loff_t *pos)
+{
+	struct kallsyms_shuffled_iter *s_iter = m->private;
+	loff_t new_pos;
+
+	(*pos)++;
+
+	if (!update_random_pos(s_iter, *pos, &new_pos))
+		return NULL;
+
+	if (!update_iter(m->private, new_pos))
+		return NULL;
+
+	return p;
+}
+
+/*
+ * shuffle_index_list()
+ * Use a Fisher Yates algorithm to shuffle a list of text sections.
+ */
+static void shuffle_index_list(loff_t *indexes, loff_t size)
+{
+	u32 i, j;
+
+	for (i = size - 1; i > 0; i--) {
+		/* pick a random index from 0 to i */
+		j = get_random_u32() % (i + 1);
+
+		swap(indexes[i], indexes[j]);
+	}
+}
+
+static const struct seq_operations kallsyms_shuffled_op = {
+	.start = shuffled_start,
+	.next = shuffled_next,
+	.stop = s_stop,
+	.show = s_show
+};
+
+static int kallsyms_random_open(struct inode *inode, struct file *file)
+{
+	loff_t pos;
+	struct kallsyms_shuffled_iter *shuffled_iter;
+	struct kallsym_iter iter;
+	bool show_value;
+
+	/*
+	 * If privileged, go ahead and use the normal algorithm for
+	 * displaying symbols
+	 */
+	show_value = kallsyms_show_value(file->f_cred);
+	if (show_value)
+		return __kallsyms_open(inode, file);
+
+	/*
+	 * we need to figure out how many extra symbols there are
+	 * to print out past kallsyms_num_syms
+	 */
+	pos = kallsyms_num_syms;
+	reset_iter(&iter, 0);
+	do {
+		if (!update_iter(&iter, pos))
+			break;
+		pos++;
+	} while (1);
+
+	/*
+	 * add storage space for an array of loff_t equal to the size
+	 * of the total number of symbols we need to print
+	 */
+	shuffled_iter = __seq_open_private(file, &kallsyms_shuffled_op,
+					   sizeof(*shuffled_iter) +
+					   (sizeof(pos) * pos));
+	if (!shuffled_iter)
+		return -ENOMEM;
+
+	reset_iter(&shuffled_iter->iter, 0);
+	shuffled_iter->iter.show_value = show_value;
+	shuffled_iter->total_syms = pos;
+
+	/*
+	 * the existing update_iter algorithm requires that we
+	 * are either moving along increasing pos sequentially,
+	 * or that these values are correct. Since these values
+	 * were discovered above, initialize our new iter so we
+	 * can use update_iter non-sequentially.
+	 */
+	shuffled_iter->iter.pos_arch_end = iter.pos_arch_end;
+	shuffled_iter->iter.pos_mod_end = iter.pos_mod_end;
+	shuffled_iter->iter.pos_ftrace_mod_end = iter.pos_ftrace_mod_end;
+
+	/*
+	 * initialize the array with all possible pos values, then
+	 * shuffle the array so that the values will display in a random
+	 * order.
+	 */
+	for (pos = 0; pos < shuffled_iter->total_syms; pos++)
+		shuffled_iter->shuffled_index[pos] = pos;
+
+	shuffle_index_list(shuffled_iter->shuffled_index, shuffled_iter->total_syms);
+
+	return 0;
+}
+
+#define kallsyms_open kallsyms_random_open
+#else
+#define kallsyms_open __kallsyms_open
+#endif /* !CONFIG_FG_KASLR */
+
 #ifdef	CONFIG_KGDB_KDB
 const char *kdb_walk_kallsyms(loff_t *pos)
 {
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-16-alexandr.lobakin%40intel.com.
