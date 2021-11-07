Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBVX4T6GAMGQE4HWTQIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF874473C6
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:27:03 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id kl17-20020a056214519100b003ba5b03606fsf13597280qvb.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:27:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636302423; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVTI/ZddGw1iiUR4IFLrubiM/YMCRO1X4Nd6CYUUIsqf4pP3BtCBYB+5+ygwUonQwa
         5qnnOlVabbFX+jJ8b3HfxbLZ2A7yw1XtWlQWm/8A9qzUJs+4IxGqIE9WDHqfR6U6cJND
         WiTIYTzF72UKKF+FLkfCtjCyBodeiI7MLEkvRXX16BbHFAoWo6neXMO6GOOFlvKyzOzN
         qLnj+4Ep3+5eB7lOs04VLJp8A0wGQrS7WsQqHILfCxL8PMQgDmExUAMbZH2Wm483LAwH
         DthPPffF0LgNI4uIyFWhUujXH/JISS/aWJwwnKdBZ2KdO7vwEykCtQMGE+w/3v2J9i4Q
         R4Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=PaREG8C+8FLtyRqgcui+KGiueyhRthS+3vZO+4uSArc=;
        b=Rn1qW6VCDgUULtIU8o55jFhLsI1coLEqdGU05gHu9oMEn1CdLOiziWoMFhM5iDz0j/
         AxLRKWfvDMqW9Wdgafii6vf44j/SzQrmKFUGEfuFe1vu0O+bv6tfciUpgLCAviHszNMs
         ULA7ahW2ITh7yuC/q9HT58N5llXaSGI3S5SeOL9nalWIBanB7kx7oxlrKfYlJYQrct0a
         LFnC01gFE3FXKmE5MQIBB6FaHk9H97+1XYqTVUIlfTBn33+yQNxFrqQrxqbnwMYWqu06
         w1KI3F4KomnRwAAoz5TDjZYsmEQnE+fW4QLFIHEa7yUSN4zrdRVV7KuHVrAS/Lrjpr44
         GAZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=oaI7cv1G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PaREG8C+8FLtyRqgcui+KGiueyhRthS+3vZO+4uSArc=;
        b=RCV+58JNTQHtTcNicZfflLXrGzBDVGKIswtdMqWR4GUi6TYJf5GNWsTfOZRzFC/LMB
         sKbtWzYERdXLbhlAE6TgJdI+hO8HAdXpDtq+XhmhzGje8gRUPhNQHttcMe0SknLGgon7
         7VQSryX7Ek31MbysfRAOfYVcuS9qriSacOD3mtpjMMhRY7EsYf3kjaS59GIPUzdi+Jkj
         u0TN+P4yBe8NPzbc6SP3O1P0PqOTwSqIVPxlFm8BwxNQH3/64j2Y4a53GXWLTcQ04i1Z
         O5PKKVCktZMPhsf/bVW8BZDPCK0B3WD13jliBTGD/H+U8jOKFiYmmGyiTh/j4vKaSvtJ
         rXmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PaREG8C+8FLtyRqgcui+KGiueyhRthS+3vZO+4uSArc=;
        b=DgFadS5TBCncnAABCvol30QmumBjfUX885i4E3CD0dUYhU3FSJW1EZPsGZwP02ydUK
         7TqM4RW3z+zLYk5m3cgrx0ITqfuxUHpHEs+rccyUMNV8fzslRZ35dDBbBI7g39sAe4yC
         HzC9cNQ4KbgijOU8M41Ih2ueqsXkZ1KplGdAGKzME5zFDocVAquU/4ppKVOj+E3Iy0Z2
         thiY3md3t4THi2WIdPVugQ3R8QuZEXiUSFo5mUKOLXTfljXl1ROPXIv/FDZRxCVl22Wv
         rXYStxzjzxGAolwhRyIpk/95sBcltbpUr2yCpkqsGcACLKjTBXnGAygCTYWBUbynN0VI
         7ZDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332GqQqU7lCs3mg7WBhU9qWrVn93OqLzOpm08cni/TnnvGEs5n/
	xl/VnbT5itJXaKKmNTBKNt4=
