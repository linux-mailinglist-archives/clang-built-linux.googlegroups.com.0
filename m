Return-Path: <clang-built-linux+bncBC2ORX645YPRBIPRZ33QKGQEXBUBCXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE09207D20
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:38 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id t12sf1287079pju.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030817; cv=pass;
        d=google.com; s=arc-20160816;
        b=ae4kpbJaOWdhxRV+ck2oxuv6sWCv92odjfKr0CJtoPNU9ChYpE4lyozi63meMrX4hl
         KUZQp2sIiGsXaHGs/ow0SUjFyt+MpqgYVAuebvhw0xe2BHQgt2UcjOUsuVl9oOMzcePC
         02R2LsW9UF4e1WO9ODzKPLbeWHGDWYY8bSd94BYLENwSluIrVVvP74L5RF1u5JpNTHlW
         RxzvHx1MmEMiiyXVTQG++MmAS9c9Y/kTOwsX/37L1VsSQyPPVDaL4goThi7Y9j/DZGS0
         0gZpf8nl5WWLQbo/HNnxhwvmEQicLxxJePz2tjvw7B/hYhoJdYXJQQZFpgtbBOsIfU/0
         Q9LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RVXvrnCQv5KeEBs9KqB7CVuPDY2J8Nf1Zh7KBQtb21w=;
        b=CYCBrACqFtDn5OAg2mWSavsf6Dx2r6SsHa+hi+VmnAWBplSHXF8AuA44HGhykbHcBC
         TAZmNs5DOgHuhr7ef5kZ0go3GClZb7YVv0MGCNgSJjzLL4/5c7jPUhQlBuPolM2nXz8z
         45sraZf1216ZpdsJxhneCHP+8X4+oz7dcdDi0Y4kpp+Qr/xzKgH+xLeEY6sJx6XziXuX
         LJifN4B6ZpH+XmO5dkIBj7o6p1M1azyIHY5FsSJnrh4AqnV+Uk0BP2Sraw+/yhRgwl+n
         OyQ1b+8biMeC4Ir1++8KI3bpCclvkMNh+bGJ+2qIHgvtCJEx/2l5CWqL8cNFxJg0Il+K
         dw/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A1OVxmoh;
       spf=pass (google.com: domain of 3oljzxgwkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oLjzXgwKAN0R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RVXvrnCQv5KeEBs9KqB7CVuPDY2J8Nf1Zh7KBQtb21w=;
        b=KVM4zdA5nERVj52/KOl8O0tIzsHR9+pbRTNt6hdLRxP6IrJVyRbTIcp306EjsJNv4B
         fUEih0cVMqON6alJVuELBru4PytxTOWE72QCbdyrQE6cje0kUtKkW0CU3g1Ppa1vt/mM
         +shlY2JCZKFwvhQDm2iPxljKdesDzKvH7S3SUg8s6Is0sKvzx/NHuFrINJs7AOj9l0IL
         TlaiXYoT7iXg23DSmZk2yQLEPEws0dXtpfmF8+MMSfePpo+SPsQ3Bk6jSSPRObcAF3g1
         wHwi9jVbxGBjB+GS1b2JR+5WfwGNPwnKiBYu4sDRfyktTPZZ2gHjYu2R59L/j+O4DxlH
         aYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RVXvrnCQv5KeEBs9KqB7CVuPDY2J8Nf1Zh7KBQtb21w=;
        b=bXOSVD0xZbuJD9DKzKepcdwMaKky4A1kuMU1Ab3DaLOUiwGeIbOmy9AKvtURg1wikp
         AdUD7OAoKz63GNgjc0bdccbRBVmdweYVg8IOzb3bRK2fk9oXYmBhbvzQZykrF0LVk2bk
         S+JoDX8OO4qeKnkMpBoPxBbU2QLZFy5jBqTNoNfgX1cuGQ94aehzuZzBn1Mm8OSNC01A
         XsG1ss045iIEXsZ8NJqMNz795aqb7k5cIZB2ZkLBdPkb5k37hqxp3mK1HSOvX3ZB4X0+
         XnIin+cqh27Yygw+GZ5BkrD7/Q2L1niHpTLVLH+LfmcddwfftfrcZDx3YCvJIDU+/mpT
         8tJg==
X-Gm-Message-State: AOAM531HDCiZ5frahBJE+jDhQDdy9veudss617WDOHvxjY+rQnepQn8d
	Xy+Hvn4+MbXB6CDO6xUQpmQ=
X-Google-Smtp-Source: ABdhPJwD611OhWZBrz8us+hnzsl+sgmAbuCeR/T6zWRFmi1ve/IVbLWI3+PZuHRQwDmK71QK4Dw7DA==
X-Received: by 2002:a17:90a:fd90:: with SMTP id cx16mr3763948pjb.42.1593030817607;
        Wed, 24 Jun 2020 13:33:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:38d:: with SMTP id 135ls979183pgd.0.gmail; Wed, 24 Jun
 2020 13:33:37 -0700 (PDT)
X-Received: by 2002:a65:6089:: with SMTP id t9mr23836376pgu.236.1593030817093;
        Wed, 24 Jun 2020 13:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030817; cv=none;
        d=google.com; s=arc-20160816;
        b=eZNjIpXOh3IoaNw7RSnaewAmFJCRvv+Qr33OdKeQojxxp2uEXfHoUwXNSio/KPhcMx
         DYsT2EYSBeuhJrS0iNJfn+u4vO28uzaP4Dnecdxj9uWN5xzF5vk7BVaF7TdjWtVSGk7T
         0GdW+KaF4E7gD4hSofDiUq7r+cwcX3azA9sf9Tq4xXPiapCUpfUWaZNSbSpnUlLw5qYd
         nMEuZYlKDRwPHydfG9bt6ildOlmdPmoKz/RFC6G7UZpo1QTiCZgry03xfsFQmgH6etl3
         3OZFZD698BlZUZPBqaN2Cb3YV3k442W4sMaBgPISb+DRcf6Ed3QlxCjPC/MeVZjjMj15
         r9eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vVvCAj3rXahkiTyB3fdf4JdbPFhKMTMNyBg/koJzOHM=;
        b=aG5zTS2jrqPcB2zxQV/LndfiULf+pKin7ds7cB4d/8ky9a6BC7jDGQRMGUGTjGgArx
         F01u3G7JbOfQxWvjCuLCo8KUCCfVfCbcA1j8az2IfuYbgDUYItVGaBV4DDLVgD4osj9Q
         lvw5Okwg0wqLX8AgJ9ZpyBI4rglHqnPb4T8je91YsJoal/M0ssojocgfFZlxQwsrH2ZR
         8U65lP6tw+rBgFFIgH/79nFuuz1a/MhsUvaSblSPgDYUQfeW+FXvJqV3HAx6ApXmgmIj
         9MlErdpYaMZFVC5KRK/Flx8uoRdnv4faV7y9DH2qxkjKS4MfypktPWw+0PYuAl1jooI2
         ElBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A1OVxmoh;
       spf=pass (google.com: domain of 3oljzxgwkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oLjzXgwKAN0R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l137si1207303pfd.3.2020.06.24.13.33.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oljzxgwkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id f16so3546429ybp.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:37 -0700 (PDT)
X-Received: by 2002:a25:7450:: with SMTP id p77mr23380392ybc.155.1593030816256;
 Wed, 24 Jun 2020 13:33:36 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:59 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-22-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 21/22] x86, relocs: Ignore L4_PAGE_OFFSET relocations
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
 header.i=@google.com header.s=20161025 header.b=A1OVxmoh;       spf=pass
 (google.com: domain of 3oljzxgwkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oLjzXgwKAN0R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
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

L4_PAGE_OFFSET is a constant value, so don't warn about absolute
relocations.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/tools/relocs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae5..8f3bf34840ce 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -47,6 +47,7 @@ static const char * const sym_regex_kernel[S_NSYMTYPES] = {
 	[S_ABS] =
 	"^(xen_irq_disable_direct_reloc$|"
 	"xen_save_fl_direct_reloc$|"
+	"L4_PAGE_OFFSET|"
 	"VDSO|"
 	"__crc_)",
 
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-22-samitolvanen%40google.com.
