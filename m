Return-Path: <clang-built-linux+bncBC2ORX645YPRBDXRZ33QKGQEBFT25WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F14C1207D12
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:19 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id h15sf2323516ioj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030799; cv=pass;
        d=google.com; s=arc-20160816;
        b=xfvvbnFjZ1cb+qsM6Dr1XSuqGqEsWKiA8aL2bLUi0wB+WDVJYAKINs09891Wm3V20A
         uAAer4mxe/+TaKSPPWFEqcBLFe1vBBwQqEGWR5lg1PHtPnpS3IqekTERra4x286vt3Ti
         JVp8NESqGHgKumKyxNWqBO2Uc3DCTOlnkSrmmIFj54IHxsr6FclUHI+qIJqSOwpwQ3zj
         KKOVgg9oJnjMj5+pgJHTxlNcxGFXi9IxHtgur4AptVJTNmKPNQulway/pCCk75zCKrYN
         Pf/8Mw0zeVBdJA/IzwaT8fvLBpg8DT3RKSrB0koks5f2dLudwNrlm+nCCfRB314Qv2UU
         xj0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=k9dby/MHgJbM4XyxcO15edse8pWNeVx5SmHiyrfO6Ww=;
        b=E07pmru/UkjITDbAhnstuPDs4iY/KkoLYBT7t2l4unOExkHNVx/zda1k9KFKedDwtX
         HYqfcP9wf9gy8Tlmy3V7UjpS8ua2r2xl7jNd3pZgYr7Pcv0CiyK9IveQ8IhWotihURMR
         ISET+DoeVWNWvLg5jndZ0JP4w8rJwKjZagyDnt73DZzYGT+yBbpkRQ5b3jsV5e46uIWV
         IjGFuj1+vSfc97SCH0VInpsJQ/1J94t5uNn0fRoRM2U6wuKpgld2/bupD+lHtOo2MkUV
         37u5Z97Tf5BtXboNB3tNQxOaq7xOouDijhfQTl43aX0WZSoOXZYrn7ujLP+ldcDjdvSl
         2t6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I3ECgl1r;
       spf=pass (google.com: domain of 3jrjzxgwkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3jrjzXgwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9dby/MHgJbM4XyxcO15edse8pWNeVx5SmHiyrfO6Ww=;
        b=d7Fdh3UGvuqcLqo8oSaEVccU+5AvzdqZoBDt6NCLxidY30g2GIyJnkbJPVBbW3R4W5
         ZwuTthn/ZaXV98Nv4+x9vfV1a6XFOXnTACCZi1+gN/D3LiyWij4NvxIBG0i0BbNvT7W2
         HEm4Ked01/PY0jUBE7p/l2Q2YcFEc3jf4sPruFMOxuR5wFDj3YxNnk+UpGqCFz4vJftp
         tdQ1KWQLBqh4mTIcy91/aGMikJpMKfdLkTDaLBnl6uZL3wbd3ZSwmCoEIS90uV78tl2X
         GbghaMh4lx29kXrK/63GRDAK97gM0KdXicIxD7trpgnsdSjGvoRv5p60WwPlmBwDrckH
         bKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9dby/MHgJbM4XyxcO15edse8pWNeVx5SmHiyrfO6Ww=;
        b=SJRHfAMPfttCV+2p0NWzZHj24FmgNeXB5c0EHiFKibfXDIrSy1d+UiRqtjqMRXVEmL
         yzO64lYI3KZcQSuR+hdpfmq79hFdx56k6DGa6P8NZZnetYJwfD2LDvdsoHeFTWJ0CUeX
         dgmqv6tBNfS1gd+kivDYE+amX7kVK4HtQPVdPgFskDHTr3vZ05LyHbyDZ+QUyx1Cjp5C
         6l7ojjZRCvhHk+kZbiBLgWcA4P3jUb9GUC3mFfTPQhc9CnJlfo5Afmo/X3OIzN3u5BUT
         S/RagTiCLuUc0awzxTnWLaAarAlDBbXHlFuVV5MZrFlStf3dODZqRg07TDIeFhQKUYDh
         6uPw==
X-Gm-Message-State: AOAM532LeaTIrgZV480VHZmIxkKTY1+0jXPHjemVcAgIHGxKpJ5MgKgy
	XL/GcCCWTKLJswcsvJAs/HQ=
X-Google-Smtp-Source: ABdhPJy2nwD+3srfRKamTgtG0+ZN8D8Z2JEiuzOhDWOfqbNv0o6hwZ+ljlyg8mnnxoyUY/TIBYwZIA==
X-Received: by 2002:a92:8544:: with SMTP id f65mr23604308ilh.42.1593030798954;
        Wed, 24 Jun 2020 13:33:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d28a:: with SMTP id p10ls933916ilp.5.gmail; Wed, 24 Jun
 2020 13:33:18 -0700 (PDT)
X-Received: by 2002:a92:58d6:: with SMTP id z83mr15860883ilf.186.1593030798559;
        Wed, 24 Jun 2020 13:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030798; cv=none;
        d=google.com; s=arc-20160816;
        b=mXUuDtuNEjR80XtOIynjlHHMIlnjVHNDjA1CakZ8hRAvH7bRrH84Zg0EMieb6Lbvnj
         PhA+r65YA/Jmqk0yyYOOcL8VePpb31Qj2AzpTtiBUorC6HjK3NvCqrpT5d0gNXV9gJfT
         AFfOijQlSEGeNiiHBIvZuofd7IeUNOrAbDa3dnigzz63c6kS53fFQ/U11LZvmoMHi7nn
         rROQM9xpL5qT/czpDnUET2JsnOs+vkjnSEmkTVJHWN2eVExLl6VSCsvDSH6pF8+HyAL6
         N00HsZJtC4OY+0M3Hd0b0tClty/PYA4LiLJPWkxKFuAfNGG3VqFWGdopxJ1wlMQZDN5i
         aUmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=p5Zjwl0fzbxC+wniz47UyXQT+jPezYAnZAW9sm53Gyo=;
        b=nMmosrDcLg/SHw0fui10i6CwvJnpUJK2muncv7Hnnj3Gbx4R1lW0pfoY5D6tnZ/G+/
         rHHRxpCr2dmoLuxDEJ3hgE6aYQ+myAmNTyh28ynItW0WJC0b7OmH25tbkx5vJ8iQPRJt
         gu4gU2098ZSWIexPiUncacOWW3SDDPlzOo8PMRKbmU65JkPVcb8LOQ0Z3hBsNb5tG4t9
         jsoErre7LQ5vJ0LhfWK+fDWDDdOkQ6ZzYWH9nTvw0/Br++6qXHaNS3k5kUzC5w0t93Gv
         E+dqrBdAFaEuvHXeCy8o/AuHSh21LfOUxFL56SU6ZdonCZRuc3TJeyh0WnIVRwzhyOZp
         rUSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I3ECgl1r;
       spf=pass (google.com: domain of 3jrjzxgwkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3jrjzXgwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id g12si12582iow.3.2020.06.24.13.33.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jrjzxgwkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id w3so2506118qvl.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:18 -0700 (PDT)
X-Received: by 2002:ad4:4526:: with SMTP id l6mr8754125qvu.16.1593030798020;
 Wed, 24 Jun 2020 13:33:18 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:49 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 11/22] pci: lto: fix PREL32 relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I3ECgl1r;       spf=pass
 (google.com: domain of 3jrjzxgwkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3jrjzXgwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, the compiler can rename static functions to avoid global
naming collisions. As PCI fixup functions are typically static,
renaming can break references to them in inline assembly. This
change adds a global stub to DECLARE_PCI_FIXUP_SECTION to fix the
issue when PREL32 relocations are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/pci.h | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index c79d83304e52..1e65e16f165a 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1909,19 +1909,24 @@ enum pci_fixup_pass {
 };
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				    class_shift, hook)			\
-	__ADDRESSABLE(hook)						\
+#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				    class_shift, hook, stub)		\
+	void stub(struct pci_dev *dev) { hook(dev); }			\
 	asm(".section "	#sec ", \"a\"				\n"	\
 	    ".balign	16					\n"	\
 	    ".short "	#vendor ", " #device "			\n"	\
 	    ".long "	#class ", " #class_shift "		\n"	\
-	    ".long "	#hook " - .				\n"	\
+	    ".long "	#stub " - .				\n"	\
 	    ".previous						\n");
+
+#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)		\
+	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)
 #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook)			\
 	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				  class_shift, hook)
+				  class_shift, hook, __UNIQUE_ID(hook))
 #else
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-12-samitolvanen%40google.com.
