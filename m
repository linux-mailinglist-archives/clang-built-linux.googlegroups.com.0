Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJVURP2QKGQEALV5U4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C2F1B73D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:23:03 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id z140sf4492352vkd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:23:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587730982; cv=pass;
        d=google.com; s=arc-20160816;
        b=VIFxaGoMbNVXfBcjmP9sG6Ro3JmLrJjyLdp3yXGYFl2wY9d3oGLr8rb3aeipZg6+0c
         QxO/50GJ1r/oxi04YRjf2PDH/aYofouNGE+amY5WfbgfFReldX839/kREQgFv/FrOvhB
         yrSntp2fktz4fiut7ak7YrHg+bopyhKhHwqfB69CFJ+i5ckNcMkP3jsEYJvF3TuAcqbO
         yYwnAgLMzazAf/fd7avXg6HzGQMUKovlQIu+SLlCeUrd8Nkzrl4yPSWniTMnJF11z0kc
         f55N9vopsirPllgKhnfIzp8N/BOIA0wMavt04LdPwWTR4BrP0bHNILJYJurdME3rMjea
         ymWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z5EwwpDOUM48uWhou2MVebza9u+5PT4cB00UG1cxa1E=;
        b=kvSEA765hdX7uRTowX4yD9X4BxKtS3PFa5/L9S/qS5unW6/UckzenFdwZddV5qb+5H
         jMf+pu1r7zNGnrhFtGPUXnvW98M9WBo2ZJyn6WFSKUVYSfO0kZLdMN3BzlnyOi1UeTaK
         PervD0PiB54vw8pJUzgrqqditDloXLZE+3kDOITpctUmJVv6+T4cOtZl3g46wWeoQB4/
         6nu/p0wMEK9aPEK83A0nmZOt06AfuVpguGXj5ZxeL5m8mLL7QfhaT2rwFAaLuNWG4foo
         0cOXQUVYq9RDTik/qutvPvmFRws/HFXvwYbmME//7pQx4v0IlvJlT8YIEqr23NsLHEgp
         waFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c4UAN+Qi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5EwwpDOUM48uWhou2MVebza9u+5PT4cB00UG1cxa1E=;
        b=YXyOugB9K5BWuwvrAlrDhJy4PFGWdV8VghER72Uz1LdY5t5R2FLrQXKJB7I6hv2bdM
         BeOzAr4eSu+Yt3VphwaGtUTkjbrU9zKSqAf//CvUAcvdsIg+YFD/PGuQQkbZQczq7P7f
         joOdaR23uqNu+tH1r5JrcoRQI79GYViEwQe//X+rRNNCz28xIZqGDKUNQqdB91vjwvzC
         H/t0CLgs0gMIO0gkJ2dvxpGksd6N7r1k5DjaQIM09xKvTTowzLQK0HrFTMhYO43Gfzz7
         CdVR/E4tohc2CvNZg3jFr9Vj41RrsuGjt1S3oIWcAe0yUsX4YmjK5/zzfvLl1g7geq0F
         H5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5EwwpDOUM48uWhou2MVebza9u+5PT4cB00UG1cxa1E=;
        b=P4ClmqYi4PoPMqVdcy6juaKqYLkk/St0dBvThqSltYGunGzeEfHvOOBDFk3FpAfTrp
         qrakOQCAtgGDgO0pjb2OYN6Lq60sceg2PhZ0pSxD35lzp7DhyeIsXRE4E+9tUe0KEzgZ
         9rVqU7RplrxUxNuM9zHEFcHPezrbMWHcTxQEIOpsbIvujsHShQZTt14sg4OpCayEJQLV
         tiQN17w6cx9koAmZ6gDrFSaU2rAXSv1qpvM7aaQ0RpKxL/o7k+LvCS1aP/Pam1TISjoM
         dEs91gncRFF9P8dSPj8uf82xghaRwk3g43B5PBaQ+CuHjwD444uz1Z7wRqc1rO07yw9U
         VSgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Publyw2IdhhzJuKpGgUKTdIBGkoh1ERssILslyy4/FmGiYIWJMdv
	CjVhW9cbkPyHepCzTyrM81w=
X-Google-Smtp-Source: APiQypJghr4e6uiVgM+MYPDhxprZ1+/peryzF1V5a2dIzDo9fhuCPoFfarzeENakzq/vfuj8+qmucA==
X-Received: by 2002:a67:487:: with SMTP id 129mr7535012vse.105.1587730982511;
        Fri, 24 Apr 2020 05:23:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:66c5:: with SMTP id a188ls1314932vsc.5.gmail; Fri, 24
 Apr 2020 05:23:02 -0700 (PDT)
