Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBNVN4L5QKGQEIEN4SIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE53282511
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 17:20:24 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id s4sf2825296pgk.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 08:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601738423; cv=pass;
        d=google.com; s=arc-20160816;
        b=PEZjmgIkYRn0qBizXAOi5+lbUoi7jrMIRWxfV5wgwGTGW76FzYo2kqk0f2vABcK9Mg
         LO+9fV/cgvJTbmcRZkMOw5RJ4boqr96rgV7++SXjvUObYsgPQ/OUusHCkFmSK+RU1CdZ
         PUnlS+5zXlbSEQavAH5On6QbbTX9a43bfpI2Ddy0R3tZt/UQTeA0CLC5nWuoE/Qpg+KK
         0wL1+iIBzuPqQ5560mCwPZ4H3VJINtfsRoQ76HigiEYkiNVQ9IxTZQM4psoSbvVBn1Eo
         ZrV0/ssJR+sx2nepBJ1hZsdDn1fa+IdgJlfMCUqxCKRXBsNrJey6NotdRZXSqw/cyHwu
         cxYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:cc:to:subject:from:sender:dkim-signature
         :dkim-signature;
        bh=r+bpN0GG49Z7J6wt4FpuRtBMpZxA37t2qymC5eABU44=;
        b=lo+D+/ESyFfui+Mh41/lGxBdb+ydLHFMG4eDjnjKqoMB7e4ORLIsoz9tp7zt5Vn7U8
         yxrvlEnrz0b+WIM/5maKxbUdlXnTEQYfK4mtXhBu3hIsIN+wQkb2M61qfCxqRVVfLfGW
         12Z2y6xIqucGCdhx4casbpQNerse4sVB4ixXCZmko+KdhX2gIsga4T2bU7wmcR2R+X8E
         P4ArYLFR+LM39EtEbxDH63tdObV7wrOMwA5gEMmNPAn3oPqyMQfQDZE2/LhTXMvzS5nk
         esaMgflCVPQTeaGUaMuhlK+HAPNfOoy12vr4wKJH1BP0EnreV8jKmgHp/JDbwDMpeEv8
         4Idg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fCtR6Dln;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r+bpN0GG49Z7J6wt4FpuRtBMpZxA37t2qymC5eABU44=;
        b=gLHivpR4SUC5BXfMQ9FmxqZH6j9e14po5SaVLUSMBFgLt1iZ+jOa1azNfblhr/ZdVH
         zbBVCKkl7ALO5o2yHWKvozT+sFdQ0Ei89WHoJ/8HGfOvct8xreHA7kNc0KSDQcEaoAeo
         3EA6VGSHCxjehyzjZFNgoiaCsCs0Z1g32WUte1rCEKTvMzegtscitSFzGnC3MCRrWy0e
         8jKvI5+Jk7MEFx3j6heizSg4MFtAYO3H4Xy7ouuVg7wW2+GCg6pMc3H6mJBtI7EZkuL1
         pp76J/awd+NofELo0SGo/jxeU2spu2Cetq6592+UMxWTQMnyin8wms6V7aLHq+k0ntBz
         H3IQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r+bpN0GG49Z7J6wt4FpuRtBMpZxA37t2qymC5eABU44=;
        b=WWm3jsqp2im6HcqZTQ5KbS7WmWqnNClEOAxRCz5EH6AOS7iUDJPEsTJr3GmTtbYQbJ
         J8A11Cs6mx68gxgSOmp+qPoLN+qyxG/8UqjXmT60tGfblQgS/dMHVDflEU6fMwXtJmKv
         5VHx6SwrfM+Pt+V/VVNZJq0+U0xc2z6dSSXf9fhex5r9iDab/9j55DKRouDh5+Ec1S0x
         a8wnT9kmMBW+Xg09SeafMmxN619FHbaj3Rt0R/0EO7Mu5II9fPFWWoVli9iwjvXq32++
         ZK0CQystWvMq2iXNNYKQE0qywE+DahIxMt4osT/y91RXCThcWDkQJtAOZ1isOYqaUUPu
         HrjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+bpN0GG49Z7J6wt4FpuRtBMpZxA37t2qymC5eABU44=;
        b=o3yutn9zY8f/aYc4A8Y3GFXKMNnYCGje5D7Fw+a63EtoVmTBupVg+4pQL5pjIhjJyp
         TKnPW/1GALKE/gUXR5CJillg7TR/CWm0KA3ZzJeq9hSi1xGV8h//cJPPlm02vzoJbao2
         8fB+LdBV9nIpvS8tAflvwFS0ui0Ou2uboD9LmTIOzZIvUXPLk/tdM/PLCxOwn++NhZbt
         tnfgnj6fuZcKAp9aHbGGwMKNjQOE9I4RAL+yqe7sMZPev0rAI3tM/KObTtQB+RtBzpzG
         paz/DVTHqkqfSJuG7MukL/ux6W0xS6oczr9DZKaFTJdKC4ZgXJfJVfG5VeC85Zlw0MSf
         c/yQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328kPseKpxk1PiSrIJhIJ0oQXkTBwjtBRYZyuua5cpDeWd8rFt4
	oM/uj08tlBNSk1Vn3DC7O7k=
