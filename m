Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBL66TKAQMGQEQDQWJ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 843E631A2D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 17:39:12 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id f3sf7096935plg.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 08:39:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613147951; cv=pass;
        d=google.com; s=arc-20160816;
        b=mUDjahSoYtCLjHLZz/y8ZYDQGGY5hN5/WPLrI64wFEUYmOjsUlE2YtNOOGcw9LOIYP
         g9giC4k0hg8aqZES0mggSTx/YJHgEEQM9NhZ1dIsIPLFQhb3lrER6pxUa5Ui6XPTrVhJ
         FnOffz809Zdxhsx7iHmgPhLoG3LtELg60xtJIKAHH5+DsuR5qaylAO/fYDuRZqM1TBm3
         U6lJ1XW8g3IyyXDxmVRSnMIbiSMQuSmcDSVs8bFmkzIg7UqhcvF5s+vVyWRHR9k2Kymi
         lCFTlESbnuCbXyskpYBYLZkQZKPRYz57bQexc1XIFHWpM9au1G2lHIwE8sPxEs3c7Hi9
         jkQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1t6ENguqBYrUWiUwnymDeMeJEUsa3zrHvOoz0gan4Wk=;
        b=hPVziG9S5Fq27++wQZkhLgpbrDJ92nQrnQjcKQZzVERARtTJSfm0lzK+J16OXTirYd
         Y5Nsiey6t0TJTHjqFXqhzpQWDcLqj2pVs29tKdxrvyZaz+DwWsS2YHwdRB40HsfUUuQO
         +xcpqxKkiVq9FNCRMbA3Le7pS/WsAHQu9Ca7WHR2fOSEkr/pJ4I4QbWiCL6vqFAjWj33
         de5XEC1udfDeHMqlzhriVDQY03FaDgUtz3GHAkXcW7ENQWzIBkmGTwA7p4woCO+Mq//B
         fXgFzLehHOajYVDNjZYY9lRK4341J3Z8FXVylNknVDwz3UjDORHx+EC98hj1aCOLY4Oq
         R9oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Skv5Kyv6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1t6ENguqBYrUWiUwnymDeMeJEUsa3zrHvOoz0gan4Wk=;
        b=bb42Twk7pm/c/McqvkKtpB9K2qUt9Yf3+wtDRpJQYEXxi4dKZm+16w1LBZvngl6CW3
         rEm0PuE9MDt/qhH46TGEnekoDY3j8d0BSdSb7ikVRUoVXLXvq+fjbdAs/kMoBMp1vWi7
         4MIxSbHgjv2WHaIsf0fPWIyPF0w2SZtNY3bdjMLWGt3+I5KqeTzj7brdFDckUyLNpHVy
         rICyQKt6wYcDmy+TIaiZcoV1/OTINjO8PaiZemzzl8UCJS+v/qbwQfqpa7AG5XtGsWbP
         iwxr47MYy42eLqbYtO2UucyRP/aQVjzGTkxbviX9Sd+OSgd30rLGtmzR08asE0edZQXa
         Q+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1t6ENguqBYrUWiUwnymDeMeJEUsa3zrHvOoz0gan4Wk=;
        b=aPZDRJWXWobMpsSH0QGfuoemjkMUUF2DYxxT451K3RW04Yn1X2koyXm5FE9REbDaq/
         Q0A5PgEZgvfqhaSM2/bbUPgH1QXnEvOvTjEiwrffvBy3YCDk2fOudV22zmxWLvNrXMNW
         Yb9HKjmNtcJ04uBSMHN+e/GwrWARPEa4GraFfAQQ70A28biOKaDUNJ78CnnZpzHcnpcC
         WH3Oqk9SL1mfVBeiL1RBIyWHwVzKbZeLpOx5Ca6nnL5tu4rq+pK/bUcaqy71UZdHXOBL
         aimFzLWXjGfd97EhTKRfqglojI2XZbc5gA9eDWgm2rcz0J4AKL3oJ2AEeIs1wGaqxV4D
         OpVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53106BkjK69HWEiRnTYeg9Dr3aH2rGi+KLRljfhGs0M2KJ77AEv4
	s2I//kRPAW/dofbqFBrFAk8=
