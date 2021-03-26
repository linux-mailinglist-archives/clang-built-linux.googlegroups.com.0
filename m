Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL6K6SBAMGQEBJHKIHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B6F349D33
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:05:09 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id n15sf2531170oie.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 17:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616717103; cv=pass;
        d=google.com; s=arc-20160816;
        b=PprpAaf8N1rk2ysVYKg+yea7q2X3Zn5uBJJO+zI9mCARxVKOqGUywtbNw4flTyU/mW
         yIZGXpdIskJ3F7XoqdDyHo7Ipe5sYQmmT0pYZ+4ViFUIVOYEQBy4mFZGPMGfjeHsDJjM
         W4n26oogwyNPiAxKW971CmipBLcI5Vxsc9HPMYzYBIccnbYaNeyvKnaaTxMqK3Db6hxz
         MJ9AWBnNo5SezhT6a7fxxdMxfBMR15EAFReu2Q3XYs5fHF01Q5KS3ZoLCqLDSxiOA2NJ
         jNN4nxW/+moeWVrkRH3XcwfXrTtIR34t9zVJR9GoEg+igLNhoeaFaXkyK723cAjYSplO
         PdOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GQZo3WKw0b0GEh3QR9w3hQUODv+5PnqNLaFacjtyGak=;
        b=Bbj+wiOZ+6ykMsS2j/kv/MWhAaFxSGVdz7LKh19OBjA1X8bVxA45aDPHlxOK5SR+Ui
         YnnnQiAXlfcckJihuxA/rlebRA99xVZ5zRpjFZJs8QnNv8JT1DHOwXBBsHj9EKrCAamt
         Pd75P3IkW4wUV4WO72TohPFuxJqN624yP79qf3jxl3NwlR/Wis2FFSYYx1gNJIzCN/0q
         IdGPW07XAT+qbs8v5U0npXmNORFim4KrQOpKO6/hp49dyZb9Gi0v/ErVa/hvebvD9vF1
         dHRIX73wcVs5J/UW87tVv6pafs7Ha6nxStJyQm4eEGmSJIbMc6OfVVziI59NUIHvyRo8
         ndcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aB1LzYuE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQZo3WKw0b0GEh3QR9w3hQUODv+5PnqNLaFacjtyGak=;
        b=cWVrjRK5nrjZu3TVXVh8xUCi+DENpo54SkBNHLhO8ORQb+vCuGmFtzNBejWwFUZ+wf
         453Ix9m70P2QIy11yFvpPnSzqXgp7buCAHWHaoGg/TTJBa6cbHV4feGzI9NT2ZQ2W1p4
         gPx7PKK+tUX2MsPqIfa6irMz0fGHHT+yt7OeCAb75Lgcq8MX3aH5KrH+Z7CtFY0NhZSS
         y2VJaUclnT0rHwiEPRA9hDYf5TYjA3oQN8rd/t8AuvNcclBzKE0XY8I3jW/d5EJgDhUH
         qjEnj5MGkNtTazDXYRBZjpC2a0FT3SKssbtYGeMT+4q95UFE7JLzyPg3M9yxxKXqzV7x
         9TkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQZo3WKw0b0GEh3QR9w3hQUODv+5PnqNLaFacjtyGak=;
        b=t3JgmCvIvd9xHjYDItKs41vQQ6RE6giC6tqM/wB68g6GqpdhBQLsHnc1DakhK4CMP5
         tIC4p3QRi4V/3NlJLdY1MUql69oLcffVDScbWdLHh1sqPAlSUjpJG3BY9oHMim4I3GPi
         KygSax/+pMs8i7aPSJnvweWqSU6tBLDAQy4ewo1F5NrOsbu78wrdYstTd8Eo3Cun1E/q
         OtbYine/GZbSS7ZX5wfTmnffjfkjonl+Y+kfZ4XYVetxF2TcIc/3JflX5SYWf3iahdLZ
         ZlN9FMbG8uWRD6Vp0bXdh1ho+13/cBYz8IuC9wvT1da5SFzQqFq38R+WVaZwV4gVF8JI
         bV9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53139s3Lf86O7qSHaAet21L366Tg5EX0dQFQbxDOgoVqkptz5dL0
	4IxNXDL0RZosCDoGFhzMeiI=
