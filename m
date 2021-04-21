Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBKPW7WBQMGQECG6QTSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF3136634B
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 03:08:58 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id q5-20020a05620a0c85b02902e004d74d8csf8459359qki.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 18:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618967338; cv=pass;
        d=google.com; s=arc-20160816;
        b=gB4ERnRxbEHcmKrA787Mhmzqw2o1rgcaI7Fpg7kRgzxMTtj1rcLibzoVuQT8bTV6ki
         tls/rQJozwKvUB3Q2GN7fFyHtI5f7fL6T9+VPsU3RbnfYQdhBfAjYWN9pLL9EoVkiY/X
         rGHBGYic6sbebyQSlm/opmG57hUIDdIHk89jB0JODbzYptJCZ01P4TPZPH3qNUCa4A20
         iAzBN4EOD3ta0x3QNmSoHb/AhQNEABKJywFMa783GvRVQ4sYWSgyL4ypOWXuziahacl1
         0TnDzmwc239JH2XS9KqxgbTuanB0OqVeWGGWoZOVILBWFmEuv/qI94/RmSqDZob/id+/
         0/sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:from:subject:mime-version
         :message-id:date:reply-to:dkim-signature;
        bh=zag3jqbHD4c1sV7wUIFspRFVIz+3Scg0sWhCuK5WXCA=;
        b=o4Xyjrrw+ehT50G+Q4j3LUwAte7+/Dmmc+dQtV2VA5Dp3iIRISgY8cK4hAmpaxQvdy
         3Har5rKZTTUs/eI/lrdFq6d2e7yHEBvG/j67lJLCqxKxtpt4+Lbf1X3uH+x/1j0G54Tc
         ObhwxF1Dxtwjt9dRKs6kzX0pkY5JHW8WQ+CchKUiTCPciWi1C8PnpXRPWfJbiURZBF/V
         eIES1PNLxVzxcbaUKG59va2HOdCJ0dl1siDSdSq1/21PgA/cCvUDVIHlsH/kRjPl+s5g
         QHRHND0WrIqa20195S+xyVpmqsutVVhxmVrkzg/bCBifyKnawNP531FXtXsB6k7y35n3
         2smw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZbDT9mkv;
       spf=pass (google.com: domain of 3kxt_yaykesgwierngksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3KXt_YAYKESgWIERNGKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=reply-to:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zag3jqbHD4c1sV7wUIFspRFVIz+3Scg0sWhCuK5WXCA=;
        b=iPjfJA101joVPJLMv5jFa0hTLA61pWHYiApTDwOVMQWxBRceLAVy85p24Oe/88/1Ne
         K09DR6ProhbIF9iajHEBRmuy8295p9ptDRqpreWe+RCNk+hy5Ca/YeFmkVW7ueUXzrIb
         Wj1ODeVsMpORK2MArTZ8P0pq1ZVLF2KREa5lQhl5DFH84kmZheWuN/QMi7okgBAO6RYY
         aToL89FB+gMffUg/j+TODyRRwEh/SBon8cse6Wo6foMUADU52ezLDB75MQWSQqAgIxcw
         0XtU5XptKmPYzDSjkGggnblzm6e0H47C2ek2gmKf4Q2FMWzPr6b3/50oGOu1ccr4MuPQ
         Cakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:date:message-id:mime-version:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zag3jqbHD4c1sV7wUIFspRFVIz+3Scg0sWhCuK5WXCA=;
        b=inaiprjunGpMkozt93anDo1LQopgZsRQMvgDPVY88B8282CihYHL30e1Ao7Y+gyGMl
         QhqRj2DCfOh7Dhsesr7UwiX1Wds7dKXC+e1Pu9NHyxMoHQ9aO6QhcCyqJ+Nj1wAw2Buq
         II03jbGwQfo+kXXwetsGzD7XXckwWqE81cGEYesllMHWWWOVqfd8sXvLtwnAghNAIpYd
         kYdDEJ3g30h/ITeNrXir+GGCDg2ouI6FzJEuOaghV4lw9jMXRRyAjfGy7EyegzFf3cUh
         FzZVVQM3vu+G+yCybvOGOE5vYL80N9nhJQH/9Kq1PrkFyXcNlUctvI81ues0lU0Lp9fu
         i52A==
X-Gm-Message-State: AOAM5334vWKf5w86QVH7WZL1PUDP5oWrsKmGGlG3C8yBeCbHt802aXCu
	G8ioLvTKlfPGZjO3tNInxc8=
X-Google-Smtp-Source: ABdhPJxkW3lXgl4ghlJsMzRQwxam0wsXF56+5COb8EeQ29c5CwIWf0EcfUGuBuUZg/n/FRMvROMbbA==
X-Received: by 2002:ac8:148f:: with SMTP id l15mr19478545qtj.130.1618967338005;
        Tue, 20 Apr 2021 18:08:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6d03:: with SMTP id o3ls257208qtt.0.gmail; Tue, 20 Apr
 2021 18:08:57 -0700 (PDT)
X-Received: by 2002:a05:622a:216:: with SMTP id b22mr19540577qtx.263.1618967337591;
        Tue, 20 Apr 2021 18:08:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618967337; cv=none;
        d=google.com; s=arc-20160816;
        b=vmFTpwbURLsYQtX6Ct/scLswZpycBZEKLRF/cY5qhFcHqej/crfzqN1MV/sWzuo09w
         htQK627h4FLsK6dO8SjSsGCQFQ9ioZL/iShuESQsGqfjrLjXh0OOJ8OZxhwc66knGq8g
         yhaTNiaOL/b0RcwKhz7qEOxhwFIH8AlzcKyqALUt8yauxcpBXj9z0ltW809BVkFJI0mz
         yXGvYajkyUXmAk8eO2GbgTXSSuLY17ZShxFOz8FKwQ7zAiaGqSElOBeEmMvsfUfgXUGr
         dHGFspI7sPFGsp5Ot9jRLwqG94aGW6hYwjsmLAaEo4rd/l5VLpI+6PD73JYkfdzKxJs6
         BSsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:reply-to
         :dkim-signature;
        bh=yreWuj6mbfdz2hyYXXMbP0/DSYeQPnhKZL0KcCdj5RA=;
        b=dxoNgxxHmTGtTO6zxUC2Upd3J36HwXyZv8J5ua/QiBqibhrHkPSOHwtW38CSQhqi1M
         ojTI0eOsVvXpnDC0jnc4oaW69ArxtWjZBZeBSl06jD4RGUAkFD9iwxGheqShE8CNmKgD
         DQ+HuIt5su2RIkys36hLshvF/2OgN7fAC+xwr0CH7hugkgUnLcd/dtZKh6kCDW1vJr1h
         JZ/W/5gAF+WUHov6QyISqeLlauWvtSFjPDvQ3WsjsUiMaFp78HqBiVIcUr4O0XH/VEfU
         e+ZFSz5Z3sNC8d5X4dRojzPwfrrqfEFCrSxjEagJ4r/pDwKkxOFjbLOXvYj44ah0omn1
         VWuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZbDT9mkv;
       spf=pass (google.com: domain of 3kxt_yaykesgwierngksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3KXt_YAYKESgWIERNGKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id c72si114804qkg.6.2021.04.20.18.08.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 18:08:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kxt_yaykesgwierngksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n11-20020a25808b0000b02904d9818b80e8so13798138ybk.14
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 18:08:57 -0700 (PDT)
X-Received: from seanjc798194.pdx.corp.google.com ([2620:15c:f:10:a116:ecd1:5e88:1d40])
 (user=seanjc job=sendgmr) by 2002:a25:d051:: with SMTP id h78mr28826991ybg.497.1618967337262;
 Tue, 20 Apr 2021 18:08:57 -0700 (PDT)
Reply-To: Sean Christopherson <seanjc@google.com>
Date: Tue, 20 Apr 2021 18:08:50 -0700
Message-Id: <20210421010850.3009718-1-seanjc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH] KVM: x86: Fix implicit enum conversion goof in scattered
 reverse CPUID code
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, Kai Huang <kai.huang@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZbDT9mkv;       spf=pass
 (google.com: domain of 3kxt_yaykesgwierngksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--seanjc.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3KXt_YAYKESgWIERNGKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
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

Take "enum kvm_only_cpuid_leafs" in scattered specific CPUID helpers
(which is obvious in hindsight), and use "unsigned int" for leafs that
can be the kernel's standard "enum cpuid_leaf" or the aforementioned
KVM-only variant.  Loss of the enum params is a bit disapponting, but
gcc obviously isn't providing any extra sanity checks, and the various
BUILD_BUG_ON() assertions ensure the input is in range.

This fixes implicit enum conversions that are detected by clang-11.

Fixes: 4e66c0cb79b7 ("KVM: x86: Add support for reverse CPUID lookup of scattered features")
Cc: Kai Huang <kai.huang@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---

Hopefully it's not too late to squash this...

 arch/x86/kvm/cpuid.c | 5 +++--
 arch/x86/kvm/cpuid.h | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kvm/cpuid.c b/arch/x86/kvm/cpuid.c
index 96e41e1a1bde..e9d644147bf5 100644
--- a/arch/x86/kvm/cpuid.c
+++ b/arch/x86/kvm/cpuid.c
@@ -365,7 +365,7 @@ int kvm_vcpu_ioctl_get_cpuid2(struct kvm_vcpu *vcpu,
 }
 
 /* Mask kvm_cpu_caps for @leaf with the raw CPUID capabilities of this CPU. */
-static __always_inline void __kvm_cpu_cap_mask(enum cpuid_leafs leaf)
+static __always_inline void __kvm_cpu_cap_mask(unsigned int leaf)
 {
 	const struct cpuid_reg cpuid = x86_feature_cpuid(leaf * 32);
 	struct kvm_cpuid_entry2 entry;
@@ -378,7 +378,8 @@ static __always_inline void __kvm_cpu_cap_mask(enum cpuid_leafs leaf)
 	kvm_cpu_caps[leaf] &= *__cpuid_entry_get_reg(&entry, cpuid.reg);
 }
 
-static __always_inline void kvm_cpu_cap_init_scattered(enum cpuid_leafs leaf, u32 mask)
+static __always_inline
+void kvm_cpu_cap_init_scattered(enum kvm_only_cpuid_leafs leaf, u32 mask)
 {
 	/* Use kvm_cpu_cap_mask for non-scattered leafs. */
 	BUILD_BUG_ON(leaf < NCAPINTS);
diff --git a/arch/x86/kvm/cpuid.h b/arch/x86/kvm/cpuid.h
index eeb4a3020e1b..7bb4504a2944 100644
--- a/arch/x86/kvm/cpuid.h
+++ b/arch/x86/kvm/cpuid.h
@@ -236,7 +236,7 @@ static __always_inline void cpuid_entry_change(struct kvm_cpuid_entry2 *entry,
 }
 
 static __always_inline void cpuid_entry_override(struct kvm_cpuid_entry2 *entry,
-						 enum cpuid_leafs leaf)
+						 unsigned int leaf)
 {
 	u32 *reg = cpuid_entry_get_reg(entry, leaf * 32);
 
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210421010850.3009718-1-seanjc%40google.com.