X-Received: by 2002:a67:2cd0:: with SMTP id s199mr7144113vss.10.1587730982133;
        Fri, 24 Apr 2020 05:23:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587730982; cv=none;
        d=google.com; s=arc-20160816;
        b=sPTbxzXLfAzFdWSaL7CsRzUytxW7X8LMcNLGXcG04fx8nTqQd2IV6Ho0B2jCBeHEIS
         pr2WF3k0B7E4JUV1UhqrzN0oYZvHLSuww6N0g0Re7V+bGw53z1oQnJzeY6uof8ZeMKtX
         gmIfx7x8rBfuOWlnIM9I4NfhQpss8oNiljYhSG3YEPBzvuJyI3zxlZz4z83Vbj9rXUrX
         oBIGawEQMwsKmGLsJFhKfNKT3j7R+VgTDET4sJS+WCFew8edvbsn3hg9agdXNp1yjNDN
         A39sXHfq6Uf49DpElTGGR2TzrbAC4IXk5axUo7AoY3vhV/CFTRJSPXTVtuDqVguqzka0
         lw/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=62Ht30VxJgXT6F042IU11EDvL3V27qOnbvbCzm2Nyn4=;
        b=ePG3EeXoCtSSLiNAFLh8yz8vhmyWZPrZ/DfPw8f60kRLI5oWbWhLNGHbOvFi6NynM6
         HO+b4hOiWQHqrsdiJa8rc3JREaSEQ5iN8+Oz2s5S2O767dWcaH1dX0wFdV+u1VZbdJAv
         T+sjMH6CZFhsJ9cG6Sn/G3vvW7xRcUlvvlFLA2LHrzCQKnKegmNt69o36s0rYSxicOX1
         y2b58EU9/QvvtzzsbMrDGTRPo6paQuc4LIrrPisqYVRS7IsqETe1/uGWaiZfEF/JkioN
         Rk4zoW8JOJ1MGKxUyCUCjv6+gD341keYoyRHmoVwQvxHJGeNKi1VOGCKrlipIHsg/yc2
         dsiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c4UAN+Qi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si281955vsl.1.2020.04.24.05.23.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:23:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0FF1021473;
	Fri, 24 Apr 2020 12:22:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Borislav Petkov <bp@suse.de>,
	Miroslav Benes <mbenes@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.6 20/38] objtool: Support Clang non-section symbols in ORC dump
Date: Fri, 24 Apr 2020 08:22:18 -0400
Message-Id: <20200424122237.9831-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122237.9831-1-sashal@kernel.org>
References: <20200424122237.9831-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=c4UAN+Qi;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Josh Poimboeuf <jpoimboe@redhat.com>

[ Upstream commit 8782e7cab51b6bf01a5a86471dd82228af1ac185 ]

Historically, the relocation symbols for ORC entries have only been
section symbols:

  .text+0: sp:sp+8 bp:(und) type:call end:0

However, the Clang assembler is aggressive about stripping section
symbols.  In that case we will need to use function symbols:

  freezing_slow_path+0: sp:sp+8 bp:(und) type:call end:0

In preparation for the generation of such entries in "objtool orc
generate", add support for reading them in "objtool orc dump".

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Miroslav Benes <mbenes@suse.cz>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/b811b5eb1a42602c3b523576dc5efab9ad1c174d.1585761021.git.jpoimboe@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/objtool/orc_dump.c | 44 ++++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 17 deletions(-)

diff --git a/tools/objtool/orc_dump.c b/tools/objtool/orc_dump.c
index 13ccf775a83a4..ba4cbb1cdd632 100644
--- a/tools/objtool/orc_dump.c
+++ b/tools/objtool/orc_dump.c
@@ -66,7 +66,7 @@ int orc_dump(const char *_objname)
 	char *name;
 	size_t nr_sections;
 	Elf64_Addr orc_ip_addr = 0;
-	size_t shstrtab_idx;
+	size_t shstrtab_idx, strtab_idx = 0;
 	Elf *elf;
 	Elf_Scn *scn;
 	GElf_Shdr sh;
@@ -127,6 +127,8 @@ int orc_dump(const char *_objname)
 
 		if (!strcmp(name, ".symtab")) {
 			symtab = data;
+		} else if (!strcmp(name, ".strtab")) {
+			strtab_idx = i;
 		} else if (!strcmp(name, ".orc_unwind")) {
 			orc = data->d_buf;
 			orc_size = sh.sh_size;
@@ -138,7 +140,7 @@ int orc_dump(const char *_objname)
 		}
 	}
 
-	if (!symtab || !orc || !orc_ip)
+	if (!symtab || !strtab_idx || !orc || !orc_ip)
 		return 0;
 
 	if (orc_size % sizeof(*orc) != 0) {
@@ -159,21 +161,29 @@ int orc_dump(const char *_objname)
 				return -1;
 			}
 
-			scn = elf_getscn(elf, sym.st_shndx);
-			if (!scn) {
-				WARN_ELF("elf_getscn");
-				return -1;
-			}
-
-			if (!gelf_getshdr(scn, &sh)) {
-				WARN_ELF("gelf_getshdr");
-				return -1;
-			}
-
-			name = elf_strptr(elf, shstrtab_idx, sh.sh_name);
-			if (!name || !*name) {
-				WARN_ELF("elf_strptr");
-				return -1;
+			if (GELF_ST_TYPE(sym.st_info) == STT_SECTION) {
+				scn = elf_getscn(elf, sym.st_shndx);
+				if (!scn) {
+					WARN_ELF("elf_getscn");
+					return -1;
+				}
+
+				if (!gelf_getshdr(scn, &sh)) {
+					WARN_ELF("gelf_getshdr");
+					return -1;
+				}
+
+				name = elf_strptr(elf, shstrtab_idx, sh.sh_name);
+				if (!name) {
+					WARN_ELF("elf_strptr");
+					return -1;
+				}
+			} else {
+				name = elf_strptr(elf, strtab_idx, sym.st_name);
+				if (!name) {
+					WARN_ELF("elf_strptr");
+					return -1;
+				}
 			}
 
 			printf("%s+%llx:", name, (unsigned long long)rela.r_addend);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122237.9831-20-sashal%40kernel.org.
