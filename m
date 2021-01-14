Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBAPAQKAAMGQEUMNN53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A75A2F6CA8
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:56:35 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id w26sf10558464iox.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:56:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610657794; cv=pass;
        d=google.com; s=arc-20160816;
        b=n/b+y1V1tCxxW+dsoIRNdxHxMni5x4ytBTmauhgXh3sCZskpYN3iqjCH7bBDiA9KUB
         Qx4IH10wIjtzmi1YvMzWSHKmn8ZVuZpt3UykiSKz/pAcfGHxDgyZXIwcKq7ly5abc5GB
         0bHzoKcx7CzuTv3ikEx3QA+siHie8UmZyWjzZhou7iwmaNr+vlmRYgC8eZzTxYJrk5AN
         qdppVvr8vOMTifl8Yobe18Ekrakqztrlz1INkQ8h+j2qhwMrGkuSFxTGXjajQVavCmRZ
         Uqr9yzpB1cT0B7VvGIc8o0JLtoPe5fX6GwDiWOdV9hk/ZWODQPFEc8ci6nZx4mBNndMw
         FD4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PG6zU2ApCKkLUZn7ngoVjeN7FS988AQkkJ9VmfNK3rA=;
        b=EPez7z8p7FdhmL12gzT9oScUvGWCXU0N2G9AUUCeS8KnbpsT42BO7f7Oia2ZEMxaKM
         NDXIQkOGqDFCuRTrgfs2HP2tiEM1DHfby6wEz+MnAsvN7MUrvTTFBXJ0vTermjPxWeN9
         KNulsTHUrqRdokSnRtWFwJzWK4LMlrg96HuGQk89us+XWS21iVDuMZqJlzi7iVpN9juh
         zASG4eI/eoQXoQV9882Zo2Bq9KExwX8CkQqbcUnDp2gjdXUmfL+3g6icOBrY7hiTws1e
         a4cze+bUvqAnnXwGMhfxEe3IKnn7lrKJXAnjoR+1ZsP6/nkAFsUSIa3hdpliQuhtLilT
         qpIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IQE7vJZl;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PG6zU2ApCKkLUZn7ngoVjeN7FS988AQkkJ9VmfNK3rA=;
        b=pF6RkHZhEs7GjvWXPCouLGznQEF1g2/Nshaq84lUSnjRFP+qgFaNmk7LkPKWr0GO1k
         cP/C9Y9iv/8X6h2ai45IkhXwG8DCGQCw/vpWVX+/+IybbGWfB1yw7COrLXSYOe1mwlpA
         9oCQ9sJkaT8VDtZ7o55dS2/zolMa/647KKVBCaT6PZhPL2enJtmMnvYBwKveNAMnmUkd
         YxvOJogV/JaAOSP3a8R/gYXK/nDkipgMuxeYJ0oXhmqK8+56NlFs+gicoOLaWqHGe7lw
         +4wb0MI+fbRgivOP8R3/EhPO4TDt7mWOUklAZZaueDyVPlkrmCrmHvjnQa5+TDM1rFV3
         l+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PG6zU2ApCKkLUZn7ngoVjeN7FS988AQkkJ9VmfNK3rA=;
        b=dtjXMni2ZgTiDN3vQ79lGXzBKI+d7lOdT8aCHv70PpcaKoUt6SGstUm4cTm+e2wRms
         h3v98KZHaIreSVWNS0a6/CnB+OjA0ByXkZU/XAupFHAXE1eW27gHHt+YVY7l4PyqTY3L
         rBT/ncEkbYPjtuLQ7Uy7kEx7+d8hEFaSfpil4ezGiYFJIeoOU+alEOPL1k3QNjOh8LSq
         nYLX4lbumc6+y85X0oyDRx9nJSAMzDzYUspVh/HAE5+j0iib1BZhFkTsrYXiGr/R5WlR
         4KPe1Xw+rbxkiC6AYBF8mBMAPZKgY+QRSxFbHQRfzDsKSQDJD3f5KqIQTkafArbVwjzY
         Am0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uBJZ8v4+etQr1teCTowy0qsC8CjYaMFP6wOfmCtnchzhTqcd6
	BIcQqg37RYkmfJUihiXKBp0=
