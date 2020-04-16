Return-Path: <clang-built-linux+bncBC2ORX645YPRBIEI4L2AKGQEVP4ITCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 901B61ACCFF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:21 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id o5sf3473886pfp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053600; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9rxLO7dNB9ynMySfAzu/U5a8hoxAdAKxv/FXKC+T9bURnB40M0H27bMK7OW+yVulk
         JItIGh+Q0d5KpEbX1jp5KEELFfn75cqrQUcQeIG6k1Gx7Vy/mCvzhavQoS8xjfdYyiHV
         +oS3bvuOZt3PQ0H3ligf+OLaPCLquliIADElQRSMbVpd5QZkgOcloypbQ8u45kkM06NE
         1CKpV+4YP0TRZiTPsETFQlDza7czSbWSvWv7P6GlH0Xi6DVm+ewH9pcIm8BoP08dRRtA
         P/yh58tDUTOtY5pB0wjwmyn2+IklTTDWjPB42XgGD9Q9stJoU6Rvbq9L9vs0vox0Qa0g
         lUwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NijTcm7PCbnevKn7DDQ0n00s4I5MlbAeuhMDMhnDOvM=;
        b=kCpsa9l7XdscA9AT5sFCY2oqhPnFfbJndG17cslqnlewQatSg93VxfyrHR+/7AtZMV
         0Lpv5tTYOgwPErYlvNj3m2wLD3Hd4cDNH9TvZq+bKrBU8nh5JOBWv5tCFQQ140d3wY5J
         9rXdTRfmOZswwrjYMjcc6KH30v9vxji7bfI9MkQyvUuo6TmvrXn6FPfqDqK7kA4fEkGa
         VtukmuKux4+j43fM7lYsJqvn5G2N83JKZZPaMHEWcNoEsrcC2s4NBsfcpvhGoWR3b5aw
         XvDyr5fPdi2xZ30ipfZKc8paqmJ1IMfDH1HwHoHJDGxkePuVepoHLfCMKXr+r1dIYuXD
         o94g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fKyFfLXO;
       spf=pass (google.com: domain of 3hosyxgwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3HoSYXgwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NijTcm7PCbnevKn7DDQ0n00s4I5MlbAeuhMDMhnDOvM=;
        b=B2RxtqKtIet/18iC7nxND8u33fpWVwWAWcthCb/v2kZ/3vYlWCNHcmQK8OAhEDfJRH
         MwkG9PMFDiuk4M0Tp5XWJR7KSKBqHUi38PW8FYOIWxvvzU6DKBFGS3j5WVKzADz9Fhri
         yPn3MMz8Y/4NElWA/lm83fs3u6uQruC4btpOdnmLEDn4OfS+pmPPfvu/+YzB0QonA51C
         V6Mhs1ZZwfF/gasKjru/5DugtK9f7yNsy/ClWIkNMOYaHUSMlmzfraZSh7O0Pzm6rPtB
         zlrCjoOTAKpcXk0LBu/jKnzjj+zGJXWIqnDWGuSkXpbjl6FC1k0++tsgXop4JrHLOrM3
         VCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NijTcm7PCbnevKn7DDQ0n00s4I5MlbAeuhMDMhnDOvM=;
        b=JWKbio0M+fbivefCAi2/zzErMgOH+4TDKGvANG/J6fjkoR7eVlQmnm+9jScZFpqgUg
         dWPfOs8K7sMtA2GFXjvdndOoyzVDzWzdvlBqh7Svk1kBukyK9IhccifDcJ40dSVomLpN
         w9kZsdsxTjqdNaw+4c4DTuiC/JH7FHC2j/inP8I82CWxlJXawENCUz9ifkEEzMEjTlqW
         DcDHPqAn7Pe6nSvyyUyR912E8GQBHQgCyEhELrjET/ZkkinWCyy+gXYANu2BHZT4r8A7
         2TtXrxlUCGlfGzJJjWtgQcr9tqMzTFtodPpnvQJZ5SLu5YIinCk3vN/zhVDHTZwbyQ2O
         edOQ==
X-Gm-Message-State: AGi0Pub8Ohnnl4/mJMlcDtsmqSwPgSpRiGUxBwzpS+oHV02ZjMVMzlup
	tnRSoJEeAkDHbs3asORb/XE=
X-Google-Smtp-Source: APiQypIuds66wePJ5vYDQikjn6mjokhWwQZCbtV1J/D8eJsTnqXoQC/ias4VR4JKGdsobrw558Cvhw==
X-Received: by 2002:a17:90a:f407:: with SMTP id ch7mr6147471pjb.72.1587053600171;
        Thu, 16 Apr 2020 09:13:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:224f:: with SMTP id c73ls3341456pje.3.canary-gmail;
 Thu, 16 Apr 2020 09:13:19 -0700 (PDT)
X-Received: by 2002:a17:90a:3a81:: with SMTP id b1mr5925649pjc.184.1587053599658;
        Thu, 16 Apr 2020 09:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053599; cv=none;
        d=google.com; s=arc-20160816;
        b=vVEqRnNCKefKOgFh+17fWaT/dfarybSHfx5R+H5WtMlDEG+SusbAdespPJo/wLEdi1
         R0xa2y/pZIn+L3pbWPz1rT29fJQ9B+RzlUXCiz6EKOC2YgCTge/ivxYqZyJeFKTnt5ZD
         GWHLb5Rk+MoySDE+HurPC4pqcV6JgLJ/tXbrQVXGFRtklSxo45LTDH7WiENkoAlLPq1X
         aILRMjMf+HituIczi+y8iK+8gsmpqEhsW+SZ/oNq0hzxcKJNAaWsc//mvOYFaXLwdf/q
         yHVthgxrK29Ls1dnefJnWhjyqk1YsoVUq1LDDxNu8uM3gydohiwcJ3al+IDOcE4zUrWk
         TMJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0RQ1N542RT3QYdW6h+S0B1gn+F6MhyfTNdXGmDt/FSM=;
        b=rGQUQEE5bmPaDGh06wLr26SEoTF/DOl/xIhZNr52VMThV2GKQn1SLnEMjMjt3rxlWa
         m6Ty3knb9Cp1XS/JHG4bKpo7LdWi88KZUDPExjXX1ptQ42QD3J+VcQY8U4Pgk5gyic3B
         okQkBEzJ8YR71nlCeJyqKFHnc8plcsav9Bnky4pVxljbeisjsRnRw84UcKL3Sj03l6k8
         E1fPrLdMivwT/lQKDXJQvrzyRNCJS6prfnY+0i3+EvOjQclOJFievdKOzQiR2rt4gdu/
         7m6gaszy599OWz9Ik/IJaUeFoyKGJhxhLPYlayJaLr2z+JbWoQE5wzprUB07ANkzoKlO
         Qfsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fKyFfLXO;
       spf=pass (google.com: domain of 3hosyxgwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3HoSYXgwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id h11si238884pju.1.2020.04.16.09.13.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hosyxgwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id x14so1371238vsn.5
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:19 -0700 (PDT)
X-Received: by 2002:a1f:a703:: with SMTP id q3mr5645257vke.4.1587053598668;
 Thu, 16 Apr 2020 09:13:18 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:45 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 12/12] efi/libstub: disable SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fKyFfLXO;       spf=pass
 (google.com: domain of 3hosyxgwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3HoSYXgwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..b52ae8c29560 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+# remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-13-samitolvanen%40google.com.
