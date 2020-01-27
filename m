Return-Path: <clang-built-linux+bncBDZ3F5UE24FRBQU4XLYQKGQEX6DTDBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 558DA149F26
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 08:16:19 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id e22sf5738786otj.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Jan 2020 23:16:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580109378; cv=pass;
        d=google.com; s=arc-20160816;
        b=niITsxyn8BBq9Zb0dolegQeId5mtAMeQGjeSg4Dy9xcHOgwRaXWEECtdzdr6z3qncI
         Lb6mATzHBf2gqjdTS5HPOwIuiKDBS4LzQzE5iQNAhkxTBg+RKs/uFknBUqXCZpR9Xr4h
         FO39b4/MaPUgUWoA2w6Yojy/Y4TXxg341CKeJq1bAqZy1N0VGnarUsTMMk1PDYQ//8KY
         7N6ICKg+3I1ZHMQZnPl3uK4ahC6bd5aYDgLAShPKhyLNN4WjnYD8VhaJJ9ev5NV5/NNp
         UyUammP3QJEX0oSvRFmXp8/VzfJLRCHPjW7Ljn9GXUGQ2RRYBS1ytuP5wRKhsFEBN/Zw
         L3WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=dLhKTjll6Q7D3s+YNfyVtXvRDtltZ3W6q9s9e3wi6PA=;
        b=YmV//+GwrUJ6ANP24KJcu9JMnF596QzTXX4S5h6TQSm1VozPzNfbHFKAFYLog5KlqP
         Mao+5+dUflfIgWqBT/TB7MX7I49hUrCO3Hql+VoTDSMKrxP2Np9EObQrY/5IcnSutCOp
         EQCXl9stuRWZb1t7o6zYWntgpxoVNAajn+PyZMPejX5PtaS/VM39wzBcMvsfth05ebc3
         anQe4TnsLNO90o4nVJ7s2m8E5OrdmVGZNRQYgdMBUibRgnMb5oLswfyykIYIrjulXCG7
         u+x+rze6HkkpWiELQ5xQFEG25IV5fuCi2HYIO/p680uoif64CuLgdqYya66lJbnZwE38
         jk0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tsfuDBGT;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dLhKTjll6Q7D3s+YNfyVtXvRDtltZ3W6q9s9e3wi6PA=;
        b=X6Li9WKbLXpIKtZRQqQ6siNtES6Yuo2EZmiQ4Qz5mn9llkPSnfiU+RyZ7d2pSpimPl
         mtrShUQyP1u5XltMaFwuUW3wwnYIXxUUW3zkAjoewDtqrdc4NBAyu9CZ6ECNcd8D4Y4e
         Flk1OmQWQN/uKH1XhQtUrNbOkNhNbpLkbCUIGO2umj7Wq0b3UOa3gufN34R4o5EsVmvm
         mO/31X6Pe9Ci0yIaheqYRpiQ6sFe1bBaR/VovFVVgbLTG2phq+53nEi+dE4qImeM3J4R
         xCG4Sqew0hZZLTWf932KlwkYXrLWHOcJjqmTd2SL0Xpfv9xN7T/w/tNi5JkmRPu40EXp
         pp3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dLhKTjll6Q7D3s+YNfyVtXvRDtltZ3W6q9s9e3wi6PA=;
        b=m2p3E0OOIWua+MWklv1U9sKNDaXCEl5ScxbTYMdpRqXhb5VrqLuXqPFepHHZhy501o
         Sp9BV3zKwLDki1XoniYPWm7Ih/G6YwTtlwtjDz7noyT19sXct0AWzOpEu9gCV47vr9Vg
         vseV7akayAVKT3xMr+K//FLN0Ujj8mLpUra+JB0Gi6EMzr/KWdUCPAlBksGTkJdPalpy
         y3Sr6k9WJQjupBycFB2v/peyeXmCx9OwUzA2kIB0NUa4oqj3QEgZ5rC8VHk1McfI6KjT
         LjO+soquMT70GkJAxWP5zY0hDcEJaK+XQG3BMl8zn0RNslrSZIdKo2C6lUBgPjZ2hRBY
         th5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dLhKTjll6Q7D3s+YNfyVtXvRDtltZ3W6q9s9e3wi6PA=;
        b=M1VXNkRzVqt56h351k00gedGR364wJrpmoEABN+NW8hs9YjD7XTKohKKQPaQT/CpVK
         Ja2NbADLxOH2m/7bg14cQARuSGjzO4xeL4wm6GekaAcsden07rwtBfVE5wgownkMctPT
         qd+TWShk7jlgWn14oIFMu/9T1ZgCk1+aj14SGr8Jh7q062UMRZM2I2JE5yIJQHKtr0MY
         Fg3WiV33PfmBJKLBK+oKpkVR7aymJ54o14nWfU4Yj7QrhfH5LBLi4IKpF+73GWPD8wIU
         iAEyvvm5bnTOi50wVcMpRYhv7O7Fw72rUcmofuFHPUsNI3jJDStUbAet9lRufewWzFh2
         uVFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkevkT3W6SDeLh0Ny47SKi0VGQJTvOkNpv+uq3seHjJDiLFm+/
	tNunzWZkyJQgAl/Q7OO0PZI=
X-Google-Smtp-Source: APXvYqxneky4E7bVcr1mP2sT9/Qj1fSi63H+i/BTMKlVXYzRhF9qTzW5TY6PCMd39Kib0NDb9I29OQ==
X-Received: by 2002:aca:cd92:: with SMTP id d140mr6588139oig.68.1580109378310;
        Sun, 26 Jan 2020 23:16:18 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls1889086otd.11.gmail; Sun, 26
 Jan 2020 23:16:17 -0800 (PST)
