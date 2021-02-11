Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBZ4QSWAQMGQEAST7Q2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6C8318DD2
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 16:08:24 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id d8sf6418253ybs.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 07:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613056103; cv=pass;
        d=google.com; s=arc-20160816;
        b=sLP27737Y0oOb4ibcu9zCVq9cnowECE4huhgXnSqIX0jXKSugEdDRByjnv42yuwB+i
         o8CF3UtPGBodY0pQG67+BVC1xLmbWyTAo4TVpbEMUrPT1oguVWu4SjJtbq6SJvRk1yhf
         ftJVjOJxK+NTI2ByyPuM+v2dCS8phPvQDv3BJGeAFyAKPQ7am3+BIil4UA6yikXF5nlr
         VyL/fPUK6KEyqgDEJghz6e5n7TBJOErTa2lzjVgeqVTmN7qoFRyQv9aA18soj5tFLUUY
         8HIGIKMZeB3vHvR8waEUpsi2+nNIp22uVbcBPIj6HFeoJVlVxDm707vqC4SX6SnlfsDm
         UJaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SNBh6335jjTpueJT1wgDysaeTrBwnD89+GumKLYwVXc=;
        b=K6J/iV33DSW7m2hcuI76Q+6TOs/7E6rme88DxwxJZvNzezlrMA+cep72yj6sp8ATCk
         OjO36kWx7p00Oq6/eEEbKUKYN++jyQzTwKSG6RQ8OvwA/SPM2AduEmDmpAp2xInE2plW
         RvoE/GG4u67TG+IaY7uepgH1bjmvfh8V/nvO7Rwj2WdPWuQ4CQ+7uvyR3N0Q/aQpONKN
         OZ7UyDFDg1sq+7Q7SIHH0TUIlpVvAE3/a4sJ2H30e8Vfjx6E1vNjkp5LR4WYGzcpAzQh
         boq1VWwJ/cLCNcOLQtj3nStS0GssTwHSuQklPMTh6L8yi7zZFXm77WjCEU+ExAlquL/Y
         /WWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="GxCE/qtO";
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SNBh6335jjTpueJT1wgDysaeTrBwnD89+GumKLYwVXc=;
        b=BAmwhwVquE5/bta9tgjXVBhNRBpojaA820hh4scHrZ1h7Bte4jPJ131DeSHx/TEaMd
         WdoI6atHwYRopnvThDG+y9W2KFfAUHtTo02SZ0eUkjLV6hpxMiwuH2u/HId2M6yfuL6T
         qDLK69XxptpHj2TnhXlx3rCdZONdvSvxryYPI6ye3U3QMUCMvKc3foKBXxMf0aDrarfI
         rdVhxP9b0vw5ojiR9oNTe2OWSDYI8ZOXZ0rUi2tOoSfNBun5Zb3wRPPCl2EfhSojRKg2
         eC0bGwWNG447/HLpPJL5Q2CX9RXq1XwieTZcsf/Dc/ZleSl2aLhk8atFtjTDNtjc/s5G
         iNgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SNBh6335jjTpueJT1wgDysaeTrBwnD89+GumKLYwVXc=;
        b=FKe4GUCvBcNgw3jt+/bIHDfDI8pmxu7I2K/4l0eYW+MnC0R2a0ZmM/5p1xDcXTm7R5
         Iqh4gc22drj2BjNzAgWTgqi0BOeA6N1sATCyyTK461Gbfd0ygXDbBgu4Rp+wYTQJbkpQ
         Aj2yTv0orrzQuFNjutuFxyxgIEb/ZiDcR2/9EPVMwhUDfZUSrhaXtOLpoEVnVxyOacth
         USullC5fZKUEQe8pSBi2utUMzs8aCQkzRcSIsEmxr18Q55Jcmu51u3AMBL4Q3V2hVF3l
         bpbpAOsE/sYdNovcLTRZSgh8zeqDNMUQclB0uFTM6P0hfhOtGZiVYc2OgH1vpZWCG3py
         7JVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JXL/tM3QWM76Lja2kJQPMDhNvZ9kPNUCkFy4fvQ3VUkqRfDI6
	/TKsquFXqLZxCyFm2fIS8XA=
