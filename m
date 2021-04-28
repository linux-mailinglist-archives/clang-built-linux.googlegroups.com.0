Return-Path: <clang-built-linux+bncBCI27E5CQECRBH7TU2CAMGQEIRJVVHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 498DF36DF9B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:38:08 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id x5-20020ac86b450000b02901bad76b5f30sf1503179qts.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:38:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619638687; cv=pass;
        d=google.com; s=arc-20160816;
        b=VARqUvH4fscN+RXFqBnkPgUTva1mEkR5Iin59k/uV4AndKBpClgIGVl0NgQ9B6lgN8
         CZ7DZMyP+iuliWMFACs7aZ++MntwpUaLHu62ukC14FQ11/MUXUiI4/SLiSE8kZGAj6F4
         i818t9NsHCdDR/Tk7B/nq94VrhoiP3LTJ1sg29z6vs865BDfX7LRTm3JSufMSuC6t8tP
         iTI55BZGaBLQU+HS0mMRrxHMi0OP2Nesg7tIAY6xmtchY++/HcxgFN27C/9xjlkJNuqF
         QSAIKXZv3rryMWqpbwJU46v8pvt38EhZEvVGzaKGTUHFJ22yeJFBt+p1TYWYKt8Q8rws
         tcRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iuqldKGpAZbRLG5uCoX9IKCqt8YPy7kJC3WutwSi95A=;
        b=t9grVblpP21WhFbdCiViX9ZIZ7xcxL/YkdEgpoqF9Jg+HWaMOsGuMJoh6OLGt4s42T
         OFfNQnDtz50nXBEoU0p1CoGsIaD/VQ3zk8EtKNc/nYpHl29RJ+zLKz7eisR/5OMeMN/J
         ikxsqwsmZONTp0FWTFX98Epz5ofYutieWZIqxHuNu4cat0LqYITrZzPCnIwrSjCCeszr
         S4DVje3RTlKioWSKAHyuqg7yrv2IWEnj0RwFvahUUyZpSbxQUQGwezzFGN7IamoMNXBE
         qxhaqar39fFM2apMFDxJrPQ1/JqtJ97LkLBIEK49irCROslO4NiS9qeJ06Mf1CoDv1Oe
         /Wiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ay+VJZ4a;
       spf=pass (google.com: domain of 3nrmjyagkeumwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3nrmJYAgKEUMwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iuqldKGpAZbRLG5uCoX9IKCqt8YPy7kJC3WutwSi95A=;
        b=gulaEoR1LE5JooKYWiF+CeGdaA/8tGqSxEV3btiKeWGQgG7RMWGF2HXU1QMwLGAXjl
         CvFXUyLd6yG+dYxP924ltwpq0q2/4sb2CxvcbN/0rvbwleddfH2E7yloa6he6XDw9vTM
         gT7ndYNTfstD2zdsKVAydbUK6XlOkDPRGIMP+oPg4SB9LzziTuBaFxcLCXmoIJ2Yspc+
         JwllZozrmBqdUlnMnwMwjc89JSNHDiW3Ut7AkKvv+RD9flqbvIFzCTKQNvPhikGVjgQd
         lKsyyG4eWtsTExKKflLYYl50NGzOma/to/tv91d4quhRVAJVLSm0qf8y/TsxTKve0pwT
         prKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iuqldKGpAZbRLG5uCoX9IKCqt8YPy7kJC3WutwSi95A=;
        b=CeW8bzwN4TbTCYATLOELXqQXJTHF1fwas4rbyFeEtSsfsglfhBSUMFGEzvQvVhTkvU
         YaA2hYUaEOqshTQzc+EbxRz/6NTW1msGm+P9JfEdUftVtR6gE2unJXt+NNm0PKZ1ujvF
         hHfd+F4wUhnbz+KduKZQJ4ntUq4h9T8g3SOmBxrBLhuO+gNlfHs/ph5pMtlwinMlsxwd
         eRIcJybBkH4rp1xEqlXh7aYFvJPJRLCNzXxK5bCJeAyxpdpbcKzJh1Wp8ROCqVQmiYlU
         82GrLDkx+0UDnXFIbMsQljuGPF3+adrdzBhIeWOtx9w2Lcywq57YyKi6qLqpwOKmNWu8
         U3Pg==
X-Gm-Message-State: AOAM531QzSBMuyVKrxczkZNC+fkmWIW1Pi0n94W7DgNzIJ1LpdmehOT3
	pU74AYcXB3IdmiDH/XCMC94=
X-Google-Smtp-Source: ABdhPJwGxvkxuTjJ1LvSBOU7YqsGoPbx5mrqYIHz133Xj4IY+FFbaVtqLGnXIzVGfoaIQnHwbdEw3w==
X-Received: by 2002:a37:64d:: with SMTP id 74mr30280713qkg.6.1619638687255;
        Wed, 28 Apr 2021 12:38:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c444:: with SMTP id h4ls400882qkm.4.gmail; Wed, 28 Apr
 2021 12:38:06 -0700 (PDT)
X-Received: by 2002:a37:a1d5:: with SMTP id k204mr31010295qke.164.1619638686852;
        Wed, 28 Apr 2021 12:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619638686; cv=none;
        d=google.com; s=arc-20160816;
        b=ITeezDzMA414Svbkjc9vf3ENPS32SBI4HFonJ0ApPNlH8Xp98TFZy9J+9Vtuoe+0Ek
         pdE0NXgd+3HIKsQJQ9nqg+6GDXrv/s4M2OSvVyVVA2PflmB61OPSZHKUBZn75cm55Fyt
         5A0xf50+IwQZz9v9Dkp8U4eZ0dJOGE01TWLUZZ3dBNQK28whMkO5C1+HpvXDk8s8AyFT
         QOd/MfrY0QeMol3/87elonEOf3dugJpajNm4X/XTiYmRubGuha/NGiMB+z+G/y4YUgBB
         hPzMOk3u8asuBN2Fi9lZ2q3pi/ucu3FanjVJ6NW/GEyyHM6zY/7zevBtuq+Ku8sgLDM6
         +8/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=y5TtNvQVcJDv9Z7T1noOFyA3ZEWB7AcnNOctxeDgCSw=;
        b=gbhp9Xe6pqMobzg6zJ1n2moN0t00tk0k1ABxPFLUVlImEVvXzT8Jj3gmwQxM9X5o4U
         Gzz7oim00PXc0u9ddm7rAd30f2DI4fdGNq87CHx+EDnTyVRYTnalXdvL/lZ17vHsfJu8
         3wej6MlISkoy0X9XBo1TshD4p81YQs4Ye1FOLF35y03Hn8jCU+gOrY6mlYnNgx9SLw5k
         Xf7KEqkvBtKjQi23EpWuaUmDPoGYbW94Mli9Tu6dd+u3XYYi52K7Xl6YevuP6jyIv24Q
         xK4Upka4Azgt3FVDMZLYbblxZjXUpvGRHmAHRF+1t2Nv7J4iO8gcq3GlEH1j4w+bniUj
         DVYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ay+VJZ4a;
       spf=pass (google.com: domain of 3nrmjyagkeumwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3nrmJYAgKEUMwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id k1si132650qtg.2.2021.04.28.12.38.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:38:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nrmjyagkeumwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id a15-20020a634d0f0000b0290209ec44cf15so13587295pgb.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:38:06 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a17:90a:a60b:: with SMTP id
 c11mr34343701pjq.125.1619638686001; Wed, 28 Apr 2021 12:38:06 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:37:52 -0700
In-Reply-To: <20210428193756.2110517-1-ricarkol@google.com>
Message-Id: <20210428193756.2110517-3-ricarkol@google.com>
Mime-Version: 1.0
References: <20210428193756.2110517-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH v2 2/6] tools headers x86: Update bitsperlong.h in tools
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Ricardo Koller <ricarkol@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ay+VJZ4a;       spf=pass
 (google.com: domain of 3nrmjyagkeumwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3nrmJYAgKEUMwnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

Update uapi/asm-generic/bitsperlong.h with the latest version in the
kernel. Here is how KVM selftests is currently including it:

  tools/testing/selftests/kvm/lib/elf.c:#include <linux/elf.h>
  . ../../../../usr/include/linux/elf.h
  .. ../../../../tools/include/linux/types.h
  ... ../../../../usr/include/asm/types.h
  .... ../../../../usr/include/asm-generic/types.h
  ..... ../../../../usr/include/asm-generic/int-ll64.h
  ...... ../../../../usr/include/asm/bitsperlong.h
  ....... ../../../../tools/include/asm-generic/bitsperlong.h
  ........ ../../../../tools/include/uapi/asm-generic/bitsperlong.h

Signed-off-by: Ricardo Koller <ricarkol@google.com>
---
 tools/include/uapi/asm-generic/bitsperlong.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/include/uapi/asm-generic/bitsperlong.h b/tools/include/uapi/asm-generic/bitsperlong.h
index 23e6c416b85f..693d9a40eb7b 100644
--- a/tools/include/uapi/asm-generic/bitsperlong.h
+++ b/tools/include/uapi/asm-generic/bitsperlong.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
 #ifndef _UAPI__ASM_GENERIC_BITS_PER_LONG
 #define _UAPI__ASM_GENERIC_BITS_PER_LONG
 
-- 
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428193756.2110517-3-ricarkol%40google.com.