X-Google-Smtp-Source: ABdhPJxV+6QUmTY5UdWM+1mTn0j3obwhcHZCn3+oQ1Eg18JFDiSu3Vg2hp6clkxVBnTeT9/CfwMwiQ==
X-Received: by 2002:a05:6830:210e:: with SMTP id i14mr9516004otc.229.1616717103492;
        Thu, 25 Mar 2021 17:05:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2309:: with SMTP id e9ls1755002oie.5.gmail; Thu, 25 Mar
 2021 17:05:03 -0700 (PDT)
X-Received: by 2002:aca:f452:: with SMTP id s79mr7950251oih.126.1616717103082;
        Thu, 25 Mar 2021 17:05:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616717103; cv=none;
        d=google.com; s=arc-20160816;
        b=DDKE5i0rHFuSfgxtjHrBtNr5M5qpBdnkENHVjbRtheq3T+Cagx8aHOUImfjvsbtqaL
         uYPofkkKOC2mLu+u3KW1uFeC431hjyJY2LH9FRSF6Ovb/XtjtSBHmwaQKa4+toZtfOhx
         VNy3V6M3Xfl0vY20fR00CG1aj/qE/sM3W/rjzD32Hdo+iQ0n2HzNjXdW4MQEdwACnHSb
         tYxnAkf4snOOI9Yuo9nzeiEroJfP5wvwKjlSuyUm/hcZlaY6MJwj9YUuzVDkFjMH/Q5j
         lnKUVqgjHsggY47aHutaH+d0sqKrlkRM5aXhCpNoZqdCWpkO4j7vJgZOrojd8GySoxqZ
         OVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FqdMaxBJhXDI8tb65RxjGyfuGwx0v9rJ5tYUUJ5M7K8=;
        b=IG1uiqJXH/4PzHU+oTn1wexkRAkJAr7qzMzi5+QroJP/lr3Tx6PZXYfXHaLWZUVV+D
         fzSwY5DzN3PMQKcsLjBNRkFueMiR/bHKSW9S+CoydPnDWyLToqZNM3U6DtX6n5SW+LXJ
         /NB/gSkK8dz4hdoF7k9Fp3paYqSV5husOE7CuEYwAxbaini/X0IBjvZfAwlXbFkqphxj
         LzDt7TbI+WR9rwrhte7Iv5p5+lmA7hkxZqeYAp9mj8f3SgbDgNRs+y+ILRjtQNaadKAM
         Vd3OyVhuRk+nCTFItsgyM2+Orhm1guPlTdeZAaLCA/myRxDsqLmqWfOd9V5rx3cekRZC
         bPsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aB1LzYuE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v31si223567ott.5.2021.03.25.17.05.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 17:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3EA7C61A36;
	Fri, 26 Mar 2021 00:05:00 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-efi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/3] x86/boot: Add $(CLANG_FLAGS) to compressed KBUILD_CFLAGS
Date: Thu, 25 Mar 2021 17:04:34 -0700
Message-Id: <20210326000435.4785-3-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210326000435.4785-1-nathan@kernel.org>
References: <20210326000435.4785-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aB1LzYuE;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

When cross compiling x86 on an ARM machine with clang, there are several
errors along the lines of:

arch/x86/include/asm/string_64.h:27:10: error: invalid output constraint
'=&c' in asm

This happens because the compressed boot Makefile reassigns KBUILD_CFLAGS
and drops the clang flags that set the target architecture ('--target=')
and the path to the GNU cross tools ('--prefix='), meaning that the host
architecture is targeted.

These flags are available as $(CLANG_FLAGS) from the main Makefile so
add them to the compressed boot folder's KBUILD_CFLAGS so that cross
compiling works as expected.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/boot/compressed/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index e0bc3988c3fa..6e5522aebbbd 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -46,6 +46,7 @@ KBUILD_CFLAGS += -D__DISABLE_EXPORTS
 # Disable relocation relaxation in case the link is not PIE.
 KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 KBUILD_CFLAGS += -include $(srctree)/include/linux/hidden.h
+KBUILD_CFLAGS += $(CLANG_FLAGS)
 
 # sev-es.c indirectly inludes inat-table.h which is generated during
 # compilation and stored in $(objtree). Add the directory to the includes so
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326000435.4785-3-nathan%40kernel.org.