X-Google-Smtp-Source: ABdhPJy7ONjM3WpY3pbDv4caUuh5HKziEpFXQ8FURonosmEsS8Il2158FVALqyqMZlTnAWkTlf8LcQ==
X-Received: by 2002:a25:730b:: with SMTP id o11mr9620292ybc.415.1613056103259;
        Thu, 11 Feb 2021 07:08:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1482:: with SMTP id 124ls2715775ybu.7.gmail; Thu, 11 Feb
 2021 07:08:22 -0800 (PST)
X-Received: by 2002:a25:c407:: with SMTP id u7mr13193092ybf.387.1613056102537;
        Thu, 11 Feb 2021 07:08:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613056102; cv=none;
        d=google.com; s=arc-20160816;
        b=MQWGYrJBlFWfbE4NTBBBzDRjtvj8y3ScTc8VrTvGGuehiDLSF3/ZInLrnG16W/nYfU
         Sq4gz0+GzIzEiz+535xCvnsLTiJxVZibdn9xW3oEyOxWd955QxARkWttwYYVHwPES5SJ
         61QmbzItXBlpDI7X8mPPXH76RYFxwtzXK926qdNDY32YeJVpPEY2sQ3AG9r7OZS5lPgO
         eObjFoKjqkbItQ8pn7FefnZHC528mSDMklnayFBudVXX1A3Prhtn0RXpZJPDmUuhZjcv
         Lb+x/17/ZQrWOEqQNVDr5jPzlAaBUphx7pe1dgcScqbiVGUbd02+SzlqzQQS2fSFRLKo
         tGMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IJk4z6TuxNr4nNxcX9hDO3Ok0FW7l/jb6b2/xDt4SXU=;
        b=QIWo6zZoIRxdx50J0vBLlFN+1KtM5bobKnkCu76nkX3NZexRp7n4IBoW0KhYJGlvnt
         hgR4zGRhFXuqL6OkvVoevM45mwGdJk/I/8vLst25Y3GJhhgWzBIWrYEigi/YfbZk4Z9Q
         Nt+K6a+sVD1CoOKTWrcilfTwOUOJ0sSwOZNzf6hPRFAV66YnGY9wZEpU3LYZcl7K5lFH
         15Aol1qK7ZqnR5PlLwV0PRyZufqI+cen2jZ057f/ikLl0LxkXPIaujI5RtdTs7ws2uw9
         KnNhq6FoiAEGWWJI/Ncw+xbDyuzXDy8omX9y/Eafst5Adx41iMOEspIVgLO7Qj+9qmjR
         OI2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="GxCE/qtO";
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s44si391206ybi.3.2021.02.11.07.08.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 07:08:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-546-18QqE7EhPyWamxk0Tq_6UA-1; Thu, 11 Feb 2021 10:08:18 -0500
X-MC-Unique: 18QqE7EhPyWamxk0Tq_6UA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B4B51005501;
	Thu, 11 Feb 2021 15:08:15 +0000 (UTC)
Received: from krava (unknown [10.40.192.105])
	by smtp.corp.redhat.com (Postfix) with SMTP id 5AE1A60636;
	Thu, 11 Feb 2021 15:08:12 +0000 (UTC)
