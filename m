Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZN4QKAAMGQEILL4BNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DB82F6B4C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:26 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id c7sf10302851iob.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653285; cv=pass;
        d=google.com; s=arc-20160816;
        b=vrlvTBXhcGpVZ6LNnwVf0L9bk8cnXBLxNrr/nBD6+96yIBeaAe9EcNcIvdNIMPkqmj
         2LnNdWV8E1p3+0r/gCdQIi6hTA/fnzenFOO2+fTQDb7qVFJO45mDe3rTzcMEreHJX+Nm
         GdNTjsiJ4MxB4VrVAVOLoiBfUdyaKCipZRyTgJbOTRWS9xzWNyJsYpMRD3zgzQNdQdbh
         +U1M28+WiBNEbPQZ3cOeE+wghjEjONvSWKUhRk14vUXS7uuhTIiGCCHnZGAcwTmqBeSs
         srAfUNcDD2Q+cOTpqJUDm9+90OjRrIz+NWsj/ezClkXmSMAzSKo2Olx/vMSjb2L/zwIp
         P/dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=u7bJ2EljEp17s0mQZ5aI/mOMzQ4BLypzwxhOrkTpa+s=;
        b=Nwzi0dTpJ11KmmRqGgz1wJM1EeRpXaIdN4JTgf4vDNJyfoBAeDop2+lKB+B9GktwaO
         ayUtBlkP8VnpnINjRddpeckAmGJtRTcgjfR/U1WartHAi3U64X8fy7n7ZT3yy/bbF8hz
         HHWpWFJxhT3+oUwc9RZ58l58IwUST+cukWki7pkaqfr/7funKK5IqG22/vRvACgufV0o
         OlNy9jDYIzfHzOZhTVuXiKV8WYkdGE5f3al6gXIbK9vpBhZNT4sJ9e4whj/TxunwSVYr
         qMDGqFODmVaLUsugVxHt/a1RwYCpqfiLrFRFqngY3Okbgk6BkfHOiZO+jZraA/cPzjxx
         R/Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CzSLOfEC;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7bJ2EljEp17s0mQZ5aI/mOMzQ4BLypzwxhOrkTpa+s=;
        b=Rp3Pl9S5j/GBoBAoQ0LbjyGc/afunvPuRTqETYgh+J+f0toBJoqzVia6dAf6Bjo6D1
         MzEDiVi9bs70b55mbpjvMG5DfL5x35CK7VBX/VgA7xInVP8q5JgclyPc45VgorlxmoPg
         LVtj3fXDPaStHeXuZnrfBjDyeTQzUtiGkVrbAoCZGOYK4c55zDr3g4pRQP4XkETjvSEQ
         oF4s3IBQ8hS6XZE3rGXvosg4UoJs+AKTuPeXKIfjAfmWIVnMSa9U46LxrtVxd/ZXSxnM
         FADt1pouifkE4q++UukRLnPl1gQzEFSHf3czNPZVT43LpoEjWbkovKEHyVhpMva8i+oj
         k5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7bJ2EljEp17s0mQZ5aI/mOMzQ4BLypzwxhOrkTpa+s=;
        b=ftR8WjYfJsUESpIgx8FQaqYJlhYkL+BT+ujU2fVeToe8blWZCPrC5S6C/QGi3ndgeF
         gF88I9OiPcP6nbuShyJvvZrM9e/kB/ekDS8UUk0vDI9OCIXyH7hdbZuVRQqJYT7vEt4X
         UK6RyRaJtYTzH1BBgM+S6zj2x50v+TJ2nrMkbftMqwMs1Lrnup85wHddiTe/ONpFv00E
         LwpCqLDX/spc+D1XYiMPwIBXH4tDMZijYnjHGUb30SYreoFWLm++LfvVG/UFYRyeczYv
         SnK0E4JgBqf8QRJO6AF+frFYH4NsLSQiFOr5HW0UJnCvA96oZyu9hGAdqIW+80+2i8QB
         +Uqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y/6DmDCQnAl008P0Dwu7un189BJtnLGpIWMPy+njIgS36U7I+
	1vBtpViDFuWDkwzpYlRfthg=
