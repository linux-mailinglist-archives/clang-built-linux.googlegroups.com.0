Return-Path: <clang-built-linux+bncBC53FPW2UIOBB3OWSCDAMGQEHQGHV5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAEE3A4C6C
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:35:09 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id v8-20020a0564023488b0290393873961f6sf9415389edc.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623468909; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWBbPzTwIEAqxGjdX7wBBNMPhjxFHuZiPxfFudK59jYdsIaSeFhsgnPtdJokaiH1lJ
         B4BqU3aQe3Q3oJ+1LazmX6qS5YDFlchAzrge0Zq2svjOT2fY44yAfLQ/nk+ZrZHWJvBg
         fdH3nN4pR+lmJNNO2zXaRnxoT1Y57JSVuFoQuOhd76lwgVUZnS9UuSVOa6v3B2dQRhS/
         1pQhhvifmzUdTeA8RkVeg/+v70rnEPk38LY/0feM9ndY3pAclOQQljELgt6+idF5xl/k
         PhTrkMAlJSYLb8CIqf02rJE9XkaES2mz3N5X9lFC8CpzWF/a5OiA2Vu1/k2WA/4oE6xM
         kH2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=EOyQqJJBjSm4D7TSe629QN9ejf3X97g4f5cd4VtPxYI=;
        b=uDV/EMqBxkgtejar8RmEkJKJW9G3NODmfFdQpwaXltdubtbemtfjMuBC9qSaPJZu07
         iIKowy9xx8OOJ/7hK11nPotBzSHtjsttMXP38IdYG18iGORIngOexbkCPt6ip3BRyphV
         SVLboT5aidUViA8cpYJyYmYZGCPcolrL03+pmh2FOBx1iXEdxciumwUoej0Q9WVDj91D
         8hDO4Q6q3d/qWIgE/RSMb1NH+PFSmcwlwqXBjzkLQO7WifWkq3lLcQYnr6mJVqomO78z
         2ZRgj+ph3wzrr656EeYyW33TqjAEqVMeHdCMsUNnsZ+a/CWS/7xxLM0PJm2WpenswIbA
         Pzsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZC/HeMEG";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EOyQqJJBjSm4D7TSe629QN9ejf3X97g4f5cd4VtPxYI=;
        b=erfG0uL+dVhou+H/HuOQAhN1/+iNeBc3BKF1GY62nx4b405RQDOcSmdRQI5dBRQmuY
         x/sOTZgExMLLlcYiliTj5kPyU4JWr30DT880ysa9KgIMozd5MW7xX/jSkmnu4RxYuMu/
         8qEIYtrB43/iyQHD3PPKMbs9WR6d+imh9qKmTnse5ZmYfh1Cm37q9YH4tjqw/Ddx2WwU
         VYKNg6OEK1NQ5EJPzJSZkyYmhw1ZOjrLPJ5JIjjg5yNiJ3lo+T9eAyGy/eEoKmhoKH+L
         W1vA+fSSKyXhp8BnYgKGcqxg+R6ShpVLqss2blAXdjY0FlHAUx+YNagpuTd8JmfYn/vk
         x26w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EOyQqJJBjSm4D7TSe629QN9ejf3X97g4f5cd4VtPxYI=;
        b=u3+Tkgd+7ZY9adTnONlteIhmo8AS2iweeaW0O8VOTfcSLg6si+gfQWzY9kOHCPH7l9
         uoym5RgNLZqXBRH9FdDJ/EKhh7AAQWkAQTxc8hVLbAMiBRrKuDcy73Ap6007cX+RmehL
         un5n++nWl/my2jhG39r1ipYrlb7vhlH9fcKyiGeK0BV9hQ5wvcGDcPQ6trVI4JGhvCLk
         DEAzTf9FMiFe+nNXmIQhXyTeUMICieVqsY7243fVWD35W7BqU0HimTPGfMc30dMZZKRi
         S2BtM04PPU74NIKyZlmPBPaOW3nD2gCejsaltVF0VODE+SLlp6MjjWkn/HB6UZqfgWQp
         UsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EOyQqJJBjSm4D7TSe629QN9ejf3X97g4f5cd4VtPxYI=;
        b=gFr8jBIuuEbtBE0DfEsqoekOZ1gSMuyrAxprcKWwrdPMtDC7Gr6j9jMr80s6x7LinV
         kJ34T+OrgNz8pE62bPBsqMc1bftPwvGHQccgoH/8sArDV+bR9r12V/FLDqIb2IdnimPZ
         gmVuQwbrDrmyY5xnRta4hzH+HpIQj/Vvp6ph33nnhBQ4mGoljZM6mZi3jrEEB95cYuyT
         Mn3LY3P3j+F6XgWKhpocUIKIxxKdxbANY55JPY05CcPvANTT4TS6Q5hNkGSaTDtKUW0a
         /aAARYQzOa6pNxISBuDIEc+DPnoEmxYeuUML9PuNo06L67p2jk3wPklXCAAJeRBqkpcf
         IfVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307n+McVnGKlhuqvAF7v9wm6LrV64+gMuqzV0Tknuhrt9kXaP16
	UlHbXqGTmYZPk+kP98k7NVY=
