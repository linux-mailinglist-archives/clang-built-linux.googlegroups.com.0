Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBIN6R6AQMGQE6G5HJ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C6B3167FB
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 14:26:59 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id c15sf1642645pfn.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 05:26:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612963618; cv=pass;
        d=google.com; s=arc-20160816;
        b=n5gpyJyA3UD0jcxz9DayF+ul8+X0VnAqkTkxOyoY1uOI1JyltjbseMIvveTQO3hHKc
         J8QyxgoncroMNsfem4CBJWbskL3hDDXDSvq1X5H5g/GrgEEHeQxYAocSu9w5V0lImBHT
         69+uTRrbaBObbVwKWOl09pDodVjif5v0fUJ6lMtYYmc5D+JWZ77Zxx0c6jlTe1aF3Q7N
         Mft86AN80GplMrJhx9cTQSoRu5jcrw0Nu6VAaP7Qybbu+kRv5/wHphfjzx2O7f3a1Q1+
         gABh3aXKiRsqwkBdZLtx2HU3s8q8+w3rk7KNgbB1qaYISZs1rKKXofWYZxR9tUFSkbIX
         m8jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VQRb+nXKMX9j6ZlXYyl9pq3MieA73V33nVn8EQzTxEY=;
        b=AFrqRVTarVUPXXekmw81BW7E/E2QK+TvTNUdBIY8a8KVY/jmdKX3qJU2L4ktetKFH5
         MKbC90+y7iYF8V9wc1u6PR0kPtouaPZjeDekH8E+wLoIiKWWbBzkgZYi5AqW1/ELx01d
         /CyLTApcP8AeKwCGTaAqtI9Wp0FGvSu5k6JUIzK8I8FT/uZtKkxYl7P7pN4nYP65G1L7
         janKGTFzkzym2PgMytN1G8UY6rvNoF8wQU6mzLmYIVpXs9cpH9RpPcp7R2VXlcutv1JP
         OErJ1iomT8j5ldGNWvc7320Ono4k63zK6O2n7ETEa9js6RTE2QAu/rKZC58GcAc0OMYX
         LCzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DU69bpqq;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VQRb+nXKMX9j6ZlXYyl9pq3MieA73V33nVn8EQzTxEY=;
        b=ay1YpJ5kDAcwx13QtM31R2FYzHlnFvkQixs6Tt6YZV0P41/+40vSitoJnBMQLb+KgS
         rJXxGFhTX/F1TNS1FukYP9ZP5tAe+52AdG+CAiJDKnxaKLmJkV2l7TksrHHk3WYT66KK
         jNyy6jGVox30tF1GTPvzQ5Y+Xg6O5C+8q1a0118IhvBZ397xuc++svk0+EbAF+pYEj09
         cF2ZCHu2fHoueaXC6GZB1Ll/h3rUaevGqSwSPfQQOzZQ20cy3bLBfRuz/mcSclqsTZy6
         pHW9H4BeF30PWOecDOIipg5jB82WjeY6QzHZcCwAuagQjZZeSZFvRCtBYfkiqeqgPsJ+
         SZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VQRb+nXKMX9j6ZlXYyl9pq3MieA73V33nVn8EQzTxEY=;
        b=Vtiec4NRWaKxfq6fu2r6EgJ9SQGVOzTSiHfPs6XXCCUMM4liIJMS8o4ANTilHZGLX/
         mZh5ltcJAcAnhyjecJ19ccV8gmCipLUZltChU6/C0fLGaIrDA9AF6huFKK6VSYDaOROR
         T8y0oVz4UGfwVkRm0xOHCrDHBIWhHqTXTBmccIqT8GuRjkdQZYaNH0ehDsNCWDrt+ui/
         M7aAZAoBnixfqa+m43VXSbDs5oedMKf1Nea95vkYKnPJFHsoY5Bwy0Q7YpPOMEGqoZKq
         3q1ab7Gj1HiuSqOQNlznM1yu9hi8EjELqqTEULMROWMfFugXNasn3cDWmkJUdCGiiK1r
         5H8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CyurjLD0U1PYipc5yZakvxOSKsYf45HpxeJpKw3We/jIvBP91
	UMN/AsxX5IStcWbJNJzSL7c=
X-Google-Smtp-Source: ABdhPJzGJU8GQqPJqoFtuPmjGtHMv9RPIbxngheTWX/ANRGRsT/OISe7louDJaXqHLFzwo/eUthFhA==
X-Received: by 2002:a17:902:d691:b029:e1:561e:f8af with SMTP id v17-20020a170902d691b02900e1561ef8afmr3064035ply.23.1612963617772;
        Wed, 10 Feb 2021 05:26:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f40e:: with SMTP id ch14ls1112432pjb.1.gmail; Wed,
 10 Feb 2021 05:26:57 -0800 (PST)
