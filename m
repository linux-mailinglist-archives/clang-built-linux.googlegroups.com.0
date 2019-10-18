Return-Path: <clang-built-linux+bncBC2ORX645YPRBMGIU7WQKGQEK5WTXAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F161DCA76
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:29 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id c189sf4741886ywb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415088; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+iwRueykwnxGvKp9NMaNgraGAVybD0U4/PgNgXqvB2bNKYcoKiBMJ7vSf7BDdANXU
         MmTXdrhsNAb3XKbryVOiN8527/9W8o3T77TDiU4dQRTUxEYq6yMCsLZ8IvSeL2ZrNR4m
         WnQXDb+YYxQoPdR0jFhB7P5iXVJeAi8w0sm6KehhzeGprVpNBFkiZcfOf7Ehqk/bSonS
         mx1pl4X8E7R87nvT495kGyuaTuKNwJGXKK1nQKspLfjX7W1FtSFrkN0YFRFfNM8xrFqR
         IbhmPGMARnHObM4H7vKhWboWFFFFpOh/Gyp5tw5GpLiCDHRPfcIV8cp0P0KQeDvk4wRF
         ewPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+dx7o3sHqgYLU2B5VoZPy15IbsoLyZep9oJYiUdTTG4=;
        b=MLWejtGIFJymPQwJ5G7dzwQXhVd/14bK6tPVkkcvj+oZoaDCzvK+sWUyOiVMp6Iuh6
         4e5B5YUNKrE1vjG/iVxL/JM0Y30K0A9fk+ZN9fGDNKsjTaLd8SYztDyEhS/J4vxPnKr0
         SeWPdZNqNNYbEvejsrHxOmGi7+fAG/URMDpBzu2pS/WioN7U7AUVYH0SdkfrJyaccOL9
         6UVyNtAwY87sTBmSDT53kv1H92ef98/6FK6kXG0WGk27oVZFrqXdR0W6IiVPs4/uE94Q
         Puz+aLrLHbSWWDbYM+5ZPhoDQp577TCEqAE3PfRizyq0/ZCTUpGkxk00L3tqol5/BDcA
         N/Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MU3xv8yS;
       spf=pass (google.com: domain of 3l-spxqwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3L-SpXQwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+dx7o3sHqgYLU2B5VoZPy15IbsoLyZep9oJYiUdTTG4=;
        b=mGUxmqfoK6VXRg9pJy9iJn1bmBYiNRWN0KompWOA+zA/6DF4b+/QUCahY0rEr5alRJ
         SV0qkHga3CZDc7bWoXx588NfJD9K18BYCacCAkNWil/qJPO1Rh+LEiHf7BuiL1WiPCYX
         7ciS5QrN1dq8CmudT5D1C7XShpU8VmkvLSyN1NEEwMSddjw0gjutkpDdO+18gEyDm+MF
         gtHXW4CBi5pHSCCtGbOarMp/OqwktAm/QuMb74iDcJtMKCazPxSSX7WptQN+MacXDqrl
         Oo8br80s31i1THLWamQsjouJvhtQ7/tDwWdVkw5vKVj+cDbZKrTls2JCEtTbyNx8S4/h
         eQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+dx7o3sHqgYLU2B5VoZPy15IbsoLyZep9oJYiUdTTG4=;
        b=Wp7PsI/rBu4O5C5X78HIf7HpbU25eaA28SXmfZZZbcxToOMW7P9ARZIuPv3afWh8dp
         NfD8uRiTIrHNaKLxo3SiFKioZo+uwU08n/rNdZzVm4jWFmLzVJ7cOPpuUAFvl9AHrRUg
         A4T1FMHnszmSbCVPbO2iPqt2rb2UkymmjFR0EV7tr3JC5TRmeUG2ujPsBHEtDrBtoEwY
         BfJvju07Cn9q+sQmyohVTEsLLIxOD+cEXC3fjdANFoSyUo+TAvOOrso5M52ezveSfAXn
         DViLOFAvI3Grc8jEj962IxFjACqnLFtCQwFi/Fz3/eAcq9OK0v3FJA53rFN6kqn4sEOI
         v4aQ==
X-Gm-Message-State: APjAAAW+U5Yk4WgeJHLopnkeFTVyGhE3e6mji4/qHr7pP81fwK5s6s6a
	AE0irP85HYWtIjh5SfgPbmA=
X-Google-Smtp-Source: APXvYqzsDn94DwPQCJgvjJqRepttsqS778ZBshp11m43Tiv2oaOYK7ZYBTD983ZrF/WPPFUtruHgNQ==
X-Received: by 2002:a81:7a55:: with SMTP id v82mr7534321ywc.36.1571415088526;
        Fri, 18 Oct 2019 09:11:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:62c3:: with SMTP id w186ls1052701ywb.5.gmail; Fri, 18
 Oct 2019 09:11:28 -0700 (PDT)
X-Received: by 2002:a81:4fc1:: with SMTP id d184mr7615802ywb.449.1571415088264;
        Fri, 18 Oct 2019 09:11:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415088; cv=none;
        d=google.com; s=arc-20160816;
        b=bJsDV+Zln9HPYjqh6T7vtJakdmUFbJtHHcb46hVUvmHRsRM+hGXCfPjyMnKn7H7uba
         J6UGtzb+Wxb+AMOCf9DY7uF+78Y3BsqnQZHVnnMvBjWj8GNxjEN7Uex4QB71cw6xxabX
         7hL/G4dxSTI68uUR/RsZcmVEGD5aycd1TF+MwEI+ShPZ00LzpgGoNJRAiYhMTwbuU74n
         XmzH2xQlb6ZCRc5GQjpyEdd9ocmTT2u6NP99X81eVWU9OPkvQ39TD4VdmexJljMJRWRr
         xmzBl9BdDkhM/D1n1uNhRPxnbbQ7vzvw1Towz1LFxV+9BxO8DqSxgHSZvSpdKuuGK4K4
         q0QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kAZH5b29Q7ARe7ApEbNubNt6T6v1C763yQTiGjc3PQk=;
        b=JHtDngERPsdXjEEgLcMBYSPZDCjpiF+2dqBCLAhiINGIeJk9asjnn2rIoUT+12CaG/
         Na765T6CAxZq07q63fmtVYRuogQ/4YtMmPxz6h9Ju3T1Zs7h9RcfLkK7Sg8lgjhI0zaA
         tEurVLMSFRNK36r/+1lYf4u3/FZaR/DfWDmHZlBQTP6Wv3lMMcCUI5AbQTqEijBhcti3
         PIWtpQncJkLysc6JbPdcXmxUv5NxrgSn10Z2hNdbzP5kXCK41w+b2/B933BVIhzmud+f
         /DP0c6UNODnIzuCwR+cawBwJJHzCNtOSw2myLA5+jyU2+atEGRzcaiwETAiPjz5729sx
         hGpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MU3xv8yS;
       spf=pass (google.com: domain of 3l-spxqwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3L-SpXQwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id a1si287677ywh.3.2019.10.18.09.11.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l-spxqwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id a2so4970667pfo.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:28 -0700 (PDT)
X-Received: by 2002:a63:ff08:: with SMTP id k8mr10900425pgi.8.1571415087691;
 Fri, 18 Oct 2019 09:11:27 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:30 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 15/18] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MU3xv8yS;       spf=pass
 (google.com: domain of 3l-spxqwkajiew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3L-SpXQwKAJIEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..b23c963dd8df 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -19,7 +19,7 @@ obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
 		--build-id -n -T
-
+ccflags-y += $(DISABLE_SCS)
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-16-samitolvanen%40google.com.