X-Google-Smtp-Source: ABdhPJwr9Nh1HJciduf4RxSdv7WKUSVRtmtTq3yH7rxp42pON5qq9fUe9SsWeWukLwy+YBNJK269gg==
X-Received: by 2002:a17:906:9706:: with SMTP id k6mr6252017ejx.456.1623468909753;
        Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:30b2:: with SMTP id df18ls1348831edb.3.gmail; Fri,
 11 Jun 2021 20:35:08 -0700 (PDT)
X-Received: by 2002:a50:bf0f:: with SMTP id f15mr6624128edk.205.1623468908761;
        Fri, 11 Jun 2021 20:35:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623468908; cv=none;
        d=google.com; s=arc-20160816;
        b=iLd6EDjKIEJCKmowMIiZqBZ0WWyxieoekbTFNOaadbz/3LyNxQK9TH7ZZDfEqZieTW
         dSiOwh/wg8NtGHyMuUXKouz7SzT8fkQRE5Oq1VruGH+BFcVbjHg0k2dPpGZVKhtYS9Ov
         wghygti+cZU2cb1fVMjbXJL9MpFiP8A3UMIparqd/ikWccRwNWlncdQMN4h/2vmqDcap
         xnE+2BtZAvB/MVddDsMwfk/L9BBGx4jXW2wY1qaKs5iuq5WuRCxpircUBhFaG3b8GPMK
         ip6U3AdgWVz9+pK+iwPuZRz7Kn1dSKhS6xPjG2UYf0DJn/Vw3G6ZiR5MaHhE0J+pn4BF
         OADA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YAt0n/YZuIs0ryLpqLVa8Tl4SvxdixVNh2wyhhwKoMg=;
        b=CYEXeHYWs1F+EFI+TQjUe9yY+Jb3jBP7Y1/TzGIP3W5/xn5nJTJu4NY6aSbgZlQZD3
         bRM+FkWC8cHJbwUKCjk3dOdOJVe/v1PGICe1aCZVyK9ghApfrzm8K37LpTiO1kzTF7Mv
         PeklsLIjPsbcslQBLnBQsmm9SlvDu9MKMKRmVZweEcQ7zBjvoAZg/AFf2OsNxEHSwhma
         2XYOjII6yJP5wz0ibAZ8LEgR678aMoAvlFJ7dFgJVRv0zIRxARLVVOzKjyiwEnNkdSwD
         0cAt7darHS6MEzaOiRv66sdPvahhKqMCkTQ8bsYk8gm/d5eEziPnLKs6JskfEpfEVjJG
         gLjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZC/HeMEG";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id cz2si383205edb.5.2021.06.11.20.35.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 20:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id p7so11549603lfg.4
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 20:35:08 -0700 (PDT)
X-Received: by 2002:a05:6512:33c2:: with SMTP id d2mr4477115lfg.443.1623468908205;
        Fri, 11 Jun 2021 20:35:08 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ydkw9h---3prwmt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:6897:4dff:feec:7495])
        by smtp.gmail.com with ESMTPSA id f19sm943250ljn.88.2021.06.11.20.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:35:07 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	morbo@google.com
Subject: [RFC PATCH 2/5] pgo: Make serializing functions to take prf_object
Date: Sat, 12 Jun 2021 06:24:23 +0300
Message-Id: <20210612032425.11425-3-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ZC/HeMEG";       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

* Add struct prf_object to hold module sections in
  the new "prf_list" linked list.

* Rewrite serialization code such that they take struct
  prf_object as an argument and work on it instead
  of the global: __llvm_prf_{data,cnts,names,vnds} sections.

* No functional user visible changes yet.

The prf_vmlinux is initialized using vmlinux core sections.
This struct is then passed down into the serializing functions.

