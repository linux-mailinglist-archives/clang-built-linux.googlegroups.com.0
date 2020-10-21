Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBY6PYL6AKGQEBD57NZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id EE995295429
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 23:28:04 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id m11sf2001400pff.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 14:28:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603315683; cv=pass;
        d=google.com; s=arc-20160816;
        b=eF4SVgWRiEvKsvu+c35jOUlIPpUEX7cNadaPg565EbfBBE12UQifq5hDbt32D5Q2xD
         rKCOic2JHPJyRnDBHpZzssg/sOHmTAziXgfmZbPdY6JGzrNoLKgmbjkVyPr0Lurqlvyr
         gypI7M9DqqCXZSUKTDiQhYMxzOD/PcFlzHhu4JcTbuM1toh1Pu9B7CyPgEwx14kurSAr
         5SG85IdCT94Hw2K003k9l0cHjeWRP0s5K4eP0o2EKlwFuMijK+I3IDGcNQj9/w9BJfLl
         LJptFrX6a2T+Zm4Vn183ZcyIwnhtMkCT47Jmj4ewJiM89hGhq8VAdgnm4F5Sb/fxA2f/
         pC1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h5FfYqX/UCJtjawL0M9thSnwnibhrM1DrJy2tLBw7g0=;
        b=OGttazEhGAdoA6OGSqm6eyL/9KW/KKXbIqMPJA/wKTM10VUNZ5HUj+KOUsttJnmUdt
         FoyPR3GjpOk+tYwG7PHgU/nEqf0n6Zu9eGqqqD8gMNel7StVHV/6idIaSTYMbXneWIr3
         VrV4Di1amyGDo3vB3FpOOvK5Teo0XkqXOCOhVtqN+r5Sxoj2bvlTdob0icOmoWUD57YB
         wwZuxZ8Rx8UooledEP/n2Zyy+lHPQLI641dsF56YubLnXh1lYwOgwH0uMIjCcvZSrTej
         u4YVV2eLMv7XTbOpt6ddQmFU6ylsPTUio37XPEJaXUKT9RLNXDsJUzWyjiNt1qVQSQfY
         4x/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J76nDGVI;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h5FfYqX/UCJtjawL0M9thSnwnibhrM1DrJy2tLBw7g0=;
        b=OxeeozEJ1bx+hhr5mQMjJ1mRXhAwstVydScjsslXy7Mki+HD/BUnQ4rWrOLLcNIzLl
         CXcRJjBGtf9BHpXxnDa5b8C+CDHTcH8VIzGoQW534d3F631FN/wFN9ohW7LBpPb8Z9R/
         9iPGkq7h3hy5xewiRnNn2wCSwEqrukz9+NJ60iM5CMexKxEFOox6ScpFhmUtOPSX+lS1
         nyRyKbE0kATcpRBWGXZ/4P6PSq5D1E4xhWIpEdf77bzYc0bnFzcebjIehf30miZElIuz
         3eRTxOL7PRyO/8w4g76ImoScNk5v5DxNvo1G8Z/VFMv7XwwjSJr0VsRsrcePyMEUT4ka
         MWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h5FfYqX/UCJtjawL0M9thSnwnibhrM1DrJy2tLBw7g0=;
        b=LWBChotDd/uzCZKUHHnYEQcnQqe1Okx+/8RozTrY3VW8XuxYU0JhSqowXM7cdVYRRm
         6nKxLVpiqU0Cfi6NFPBzYXIoT9Saz8aUPqu1iSPCc/58jBvdZpFaEcZScm9+riS9CRXv
         mCZdf+h/YeKAXQOnL2ZYo67a3eYA9ro0yt2vgt30L7j5WIcc4OQHT4R47+7uvB9lJYmV
         VfaAR6/FTtJKs8zEcDNaD+i1S7NBNF+CivNtdwlwbYIp45EqfQQxBd6SlzCQfQpj+iCw
         Sfd8XCKRqxqpppBZRyjXHYH9Y09g85jVZmTJBW7jiutdlsiqidj5QyZDxlBImAepZ30a
         1Ymg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JD8o8FWg3haFmTzCG9Il2rns6k2ZU8vx76UAD0/m2xHQDm/pY
	rwCSdYSqs4wRqfYgSYZEcIQ=
X-Google-Smtp-Source: ABdhPJxEjAju26XzAp+K19gNtj2r5el3mL/cvP7hJ32BxgKr5FDcsUINX+we2/vbRxYsDj7OpaiLLQ==
X-Received: by 2002:a17:90a:410d:: with SMTP id u13mr5014366pjf.79.1603315683390;
        Wed, 21 Oct 2020 14:28:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d8d:: with SMTP id y135ls408802pfc.3.gmail; Wed, 21 Oct
 2020 14:28:02 -0700 (PDT)