X-Received: by 2002:a17:90a:a88d:: with SMTP id h13mr3184974pjq.19.1612963617060;
        Wed, 10 Feb 2021 05:26:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612963617; cv=none;
        d=google.com; s=arc-20160816;
        b=Uc8vvuG7uCwAHU5OBvpLXmGf4vgK10VVuFen3BjSp6X2NVE4PrW8bpjRIMUZm5iLgM
         McmgHE4sdx5wco78Yxs/hOloBaxs2XTQxAg68Mm8jX8SeQoOA4/yISC0UFiBq9whoCMD
         nbzlpcXi5y+XqQ4QikLaYIv3RsL3HpgOVMue98NwScx5Tmk9a2TzlTJBN+YVr2YAgnmE
         EeZuUjSq6txPKTL91Bj33RlD7LoO0+W5VfU7EjPlm9DbDVnRoxtOdYcx63s3ZOnIKg0P
         HRUPW9mcZDvNOZc46V4Ka5/UNPhxHZJJ66X50FP4UKWgcrOVw87L2wAvYaVNlY14byom
         0UAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RacWmNH4Z0sL/giVqmu7kPRMywtcDoneJKGe/TmxTHQ=;
        b=CPJOJtiW3DLtKaLsIZ6qJXqMDzICbrtJ6OksUVFg3I3hGSclUEWWZr8gyRe5lktLI8
         19OC2YjPwoK1YvUAT0hWzy8tAIxQTY2X/eUzH+sWtfOM/cyf+SfrfmuxNhp315/IvFXD
         aBiY4rM2CnTNU0zyNXVPS6WyGuuvxcgLOlnw6RaII7xytyRiUrQEAO7hl3FBvdheFMyX
         OUhs7JQDE5h3R1621/Z29HNv0/g1atYAgPOcVUndmiit52w4+tnP0rJZUTv6CYzGz/z6
         XD6FhtxkRnq6M33wQs1DHVW7XvuoYHmQOKrbLJXs7e0Y2mQhZbfo98pum3TFPvn0+/2S
         ihtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DU69bpqq;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d2si96756pfr.4.2021.02.10.05.26.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 05:26:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-fAw3chJ9PGqi8rhyylmT7A-1; Wed, 10 Feb 2021 08:26:50 -0500
X-MC-Unique: fAw3chJ9PGqi8rhyylmT7A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB80B108C30F;
	Wed, 10 Feb 2021 13:26:47 +0000 (UTC)
Received: from krava (unknown [10.40.195.206])
	by smtp.corp.redhat.com (Postfix) with SMTP id 9199257;
	Wed, 10 Feb 2021 13:26:44 +0000 (UTC)
Date: Wed, 10 Feb 2021 14:26:43 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <YCPfEzp3ogCBTBaS@krava>
References: <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DU69bpqq;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Feb 09, 2021 at 02:00:29PM -0800, Andrii Nakryiko wrote:

SNIP