Idea here is that the profiling nor serialization code
doesn't need to care if the prf_object points into
vmlinux's core sections or into some loaded module's sections.

* The prf_list is RCU protected so that in following commits
  allocate_node() can walk the prf_list uninterupted.

* List updaters must take the new prf_list_lock() lock.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
This is the main commit of this patch series,
since it re-structures most of the pgo/fs.c around prf_object.

I have squashed a lot of stuff into this single commit.
---
 kernel/pgo/fs.c         | 105 +++++++++++++++++++++++++++++-----------
 kernel/pgo/instrument.c |   3 +-
 kernel/pgo/pgo.h        |  83 +++++++++++++++++++++++--------
 3 files changed, 142 insertions(+), 49 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 3c5aa7c2a4ce..7e269d69bcd7 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -34,6 +34,31 @@ struct prf_private_data {
 	size_t size;
 };
 
+static struct prf_object prf_vmlinux;
+
+/*
+ * This lock guards prf_list from concurrent access:
+ * - New module is registered.
+ * - Module is unloaded.
+ * It does *not* protect any PGO serialization functions.
+ */
+DEFINE_SPINLOCK(prf_reg_lock);
+LIST_HEAD(prf_list);
+
+static inline unsigned long prf_list_lock(void)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&prf_reg_lock, flags);
+
+	return flags;
+}
+
+static inline void prf_list_unlock(unsigned long flags)
+{
+	spin_unlock_irqrestore(&prf_reg_lock, flags);
+}
+
 /*
  * Raw profile data format:
  *
@@ -51,7 +76,7 @@ struct prf_private_data {
  *		...
  */
 
-static void prf_fill_header(void **buffer)
+static void prf_fill_header(struct prf_object *po, void **buffer)
 {
 	struct llvm_prf_header *header = *(struct llvm_prf_header **)buffer;
 
@@ -61,13 +86,13 @@ static void prf_fill_header(void **buffer)
 	header->magic = LLVM_INSTR_PROF_RAW_MAGIC_32;
 #endif
 	header->version = LLVM_VARIANT_MASK_IR_PROF | LLVM_INSTR_PROF_RAW_VERSION;
-	header->data_size = prf_data_count();
+	header->data_size = po->data_num;
 	header->padding_bytes_before_counters = 0;
-	header->counters_size = prf_cnts_count();
+	header->counters_size = po->cnts_num;
 	header->padding_bytes_after_counters = 0;
-	header->names_size = prf_names_count();
-	header->counters_delta = (u64)__llvm_prf_cnts_start;
-	header->names_delta = (u64)__llvm_prf_names_start;
+	header->names_size = po->names_num;
+	header->counters_delta = (u64)po->cnts;
+	header->names_delta = (u64)po->names;
 	header->value_kind_last = LLVM_INSTR_PROF_IPVK_LAST;
 
 	*buffer += sizeof(*header);
@@ -77,7 +102,7 @@ static void prf_fill_header(void **buffer)
  * Copy the source into the buffer, incrementing the pointer into buffer in the
  * process.
  */
-static void prf_copy_to_buffer(void **buffer, void *src, unsigned long size)
+static void prf_copy_to_buffer(void **buffer, const void *src, unsigned long size)
 {
 	memcpy(*buffer, src, size);
 	*buffer += size;
@@ -129,12 +154,13 @@ static u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds)
 	return size;
 }
 
-static u32 prf_get_value_size(void)
+static u32 prf_get_value_size(struct prf_object *po)
 {
 	u32 size = 0;
 	struct llvm_prf_data *p;
+	struct llvm_prf_data *end = po->data + po->data_num;
 
-	for (p = __llvm_prf_data_start; p < __llvm_prf_data_end; p++)
+	for (p = po->data; p < end; p++)
 		size += __prf_get_value_size(p, NULL);
 
 	return size;
@@ -201,11 +227,12 @@ static void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
 	}
 }
 
-static void prf_serialize_values(void **buffer)
+static void prf_serialize_values(struct prf_object *po, void **buffer)
 {
 	struct llvm_prf_data *p;
+	struct llvm_prf_data *end = po->data + po->data_num;
 
-	for (p = __llvm_prf_data_start; p < __llvm_prf_data_end; p++)
+	for (p = po->data; p < end; p++)
 		prf_serialize_value(p, buffer);
 }
 
@@ -215,14 +242,14 @@ static inline unsigned long prf_get_padding(unsigned long size)
 }
 
 /* Note: caller *must* hold pgo_lock */
