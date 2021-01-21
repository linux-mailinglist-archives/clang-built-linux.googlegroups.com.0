Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2HEU6AAMGQERACJXNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9502FF741
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:17 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id h30sf662162vsq.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264616; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAKcfC+t+g2hzWW/31+6Z765DHHGv0VQaorAw1L0ydtB6GOUNbd3QxUcMUTxhm40/q
         G1F6rHK1KEU5tjoaSBpgPcPNioVXHHeazvN7Tab8Koe0VeQ4S8wufGecgh/bhtn/lOYO
         Hs3nh4wCOoYZdj6RYFFiJQx17nDMkqjkwHVDLEsRb/YwmjNdJILEgvZKMPTWtNXgka7w
         8KDSOaO1cbS1B4gIuEUAnmSVaRVylwYzC1sLYcfV69GUBczFKVrnJfesRhJcaKQtjohg
         txRxYNnznP4PSU9ixUQW+nasA3fy/y72KUXB5ZayCk1E1WjQGxcRuzqTA2Zmqt+MCy//
         ufVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j3tzLSs12Pcgxk/pjcayiVq4xXAIOmiHXmaFQzHRTyA=;
        b=huwkb5kHE2b7zLAqcVnpf7dfox/3VFr2LXExz4KqkJJlPbR/U8NPCna3wJ9zOSgaUY
         i9T8cXNgKbflpsAM5Hq64zXTy/Q53aFk3IxEppt+6L9lpEyARNoqDhk0qP1WL2FmC+pS
         N/fsNW+jWI3KqAg38nSsouaYt8/VQxO6geVVGYYgZxeTeAkAHFU4tEeUE4233blyRXJq
         cJuiLj5nJQTvRuWQ9zMjduoLapTa7ftbEEz0Uln24IuzdZgEmVBjJda6PC5PHAX6AVCj
         WU04XVy4VAhRXTk61rt3OVRyhqks1OTm2PDAbBTUrtNFCLo0rtW+/9TfFkVS8BuhC1aq
         sTJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QkYDuT1V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3tzLSs12Pcgxk/pjcayiVq4xXAIOmiHXmaFQzHRTyA=;
        b=MRAlctsPzAwFVzu+XC/DUWSTJOQOKqV+cxKeKgrRIk9DdcKg+yChWmNfKAg+M80W7z
         lstxsoXW3YnJVYY8uKX3bH2I+enfOdZq2OFFmS2AHuHtyBgvpWr6czy43WwFRU6XmZ4v
         ws0C+yEGUSDStjQXk76N0iQJ1R462T7KC8TYcEG6ghKPHMSa1KvFrdiCNhCanfr7JClo
         P+hG+WH/QwMquxhLqNqXQdZuxCfzKK06mlYFIS686DnUAH3u21iP5ASldzOwE+xBaDYp
         V/VbxxGfzeU8Ea/s/JgNSH7rwYgzWeXmCZAZpvCCm0UlRNmZNl/efmgqO2+dO1H48Lem
         iSrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3tzLSs12Pcgxk/pjcayiVq4xXAIOmiHXmaFQzHRTyA=;
        b=Q6JYgqmngken7MQXOXytRpNpD46ERPjSpGRMKp4CbhpiXdvMSFrUasBg855wBauUsa
         vovlVs+M0GVcKnDe1y1mCBbSVvAv0qTcuh5V4BrYbx9qV8+RhFOhVY2DCyETFYDhSyyx
         Iq68wkntoQt4EYVCZ31XuIq8FJHAn+FFR31n8IGC4hGLD2G81hdNieTW/WWjNEMBdN9j
         9YU3SqWbID8K3I8w9XhsQL83zblHNo8ffR2ARF7c1gU+UyfqdUflv6oaglaE5gF6JQ65
         lk381Hx/8GB30NR0IMvbF3TSUwc79z0T/BGdJYUp1l+AoXJrCoWGxdNMtOqXQPxEub8g
         ki4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BneVF8asjbqmmc9JjKPrtCijPdlTUaHxj/JYroRhd4djnUqt8
	0v8QddFfaskXyONAUSvLxJQ=