> > > > I'm still trying to build the kernel.. however ;-)
> > > >
> > > > patch below adds the ftrace check only for static functions
> > > > and lets the externa go through.. but as you said, in this
> > > > case we'll need to figure out the 'notrace' and other checks
> > > > ftrace is doing
> > > >
> > > > jirka
> > > >
> > > >
> > > > ---
> > > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > > index b124ec20a689..4d147406cfa5 100644
> > > > --- a/btf_encoder.c
> > > > +++ b/btf_encoder.c
> > > > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> > > >                         continue;
> > > >                 if (!has_arg_names(cu, &fn->proto))
> > > >                         continue;
> > > > -               if (functions_cnt) {
> > > > +               if (!fn->external && functions_cnt) {
> > >
> > > I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> > > FUNC ELF symbol be more reliable?
> >
> > that'd mean extra bsearch on each processed function,
> > on the ther hand, we'are already slow ;-) I'll check
> > how big the slowdown would be
> >
> 
> We currently record addresses and do binary search. Now we need to
> record address + size and still do binary search with a slightly
> different semantics (find closest entry >= addr). Then just check that
> it overlaps, taking into account the length of the function code. It
> shouldn't result in a noticeable slowdown. Might be actually faster,
> because we might avoid callback function call costs.

I'm still not sure how to handle the external check for function via elf,
but below is change for checking that ftrace addrs are within elf functions

seems to work in my tests, I'll run some more tests and send full patch

jirka


---
diff --git a/btf_encoder.c b/btf_encoder.c
index b124ec20a689..548a12847f99 100644
--- a/btf_encoder.c
+++ b/btf_encoder.c
@@ -36,6 +36,7 @@ struct funcs_layout {
 struct elf_function {
 	const char	*name;
 	unsigned long	 addr;
+	unsigned long	 end;
 	unsigned long	 sh_addr;
 	bool		 generated;
 };
@@ -44,7 +45,7 @@ static struct elf_function *functions;
 static int functions_alloc;
 static int functions_cnt;
 
-static int functions_cmp(const void *_a, const void *_b)
+static int functions_cmp_name(const void *_a, const void *_b)
 {
 	const struct elf_function *a = _a;
 	const struct elf_function *b = _b;
@@ -52,6 +53,16 @@ static int functions_cmp(const void *_a, const void *_b)
 	return strcmp(a->name, b->name);
 }
 
+static int functions_cmp_addr(const void *_a, const void *_b)
+{
+	const struct elf_function *a = _a;
+	const struct elf_function *b = _b;
+
+	if (a->addr == b->addr)
+		return 0;
+	return a->addr < b->addr ? -1 : 1;
+}
+
 static void delete_functions(void)
 {
 	free(functions);
@@ -98,6 +109,7 @@ static int collect_function(struct btf_elf *btfe, GElf_Sym *sym,
 
 	functions[functions_cnt].name = name;
 	functions[functions_cnt].addr = elf_sym__value(sym);
+	functions[functions_cnt].end = (__u64) -1;
 	functions[functions_cnt].sh_addr = sh.sh_addr;
 	functions[functions_cnt].generated = false;
 	functions_cnt++;
@@ -236,9 +248,25 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
 	return 0;
 }
 
+static bool is_addr_in_func(__u64 addr, struct elf_function *func, bool kmod)
+{
+	/*
+	 * For vmlinux image both addrs[x] and functions[x]::addr
+	 * values are final address and are comparable.
+	 *
+	 * For kernel module addrs[x] is final address, but
+	 * functions[x]::addr is relative address within section
+	 * and needs to be relocated by adding sh_addr.
+	 */
+	__u64 start = kmod ? func->addr + func->sh_addr : func->addr;
+	__u64 end = kmod ? func->end+ func->sh_addr : func->end;
+
+	return start <= addr && addr < end;
+}
+
 static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 {
-	__u64 *addrs, count, i;
+	__u64 *addrs, count, i_func, i_addr;
 	int functions_valid = 0;
 	bool kmod = false;
 
@@ -266,43 +294,62 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 		return 0;
 	}
 
-	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
-	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
-
 	/*
-	 * Let's got through all collected functions and filter
-	 * out those that are not in ftrace.
+	 * Sort both functions and addrs so we can iterate
+	 * both of them simultaneously and found matching
+	 * func/addr pairs.
 	 */
-	for (i = 0; i < functions_cnt; i++) {
-		struct elf_function *func = &functions[i];
-		/*
-		 * For vmlinux image both addrs[x] and functions[x]::addr
-		 * values are final address and are comparable.
-		 *
-		 * For kernel module addrs[x] is final address, but
-		 * functions[x]::addr is relative address within section
-		 * and needs to be relocated by adding sh_addr.
-		 */
-		__u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
+	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
+	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
+
+	for (i_func = 0, i_addr = 0; i_func < functions_cnt; i_func++) {
+		struct elf_function *func = &functions[i_func];
+
+		if (i_func + 1 < functions_cnt)
+			func->end = functions[i_func + 1].addr;
+
+		for (; i_addr < count; i_addr++) {
+			__u64 addr = addrs[i_addr];
+
+			/* Functions are  ahead, catch up with addrs. */
+			if (addr < func->addr)
+				continue;
+
+			/* Addr is within function - mark function as valid. */
+			if (is_addr_in_func(addr, func, kmod)) {
+				/*
+				 * We iterate over sorted array, so we can easily skip
+				 * not valid item and move following valid field into
+				 * its place, and still keep the 'new' array sorted.
+				 */
+				if (i_func != functions_valid)
+					functions[functions_valid] = functions[i_func];
+				functions_valid++;
+				i_addr++;
+			}
 
-		/* Make sure function is within ftrace addresses. */
-		if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
 			/*
-			 * We iterate over sorted array, so we can easily skip
-			 * not valid item and move following valid field into
-			 * its place, and still keep the 'new' array sorted.
+			 * Addrs are ahead, catch up with functions, or we just
+			 * found valid function and want to move to another.
 			 */
-			if (i != functions_valid)
-				functions[functions_valid] = functions[i];
-			functions_valid++;
+			break;
 		}
 	}
 
+	if (btf_elf__verbose) {
+		printf("Found %d functions out of %d symbols and %llu ftrace addresses.\n",
+			functions_valid, functions_cnt, count);
+	}
+
 	functions_cnt = functions_valid;
 	free(addrs);
 
-	if (btf_elf__verbose)
-		printf("Found %d functions!\n", functions_cnt);
+	/*
+	 * And finaly sort 'valid' functions by name,
+	 * so find_function can be used.
+	 */
+	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
+
 	return 0;
 }
 
@@ -312,7 +359,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
 	struct elf_function key = { .name = name };
 
 	return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
-		       functions_cmp);
+		       functions_cmp_name);
 }
 
 static bool btf_name_char_ok(char c, bool first)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCPfEzp3ogCBTBaS%40krava.