X-Received: by 2002:aa7:8509:0:b029:156:32b4:ab97 with SMTP id v9-20020aa785090000b029015632b4ab97mr5438795pfn.54.1603315682773;
        Wed, 21 Oct 2020 14:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603315682; cv=none;
        d=google.com; s=arc-20160816;
        b=njWZp86U9osZz+8Jim2FuLbcXu6mkwxLoBPUj6BzXhMpGw9sD4ay/zjWh0roTNrB3t
         5/9ZDejCdfcNS9wBX35m01xB0nUjG3a9xo+eeoE8ZU/5CgHtkESPTQaQ8KI2C5Y5luMc
         UpDIjYSoQrcoJevHDEkv8mm8HE7ypO1AaUabQOiRUTSUCvDMDzzXeViqUMv90MdEBep6
         XVmhS0Ro0z1lXF0fz/z03Q3chcURJ/iSI1lo0trFrolxsdfAuAV7kSn2qGN4s9I7BVXb
         sXupo3bqfOcnsFicWpFKi3n6RdGWJeDteX3sTKOXHZrdLet70Z/i4FdT0BUCsJNqdX4O
         RSZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=npHB1hy+ohfvs54PXo0mWCyiDRitVB3e4369uMWtO3E=;
        b=mdFz4ZesB6GZwCxrdYWWX67bXm9tp6kgoIgsB8nZNJLjJAWR+7SwD/Wv3nDOXzlaeD
         tyIxeHr7eYt0eejBQLdlgpSLSVFH5vj80FPJd/mv1BSd1svrv2DToZQYQaf50y4yusDa
         LHSCZHy6hqaE3BgZozAi5Qt9oWRndQcmxRIkLjytbZBsik3JwliaYrae1peoVIxmnlpR
         KtQ+FkUXnnJ5QbsAIKdEWTH+fF6xM033AiFnfFqJMsQ2HEvqg59tZqAZhHpKmQYij0er
         hZtS7FeIzON1XfdaUC5uxjpZRvFU3Icn4NWizZLfc4CwMvsmajLKI+YqIKjI0WQbKsOF
         dJ9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J76nDGVI;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id t13si213026ply.2.2020.10.21.14.28.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 14:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-YOTFvTwkO0i9giCn_eXxEQ-1; Wed, 21 Oct 2020 17:27:57 -0400
X-MC-Unique: YOTFvTwkO0i9giCn_eXxEQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C48045708C;
	Wed, 21 Oct 2020 21:27:54 +0000 (UTC)
Received: from treble (ovpn-115-237.rdu2.redhat.com [10.10.115.237])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 799F855760;
	Wed, 21 Oct 2020 21:27:50 +0000 (UTC)
Date: Wed, 21 Oct 2020 16:27:47 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201021212747.ofk74lugt4hhjdzg@treble>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <20201021093213.GV2651@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021093213.GV2651@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=J76nDGVI;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Wed, Oct 21, 2020 at 11:32:13AM +0200, Peter Zijlstra wrote:
> On Wed, Oct 21, 2020 at 10:56:06AM +0200, Peter Zijlstra wrote:
> 
> > I do not see these in particular, although I do see a lot of:
> > 
> >   "sibling call from callable instruction with modified stack frame"
> 
> defconfig-build/vmlinux.o: warning: objtool: msr_write()+0x10a: sibling call from callable instruction with modified stack frame
> defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x99: (branch)
> defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x3e: (branch)
> defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x0: <=== (sym)
> 
> $ nm defconfig-build/vmlinux.o | grep msr_write
> 0000000000043250 t msr_write
> 00000000004289c0 T msr_write
> 0000000000003056 t msr_write.cold
> 
> Below 'fixes' it. So this is also caused by duplicate symbols.

There's a new linker flag for renaming duplicates:

  https://sourceware.org/bugzilla/show_bug.cgi?id=26391

But I guess that doesn't help us now.

I don't have access to GCC 10 at the moment so I can't recreate it.
Does this fix it?

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 4e1d7460574b..aecdf25b2381 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -217,11 +217,14 @@ struct symbol *find_func_containing(struct section *sec, unsigned long offset)
 	return NULL;
 }
 
+#define for_each_possible_sym(elf, name, sym)				\
+	elf_hash_for_each_possible(elf->symbol_name_hash, sym, name_hash, str_hash(name))
+
 struct symbol *find_symbol_by_name(const struct elf *elf, const char *name)
 {
 	struct symbol *sym;
 
-	elf_hash_for_each_possible(elf->symbol_name_hash, sym, name_hash, str_hash(name))
+	for_each_possible_sym(elf, name, sym)
 		if (!strcmp(sym->name, name))
 			return sym;
 
@@ -432,6 +435,8 @@ static int read_symbols(struct elf *elf)
 		list_for_each_entry(sym, &sec->symbol_list, list) {
 			char pname[MAX_NAME_LEN + 1];
 			size_t pnamelen;
+			struct symbol *psym;
+
 			if (sym->type != STT_FUNC)
 				continue;
 
@@ -454,8 +459,14 @@ static int read_symbols(struct elf *elf)
 
 			strncpy(pname, sym->name, pnamelen);
 			pname[pnamelen] = '\0';
-			pfunc = find_symbol_by_name(elf, pname);
-
+			pfunc = NULL;
+			for_each_possible_sym(elf, pname, psym) {
+				if ((!psym->cfunc || psym->cfunc == psym) &&
+				    !strcmp(psym->name, pname)) {
+					pfunc = psym;
+					break;
+				}
+			}
 			if (!pfunc) {
 				WARN("%s(): can't find parent function",
 				     sym->name);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021212747.ofk74lugt4hhjdzg%40treble.