-static unsigned long prf_buffer_size(void)
+static unsigned long prf_buffer_size(struct prf_object *po)
 {
-	return sizeof(struct llvm_prf_header) +
-			prf_data_size()	+
-			prf_cnts_size() +
-			prf_names_size() +
-			prf_get_padding(prf_names_size()) +
-			prf_get_value_size();
+	return sizeof(struct llvm_prf_header)	+
+			prf_data_size(po)	+
+			prf_cnts_size(po)	+
+			prf_names_size(po)	+
+			prf_get_padding(prf_names_size(po)) +
+			prf_get_value_size(po);
 }
 
 /*
@@ -232,12 +259,12 @@ static unsigned long prf_buffer_size(void)
  * area of at least prf_buffer_size() in size.
  * Note: caller *must* hold pgo_lock.
  */
-static int prf_serialize(struct prf_private_data *p, size_t buf_size)
+static int prf_serialize(struct prf_object *po, struct prf_private_data *p, size_t buf_size)
 {
 	void *buffer;
 
 	/* get buffer size, again. */
-	p->size = prf_buffer_size();
+	p->size = prf_buffer_size(po);
 
 	/* check for unlikely overflow. */
 	if (p->size > buf_size)
@@ -245,15 +272,16 @@ static int prf_serialize(struct prf_private_data *p, size_t buf_size)
 
 	buffer = p->buffer;
 
-	prf_fill_header(&buffer);
-	prf_copy_to_buffer(&buffer, __llvm_prf_data_start,  prf_data_size());
-	prf_copy_to_buffer(&buffer, __llvm_prf_cnts_start,  prf_cnts_size());
-	prf_copy_to_buffer(&buffer, __llvm_prf_names_start, prf_names_size());
-	buffer += prf_get_padding(prf_names_size());
+	prf_fill_header(po, &buffer);
+	prf_copy_to_buffer(&buffer, po->data,  prf_data_size(po));
+	prf_copy_to_buffer(&buffer, po->cnts,  prf_cnts_size(po));
+	prf_copy_to_buffer(&buffer, po->names, prf_names_size(po));
+	buffer += prf_get_padding(prf_names_size(po));
 
-	prf_serialize_values(&buffer);
+	prf_serialize_values(po, &buffer);
 
 	return 0;
+
 }
 
 /* open() implementation for PGO. Creates a copy of the profiling data set. */
@@ -270,7 +298,7 @@ static int prf_open(struct inode *inode, struct file *file)
 
 	/* Get initial buffer size. */
 	flags = prf_lock();
-	data->size = prf_buffer_size();
+	data->size = prf_buffer_size(&prf_vmlinux);
 	prf_unlock(flags);
 
 	do {
@@ -290,7 +318,7 @@ static int prf_open(struct inode *inode, struct file *file)
 		 * data length in data->size.
 		 */
 		flags = prf_lock();
-		err = prf_serialize(data, buf_size);
+		err = prf_serialize(&prf_vmlinux, data, buf_size);
 		prf_unlock(flags);
 		/* In unlikely case, try again. */
 	} while (err == -EAGAIN);