X-Google-Smtp-Source: ABdhPJy0G6RFPp3jo4N/pQ0O3jLqEWDWkF8+SJ8d6wPXqIQA4hm/Kpi5cWs1OX/roTtDo2wewu8kOw==
X-Received: by 2002:a05:6e02:152e:: with SMTP id i14mr5083182ilu.247.1610657794111;
        Thu, 14 Jan 2021 12:56:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1346:: with SMTP id k6ls2012440ilr.2.gmail; Thu, 14
 Jan 2021 12:56:33 -0800 (PST)
X-Received: by 2002:a05:6e02:1544:: with SMTP id j4mr7956434ilu.29.1610657793625;
        Thu, 14 Jan 2021 12:56:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610657793; cv=none;
        d=google.com; s=arc-20160816;
        b=k3Ihf5/rCBGgb/pNdHAQEm5cl6rX3FAgWmAjzBxN19SeD6X5cH/EgqrLG46lzIiRHv
         siiNGBQt+me4uxWKpHFobXTnOrrmzqrwHv0HrzBU9YuUveih/MFsUORiDEF7ar3+Q1nK
         JQVvv8TWKHL9LEMt56hm+OoGzTBB13T/nzfC0iiYmOYcQw6UOt2EVbSMQAnCd22ZmpEa
         Stg57WcGH+auUW0yxT0+aua4dv0pkZRrXv/o3v9VvWNeifKHPQH5UkRLgQerfeXkUrKd
         gVfkwTtN2AJEMReZAJLRfM2uTSfHP7Weyl5Urwq4IaZ0B71M7fnKIf456YMX5r2v3xUo
         FboQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=G9+4Pk0QfMyGrL+EPSU/M84dgufmtwgcIjPfqAvJ8sg=;
        b=F0o8zQNYtsOBJDcFqm9wKwcqfFMPETAUIf6ZrQ98mWGEZ5Nqcb7j7CA35yzX3RLmBY
         f4tw8lxEtQG/vw7cU3kpiENRNojPp8pn45JYnDVGNedHtpD3OpOJymBJrCH/KYI6TywP
         isvZcOtsNkDQFpljb4+WCwmzk3hfyqVlj3/irUEioaZM69bVRyzFMwCyak9LaaYaMogV
         yidsmjd5NGNUnCaJMtByPmSBrFARwgEAU/ajHwgUyASy+KuDImkoNiaFs4zjgKBJNRCb
         eIR5QcRCDe2XjPoRj1fqGXcNoB0OpUunXntrhv33EiZApq0B59YkTEXxYdubtg2o+X8C
         D2DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IQE7vJZl;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id v81si312803iod.4.2021.01.14.12.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:56:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-d1u3mahQOtyoXoN_KPF6aw-1; Thu, 14 Jan 2021 15:56:29 -0500
X-MC-Unique: d1u3mahQOtyoXoN_KPF6aw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A454107ACF7;
	Thu, 14 Jan 2021 20:56:27 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5952E12D7E;
	Thu, 14 Jan 2021 20:56:26 +0000 (UTC)
Date: Thu, 14 Jan 2021 14:56:24 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v1.1 12/21] objtool: Add CONFIG_CFI_CLANG support
Message-ID: <20210114205624.dpodesrcljpnfsaj@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IQE7vJZl;
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


The upcoming CONFIG_CFI_CLANG support uses -fsanitize=cfi, the
non-canonical version of which hijacks function entry by changing
function relocation references to point to an intermediary jump table.

