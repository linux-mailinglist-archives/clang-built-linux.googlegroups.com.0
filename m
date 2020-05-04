Return-Path: <clang-built-linux+bncBDN5FEVB5YIRBLPMYD2QKGQE7ISPFPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E77A1C3E9B
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 17:35:11 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id f18sf7781538uaa.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 08:35:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588606510; cv=pass;
        d=google.com; s=arc-20160816;
        b=E8IhqPCrI3OwbFM71s/loSulUSUbboDaHVCsCl1WdcPtii/NBE+s03AD3MwVOKAnec
         TQWtIghKvcZGkD2WW9HfUJ0PbGpI5HFGEfInI/8xUZmd677x0006F6MHt3UA8HrDfNsD
         9s/3HcEENWZfVSNY1FH9bFus+CRHapqKegBu+L41IDp6T8dFcmDKq1hmYg9/h+RAggDI
         ov4qnV44Dtk7D/K0WdaKcqBfdjHiqfGtgQqXjCBh2A9HAxiP4UqhzwuVnW7ongft81S7
         Lie6ShnkaG1Hvu1awt8UGX7E4TPdMS2AkP8lQUS0CVvdCqzFMCUHVRVolwm8U9YEeG7V
         B0kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=U/rOHj6CTYnjO4Wa0O9p/iG5Y4Ie9IWOWGSGrKDYA7c=;
        b=YgBG6Vb/NEMXdzduMr7+ka51bEl98iUBFnwk+UlEjJ/OVQM81g+RQjkhhlziozT+j6
         Fw2cgahpXftaAPBe7UmmLZ1RIJMR8ydXmV/r2TnG1rPyEZ9nSWtqo1w3rUthvgQQq1EB
         71T06SzHRjbTwCQgFT3GJAFhaBr/KNKbUciFGMQCMcmVD3qNI+bESgEcQfuTCkKDDX5P
         i0UHvHvOScpZGBpEswXwWPqkNZUbfI5ooPOrhPXTWKqL+HjeiY/PMQ1ve3+yVjXM1Qtr
         c+HyHbdNk3xJynmipgP/YEqKfAR3yCNFYQBAUCD6wrSsX/9RwXN86DbxqFyDAcqku/rY
         UZYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sean.j.christopherson@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U/rOHj6CTYnjO4Wa0O9p/iG5Y4Ie9IWOWGSGrKDYA7c=;
        b=RZ5j6pFtd23E6jR5Gr1II7UajenvdqYgYIPnmr/LvDWeVegCGpfqwABL3SeGQdt10X
         gg/z//O2alVbR1ysRU3pkQouTnIgmSG1x2HG6Eis97d4Lg1XjFrvLyf4VgPung1G2kW2
         dV5jokwGrSHAlj/4FwpHf8mLi6f48S4u2RpXQpVfoXaeBbD+iKbIpjEJ1RdLzreoSk2h
         UT7nx8NzqfmzilZx/gPDEzSBKZwSVX7MdRKcW00atwmOdEGpDynhNpmW6IPVGd6vURdy
         RBahGNW1s+LTjNNv2JmvoJs4IOTsojdN2nF1PoIrsLwqr5Ckk0aDBJ2syla7O7ZsfwHD
         PGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U/rOHj6CTYnjO4Wa0O9p/iG5Y4Ie9IWOWGSGrKDYA7c=;
        b=S5bWxBuLhjY9DFu286Hopvwlou8H9YIg8Od7iba9NAAQEjvq35DrIQL3l+Wnk5iXYD
         Yl6VUG4d8Nyh/dgPPcWxBSdJXYM7RKch8aq71OrXxKvL5vrYEQKI/zO2Ni928qOzo3LP
         9ty1nwbpfgx5tFOXcfkyh2A9KycJWrNEDIRAB/mV7jNmvEtiz0Gn9WtYuGb0zYjOQwlZ
         aThLl9ecu5dfyVPNV5CZ32SiDhxRYrHqHYtD5nWCTtOqUbjxOsjbFQdF5+uWaKPjReM0
         v+kPEPQuPgVeUDlripsvvr7zl39v7OC0sJOlaeqhExBbHTWLuHff5ylNqSd1tDPdSMsi
         F4ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubE7KOOLJC8a46Hf5Z8YRhlxhgG7G36tXAjFUOiVc0NI5ZxR/Ys
	J9mm/0NuO/Puz0II0NKg+fA=