@@ -346,7 +374,7 @@ static ssize_t reset_write(struct file *file, const char __user *addr,
 {
 	struct llvm_prf_data *data;
 
-	memset(__llvm_prf_cnts_start, 0, prf_cnts_size());
+	memset(__llvm_prf_cnts_start, 0, prf_cnts_size(&prf_vmlinux));
 
 	for (data = __llvm_prf_data_start; data < __llvm_prf_data_end; data++) {
 		struct llvm_prf_value_node **vnodes;
@@ -384,6 +412,25 @@ static const struct file_operations prf_reset_fops = {
 /* Create debugfs entries. */
 static int __init pgo_init(void)
 {
+	/* Init profiler vmlinux core entry */
+	memset(&prf_vmlinux, 0, sizeof(prf_vmlinux));
+	prf_vmlinux.data = __llvm_prf_data_start;
+	prf_vmlinux.data_num = prf_get_count(__llvm_prf_data_start,
+		__llvm_prf_data_end, sizeof(__llvm_prf_data_start[0]));
+
+	prf_vmlinux.cnts = __llvm_prf_cnts_start;
+	prf_vmlinux.cnts_num = prf_get_count(__llvm_prf_cnts_start,
+		__llvm_prf_cnts_end, sizeof(__llvm_prf_cnts_start[0]));
+
+	prf_vmlinux.names = __llvm_prf_names_start;
+	prf_vmlinux.names_num = prf_get_count(__llvm_prf_names_start,
+		__llvm_prf_names_end, sizeof(__llvm_prf_names_start[0]));
+
+	prf_vmlinux.vnds = __llvm_prf_vnds_start;
+	prf_vmlinux.vnds_num = prf_get_count(__llvm_prf_vnds_start,
+		__llvm_prf_vnds_end, sizeof(__llvm_prf_vnds_start[0]));
+
+
 	directory = debugfs_create_dir("pgo", NULL);
 	if (!directory)
 		goto err_remove;
diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index 8b54fb6be336..24fdeb79b674 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -56,7 +56,8 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
-	const int max_vnds = prf_vnds_count();
+	const int max_vnds = prf_get_count(__llvm_prf_vnds_start,
+		__llvm_prf_vnds_end, sizeof(struct llvm_prf_value_node));
 
 	/*
 	 * Check that p is within vmlinux __llvm_prf_data section.
diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
index ba3f8499254a..44d79e2861e1 100644
--- a/kernel/pgo/pgo.h
+++ b/kernel/pgo/pgo.h
@@ -185,27 +185,72 @@ void __llvm_profile_instrument_range(u64 target_value, void *data,
 void __llvm_profile_instrument_memop(u64 target_value, void *data,
 				     u32 counter_index);
 
-#define __DEFINE_PRF_SIZE(s) \
-	static inline unsigned long prf_ ## s ## _size(void)		\
-	{								\
-		unsigned long start =					\
-			(unsigned long)__llvm_prf_ ## s ## _start;	\
-		unsigned long end =					\
-			(unsigned long)__llvm_prf_ ## s ## _end;	\
-		return roundup(end - start,				\
-				sizeof(__llvm_prf_ ## s ## _start[0]));	\
-	}								\
-	static inline unsigned long prf_ ## s ## _count(void)		\
-	{								\
-		return prf_ ## s ## _size() /				\
-			sizeof(__llvm_prf_ ## s ## _start[0]);		\
+/*
+ * profiler object:
+ * maintain profiler internal state
+ * of vmlinux or any instrumented module.
+ */
+struct prf_object {
+	struct list_head link;
+	struct rcu_head rcu;
+
+	/*
+	 * module name of this prf_object
+	 * refers to struct module::name
+	 * or "vmlinux"
+	 */
+	const char *mod_name;
+
+	/* debugfs file of this profile data set */
+	struct dentry *file;
+
+	int current_node;
+
+	struct llvm_prf_data *data;
+	int data_num;
+	u64 *cnts;
+	int cnts_num;
+	const char *names;
+	int names_num;
+	struct llvm_prf_value_node *vnds;
+	int vnds_num;
+};
+
+/*
+ * List of profiled modules and vmlinux.
+ * Readers must take rcu_read_lock() and
+ * updaters must take prf_list_lock() mutex.
+ */
+extern struct list_head prf_list;
+
+/*
+ * define helpers to get __llvm_prf_xxx sections bounds
+ */
+#define __DEFINE_PRF_OBJ_SIZE(s) \
+	static inline unsigned long prf_ ## s ## _size(struct prf_object *po) \
+	{ \
+		return po->s ## _num * sizeof(po->s[0]); \
+	} \
+	static inline unsigned long prf_ ## s ## _count(struct prf_object *po) \
+	{ \
+		return po->s ## _num; \
 	}
 
-__DEFINE_PRF_SIZE(data);
-__DEFINE_PRF_SIZE(cnts);
-__DEFINE_PRF_SIZE(names);
-__DEFINE_PRF_SIZE(vnds);
+__DEFINE_PRF_OBJ_SIZE(data);
+__DEFINE_PRF_OBJ_SIZE(cnts);
+__DEFINE_PRF_OBJ_SIZE(names);
+__DEFINE_PRF_OBJ_SIZE(vnds);
+
+#undef __DEFINE_PRF_OBJ_SIZE
+
+/* count number of items in range */
+static inline unsigned int prf_get_count(const void *_start, const void *_end,
+	unsigned int objsize)
+{
+	unsigned long start = (unsigned long)_start;
+	unsigned long end =	(unsigned long)_end;
 
-#undef __DEFINE_PRF_SIZE
+	return roundup(end - start, objsize) / objsize;
+}
 
 #endif /* _PGO_H */
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612032425.11425-3-jarmo.tiitto%40gmail.com.