X-Google-Smtp-Source: ABdhPJxCpZCD8CCQKuxe1qN7QHAcOiDnj46lrpszWQjICXUpKLoct8eXm3tOkdmnXjF49ff7qo51xw==
X-Received: by 2002:ac8:7d89:: with SMTP id c9mr68412010qtd.88.1636302423013;
        Sun, 07 Nov 2021 08:27:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:240e:: with SMTP id d14ls7633747qkn.6.gmail; Sun,
 07 Nov 2021 08:27:02 -0800 (PST)
X-Received: by 2002:a05:620a:200f:: with SMTP id c15mr18790694qka.231.1636302422619;
        Sun, 07 Nov 2021 08:27:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636302422; cv=none;
        d=google.com; s=arc-20160816;
        b=LszHCVhqnTe8087eBGAPZUZKIzQ2ihvX7/gV6vgPBix74Q+H7p9hhLq9hWGP8EdIYL
         e1YWn7SbNjwhNWqAWfqEY8PgvH6XocuZLdS7iRI+1ESJ7hvErhOKehEZw3E5MFAgQZvQ
         Cfb4eFbgZzLx1Gl7HcqNILPu6QdNKccU3AqfvirWMEsHnOq6TGebgFCEEwWf4gmNxu54
         Y1VgbNgvZyivhmWsUcfaqgi6+DxRxAR8hfqaaD7j0FmYs3r57u4udsJ+RszI7P4j+Q+4
         I1vZ1r2+J/SrTzFx54DR5FJHOq5oFS9i7IKpsoBukIwzVD231vmxuJX0HzoaqEbx/xy/
         UiFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=gx9ybrrvRFYll7zA4wYrhSeUk/K5DRQcs+620maBVto=;
        b=Lk71gA1pA5UP36xONBpnkjxKpMD8j1fY3ncx2YoJ5V2InWmnJW48AJExz+nMllNcJp
         Bh9qCJePTZLczQ3EnlrLKIvm921SDPndcli20ERhYOAdtkHqH7KemB9dpzyCJ2ueB2oS
         USes5iT6D2LekifrfusHFXqy2x3lBIFPtbx8X+XKo8riBbUMQWQxQgll14iPhw4+DrdT
         5jYzJMi+FQ6C+pNcgREJYOWTcBEHSCMxMiR4kYulIFEbFFFFA6a4hv8Ydi0gcxzs6BcC
         fAaAifM8JgOPsVCD+iwp4f/VoIGm9/het0IhVd32wAysfVqGFMx/6tQtKefFFtMOAvie
         Vr0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=oaI7cv1G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id n2si2318084qkp.4.2021.11.07.08.27.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:27:02 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 1A7GQh1D020834;
	Mon, 8 Nov 2021 01:26:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 1A7GQh1D020834
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: "H . Peter Anvin" <hpa@zytor.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] x86/vdso: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:26:40 +0900
Message-Id: <20211107162641.324688-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=oaI7cv1G;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The -nostdlib option requests the compiler to not use the standard
system startup files or libraries when linking. It is effective only
when $(CC) is used as a linker driver.

Since

  379d98ddf413 ("x86: vdso: Use $LD instead of $CC to link")

$(LD) is directly used, hence -nostdlib is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/entry/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index a2dddcc189f6..693f8b9031fb 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -172,7 +172,7 @@ $(obj)/vdso32.so.dbg: $(obj)/vdso32/vdso32.lds $(vobjs32) FORCE
 # The DSO images are built using a special linker script.
 #
 quiet_cmd_vdso = VDSO    $@
-      cmd_vdso = $(LD) -nostdlib -o $@ \
+      cmd_vdso = $(LD) -o $@ \
 		       $(VDSO_LDFLAGS) $(VDSO_LDFLAGS_$(filter %.lds,$(^F))) \
 		       -T $(filter %.lds,$^) $(filter %.o,$^) && \
 		 sh $(srctree)/$(src)/checkundef.sh '$(NM)' '$@'
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107162641.324688-1-masahiroy%40kernel.org.
