Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXCZL3QKGQEY7AOVGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id F40EA2069B5
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:51 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id b6sf350683pfr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963390; cv=pass;
        d=google.com; s=arc-20160816;
        b=XnTXr0Is873o6bllzowKARzYlR/cTXNr7upwPkW1OiAGTHgDNj3Fg7fF3+mqDbL4xv
         oYrL6V4WNh+p5zP8WswHWfpnVWsBAfNws7Cbk1Aml9E7GyYIVuH/y6XSNSvq0S5kADeW
         87A9CbMApPSldRWlVlTsx3JqjziCIBbQAm21LOtoRY+sTXS6kwtooRbEp7Hsak/7HkmC
         HXVx3X+9ukAsx9JA23gWGdIltHDrp2iBdNqVZOlDUEOwzD5WeeynMG5P6ZE0QmF1JPT3
         0izMJhkIR9569e4tmAXD12wjjzgEJj1X9MzlowKKOd5hGdV1pflUsZVdDVXl4DWMxmT2
         N2bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=a31sLLVKH/JuhvcfZf4taSNGuz+2riDNpVRItSE/xzY=;
        b=QqFTrb4g8kNm34gkMzKd8q7uQ6kYcXaGq5djysSgJMHUhxBCjuuz2sLD2aRBJEL9Jp
         F28qx8SAgDpnjWjJw1TaqGU3JKwPyAty6O/RerqsTHXwJ+uN2bYmktDVq1Wepwdz/e37
         In0QAE34+jJJ8v8kltDOFSUIZ5N5bFxpTNaz1kujOgsu3ekuaIk5MO2ANeXvzSg+su3c
         YmylPyBSUhYgtPKIKgs9rsT39Z/tdY3ZOiBoOkllz0Ze/vRezw+GkWVNRm+msx/D47WP
         58kTSEKeg708meOtI9hjLHz7O03hFsth2ocJ/gy2wVb1UuYHF9sILAQ7HHUNHK0Jm0Xk
         wnNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TXdY9FVp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a31sLLVKH/JuhvcfZf4taSNGuz+2riDNpVRItSE/xzY=;
        b=C3VaGYuQh0ebR9lkiOi7FG+ye3iFrK9wUrbUBNqylg+c/nxhcf/PWBLttfL6b/qRYl
         7FymYnsA6J7B54OlljlCTpmFMUPol9aqW0hJqhWuX9339Aapuc+X5W1grQEmI23NAFux
         q/9r537/mnoFrtXkqMXcJK9mZIEzh7n+uze7dblwAotegfYw7UCUu1mnsJ6uaG6y4JZO
         UuQPqxGICPssan1c83qUcnaPElRWJGdoN3xn+nSJNAPALAnpCBujmzQtGIJK+oAZr0Lm
         tG0VGD4YddQBvbcBokTZqRMBJakXGTktC/FfEOy8BqPfboWv2JgK69f2v47D8HhSrgkc
         QYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a31sLLVKH/JuhvcfZf4taSNGuz+2riDNpVRItSE/xzY=;
        b=RBtfsyzMDM1mp6pfO94IUuTp9+8sP/22/u/X2f6NNVetSLybCPNXsKsvdS79czlige
         UyiBuHdbmx14kUwXmGH7x2vZK0QTd5iQAsxPqf8bC4iFvDsStx84PRAaJ7ciIY1qJXkT
         2VJG1pR1IqvDsObPAIIKJt83AotpZRXUNDjqmNXDlZSGjF3oWR3RNJlZHGwHc7I3d5Uv
         pEhSAWFvzCvo4KEd98ZitGdvG11OXqhe0fo548nTIp9UpvQf+LllYLzG4OW/ZzlmWIv4
         yQJtz0KUMwi3bJhXCU6pkf7H9mX+shU9sQRlBZazz77CXXoWwsSAj4RTMg1myM8QD5dN
         j/HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jB6GJyF+Nv0ILX4oYstUFXnmg1T+rEfrU1jgqUD9oBfTHA5Nx
	MsFL++ETTTI8kFcOx+8jE24=
X-Google-Smtp-Source: ABdhPJy4udP0q68C64mk5dMcJpPonS5R48PeebpU2zPJ9QePUb/PN4QKZXzrsMYNcZ6J0wVGvS9M2g==
X-Received: by 2002:a63:7d4e:: with SMTP id m14mr20343688pgn.391.1592963390740;
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls165573pjv.0.gmail; Tue, 23
 Jun 2020 18:49:50 -0700 (PDT)
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr25390951plf.76.1592963390346;
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963390; cv=none;
        d=google.com; s=arc-20160816;
        b=PCDxUp+T05wKdqHqy9abmMCa4S/jWnprtI6dG97tLVg2HNy6EpSAnvU8acIzjuIQ22
         lOIr0i5AQNSYn34MJK7CTlTI9WyvjcJCHnj1d3X3o/kj9N/oV1lqlC4UdJ9Psa0YV4Lx
         zFT8RNcfVLXi9Kr6J+g6sKbGKbb9OjpZcGUTtuNFRXZDpIbzwGYpLL83/3iDm/JjBzSP
         K3rcmznmg+IIxmtkt7tKEYA/Posoa4qhYovgP8dRTSBZnkuZRnW00mcOaKAYNYCVWlwl
         jfkoA6k+FK2cILeuZ9WMc6HolrNKYyMKXe6FqxLmKTG1lCHk/jfdHUTLmF1D5bnvxGDi
         bZ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4bArInUOY6/vKGVdecpLjfb0/2uC+GzWucHk89/LRTo=;
        b=OTDS4/G7KXOr83zhqrOh4rbiwgPkRv3Hz2jO9PcDWAQCgkK4XNVPrbxVUpipMAAbKp
         qWCOP8wDUyD7XtT3NnIKsPhjOHhTnd4IATmumESHFEiOvqVRcKIaRJarcpIygIutyPXy
         9GLLbj4902RRsRo1l7pfV2Ie9e2wJR/I0Pql6Zg6SGgo2cyZ5vNewxF3J6242l8kTvYo
         iBjC2x5GTqdI5NYz0WMrE4H2swvagh994c2jY4Q9Fugh2kJWIQmm5hvswfowW2jcwhOi
         fwVPOssn3n208vYoBvdGYlRU4nT+N/Vua/LYesVYIqDVYd8afwQQdFCJMPIcfgfa932y
         dJXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TXdY9FVp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f3si1135927pgg.3.2020.06.23.18.49.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id a127so347137pfa.12
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
X-Received: by 2002:a62:2acf:: with SMTP id q198mr28740207pfq.48.1592963390089;
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a33sm7555553pgl.75.2020.06.23.18.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/9] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Date: Tue, 23 Jun 2020 18:49:32 -0700
Message-Id: <20200624014940.1204448-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TXdY9FVp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

For vmlinux linking, no architecture uses the .gnu.version* sections,
so remove it via the common DISCARDS macro in preparation for adding
--orphan-handling=warn more widely. This is a work-around for what
appears to be a bug[1] in ld.bfd which warns for this synthetic section
even when none is found in input objects, and even when no section is
emitted for an output object[2].

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=26153
[2] https://lore.kernel.org/lkml/202006221524.CEB86E036B@keescook/

Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index db600ef218d7..1248a206be8d 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -934,6 +934,8 @@
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
+	/* ld.bfd warns about .gnu.version* even when not emitted */	\
+	*(.gnu.version*)						\
 	}
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-2-keescook%40chromium.org.