For example:

  Relocation section '.rela.discard.func_stack_frame_non_standard' at offset 0x37e018 contains 6 entries:
      Offset             Info             Type               Symbol's Value  Symbol's Name + Addend
  0000000000000000  0002944700000002 R_X86_64_PC32          00000000000023f0 do_suspend_lowlevel + 0
  0000000000000008  0003c11900000001 R_X86_64_64            0000000000000008 xen_cpuid$e69bc59f4fade3b6f2b579b3934137df.cfi_jt + 0
  0000000000000010  0003980900000001 R_X86_64_64            0000000000000060 machine_real_restart.cfi_jt + 0
  0000000000000018  0003962b00000001 R_X86_64_64            0000000000000e18 kretprobe_trampoline.cfi_jt + 0
  0000000000000020  000028f300000001 R_X86_64_64            0000000000000000 .rodata + 12
  0000000000000028  000349f400000001 R_X86_64_64            0000000000000018 __crash_kexec.cfi_jt + 0

  0000000000000060 <machine_real_restart.cfi_jt>:
    60: e9 00 00 00 00          jmpq   65 <machine_real_restart.cfi_jt+0x5>
                        61: R_X86_64_PLT32      machine_real_restart-0x4
    65: cc                      int3
    66: cc                      int3
    67: cc                      int3

This breaks objtool vmlinux validation in many ways, including static
call site detection and the STACK_FRAME_NON_STANDARD() macro.

Fix it by converting those relocations' symbol references back to their
original non-jump-table versions.  Note this doesn't change the actual
relocations in the object itself, it just changes objtool's view of
them.

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/elf.c | 28 ++++++++++++++++++++++++++++
 tools/objtool/elf.h |  2 +-
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 6d248a19e2c6..142b2ce49328 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -382,6 +382,11 @@ static int read_sections(struct elf *elf)
 		}
 		sec->len = sec->sh.sh_size;
 
+		/* Detect -fsanitize=cfi related sections */
+		if (!strcmp(sec->name, ".text.__cfi_check") ||
+		    !strncmp(sec->name, ".text..L.cfi.jumptable", 22))
+			sec->cfi_jt = true;
+
 		list_add_tail(&sec->list, &elf->sections);
 		elf_hash_add(elf->section_hash, &sec->hash, sec->idx);
 		elf_hash_add(elf->section_name_hash, &sec->name_hash, str_hash(sec->name));
@@ -613,6 +618,29 @@ static int read_relocs(struct elf *elf)
 				return -1;
 			}
 
+			/*
+			 * Deal with -fsanitize=cfi (CONFIG_CFI_CLANG), which
+			 * hijacks function entry by arbitrarily changing a lot
+			 * of relocation symbol references to refer to an
+			 * intermediate jump table.  Undo that conversion so
+			 * objtool can make sense of things.
+			 */
+			if (reloc->sym->sec->cfi_jt) {
+				struct symbol *func, *sym;
+
+				if (reloc->sym->type == STT_SECTION)
+					sym = find_func_by_offset(reloc->sym->sec,
+								  reloc->addend);
+				else
+					sym = reloc->sym;
+
+				if (find_unsuffixed_func(elf, sym, ".cfi_jt", &func))
+					return -1;
+
+				if (func)
+					reloc->sym = func;
+			}
+
 			elf_add_reloc(elf, reloc);
 			nr_reloc++;
 		}
diff --git a/tools/objtool/elf.h b/tools/objtool/elf.h
index e6890cc70a25..bcc524d73f51 100644
--- a/tools/objtool/elf.h
+++ b/tools/objtool/elf.h
@@ -39,7 +39,7 @@ struct section {
 	char *name;
 	int idx;
 	unsigned int len;
-	bool changed, text, rodata, noinstr;
+	bool changed, text, rodata, noinstr, cfi_jt;
 };
 
 struct symbol {
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114205624.dpodesrcljpnfsaj%40treble.
