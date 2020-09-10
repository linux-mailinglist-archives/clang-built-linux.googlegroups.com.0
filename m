Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJ675D5AKGQENG6WOBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E40A926477F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 15:52:40 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id x190sf1757888vsx.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 06:52:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599745960; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvpyV7hdoSq79wufYC8LCVVlC3B/wYaUQ6bSyjydiOP0XvkyOew3tD39qEdWHWuQDC
         6VD0+0YZEoVHG3RUZhqh8zbMhZjdveOGpTgNDKQ3wRQKCLk+6Efi9+yFyhbovPmGdSO/
         3cTF+hDgTdO0AZhxUcKHfOvDddX7quFg4C4OtohMbVMSPoiAnEfzClc/tQY9W9hKTyMx
         NiqYvWHP2Nvh2V1iKmTV/v4QnzO8pjHLmL0mjmZwkASgOkNtsxBm9msXJeF+6OqDYmiA
         5M3zlTuDsE+7Qe3KqxMNqfDayT7+Gzh3v5xhRpYxOgFvZvalgD4KRWVqAv+DdgvFDU2+
         w0Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=gMz6c5v30WVvv1/0Lh+nFNonb5/FZOXVZQayC28jfe4=;
        b=fokrpFGy6KZ0GWaYUIm7Jv7TL+s09YafE85mosrAmx9RyjLLXbM+fhHJmwKl9FnOw1
         QvaI3dRLS/BFcAItJC9lJyKCy9ys4WqUQaLri3fUZ19ESRWej4+arba4TEc/lzpp5bd7
         TR+XxfEQKX1oGKErpOFgvoXSPpw7WWgn5eY+zMUw47JtixVowN2jcbjEvyJsE6qeCZxl
         RO9m5O6niBZhXL3VeDXX373IbxvQccXTsuyoxXhRj7o1RMpt1VxbYtYPdRverlv4b2c7
         EssLJs75A1hg/3Hw3j5ccIltajkrHuYp4525oZMytNPZjtDLjSF3EBqMxeaPce3/9g03
         sCyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1OH9UBl3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gMz6c5v30WVvv1/0Lh+nFNonb5/FZOXVZQayC28jfe4=;
        b=N5RrAaEIoGu0enYkkzw+m4UEApMLUUloNI3iEwHzhwIKMOdxuaHOBufB4YL8KjqAzs
         0KVfFXI25RNT5xfXqKfQHRBshfXRG2xPhoazHUxBwrfNaZywimT+TQ465W5RPiQQGuJQ
         zvGxGc8sq7j6DCMSKW4mzDcVuwA8ghGyfN6DpQzz5G6vCym3SwIwvQcEK6eaVsNn5/Jc
         YCYjUd2hgGO+6nFN6WwOTrbcY/ZSTE0cGefmAI9SuiPhZt0+DKDLRIJypaG/LDZ3MCFR
         OLqmQm5JLD9rwEBRdms/wt3jMcF061xMWDwdrf+T5P2x0cWx1ZiYaljYzpPPowCWevCg
         Rm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMz6c5v30WVvv1/0Lh+nFNonb5/FZOXVZQayC28jfe4=;
        b=gQbNjxoqnqmQRWQubRXDUhQTeb8W2EHi2Y4Fpj9PnrSgSNpiafgcOm32HzMsPterkl
         kCC9l+0+gHZkToKhYbzRjKMa8F3HIashHUxIk86UrHO/1W++UyDIucgRhzW+4+wIptqr
         Jzph1b7F5BZVbIOfMJCMU4zSoDPWWhmlkPJQQqH5Hlvut/asLP34QC4TQuSV9UMWFKFo
         u3/eYGQmF+ma+aWxjCznaKKMxB3rs9MOVe0kpfJ1lffyY/hyw4/OE3Pz3US6/zazwnw7
         mzAaxQHM1g4bxDCnFT/Q4hIedRcJiaR25gch3KnbM6zP8il/j++ooqB2l81TAg8sTYCh
         qxKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gGlG2yiW1qipnA0kzT+QirvmEv3QKD1Hbw02eB1HxOyNfJ/4q
	infHz4VVK2Ipu2JKJB6OIc4=