X-Google-Smtp-Source: APiQypLxi/oKyew6rAMqCNLFm9H2QJ2t74vo5jYxJOhoKOZX5jSE30F57ULdzW3Bs+KoJFy5ZxUSiA==
X-Received: by 2002:a67:8bc3:: with SMTP id n186mr12951119vsd.67.1588606509884;
        Mon, 04 May 2020 08:35:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6715:: with SMTP id q21ls2089901uam.0.gmail; Mon, 04 May
 2020 08:35:09 -0700 (PDT)
X-Received: by 2002:ab0:4503:: with SMTP id r3mr12332423uar.101.1588606509434;
        Mon, 04 May 2020 08:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588606509; cv=none;
        d=google.com; s=arc-20160816;
        b=XgLmnu22nsC13WPoo5wh9M13gsHKzjnie3e7xLHq18XJglB3rXWShf5Xy/rGA6YpqN
         lHK2jo39p7zoiqQfvttnG2aMYZj47M3EjzA+SZMgk3HI4a2GyvCD92N/qEUvqwSam39h
         WUPEEffx61NEAuFnKfrxv4MbBhBJIxco0F+VX7zJN3rzIrMUHWGCpZju1O4BLAXt4C0x
         oMLqarbTDx9I6eoIBh7W51n04lb4guJ9b3cR2Xv1mTmh7cp8SHBHrSdVRCD6Ie6Cjg8Q
         ToveL0o0klGzdDq4u+D5Hrhix35ZpbbSpkbS5RxjFdDDcJppl7sntZD0r901fD/DYIGy
         T+sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:ironport-sdr:ironport-sdr;
        bh=fkuGKHfz5b2DZfFOlHZW7BpsmlEC9n9CxXYIHltfTPA=;
        b=wE4pbuAV5AjIkIsOwXdettn+U7+r4lsXwMZDkpcfvUtB3Un/Q08oCbxROHi2wD7hSA
         FrBf1LVKObYzUkN0usl1yfxiig8ctvDTVf7p6GuRvxIo6hPIgmKDLAbJV3e68GwpDw5V
         TS7FVeIIpW5mMcVOG7Z+Pl5CspEVUy4iC5EH7VFvsj1U/ffFz/yRh/+ITQUBW8uC0LJZ
         /Br+v40YXDg52C5vZhCtzNWAzQXQ9aAPiTEM5AVjAEKLGBZRCsQY5pGTGKUlkJe7VrWd
         RYCtCBNz/2s1U8umEyIxvTOcq/8iKKqNu0/CKvrDHUlLbk8k4Gh+ioxPYc2w6VxnoYom
         BkFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sean.j.christopherson@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id y77si776101vky.0.2020.05.04.08.35.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 08:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean.j.christopherson@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: EybOhMODlV6r7iPZfmynLSnP887tCOxSGZyEA/GVDoqx1/vIP4jKNHepZJG33Vm0h9l8C9OXsl
 cURDLeTBxR4g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2020 08:35:07 -0700
IronPort-SDR: wNG88MpeGTwh5P0sEpGjUgEXobg6Tuh4Dw7tF62ERYYy7EVobg60aKBCGDXVM1zVyjZPLLOarf
 zL/glzex/T+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; 
   d="scan'208";a="295533046"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
  by orsmga008.jf.intel.com with ESMTP; 04 May 2020 08:35:07 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: Sean Christopherson <sean.j.christopherson@intel.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] KVM: nVMX: Replace a BUG_ON(1) with BUG() to squash clang warning
Date: Mon,  4 May 2020 08:35:06 -0700
Message-Id: <20200504153506.28898-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Original-Sender: sean.j.christopherson@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sean.j.christopherson@intel.com designates
 134.134.136.31 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Use BUG() in the impossible-to-hit default case when switching on the
scope of INVEPT to squash a warning with clang 11 due to clang treating
the BUG_ON() as conditional.

  >> arch/x86/kvm/vmx/nested.c:5246:3: warning: variable 'roots_to_free'
     is used uninitialized whenever 'if' condition is false
     [-Wsometimes-uninitialized]
                   BUG_ON(1);

Reported-by: kbuild test robot <lkp@intel.com>
Fixes: ce8fe7b77bd8 ("KVM: nVMX: Free only the affected contexts when emulating INVEPT")
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/vmx/nested.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kvm/vmx/nested.c b/arch/x86/kvm/vmx/nested.c
index 2c36f3f53108..669445136144 100644
--- a/arch/x86/kvm/vmx/nested.c
+++ b/arch/x86/kvm/vmx/nested.c
@@ -5249,7 +5249,7 @@ static int handle_invept(struct kvm_vcpu *vcpu)
 		roots_to_free = KVM_MMU_ROOTS_ALL;
 		break;
 	default:
-		BUG_ON(1);
+		BUG();
 		break;
 	}
 
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504153506.28898-1-sean.j.christopherson%40intel.com.
