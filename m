Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGNVRP2QKGQE36R7O4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 334A31B7430
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:24:58 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id z24sf9302539ilk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:24:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731097; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZeYwoVNy04jkEptOfsL6WN21zVKLJtooe3Q/9a7vJ0ccsr5Ni7vlwdyl4/19s1dxmz
         OUuE2RsN2WJzO4lDsvbHy2NrzvCy+6kIhmNr7/AwB+3ikmmPLi+56o+halZX4DMHy1o6
         uB8GDsKR5bfNvGWD3yHnqUARUiOqBzCIQGMhrWk47Mp/oa03Mx0Eczs8bYs79XAGw54C
         MUGrRLrNG2YZteiKLqJMPvg4sdGTiNu0SurL8omBZh/OWCUD4z6YDFbrlqE05U28f+dm
         TXu4aK6EIlMGZnPCLMn0vds7S8ViBw+Oh1wdwM4JpFScfYbxClX1oBZPcqbu7e9Uvgjy
         48UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cOKBfJcwiSKHMACzjldb4bbecBUbd90/gbYwSyLtRhc=;
        b=wFNjLHMzxOQQD+Gmwbsdc0ffip8Y1+CMoeMmNVjrbaIzHizj8l8cmVgL/t9ZMt+DV/
         IGbEi3Fyv014woNaXpg+RFyxAcTtzpo1vujovcDzBU6u6WSDz+4s7EbN6yVjw3YRE8J6
         WLOFLfUugCP5iKugNUeSkb4Y9GZjKc6Lqj5fT1+xH4a6ioecjUakslC/5qXko0SMOIZy
         RqWlZV+F1EIyrbHyf1hAJ68YY3cEE9MXbt2CPpexeU144PyAaonuht/lTkOOf60zlEOQ
         5iaDtuskuBQ3CgGKegi1ce38Yxaz67pw3Z6yDZDsJVEhGDp8uuWgetrQH5sk5JWkXHp9
         01uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uCmT4qsV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cOKBfJcwiSKHMACzjldb4bbecBUbd90/gbYwSyLtRhc=;
        b=Blzeg9A8e5l60dFAPieNsY/x/Oz1Kp12oRLSe9G8N/xN4HuaTN2Mbx8PQLPYf6gNIq
         sS/Lw6+FnKb/mfJyyig3qUbm9lQs38Yf1HYZ5OtlIgvua14yPUxYEq3oI6+FozLELTqY
         6cmyLhXyJOOLv42xLttLlM0y7kZM4rHqgGr4WMF4I7qqzrL1Za//6bn5LePcXkHl/yjz
         lr9L4xHV0S8VOwuWrmdh5ha8WwbYCWuXm/FMY4yfD7tdv7Iou3L6NLwxJ+HHAkg9dRYf
         SmtQyCus+eFiTN1Kq60r5AyyQCstszgvnnw3hqWePaOrlMQ+Gdd7HM/MN8XV58iJHD8+
         0rJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cOKBfJcwiSKHMACzjldb4bbecBUbd90/gbYwSyLtRhc=;
        b=omNWqYma3eLPZEzUIkMyqTP2+gRIiQVgn0MfaK2p7MlUIp7fwq0kWpPEHGAX0rzqQ6
         gRqtRc43Y/zybIut+FXjliqulwmoozHVaL6Hf8Vq46TvuC/VJBRqzo6ZRIGPuyzSpg1l
         /Kfjqu4kRIBWFn9eUdA+FvO12EnrdXqIBl31YoNvRbJPn5B1G1hGbSjEddX9N2H8uHpn
         tyH4KhkTDflbay0hZ9yq9hvk4KGy7lHdgaOUZP8y/x8WDjYLxcT8kiTSlTmzkDsYzdO1
         BxIoE3jE8N9Z/XzpYx4oYJ3IFWhCYO5sDXjLgCVNYN0vckbsA8OAcsLO4R80v5mOcuFx
         9uRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubzV00WLcVFmcBixVkISrq7uDoEbj+QTqPONajWQpYXimn4OKI0
	Wb7L+aeYB/EJU5wf51JRdxc=