X-Received: by 2002:a9d:6d10:: with SMTP id o16mr11750315otp.28.1580109377711;
        Sun, 26 Jan 2020 23:16:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580109377; cv=none;
        d=google.com; s=arc-20160816;
        b=FHLFKn56dnVaGYBWoPAdVSBBp98x2wa++21UgdOLXDxMzIZ+hORIzswI1laRh+PWZt
         bUXvWQPp7CTcwf5kXcqMPkZNYgA//f3bYf8ypvSKsgartvGFFxHxsw1ogt68h48Gx61X
         LpK7mUtzIy49YblUGhP1GOp+yyWxVs5DhwMWbSPMNTIVt7YIagQQtM1CucGh/ghxYi3H
         QkW1fG7lr9ZxM9bhjWqc5gttJs2dR2WHLZ9qRP2PGxVo0npzsg+3rs3lNGSrqV5RvQR/
         2xdUMM983/NSQAphmmBrSfM5lQSKBx56ml4VlswtRQMkqnMme34QiRRcv8USxGMGWPg5
         X7tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZTshCe94WzSsfXve6ziu+qTyps0fLQU+BDDkCbT6Bso=;
        b=pOvpeIXEEJQLIYcf7ZkRYEqb4cjL8DiVuR2932cSH032MAWTVLNkQeuVmEx909TF71
         sElxG7qJIJAyoGiGKoNeUYDC/2rhiIni5ketHPTJvQ8kRfMbu+Yrgz63oMcObE2S8XB4
         QRzCjpihD4DbuHLqYIYVfFHNSQ9t8YhViq01276fYjavXLItoGYIbn1TBZg+6r8Gr/YE
         Hiedirv+8cC16+iCrGE7UTSh3iMExEUDEO97WYZnCV+FYX1bwcdjCb4k1uPFiXK82VpA
         bSXKnRbY+T/vTHnnlcINp6MNdmfN1iNwVjz3FfNzykNO4w67MKDwwJDWb8z040m6wbI3
         LCcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tsfuDBGT;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id d16si391104oij.1.2020.01.26.23.16.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2020 23:16:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id i6so3556899otr.7
        for <clang-built-linux@googlegroups.com>; Sun, 26 Jan 2020 23:16:17 -0800 (PST)
X-Received: by 2002:a9d:729c:: with SMTP id t28mr8584637otj.66.1580109377176;
        Sun, 26 Jan 2020 23:16:17 -0800 (PST)
Received: from nick-Blade-Stealth.attlocal.net (23-121-157-107.lightspeed.sntcca.sbcglobal.net. [23.121.157.107])
        by smtp.googlemail.com with ESMTPSA id n25sm4500248oic.6.2020.01.26.23.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2020 23:16:16 -0800 (PST)
From: Nick Desaulniers <nick.desaulniers@gmail.com>
To: pbonzini@redhat.com,
	tglx@linutronix.de,
	mingo@redhat.com,
	bp@alien8.de
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>,
	Sean Christopherson <sean.j.christopherson@intel.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	kvm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] dynamically allocate struct cpumask
Date: Sun, 26 Jan 2020 23:16:02 -0800
Message-Id: <20200127071602.11460-1-nick.desaulniers@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: Nick.Desaulniers@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tsfuDBGT;       spf=pass
 (google.com: domain of nick.desaulniers@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This helps avoid avoid a potentially large stack allocation.

When building with:
$ make CC=clang arch/x86/ CFLAGS=-Wframe-larger-than=1000
The following warning is observed:
arch/x86/kernel/kvm.c:494:13: warning: stack frame size of 1064 bytes in
function 'kvm_send_ipi_mask_allbutself' [-Wframe-larger-than=]
static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int
vector)
            ^
Debugging with:
https://github.com/ClangBuiltLinux/frame-larger-than
via:
$ python3 frame_larger_than.py arch/x86/kernel/kvm.o \
  kvm_send_ipi_mask_allbutself
points to the stack allocated `struct cpumask newmask` in
`kvm_send_ipi_mask_allbutself`. The size of a `struct cpumask` is
potentially large, as it's CONFIG_NR_CPUS divided by BITS_PER_LONG for
the target architecture. CONFIG_NR_CPUS for X86_64 can be as high as
8192, making a single instance of a `struct cpumask` 1024 B.

Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
---
 arch/x86/kernel/kvm.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
index 32ef1ee733b7..d41c0a0d62a2 100644
--- a/arch/x86/kernel/kvm.c
+++ b/arch/x86/kernel/kvm.c
@@ -494,13 +494,15 @@ static void kvm_send_ipi_mask(const struct cpumask *mask, int vector)
 static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int vector)
 {
 	unsigned int this_cpu = smp_processor_id();
-	struct cpumask new_mask;
+	struct cpumask *new_mask;
 	const struct cpumask *local_mask;
 
-	cpumask_copy(&new_mask, mask);
-	cpumask_clear_cpu(this_cpu, &new_mask);
-	local_mask = &new_mask;
+	new_mask = kmalloc(sizeof(*new_mask), GFP_KERNEL);
+	cpumask_copy(new_mask, mask);
+	cpumask_clear_cpu(this_cpu, new_mask);
+	local_mask = new_mask;
 	__send_ipi_mask(local_mask, vector);
+	kfree(new_mask);
 }
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200127071602.11460-1-nick.desaulniers%40gmail.com.
