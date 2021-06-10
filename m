Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJGSRGDAMGQEAARZFGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 078EE3A341D
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 21:33:57 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id 1-20020a05651c0081b0290141541aa7casf1587296ljq.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 12:33:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623353636; cv=pass;
        d=google.com; s=arc-20160816;
        b=AHFlgRaXatnL8TXb+jEqORcF/eObhbexIowC2wCE6XYsCTkGnZnC9LcKjM87+WiSU4
         rhh6XlsNgEjAFU11M7yigIWyNVySB0ckoJVetfFGtT1+zNOqT0cnXPZj6RpO0YpVAo8b
         5yJYg6Y8T1/CWaLdiGP5wVprz4QuafBe+ll3pgxkjei3p7k72FenTO0WJM0dDH7etGHp
         +sbyfrrdh90nowe9pl1IpVogKiv6lDqP5JAQPaTilUpFQ4rCZC5Q+l7KGbsR5szkBhzY
         ehtdPnB1sx1NykhexqQq49k6vvM9PJ3bVtGcySgdNyRdknc4ntH3CSYDIAwg/Jm8Ksyx
         TXdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mq4RCHZdgtSTx4izVERvIlTMRSg5vH3GHN2Kb28Tjgo=;
        b=JkDLOr2Sw9R3VpgPmwVck9yAh8REhf+cpTm3/CGjCKLL+P/VrbE/yixQOlI7VaI8Hd
         5e+C/DSqwnAKmbecEw4sw8lageos8feETU0sl8rz4ehSSDPF+H+WaiXh1MhKgi1kEoQO
         xsXX5FyBkZ3xiPoB12VoMn06Fdjvhb7cWFngeMTmEqLlQdK+c1AJ7K4/5zDXksXpfnqd
         nbF6/GYtez5DXnfQh2PC/vt4TMggAIk8YvctF3aBNn0RpEY8EJHseMQP2ubLC+BmR/9x
         ic42lK2nZ/rP76Zn51fG/Jb2J7Gei9oiADxU8N2CuA/joZMdeNCfwFy5t/l6J7WfRQA4
         e7Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=glc1Sg7d;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mq4RCHZdgtSTx4izVERvIlTMRSg5vH3GHN2Kb28Tjgo=;
        b=YGbbjhDJThiUMIsiKY4QR8o/s6ds9CV3M5mv/9R8OAZwqMCdZIL+rTdOPtX2e/vyBB
         krEZuhfowNBn9dI355KXMonZ9wU0mVGp6Kd29p0nxVxewOVvJniTz4afruxiS7zSR+K+
         3F1ax8bHegAESkE96BzV6f96OfAN9EWkhC+3JFRUsE5BilYeE2r8afzUI3tg3HpMaFWE
         grPKxAxd8JUbTVr96fESVD6dTP7AsxHTXIcZsp5F90EoEXuRhd3+ZjhLFza+jzAwmhMQ
         1bGgK8ppgHeRXs7sq2KEyv8lSaXfXPvr6EH+hDDFg78+ELTw60rptBM1Rc7CsarOJPmB
         H45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mq4RCHZdgtSTx4izVERvIlTMRSg5vH3GHN2Kb28Tjgo=;
        b=n5PSItmzN9RqDJISoyPoeoV3EduCzcuBPcsbNiNkO2BDl2yPGmhiqtO4VAKkWwjeoz
         7o2Y7yyHJuig13KeDpMFSdANOkrOLh+7qm/UA8DKSNK542dpTHYDQ23q3IEBj+QFiNVg
         cP0dQFNX2Aa3RrLszsuHJ/BxCQAOJf9OV9mDnXf8t6EMH4JnwAfMRHgcqx1hPUhwmQrq
         oQ79MKwfRwhNJrRJGOSkbDpW83pZp1Oqi7VWke7d8wQkqVHWi2rfV5eAFnPxck6JURzP
         6fFtk5FZweHzPvApkMx8CXdfW95AC6XD1lCgkLPwx5ZLz8RO1CvdXpOOGRvnkS2I70/+
         iH8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Rrd+rB2pIxnTQHhTtyyEckiP4aljy46f9TyhWrWDNX2UK4H9T
	F5xhcbmpPX+pkCJ5nNwz4iU=
X-Google-Smtp-Source: ABdhPJwnsE6kbjnUCOaNiiv8mLVufHdc9AVE+UPiD6cYfKXaje8uRZO+F7DgGqSZg6sOjnmOCdNSxA==
X-Received: by 2002:a2e:3506:: with SMTP id z6mr153251ljz.238.1623353636554;
        Thu, 10 Jun 2021 12:33:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls5075210lfv.3.gmail; Thu,
 10 Jun 2021 12:33:55 -0700 (PDT)