X-Google-Smtp-Source: ABdhPJxaGaZyf/MLSqvi9DQv8vjfYIKnMbdpFp1XqCdJwhb5U3e6yDsqrjOj2klyvMoCFXxkHum9bg==
X-Received: by 2002:a05:6a00:1353:b029:1c5:8a8d:7ee6 with SMTP id k19-20020a056a001353b02901c58a8d7ee6mr3465508pfu.13.1613147951233;
        Fri, 12 Feb 2021 08:39:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:27c1:: with SMTP id n184ls3710643pgn.3.gmail; Fri, 12
 Feb 2021 08:39:10 -0800 (PST)
X-Received: by 2002:a63:2217:: with SMTP id i23mr3924173pgi.437.1613147950506;
        Fri, 12 Feb 2021 08:39:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613147950; cv=none;
        d=google.com; s=arc-20160816;
        b=xzijuvPvJE7hQf7+lkp5h+Oj1wrmPL2PrbeqTCFYMfEXJ+RjfIoknKGACoHMQ4TuQj
         jN3rM7Z+ichgxzdWPV4WzIHXUOCfYC8eWdQOfkAwrXNs8OIQCkNIoBNx6B7zKfmiXxYL
         M6FYJ07G1XWNMZcnjRqQtl1j3b837YQjwVyN5X6sVUgzwO9W23jvYFGsTr3Y197G4xZ5
         jqHVu3+tsrIoGGPlkkbXFsO3qQj0ZFFQi/kFr7aqN5kUKZVzUfRKekk+d3pN5asLi8+A
         PbX8O7OXFkpDyIlRpCCnU2Yg30zWahG1j6R8VEN9OCAKn3ZOMRd5cCdClywYk1GWyJw8
         pOkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U4WyzaFVGJo5ke7IZuHExhC34PtdB0ost6FmcFZqD6o=;
        b=ex394PLpADbkCNSV/IqGgO7dHZ7LoBZHBwAzIVHW2H8K+UFnS+pHMCjL7icfrIPN3T
         +MbS1VzdwF8fMB7fRuASO9hf2xSGWKTaFR0LNZMFfWOWSWocXpX0J52tRlnyPGTD0l5J
         o0HBZCUwONVcall1bX/NSTIXe05UR8E/DVkLBnvhmaWZbSJpUtnltsMh3BtPkiFr2gCL
         n4n5egN7XtD+CMuXihpoU8n4gF+5dOApQxlzFv7LH/bchIh0aH2jVukLgkU/Lvzvi5kW
         Jpq81r/2VsveDgRB+SV2msgF3TPzQIPRv7dCyvVZ3wUcL8DJ1UuY6zzifoGRBwoN2DIO
         0rwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Skv5Kyv6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r142si407067pfr.0.2021.02.12.08.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 08:39:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-c3Hmb8OLMNuFqTJzA6W-PQ-1; Fri, 12 Feb 2021 11:39:04 -0500
X-MC-Unique: c3Hmb8OLMNuFqTJzA6W-PQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74D39AFA81;
	Fri, 12 Feb 2021 16:39:02 +0000 (UTC)
Received: from krava (unknown [10.40.193.141])
	by smtp.corp.redhat.com (Postfix) with SMTP id 2D2D819D6C;
	Fri, 12 Feb 2021 16:38:59 +0000 (UTC)
Date: Fri, 12 Feb 2021 17:38:58 +0100
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
Message-ID: <YCavItKm0mKxcVQD@krava>
References: <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava>
 <YCVIWzq0quDQm6bn@krava>
 <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Skv5Kyv6;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Thu, Feb 11, 2021 at 11:59:02AM -0800, Andrii Nakryiko wrote:

SNIP