X-Google-Smtp-Source: ABdhPJxVHYVG3XEhU7xI01BFbu1g7/Vpp10bGIGvk4E9lbnEo7/tksuS9jaxdlZxeFlXzHndlEM+xQ==
X-Received: by 2002:ab0:2010:: with SMTP id v16mr1529894uak.24.1611264616326;
        Thu, 21 Jan 2021 13:30:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls310146uad.10.gmail; Thu, 21 Jan
 2021 13:30:16 -0800 (PST)
X-Received: by 2002:ab0:6cac:: with SMTP id j12mr150563uaa.12.1611264615967;
        Thu, 21 Jan 2021 13:30:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264615; cv=none;
        d=google.com; s=arc-20160816;
        b=ThQXA/sS5EQqo+BZqb4uh+0mZZhK4t7H3yRiD/S6ZTVhLk5gcLxvz8bgy/h8Jic7Ej
         lXcMpZfP1BZM1zJeLhkNlBOmq3ci+CjX1jmp6L2xqqEyCerrdta/MC+GVzielv3ykFEy
         FN7PPUwdplyQZsL70JDxgzkr/DhfvSHM/uoWFgifdsoyQphP5srC/LedEWyrH7Tto6PN
         aA4qHZwk+1fYfNnoxOBDowmBc7Gc8G2docmkaXoMIlIf9FnX+5lT/vrO8zXHr1un/D+M
         QLas6OwrUWpLA6HrJnPFQLqkRuoskDpjbFb/92zZn/okTfPmxohpJRa7B2LYep5RJeUo
         lLJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k08HNHiRc4Ee5BfnUqUAZvZx09rIAfRRg0UVTMRN5co=;
        b=ngqfTVw/LinTVzqi8RFspZtbPiqxo9HAmbZ0/bp+bFfRUpbnAPnyQIi93LH8mnjeR4
         BXtGY5VTK+nGWOewneYePFVBHBO1audnYHOt6tlb6LR7+NmlNZBOLjF8z/k8rZQYcj8Y
         bfUoLMG2wxnhlHOXITds0zWde5ON0ahxR8PvI0ec3ukHEhH7CQ0fxXVPEWzlQYria3Ym
         o49yem6Ht9BV941NySmD+SP0YR5d5FqGlP2eNQ9SVAt45fZR6Kq4J68OBQXS8UhVtHgO
         KPWQ7aZgJr1aCa4JhIJQDPw6rafiV9g4V44AFIkEaM1j/5kUa4RhiW1PGdzg0U63sjc3
         Na2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QkYDuT1V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n68si558797vkc.2.2021.01.21.13.30.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-uDN5AjirMou5u4YjXGdbTw-1; Thu, 21 Jan 2021 16:30:13 -0500
X-MC-Unique: uDN5AjirMou5u4YjXGdbTw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 148111842140;
	Thu, 21 Jan 2021 21:30:12 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0DF6119C59;
	Thu, 21 Jan 2021 21:30:09 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v2 11/20] objtool: Add CONFIG_CFI_CLANG support
Date: Thu, 21 Jan 2021 15:29:27 -0600
Message-Id: <d743f4b36e120c06506567a9f87a062ae03da47f.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=QkYDuT1V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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
 tools/objtool/elf.c                 | 28 ++++++++++++++++++++++++++++
 tools/objtool/include/objtool/elf.h |  2 +-
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index e7d9c29fe78c..18b6fc4ca1f8 100644
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
diff --git a/tools/objtool/include/objtool/elf.h b/tools/objtool/include/objtool/elf.h
index e6890cc70a25..bcc524d73f51 100644
--- a/tools/objtool/include/objtool/elf.h
+++ b/tools/objtool/include/objtool/elf.h
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d743f4b36e120c06506567a9f87a062ae03da47f.1611263462.git.jpoimboe%40redhat.com.