X-Google-Smtp-Source: ABdhPJxQ62f5lKr6OmnC5ZJyYI3uopCtuZB4FnZR8oUDBG4juCt3qWd4DOSTbaj8NRCUx+Vqb8szaQ==
X-Received: by 2002:a65:580c:: with SMTP id g12mr7069095pgr.257.1601738422380;
        Sat, 03 Oct 2020 08:20:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls3350911pjr.1.canary-gmail;
 Sat, 03 Oct 2020 08:20:21 -0700 (PDT)
X-Received: by 2002:a17:90a:4e0d:: with SMTP id n13mr8084748pjh.147.1601738421886;
        Sat, 03 Oct 2020 08:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601738421; cv=none;
        d=google.com; s=arc-20160816;
        b=woYIH3S8H5vGKbX+Irp31F5I2YNAwRkS7bejEUgEp/ILpH0EAbrBCFYgQhKdxOLZbV
         DdDPCzqPYp3OXwJtDKmHrX7w6XRzo2VfBA0oviFogx74PQONGFdF6X3nEyrVeby1iKGF
         5F4g8dNrqx3f+W36S14lnI5xDOBf2mKsAqSDxJDTbsmH++r084+UJ5CN0sKUz/RWxE8G
         0XXtu0Ocg//u4uZW5keyx9d5B34N+IJRKRL20wUzNSj+mx71aeaqTmU4dOLGZwWj2Y9w
         vGivu3l3gp3grbKhp0uK1n39PfHmPGbj5/JtGMtIv70a3WMzQqojyGsUh1loq/wE2FtU
         Sb8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:to:subject:from:dkim-signature;
        bh=CxbBf0VRe0OZIyWTwmQLbfkYS+f/I5q5WzqukLpPtqk=;
        b=vyu+TqjucKkjMD1xVhQsMn47pm8KVVZorcxGgSWQsiNsplQgd7r3fQjJdwMrzw8Y8Y
         /ox4IEzpw46qVhuVbXrAcjwMPOER3UAAc7EkFGprpTV1R58DJPe7KAoODdhEL3xQUweI
         +ZWdTD8XyNtlhtO9VWwMoHIR6LLBTXbTAVnrAUlYCIZuBOuq21u9gWAZHsadm/P6AwmV
         OJOnN/qYAuepM6HJrCem0gDBewbkwFOQsbGngTOY7uLUYpKuc/+cHKO45CH8jp61+bym
         NBFhSLyQGEUWxIvIlKZR/1VgvgAI3vPOOyZipSQuP2ZHevWPUbXqEjFyd6JCIZ8flYOQ
         tJWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fCtR6Dln;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id h1si68296pfh.5.2020.10.03.08.20.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 08:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id t23so2031963pji.0
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 08:20:21 -0700 (PDT)
X-Received: by 2002:a17:90b:140c:: with SMTP id jo12mr8029928pjb.41.1601738421556;
        Sat, 03 Oct 2020 08:20:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id e13sm5071942pjy.38.2020.10.03.08.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 08:20:20 -0700 (PDT)
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Subject: [PATCH RFC 1/2] kconfig: use interpreters to invoke scripts
To: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Message-ID: <d398ec09-2146-1fef-c594-643a9c868b06@gmail.com>
Date: Sat, 3 Oct 2020 20:50:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fCtR6Dln;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

We cannot rely on execute bits to be set on files in the repository.
The build script should use the explicit interpreter when invoking any
script from the repository.

Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/

Suggested-by: Andrew Morton <akpm@linux-foundation.org>
Suggested-by: Kees Cook <keescook@chromium.org>
Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
---
 init/Kconfig | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index 91456ac0ef20..524f6b555945 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -30,12 +30,12 @@ config CC_IS_GCC
 
 config GCC_VERSION
 	int
-	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
+	default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
 	default 0
 
 config LD_VERSION
 	int
-	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
+	default $(shell,$(LD) --version | $(AWK) -f $(srctree)/scripts/ld-version.sh)
 
 config CC_IS_CLANG
 	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
@@ -45,20 +45,20 @@ config LD_IS_LLD
 
 config CLANG_VERSION
 	int
-	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
+	default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/clang-version.sh $(CC))
 
 config CC_CAN_LINK
 	bool
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
 
 config CC_CAN_LINK_STATIC
 	bool
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
 
 config CC_HAS_ASM_GOTO
-	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
+	def_bool $(success,$(CONFIG_SHELL) $(srctree)/scripts/gcc-goto.sh $(CC))
 
 config CC_HAS_ASM_GOTO_OUTPUT
 	depends on CC_HAS_ASM_GOTO
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d398ec09-2146-1fef-c594-643a9c868b06%40gmail.com.