> 
> So in my previous example I assumed we have address ranges for ftrace
> section, which is exactly the opposite from what we have. So this
> binary search should be a bit different. start <= addr seems wrong
> here as well.
> 
> The invariant here should be that addr[r] is the smallest address that
> is >= than function start addr, right? Except the corner case where
> there is no such r, but for that we have a final check in the return
> below. If you wanted to use index l, you'd need to change the
> invariant to find the largest addr, such that it is < end, but that
> seems a bit convoluted.
> 
> So, with that, I think it should be like this:
> 
> size_t l = 0, r = count - 1, m;
> 
> /* make sure we don't use invalid r */
> if (count == 0) return false;
> 
> while (l < r) {
>     /* note no +1 in this case, it's so that at the end, when you
>      * have, say, l = 0, and r = 1, you try l first, not r.
>      * Otherwise you might end in in the infinite loop when r never == l.
>      */
>     m = l + (r - l) / 2;
>     addr = addrs[m];
> 
>     if (addr >= start)
>         /* we satisfy invariant, so tighten r */
>         r = m;
>     else
>         /* m is not good enough as l, maybe m + 1 will be */
>         l = m + 1;
> }
> 
> return start <= addrs[r] && addrs[r] < end;
> 
> 
> So, basically, r is maintained as a valid index always, while we
> constantly try to tighten the l.
> 
> Does this make sense?

another take ;-)

jirka


---
diff --git a/btf_encoder.c b/btf_encoder.c
index b124ec20a689..20a93ed60e52 100644
--- a/btf_encoder.c
+++ b/btf_encoder.c
@@ -36,6 +36,7 @@ struct funcs_layout {
 struct elf_function {
 	const char	*name;
 	unsigned long	 addr;
+	unsigned long	 size;
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
+	functions[functions_cnt].size = elf_sym__size(sym);
 	functions[functions_cnt].sh_addr = sh.sh_addr;
 	functions[functions_cnt].generated = false;
 	functions_cnt++;
@@ -236,6 +248,48 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
 	return 0;
 }
 
+static int is_ftrace_func(struct elf_function *func, __u64 *addrs,
+			  __u64 count, bool kmod)
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
+	__u64 addr, end = func->addr + func->size;
+
+	/*
+	 * The invariant here is addr[r] that is the smallest address
+	 * that is >= than function start addr. Except the corner case
+	 * where there is no such r, but for that we have a final check
+	 * in the return.
+	 */
+	size_t l = 0, r = count - 1, m;
+
+	/* make sure we don't use invalid r */
+	if (count == 0)
+		return false;
+
+	while (l < r) {
+		m = l + (r - l) / 2;
+		addr = addrs[m];
+
+		if (addr >= start) {
+			/* we satisfy invariant, so tighten r */
+			r = m;
+		} else {
+			/* m is not good enough as l, maybe m + 1 will be */
+			l = m + 1;
+		}
+	}
+
+	return start <= addrs[r] && addrs[r] < end;
+}
+
 static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 {
 	__u64 *addrs, count, i;
@@ -267,7 +321,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 	}
 
 	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
-	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
+	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
 
 	/*
 	 * Let's got through all collected functions and filter
@@ -275,18 +329,9 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 	 */
 	for (i = 0; i < functions_cnt; i++) {
 		struct elf_function *func = &functions[i];
-		/*
-		 * For vmlinux image both addrs[x] and functions[x]::addr
-		 * values are final address and are comparable.
-		 *
-		 * For kernel module addrs[x] is final address, but
-		 * functions[x]::addr is relative address within section
-		 * and needs to be relocated by adding sh_addr.
-		 */
-		__u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
 
 		/* Make sure function is within ftrace addresses. */
-		if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
+		if (is_ftrace_func(func, addrs, count, kmod)) {
 			/*
 			 * We iterate over sorted array, so we can easily skip
 			 * not valid item and move following valid field into
@@ -303,6 +348,8 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 
 	if (btf_elf__verbose)
 		printf("Found %d functions!\n", functions_cnt);
+
+	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCavItKm0mKxcVQD%40krava.