X-Google-Smtp-Source: ABdhPJwtsibfpJhSAJwYTU+GpLr+23ReQI+a8kVoDa40vHLE0NhoU2oujoDCSNSc3JPnLFCU/746XQ==
X-Received: by 2002:a1f:4357:: with SMTP id q84mr3991700vka.4.1599745959948;
        Thu, 10 Sep 2020 06:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4754:: with SMTP id i20ls472087uac.0.gmail; Thu, 10 Sep
 2020 06:52:39 -0700 (PDT)
X-Received: by 2002:ab0:6f91:: with SMTP id f17mr3645732uav.129.1599745959471;
        Thu, 10 Sep 2020 06:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599745959; cv=none;
        d=google.com; s=arc-20160816;
        b=LwcHigVaaCP3ogb35ZBHeVs8qGl793z+/VjhMRiWLIrnYzuryi7GIxlqcDj1zyNR93
         pk+BFWnfLDfASwtQ6M0JZGMZ2jhokDgkRSqpleqN17oQ1T6t4NtGy/CR8kSngiHfzdwW
         QlTJNnFODhl41nchyEnAJCTh66R38U8HO/QV7NTMbsBqczjMfk1HowNoOEN1woULwsdP
         CQOjUNLPthYkcwXucuH/1IUSYOgyMaDhgpqSuwnGFDuWpX4LgnuNRVod7W35Tv9ohgxx
         toXH+NMsEXqvuIA+4zhcmk7q9v5B8cLC3zXJ+vkjmz3H90bZj/NaSh0epG1vbI4yhrCj
         BHQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=K01RYjZ9wy1tuci78KttomtfIouE9FTDhkSr4QzxpNo=;
        b=opFOX+vm9ssgDc0dI0B8s8GyukWmRw2OkWs3fl79Bkc2DErECxXs6sb2ZXKbbFEZ6x
         p9kEDklNLBh/WrRwi/r7RdRttEe72p2OygW0pgo1DJ72Y1Hx9qpsMiG304EJoMWYao9l
         9N/x2A2WyGvCnkp7Uc4/QwcqC/xR4Yq5aRnJ5oVMXokkqbup45HJ/YfW8nhN+eWrKzpT
         Bh0Y4lwGr86N6W0WopQPSBIlfrIpmGzhn92Aw/tIJOZywTmAlrqanJj5Ki8ZdK/1sd17
         uNIR/pEt6Ke0a83BRMP+YwciMNzxAL8Dl1jl5dEKzzHjaDIpSCtoSK2cuvUR2F31pyvO
         S2/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1OH9UBl3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id p129si421219vkg.3.2020.09.10.06.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 06:52:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 08ADpSJ0001308;
	Thu, 10 Sep 2020 22:51:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 08ADpSJ0001308
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Ingo Molnar <mingo@redhat.com>, Masahiro Yamada <masahiroy@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] kbuild: remove cc-option test of -Werror=date-time
Date: Thu, 10 Sep 2020 22:51:20 +0900
Message-Id: <20200910135120.3527468-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910135120.3527468-1-masahiroy@kernel.org>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1OH9UBl3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.

Here is the godbolt:
https://godbolt.org/z/xvjcMa

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                          | 2 +-
 arch/arm64/kernel/vdso32/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 5102c89d3167..1d7c58684fda 100644
--- a/Makefile
+++ b/Makefile
@@ -940,7 +940,7 @@ KBUILD_CFLAGS  += -fno-stack-check
 KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
 
 # Prohibit date/time macros, which would make the build non-deterministic
-KBUILD_CFLAGS   += $(call cc-option,-Werror=date-time)
+KBUILD_CFLAGS   += -Werror=date-time
 
 # enforce correct pointer usage
 KBUILD_CFLAGS   += $(call cc-option,-Werror=incompatible-pointer-types)
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index dfffd55175a3..1feb4f8e556e 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -92,7 +92,7 @@ VDSO_CFLAGS += $(call cc32-option,-Wdeclaration-after-statement,)
 VDSO_CFLAGS += $(call cc32-option,-Wno-pointer-sign)
 VDSO_CFLAGS += -fno-strict-overflow
 VDSO_CFLAGS += $(call cc32-option,-Werror=strict-prototypes)
-VDSO_CFLAGS += $(call cc32-option,-Werror=date-time)
+VDSO_CFLAGS += -Werror=date-time
 VDSO_CFLAGS += $(call cc32-option,-Werror=incompatible-pointer-types)
 
 # The 32-bit compiler does not provide 128-bit integers, which are used in
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910135120.3527468-4-masahiroy%40kernel.org.