X-Google-Smtp-Source: APiQypL95Bzd/XNGknnHkvd9KQ3wGWs9k9EDZuvi8b1nAOB9K52TBiLIPLpAbGPfoz/hT+c5uvg35Q==
X-Received: by 2002:a5d:9c09:: with SMTP id 9mr8503681ioe.26.1587731097176;
        Fri, 24 Apr 2020 05:24:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1803:: with SMTP id 3ls2180429ioy.0.gmail; Fri, 24 Apr
 2020 05:24:56 -0700 (PDT)
X-Received: by 2002:a5e:8e4a:: with SMTP id r10mr6094965ioo.9.1587731096539;
        Fri, 24 Apr 2020 05:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731096; cv=none;
        d=google.com; s=arc-20160816;
        b=h0pnPHmA5J3cXY1qL6CK7zphKdF1Hbu9+7cUfZR3G9esrbb+F+YlHDrNKDV5rBsd+X
         0iz4VY4Ssuu/QOCehKbk/SKGoe29UdtTD3bPcyYq4d90CHj9U4njKEbTW3p0ceSDX4eV
         CRd3U96QkuGbycseDfoyHQu8a5JC68yS8Z5oULHOT+7lUhOJ06Ro4acaPgWlvrK8qNrb
         1FfyeZkW40gW2YPyxGcuXTBU3WGxbpzqhyEgH5qyWjMeA7IitLQNvqc2/M2hz9H+SehY
         +Vh/9H6jJWQiN9ZshcGXjsIMs+U+4UgBVycXqUNagV2JrIVsdZmafIqmtXHl5SRKZ+xx
         nBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nQ46E/Rfsw3NIBWqbsvUayMwPODV36fGdXTJAa/yKS4=;
        b=uG8an9e7fXH5TKnEwIzDmfYYkF4E6rxmZh5Ua/RuKx3za8F8n7npcUdxqfUhiYfxut
         HAs8AXGwMnbyJYKDPgEC8A/vgdoLPOSIHyThzoNypq18Le/bjsxcVfAjylZCxSaZ0mNG
         ySPzX8thnyOrsKDkfHfZG97uZHSegc0TXKz2lwBMcUTmgZdp8SYGEJ1LTbYfeQ/+CnwH
         HL+7glkSkyp4j1TJ6bL5pPDHLWmCShc/pEs45lVSP4Ms/Fk0+EWH6NQbIZ8GGbiWsl1S
         eswT7FMIDY6v1DntuQO5iRtM/O6oHA1lsO91uQ9PSOsmFS7wvg1vOr268XJ0Qqw8YL80
         Gp4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uCmT4qsV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t16si357024ilj.3.2020.04.24.05.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:24:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0629620776;
	Fri, 24 Apr 2020 12:24:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Borislav Petkov <bp@suse.de>,
	Miroslav Benes <mbenes@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 07/13] objtool: Support Clang non-section symbols in ORC dump
Date: Fri, 24 Apr 2020 08:24:40 -0400
Message-Id: <20200424122447.10882-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122447.10882-1-sashal@kernel.org>
References: <20200424122447.10882-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uCmT4qsV;       spf=pass
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
index c3343820916a6..7cbbbdd932f1d 100644
--- a/tools/objtool/orc_dump.c
+++ b/tools/objtool/orc_dump.c
@@ -78,7 +78,7 @@ int orc_dump(const char *_objname)
 	char *name;
 	size_t nr_sections;
 	Elf64_Addr orc_ip_addr = 0;
-	size_t shstrtab_idx;
+	size_t shstrtab_idx, strtab_idx = 0;
 	Elf *elf;
 	Elf_Scn *scn;
 	GElf_Shdr sh;
@@ -139,6 +139,8 @@ int orc_dump(const char *_objname)
 
 		if (!strcmp(name, ".symtab")) {
 			symtab = data;
+		} else if (!strcmp(name, ".strtab")) {
+			strtab_idx = i;
 		} else if (!strcmp(name, ".orc_unwind")) {
 			orc = data->d_buf;
 			orc_size = sh.sh_size;
@@ -150,7 +152,7 @@ int orc_dump(const char *_objname)
 		}
 	}
 
-	if (!symtab || !orc || !orc_ip)
+	if (!symtab || !strtab_idx || !orc || !orc_ip)
 		return 0;
 
 	if (orc_size % sizeof(*orc) != 0) {
@@ -171,21 +173,29 @@ int orc_dump(const char *_objname)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122447.10882-7-sashal%40kernel.org.