X-Google-Smtp-Source: ABdhPJxyvKZ2VudsaHJ8af1ba0KiOnqKXWzjz3nRhm8zBQ00b2YmWUYKaPkkOFkGJDEvybtW+fc6EQ==
X-Received: by 2002:a92:d201:: with SMTP id y1mr7947538ily.239.1610653285087;
        Thu, 14 Jan 2021 11:41:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls1934142ilj.10.gmail; Thu, 14 Jan
 2021 11:41:24 -0800 (PST)
X-Received: by 2002:a05:6e02:1447:: with SMTP id p7mr8157723ilo.93.1610653284719;
        Thu, 14 Jan 2021 11:41:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653284; cv=none;
        d=google.com; s=arc-20160816;
        b=Nu7r8DsqKuMOOyyQmgsq7DNMpN5Q8dzHOjpq93FA1vCBG5ElyiZ2CV+h/sFdgxtB0r
         ip+1gU1sLKWkTyuAQWlXhfj5OV3TG/WivsoxGiIyLl3EGyu0CJ0L6CKT0zYkxCRtj0MQ
         wSSAc3kjg5AMTUfZ5/MA62Fka1s1Q/BoZdcseKZVnO5esoQuJCBUzNFbfWvL3CHVWdhk
         5eZjM6g2U9Q6x0/f29UavJYtp6eFNwnoMMmuO80UEJ0EI2XRRV2rH6A6kamr8FDh3I6t
         ONxgv1haZLHabZ82EPn6T5jsiE5iS1weNrck166+57Q7xBrToGoJpeJApqqCuPkAUtMI
         lzJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Iw7uI9IpjmMU1PfQcTgHZzBKM8vm3zrVcKwZ66h5Qtw=;
        b=JEhckIe5nbGVO+J8hchgLYNnBAhnxf721j/heJBpkzZM63x9Mj4g0u7Bna+rkPWWzT
         UtRQtO++gwOech37AMy2XYb5w0kwg8hDTioV2vOlJ7Xq0gFmjw6y+mXXzGPKaB8ugC1I
         uyB6SiIX8etlibIRsblkvDLSqr/N/cHF0e6vSImqm3woEW2caxrl/WLnSCzf3Gzvccvw
         QFWbYQ5ZYQ53zqtcGKBqMAuV7SBFGxMBl6gszYChMAHhvpca5xWwIVZLXPsI7MAtwC9x
         Bi+TmwlB4OJkjwq2vbpydfmy07zc7/t9pPh8s7qC3Ul3Cn/wWV54htDlTNVJ4N3puXky
         ML7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CzSLOfEC;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id t69si761826ill.3.2021.01.14.11.41.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-lJ7-07AqOs6K0qTGwyhYsw-1; Thu, 14 Jan 2021 14:41:20 -0500
X-MC-Unique: lJ7-07AqOs6K0qTGwyhYsw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F524190B2A0;
	Thu, 14 Jan 2021 19:41:18 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 49A041001E73;
	Thu, 14 Jan 2021 19:41:13 +0000 (UTC)
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
Subject: [PATCH 12/21] objtool: Add CONFIG_CFI_CLANG support
Date: Thu, 14 Jan 2021 13:40:08 -0600
Message-Id: <c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CzSLOfEC;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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
 tools/objtool/elf.c | 28 ++++++++++++++++++++++++++++
 tools/objtool/elf.h |  2 +-
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 292f015f7ec6..e357dc34cd7a 100644
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
@@ -614,6 +619,29 @@ static int read_relocs(struct elf *elf)
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
+				if (sym->type == STT_SECTION)
+					sym = find_func_by_offset(sym->sec,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe%40redhat.com.
