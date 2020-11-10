Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBQ7XVL6QKGQEIN6HMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id B10052ADB5A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 17:11:49 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id i6sf5445787pgg.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 08:11:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605024708; cv=pass;
        d=google.com; s=arc-20160816;
        b=xPwCCsVVlRk2SRQZqAt/Ji7pIvkOJuCXXcPRx9lYHc9jT4Ii+uREnzt/TQYlLTmpX+
         z9wWEiEZlgzxYkyGWzJQ2xD6n27dX3nxMS51HkN/l1IvE6AbEkmOw7kvP+hcjftQdlLK
         XAwQq3RxRW8qa+XslgERFtYXD5Wfo2iQuXq82NZzatRNIT9AH6A4iLGz1vPKAPKmFEhB
         fX/QpUCidBLwbdcH9ZQ5jgGLdWXrH/SaIZWh9u7oFSMpu012KpeTstNxOd6pwjAqZnpL
         WhU7yd7kDKg16xkB8xDt0ZWR0AYA2g1MPJ1hXoO2hYhzGD4OhcMdN1qxcN7Vm/BTB6Kl
         7p/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8QTVKbwpDdu+1jVTg2smnf45EsekFT87k7qYoxH4eYs=;
        b=CTqZtQBoGlQXQpmiLJ1SOA3ZDVmS3lxZXof+cD3GKrldGB5ufU01aJzR0ILw4/Ap7O
         bD+dsYXuusYQK09a7DLODmTklvnOWJGN5VNnk6fyRY2Wvs6u0pn6TiVIdCIIfPNCAflM
         7Rthb4H7HaWlk3isPgYit6jszENEaWW0jA4bXKgUsugmkJsLUxDom27H7fFsideb2T1o
         x34rbWasWMN/8Vo6Hl2SLlFqqcdaSYwCLW0UtmPKCeUz0GFHrG4+in4+/f25a0lcrn/a
         eprguG78yzRk8pHxnjPMqGn/8xn9+fAsU3HralaNdwdyMjCGl8o6VQVG/ayzFY1Swwo9
         aNwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZAlCen6n;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8QTVKbwpDdu+1jVTg2smnf45EsekFT87k7qYoxH4eYs=;
        b=B+PMsYHR9gwuWeTLfxClNlWXQ4IxU+x2vYaptX3s9ZaVWJnXiKJucZxxMVjanhPCK1
         pfLHc+ZELDI/i4FAXKRf/lA7hyp5mAOMDYXcaPDX63PAsHtckxwRpIF5xwTETPpENiWr
         iHS55A4CfXK8nOzzrlmfcMk/J3pvTDxmUVxQeXqnP5kSq5lj9VWMHg4OonqJI2uOgIH+
         8C0jwNTu8nrOzZcT2wSW1msqxF/UTTYOUM7o5HrZu07HlJUAe0nT7NzJtKxwncJc9Q7T
         2zqVwfFaJP24kR/zRrtz7wIIYe6TZzYFYbCn0L99CQeLTKT9E/T0vJXIb7hZF1YwPHhi
         abUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8QTVKbwpDdu+1jVTg2smnf45EsekFT87k7qYoxH4eYs=;
        b=ok5eSEA0FhLKWDp4pH24agcWfAZEKW7tJCr8+ObTNmioUaay8Y4sx/B6Xil4ePuo+u
         K9sgoh9xhAggTe7dgQggev0DEM5HFUL8rBVRBOUg27kt3rXel0qV97SX+8SWmke2+YI6
         SgHG37Yu9S59OTWh6BqMbs6aLrjksCBmFS93rPlNTl71U08ZYgCLZtWScxgMG21DYvMz
         QoDzlvPXhzUp0mWSj334k7kY53iFUTQZnoo/gXTxpbOWsezsBhp/M9vyld50eLZNZiOM
         KWQ7SoJSNNoiE67V/wFPtmhVRuJPTgxV99SJjYT0O2ARMzLf1K41mOPkZbkOjFN5jEoH
         v/8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+/Fr0Z+5WIQfLY7LUTuZezCHO+vNr6k7vcYcKiGIsRGTrItTa
	YSdt9upaTFxVVStyx/uoXRw=
X-Google-Smtp-Source: ABdhPJwffLqAwDXyGuK0ddz+ZSNmmOJBWYxBFbiZGocqYQtsDAcSTOWBvEH6thIBnOD9Zdys1NVBhA==
X-Received: by 2002:a62:6586:0:b029:164:1cb9:8aff with SMTP id z128-20020a6265860000b02901641cb98affmr19736990pfb.64.1605024708247;
        Tue, 10 Nov 2020 08:11:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac96:: with SMTP id h22ls2919603plr.2.gmail; Tue, 10
 Nov 2020 08:11:47 -0800 (PST)