Date: Thu, 11 Feb 2021 16:08:11 +0100
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
Message-ID: <YCVIWzq0quDQm6bn@krava>
References: <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCQ+d0CVgIclDwng@krava>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="GxCE/qtO";
       spf=pass (google.com: domain of jolsa@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Wed, Feb 10, 2021 at 09:13:47PM +0100, Jiri Olsa wrote:
> On Wed, Feb 10, 2021 at 10:20:20AM -0800, Andrii Nakryiko wrote:
> 
> SNIP
> 
> > > but below is change for checking that ftrace addrs are within elf functions
> > >
> > > seems to work in my tests, I'll run some more tests and send full patch
> > 
> > It seems unnecessarily convoluted. I was thinking about something like
> > this (the diff will totally be screwed up by gmail, and I haven't even
> > compiled it):
> > 
> > diff --git a/btf_encoder.c b/btf_encoder.c
> > index b124ec20a689..8162b238bd43 100644
> > --- a/btf_encoder.c
> > +++ b/btf_encoder.c
> > @@ -236,6 +236,23 @@ get_kmod_addrs(struct btf_elf *btfe, __u64
> > **paddrs, __u64 *pcount)
> >         return 0;
> >  }
> > 
> > +struct func_seg { __u64 start; __u64 end; };
> > +
> > +static int func_exists(struct func_seg *segs, size_t len, __u64 addr)
> > +{
> > +       size_t l = 0, r = len - 1, m;
> > +
> > +       while (l < r) {
> > +               m = l + (r - l + 1) / 2;
> > +               if (segs[m].start <= addr)
> > +                       l = m;
> > +               else
> > +                       r = m - 1;
> > +       }
> > +
> > +       return segs[l].start <= addr && addr < segs[l].end;
> > +}
> > +
> >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >  {
> >         __u64 *addrs, count, i;
> > @@ -286,7 +303,7 @@ static int setup_functions(struct btf_elf *btfe,
> > struct funcs_layout *fl)
> >                 __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> > 
> >                 /* Make sure function is within ftrace addresses. */
> > -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> > +               if (func_exists(addrs, count, addr))
> 
> you pass addrs in here, but you mean func_seg array
> filled with elf functions start/end values, right?
> 
> >                         /*
> >                          * We iterate over sorted array, so we can easily skip
> >                          * not valid item and move following valid field into
> > 
> > 
> > So the idea is to use address segments and check whether there is a
> > segment that overlaps with a given address by first binary searching
> > for a segment with the largest starting address that is <= addr. And
> > then just confirming that segment does overlap with the requested
> > address.
> > 
> > WDYT?

heya,
with your approach I ended up with change below, it gives me same
results as with the previous change

I think I'll separate the kmod bool address computation later on,
but I did not want to confuse this change for now

jirka


---
diff --git a/btf_encoder.c b/btf_encoder.c
index b124ec20a689..34df08f2fb4e 100644
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
@@ -236,6 +248,40 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
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
+	__u64 end   = kmod ? func->end + func->sh_addr : func->end;
+
+	size_t l = 0, r = count - 1, m;
+	__u64 addr = 0;
+
+	while (l < r) {
+		m = l + (r - l + 1) / 2;
+		addr = addrs[m];
+
+		if (start <= addr && addr < end)
+			return true;
+
+		if (start <= addr)
+			r = m - 1;
+		else
+			l = m;
+	}
+
+	addr = addrs[l];
+	return start <= addr && addr < end;
+}
+
 static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 {
 	__u64 *addrs, count, i;
@@ -267,7 +313,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 	}
 
 	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
-	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
+	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
 
 	/*
 	 * Let's got through all collected functions and filter
@@ -275,18 +321,12 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
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
+
+		if (i + 1 < functions_cnt)
+			func->end = functions[i + 1].addr;
 
 		/* Make sure function is within ftrace addresses. */
-		if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
+		if (is_ftrace_func(func, addrs, count, kmod)) {
 			/*
 			 * We iterate over sorted array, so we can easily skip
 			 * not valid item and move following valid field into
@@ -303,6 +343,8 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 
 	if (btf_elf__verbose)
 		printf("Found %d functions!\n", functions_cnt);
+
+	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
 	return 0;
 }
 
@@ -312,7 +354,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
 	struct elf_function key = { .name = name };
 
 	return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
-		       functions_cmp);
+		       functions_cmp_name);
 }
 
 static bool btf_name_char_ok(char c, bool first)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCVIWzq0quDQm6bn%40krava.
