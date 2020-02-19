Return-Path: <clang-built-linux+bncBC2ORX645YPRBGPZWHZAKGQEICR2EHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B62C163819
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:58 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id r6sf1112350oic.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070937; cv=pass;
        d=google.com; s=arc-20160816;
        b=H66CVjOB7sa8XqW9xfg6kOOKbgSrZQBAkwV2PveaFchhfyOfOmhuZmHe+MqEgVhdKS
         A91N8zi50z2o08VZFUX62p1LIUWG7bwkOx8OBe4T/GQvis2uUNEdtmKLaCE4VUoCIdFa
         u6y036qK/IIDCMMQGvwv3U/PD74GgP4W6bMGoALyLzqHcVEdULlAmmaG1McKHAJVvSBI
         qY+qOLpVaJSiDucF1BbAbO8DFrpGWWeYRTiQbuneaMI7I97PH00rzVoLHNKJBlg0TEBx
         HCYifpikJ9px+XUdM67cH0zER6yNAfjhJAWc91ezVszFt5745d79bpgg3QdLmoPWdE11
         tP6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=D9kZ5YMmG9NMGpGztqnlDjcb/y+cz6fgERbua4cHL64=;
        b=El1uc5RrPi2GntH+5vt3bjGjFRvymXu7c7TgQP6iGe19rCuh3nTRqJx8RwRAQDnP59
         XrqFODQmoZkDnOzQ5rtBJNfZb/kLXe+oHou22uKPkZCqDVltqVqhsNAUrCPXVEkeEfN/
         0r6PriT0Nc/vA6ynekha48wTIC8klEgMnmPvXyNTImOmIoUYvM1J9pMZi/RgKkUSmIVz
         j7MN9R5g26kEdJ2QGXgyfoG3pNNkXuN3KqnkrNA9lYC8CUcpTepET8L2eXlb760rDpYs
         UGkXXNg3Vt+eEIQMQCRDodES0gw7ZBknlnpKqNMJh2TXNLBtZB8L/7L6jOdf16HOVRlg
         cbTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="cePll/Tr";
       spf=pass (google.com: domain of 3mhxmxgwkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3mHxMXgwKALstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D9kZ5YMmG9NMGpGztqnlDjcb/y+cz6fgERbua4cHL64=;
        b=AGRlY0edjfHcxjK9IG0kBkN5WUMmxISQp81Dyfw+NuEs5h9E7SfbCfYo4HO5W5JiJ1
         wXgmcLh40L9zJERn3fVlTWuYlaEPjDpDZeWDwRym0GsaXdeVYA9vQcBEafXDKBNgkqPe
         9pn8LvYbecBLdINh9ulRF8o80uQq0E59eLeiPghtsKRN8Pf38zh4Kxq9hNqOk7PP1udM
         Icrc4sPOTnLni4rm/Pw7HSyxVGOxowTbQbIrjsiggfjK/f3jhRH9M/Ae1i5a2l6leh0U
         /WnP0tAcYYuB1CB6ey/Cngr+gpPc3gjpnskTRSkXGfND9hOXkd86PYZ79h5fxzhPxPwX
         pGGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D9kZ5YMmG9NMGpGztqnlDjcb/y+cz6fgERbua4cHL64=;
        b=MuVI0EPgUyd+1FB8yUKQl+3izItfddSYApaDVOch6jqNylhPX1oOOVZdNSl4DEExzU
         Iumf6k0BkD+lPlcCAXqEU4RNyyyuHoe+sr9rsyWVYJyhN61F9hql8V/yzFE8DLxGjs03
         bhBotEnvzRe9Ija+5JOk2d6+pJ9pysXjZl+jks/M0bAZ4j5JjBnF9FCtDJRnIU8hTqqu
         qIj8kn6uMIrgTFzPCu327QIZ6mEo2JwGFiaMC1Iana2tXifdFJKh2CskGHjr4oSW0ztZ
         Rs8+PMVaMF9MwCD77bys3tCfS51mtGD6B6btKmBF29t1fimHOh/uQXlNIsSbCpYh0Goe
         tBiw==
X-Gm-Message-State: APjAAAX544opaXc7Z9cRuQ9BzQue+2FFDGZgHQ9Zl8g9Ylz8mVq1Q3P3
	alrbIqsb/26tgx7GkeXtKwQ=
X-Google-Smtp-Source: APXvYqxTC/ZG281mZ4t0HWF0K4I1USbl1i7eMsy5gTqzkfs6F+TOvBwMjjuv7yRRg+IqgoKuQm5xQg==
X-Received: by 2002:a05:6808:244:: with SMTP id m4mr3017815oie.125.1582070937305;
        Tue, 18 Feb 2020 16:08:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls106941otj.3.gmail; Tue, 18 Feb
 2020 16:08:57 -0800 (PST)
X-Received: by 2002:a05:6830:612:: with SMTP id w18mr18080915oti.160.1582070936951;
        Tue, 18 Feb 2020 16:08:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070936; cv=none;
        d=google.com; s=arc-20160816;
        b=UwefXfDJZbOOkz18aqDusf0fMk+XM5b9h0WTjHNjic/ojPrh1SDr/vgVE6qgzvf6ZL
         kjDGqV2nlhEpaV5GyxKzoe5G4jAiWaAb1Qc9VeZL5ojA5wuLjhInde3ZQoEtEvp/za0T
         doKH6GCKIxcgdrPVqVobIWVBG/iZYAynjnyYOXG2AVUvhHf6aqzdq8AOs725Ih9RYYA7
         B3yEg0LrX4MYm3KqzhZ9pCp3b9MaSB24YivL+rIqBfbiDATP7aNN+otlJj5sIhliJqWK
         y1fbMLsrchLW0VcfR870riZwlDx64qTobSIniKhAG2OqsJSjdWOfb8Gk02Z5SbouUJFe
         UhVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=VaL1LZE8ycQeC44ksYepx5tOKr2VfyNgExyF+AnjA94=;
        b=omBFKZjwYU1f5l2J8IW5ALWLrZRjc3LM9t+3O+APx+sPPd2VU71dzwddM3j5McWuSW
         8lKFb9pKV4tV0JihpfgkGs4A8MelWEPCAlWaDeD2SbvLtTjeAs/u6aTiw/c8zvxCTKnS
         vJVsHWWk8ohSRRSRgtPaCoiypj4Z8KuDQV/aD8JUyQnFoMDrGDNizV4KPYtCGDp553oU
         EjCzafkjYw5ICiex6jsTscHmCrobj9uS7FEpTsJKrTVq5EDN+cyAS+bmHZSYTo7gg37v
         4uP8/HRsk4fj+DbIelAXnEVycDaNGXyIc9VrhbGyXJlWUL34yOOW8iA2feX0UNESMA1Q
         91RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="cePll/Tr";
       spf=pass (google.com: domain of 3mhxmxgwkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3mHxMXgwKALstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id h199si12540oib.2.2020.02.18.16.08.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:56 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mhxmxgwkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id z12so1089328pju.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:56 -0800 (PST)
X-Received: by 2002:a63:c846:: with SMTP id l6mr25182558pgi.144.1582070936327;
 Tue, 18 Feb 2020 16:08:56 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:14 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 09/12] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
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
 header.i=@google.com header.s=20161025 header.b="cePll/Tr";       spf=pass
 (google.com: domain of 3mhxmxgwkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3mHxMXgwKALstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index a3a6a2ba9a63..0f0603f55ea0 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-10-samitolvanen%40google.com.