X-Received: by 2002:a17:90a:5d82:: with SMTP id t2mr479147pji.42.1605024707442;
        Tue, 10 Nov 2020 08:11:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605024707; cv=none;
        d=google.com; s=arc-20160816;
        b=mRjV7dm4sH6t+7azojW+4roiD5ajc/P90R4t+vK9lL/01D8wWl+14iLNXz+pElMrFc
         dqJbYZzg5Gx4IMv/iSKP2t29pvBX0jJmrZ+zqAi73QkLS+ad+MvLV6QJ0mYLCNp5P9D/
         BaF5OTvhDUB6YVaqgND4rLudJeVsjGVAeaOt5F89ZWBCt69X9LHi6Vo3Fk7btnHOcR4E
         9xUUTPgzgE706F3Y8PGB7UVEIznrqIlCKy/VhncwfFm/FELq/bjI5ceko//8AKdkiqcE
         KBUgKXlrujXRzZD4my8JC4qESkiaPtJF7b5H7ldSSr2IE+YEUvXBRSfU4kcX5Wy9X6h9
         q7hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Jp+HmPlYtR2IGGTGzYIzvrsfgydKFOm7mlacIEpnzOM=;
        b=flZdsWKB2oSJa8Pn6fLo+nLO4uxOCX0YHHT7uZVYeaio+CSvsbAPb0fWNxCcwXx1Nz
         vGhIzdbKtPEAzZ8MILCD5oIwrQMsTzzZbCv0DBxPjACuvZybisCTYAX6OgFDxqoBv5WO
         iZpKVPAMitwWLR7/Eys8Wu3KVRM1qHx4tkwYrDiaB6u2zJAdTDbOXkEVlQ5a3t7IJZXI
         hHrcpNrHyX1VN2aq+g0+9ME0zlKtOVtgvscn7N3DFsgx+8hrcRfod0Cy9Aqk72v1qO/E
         GfAoj7NZvybnr6v3Aa+WONlismnYfQN3SmZAgF4V0fri4wVFW7sHsdALm9mspEUaSi7v
         lfkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZAlCen6n;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id bd7si706731plb.0.2020.11.10.08.11.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 08:11:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-5kzcWzDFO8i3LtgKf7nZng-1; Tue, 10 Nov 2020 11:11:43 -0500
X-MC-Unique: 5kzcWzDFO8i3LtgKf7nZng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48EDA1084D61;
	Tue, 10 Nov 2020 16:11:40 +0000 (UTC)
Received: from treble (ovpn-120-104.rdu2.redhat.com [10.10.120.104])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDA1C5C1D0;
	Tue, 10 Nov 2020 16:11:30 +0000 (UTC)
Date: Tue, 10 Nov 2020 10:11:24 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>,
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
Message-ID: <20201110161124.lztfgffqh2qrlwwv@treble>
References: <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
 <CABCJKuc_-Sxj8HLajx4pKuBpU3AUdBtPv4uzQfMWqVHWwHS1iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKuc_-Sxj8HLajx4pKuBpU3AUdBtPv4uzQfMWqVHWwHS1iQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZAlCen6n;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Mon, Nov 09, 2020 at 08:48:01PM -0800, Sami Tolvanen wrote:
> On Mon, Nov 9, 2020 at 6:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > How would I recreate all these warnings?
> 
> You can reproduce all of these using a normal gcc build without any of
> the LTO patches by running objtool check -arfld vmlinux.o. However,
> with gcc you'll see even more warnings due to duplicate symbol names,
> as Peter pointed out elsewhere in the thread, so I looked at only the
> warnings that objtool also prints with LTO.
> 
> Note that the LTO series contains a patch to split noinstr validation
> from --vmlinux, as we need to run objtool here even if
> CONFIG_VMLINUX_VALIDATION isn't selected, so I have not looked at the
> noinstr warnings. The latest LTO tree is available here:
> 
> https://github.com/samitolvanen/linux/commits/clang-lto
> 
> > Here's the patch for hopefully making the warnings more helpful:
> 
> Thanks, I'll give it a try.

Here's the version without the nonsensical debug warning :-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 4e1d7460574b..ced7e4754cba 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -217,6 +217,21 @@ struct symbol *find_func_containing(struct section *sec, unsigned long offset)
 	return NULL;
 }
 
+struct symbol *find_symbol_preceding(struct section *sec, unsigned long offset)
+{
+	struct symbol *sym;
+
+	/*
+	 * This is slow, but used for warning messages.
+	 */
+	while (1) {
+		sym = find_symbol_by_offset(sec, offset);
+		if (sym || !offset)
+			return sym;
+		offset--;
+	}
+}
+
 struct symbol *find_symbol_by_name(const struct elf *elf, const char *name)
 {
 	struct symbol *sym;
diff --git a/tools/objtool/elf.h b/tools/objtool/elf.h
index 807f8c670097..841902ed381e 100644
--- a/tools/objtool/elf.h
+++ b/tools/objtool/elf.h
@@ -136,10 +136,11 @@ struct symbol *find_func_by_offset(struct section *sec, unsigned long offset);
 struct symbol *find_symbol_by_offset(struct section *sec, unsigned long offset);
 struct symbol *find_symbol_by_name(const struct elf *elf, const char *name);
 struct symbol *find_symbol_containing(const struct section *sec, unsigned long offset);
+struct symbol *find_func_containing(struct section *sec, unsigned long offset);
+struct symbol *find_symbol_preceding(struct section *sec, unsigned long offset);
 struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, unsigned long offset);
 struct reloc *find_reloc_by_dest_range(const struct elf *elf, struct section *sec,
 				     unsigned long offset, unsigned int len);
-struct symbol *find_func_containing(struct section *sec, unsigned long offset);
 int elf_rebuild_reloc_section(struct elf *elf, struct section *sec);
 
 #define for_each_sec(file, sec)						\
diff --git a/tools/objtool/warn.h b/tools/objtool/warn.h
index 7799f60de80a..33da0f2ed9d5 100644
--- a/tools/objtool/warn.h
+++ b/tools/objtool/warn.h
@@ -22,6 +22,8 @@ static inline char *offstr(struct section *sec, unsigned long offset)
 	unsigned long name_off;
 
 	func = find_func_containing(sec, offset);
+	if (!func)
+		func = find_symbol_preceding(sec, offset);
 	if (func) {
 		name = func->name;
 		name_off = offset - func->offset;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110161124.lztfgffqh2qrlwwv%40treble.
