Return-Path: <clang-built-linux+bncBC2ORX645YPRBZNXVX2AKGQE2CMEQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E8119FA77
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:42:14 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id i17sf281693qtv.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191334; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jf3vr4jf3D3fkuNyvDKe5UKSUt66kIz2SUPtEFXjkmHupuqSxegsfIMVfBA8/8Vkg7
         Tx6Fkw8IWOg9CumALRibXdA1jp8U7Tm4M7Hl3Zgw7s7TVwAdnof8NTpE5Zf6ppaLI4Bl
         qYRovzSl2HHeCasS7s9pkwWGPbBDhXt4BS5TwJq0HzNU9GvMMnEJsJ1DTLyUE3vwf88d
         oHQ7GbcYY1ofWFqNyCnnTYvD12qTQOHA08WYCBLT6iDUO1AbAXi8YO3aBybsGGJQp51J
         d4FKxyu2/evFjAeS8DBNRxMtycaR/PHukuhB/zLureTzhlwkv+p03qw/Iv7NUQf2rMGV
         3q8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=b5pwYqXyZ03L/aglNHrygKcFr8ypAN3cInG4GyR0thw=;
        b=0fq5c1d5HM7e2ldIAVCPbZN1MkbEyNj9UYZpPpC2ZyN7DFvPZiLki4HEoPM2NVmcOm
         nRuQvEdioMka3RKs6Kql3kOSA08cVXtXAjlJFhMpm3sR3e7byxA6BS7DmIKNl2fvCnDQ
         bBujUnixiEzA86A/abZv8dGSa6d5V3me0eo89enn9UJxcXFxRm3CcYllZKPVajBX8+JQ
         tAJ+/QQM8UsCCaVT6BSQgQVQqhcQplOgu/n01/uK1P/H5voOKNevbsG4EqrKGDfDwyEy
         7ghsrEDbzNdUOAAcB55ciDpOt8eTJBTdiv9gh2Q5zTDsZA1zvimKO08fkIY1X5uZSA10
         FSjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uzysDj83;
       spf=pass (google.com: domain of 35fulxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=35FuLXgwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5pwYqXyZ03L/aglNHrygKcFr8ypAN3cInG4GyR0thw=;
        b=G8QHDtwHmON8YDC4zz+tSdt0SkRS/6II6JrTFtjePvgME7b44ROXSywbNAi5Q712wu
         pRFE56qxSiBtqmj0lCwaSG8scb8I5gAz6FR07duTD57VIbaUO+v0SBKbEnczBKqI/ojb
         uKa87TpLXCN1h4ZCBDXX8ZNYyp49AHnDjoNSG01nThQZBcSxLsPVeejFj9akjmOuEHPY
         H9GUPixIVTMePFivlNGcJNv++wetDSVzqA669MWLSWLrvHhd/ifOO3blvk/6P1qKo4i/
         9A9zUk74m19JyAeeyoxrbn8Bxo00kixMf0jqXpJZaFxrIPhDH99NrLqIv19Ddi0rvfga
         Zmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5pwYqXyZ03L/aglNHrygKcFr8ypAN3cInG4GyR0thw=;
        b=j7ovCUWET2G3xz60i4Czepx5K0cr8ZWcrh9gImwl4R1qK6Uqt45W4cYvq72NfohODe
         Bji+IKpxVRN849p95bCchPpqxglF2JPcMwmOyvvB4Y7vp1BZhpNysEXt0lnANa2RbdcR
         DEHZqv5q+lZ64aX7tn7D3ds6jaqjhHdj1WzJnw9tRgYfsgCjHmBNxRbAKO0MEMd0fMHp
         iB+96QkEMIzTDlSQuzmm2LGQmx4hcXL/pNAEdtACA78UhJHSDowlTPlqUpw/aIp0IkxI
         omwi+F0jGf8YKQccjHOoKnrWDTe4EiRcLQN/tNKNXg7MgOeK1UuBBQ0nuG/RpfW9bYVk
         FZwA==
X-Gm-Message-State: AGi0PuazkK7DQiDbBv6nJoQO04bKSLnCwdSNudAAiyYNDhq297OPzUhD
	jM8Z0Y08A4vXyvgMPz9V+Qw=
X-Google-Smtp-Source: APiQypJ3x5G/SPLKAJ8A8OCl2oM6YG+q79d2Gs5ud45oycW7rrRX48k/cynSPSFPanojG1VGDp4YGw==
X-Received: by 2002:a37:9a91:: with SMTP id c139mr12703345qke.388.1586191333984;
        Mon, 06 Apr 2020 09:42:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3d4:: with SMTP id b20ls57216qvf.11.gmail; Mon, 06 Apr
 2020 09:42:13 -0700 (PDT)
X-Received: by 2002:a05:6214:613:: with SMTP id z19mr501463qvw.53.1586191333348;
        Mon, 06 Apr 2020 09:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191333; cv=none;
        d=google.com; s=arc-20160816;
        b=Yk8nj2iZZDKdjiPdhYR2CKaaH79o7jA560KBFuBacdhUuI42JZOeJ+BOHbF+Fk1g4o
         8MfXfcCpfTlwvFfAec9qEmh7vzaxyx5tVUEB9ByTt1OGgrrsZNGz7tZ7EjBNJAPLfHc1
         NwBZDTAYtdHyAA1/4MmW3pBZAwtDqHytayWMKWEyvpoO0wrub/3WfbS8/i6qP+jbv0FR
         yE/VeI/R5Vr7WY5qojmB4aftjxWyMGo5ECftcoBxZ5/laVd+j/iuIgTfvK/k0bCIZoJY
         GxT1zbz6SAzuyPHZzXlFkXekly4OtdlC8mHAsaEkq+khnDuIzikjddtgWtKUw3BI3qhz
         KY1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Y7rlrv2nhrkBeB3yxrt1isCdPASfC8dC7N7qsaqIYpI=;
        b=f+5c7qGsjedlt0KpOlifR38ahY4hRBozlt2VCANE5Whjb9uneWJi33nPXstTHiz54o
         wPnhQzHfLry2t7ceRLSwiYEbVhFedOA2lKHE96tP3PfslLIJ9uEwf3pUHmq59xjra08f
         g5RiBn535Zs/GpNfl1bzXE+u8PsGF/f3e/AJTJdE0wC3Hfx9F3PUdV9l93B8JIlOoMcS
         HYWO919OFdHN0UISKNEKXk/naR/wy9cAWgia2D7HDn/+PmC3hvDBLRdyoIEyEiFj6olm
         /ArKS/neGgovOeV3UpMi0A8pViBeN3cvPmvBDFjFOkrvEVSTZwjzrQMd6M+8wWjOJdxd
         H2XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uzysDj83;
       spf=pass (google.com: domain of 35fulxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=35FuLXgwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id j56si7204qta.0.2020.04.06.09.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35fulxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id w21so337286qkj.18
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:42:13 -0700 (PDT)
X-Received: by 2002:a37:4d88:: with SMTP id a130mr21585753qkb.443.1586191332817;
 Mon, 06 Apr 2020 09:42:12 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:21 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 12/12] efi/libstub: disable SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uzysDj83;       spf=pass
 (google.com: domain of 35fulxgwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=35FuLXgwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..fa0bb64f93d6 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+#  remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-13-samitolvanen%40google.com.