X-Received: by 2002:ac2:52a4:: with SMTP id r4mr249742lfm.317.1623353635349;
        Thu, 10 Jun 2021 12:33:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623353635; cv=none;
        d=google.com; s=arc-20160816;
        b=XlXHY86EiUHQUlZq6PAzQBttgiB2QcPxvowMc4OP1FW6TlZCVHdZu3+UX8xiDt127M
         RYGPQLpbQQi/Jk3DKDxnkNZZ/Z4RAylaX6j/AMyz++VvWwNuHyQaVxE6xmlNMv3R47bA
         /kxU15fJCIgsWmUFYkQkl6uCuhb92dSqsVHRmR0BKXplCzbwp30U085LmJKM3vUsiYmk
         2L0+ZBhwMjc6RQoYp+i8zLjsYRyUbo4VXtFXgKK7KraJdIKO0uqf4Si9szUvQNJ5sigS
         qQ+xycmMtnXlvw7z3LL5bs62qEV7WvLoKEBzz5LNdqlpzlyLVXZH3f7gaO5qVuL5lZXN
         05hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0WsSSFAZtWvDuAL5HUXTcX5Z6Hke2LSIWc8Z2dlCrBA=;
        b=sN67kqjKRadBljbcWf7kle0bMSD2BGByU7MrPrQbYDwtXCPjHkvqwU8qam9IcIV6xc
         CbW0Cx8eLNH0bM+kmOW4GeH8UvTbeGoCR6Xyggc1UxAeTVR3ZTUMlabZflStjdKaWiKb
         Ckix47n4VaneHE/QUGvLHQto5LKI3lRsbVLYboX9wOxXjcxal70YlrckQgzSCrpEYxbP
         K4djgBL4jY4y67qL9tajMXvKmK6UfSSAj8EaDNgEMz4eiogiZwzLsPhtuQ+355EegxEe
         d7rFFFM8+NcfXnyt9UHPUdVmGxuut46wpm2fJf4mCUI77Nl3tedMSLqyI/tABNGXJEIg
         GZ6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=glc1Sg7d;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id x23si143691lfd.5.2021.06.10.12.33.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 12:33:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrQQs-005cFg-19; Thu, 10 Jun 2021 19:33:45 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 308CF3001E4;
	Thu, 10 Jun 2021 21:33:44 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 0C2032081180A; Thu, 10 Jun 2021 21:33:44 +0200 (CEST)
Date: Thu, 10 Jun 2021 21:33:44 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, X86 ML <x86@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
Message-ID: <YMJpGLuGNsGtA5JJ@hirez.programming.kicks-ass.net>
References: <20210506193352.719596001@infradead.org>
 <20210506194157.452881700@infradead.org>
 <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
 <CABCJKudzC-Nss_LGrpYwRqwdDxeWOf1o6Bvp3J2fBQthEB=WGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudzC-Nss_LGrpYwRqwdDxeWOf1o6Bvp3J2fBQthEB=WGg@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=glc1Sg7d;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 10, 2021 at 11:50:36AM -0700, Sami Tolvanen wrote:
> On Thu, Jun 10, 2021 at 11:14 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > Adding Sami because I am not sure why this patch would have much of an impact
> > in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the patch in
> > question.
> 
> It's because LLVM enables -ffunction-sections with LTO, so using .text
> section size to estimate the reloc hash table size isn't going to be
> accurate, as confirmed by objtool output with --stats:
> 
>   OBJTOOL vmlinux.o
> nr_sections: 141481
> section_bits: 17
> nr_symbols: 215262
> symbol_bits: 17
> max_reloc: 24850
> tot_reloc: 590890
> reloc_bits: 10

Bah. Would something like the *completely* untested below help with that?

---
diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 25f6d293bc86..8676c7598728 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -288,6 +288,9 @@ static int read_sections(struct elf *elf)
 		}
 		sec->len = sec->sh.sh_size;
 
+		if (sec->sh.sh_flags & SHF_EXECINSTR)
+			elf->text_size += sec->len;
+
 		list_add_tail(&sec->list, &elf->sections);
 		elf_hash_add(section, &sec->hash, sec->idx);
 		elf_hash_add(section_name, &sec->name_hash, str_hash(sec->name));
@@ -581,13 +584,7 @@ static int read_relocs(struct elf *elf)
 	unsigned int symndx;
 	unsigned long nr_reloc, max_reloc = 0, tot_reloc = 0;
 
-	sec = find_section_by_name(elf, ".text");
-	if (!sec) {
-		WARN("no .text");
-		return -1;
-	}
-
-	if (!elf_alloc_hash(reloc, sec->len / 16))
+	if (!elf_alloc_hash(reloc, elf->text_size / 16))
 		return -1;
 
 	list_for_each_entry(sec, &elf->sections, list) {
diff --git a/tools/objtool/include/objtool/elf.h b/tools/objtool/include/objtool/elf.h
index 90082751f851..e34395047530 100644
--- a/tools/objtool/include/objtool/elf.h
+++ b/tools/objtool/include/objtool/elf.h
@@ -83,6 +83,7 @@ struct elf {
 	int fd;
 	bool changed;
 	char *name;
+	unsigned int text_size;
 	struct list_head sections;
 
 	int symbol_bits;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMJpGLuGNsGtA5JJ%40hirez.programming.kicks-ass.net.
