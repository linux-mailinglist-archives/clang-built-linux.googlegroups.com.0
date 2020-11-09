Return-Path: <clang-built-linux+bncBDYJPJO25UGBB54XU36QKGQEKN5YYSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 185EA2AC3E2
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 19:35:36 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id b6sf7259002ilm.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 10:35:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604946935; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1QAG/iOQUAC+yCW1//3EdpKd7IS7zdAwMkSkphuIRLtN5O6+g0fiZcBvdrKGwR7yX
         XOA1OI2FXQQCb/44thcm+aR/FArg1osho4pjNJmZ5hDd3jIcvj9vlvYrjINKj1002t0Z
         rih02jdiM7heKicI/DcMQbrPh6vn8E4R+QNbNFfvAErpFAG3Qmtjug5278AEzPA+0/u0
         NuAUCRTv1QkQdux/lbqKaYWeGgRHfwA2jdISGBEqY+RphNSMssQXxwtYtnFxLvaOYmfv
         QUEY7WJXQE9JQkBspy05CurRvhAvkW8gMWvzNMD+xGZEVWnQL4CARQc2lIJ8R0vAuTzV
         iFrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=BU4AE3J2UjLRl7YbtAVr7OmZDrk7XEPssPxy67QOqEc=;
        b=e/LVmwliEWaRAx1Wwtd2tErZtVWd2tucUvBlsHbyzbJK7lmqanXRzxYawXw5s6Ev9g
         1n0iEslrAbwd3v04+QzlMkMU7ieGm9VGRBDg6SU/Z85TGRuCUVk+RQdWTAWPCkkEP+0n
         iBtPotQHfuxxvoK8GrZYf0KClaL05yzbtfCWDDo5uxOBuSTN5BYfpXtoiuF140dyEsEk
         Y8gzdg/CBGSquIWGvm30za40O2HjuurII8JEhEtpMKrIn7UVzYa6GyPqRfdiazj6MGbM
         xpS9SVX/DIvVZwnTYdGlhM2Z2DSlQf983QJT+NQPSYHetEA2zn5ldzxJpqRd3/+sbOV2
         fRUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vKs5LajV;
       spf=pass (google.com: domain of 39oupxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=39oupXwwKALckabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BU4AE3J2UjLRl7YbtAVr7OmZDrk7XEPssPxy67QOqEc=;
        b=E8vMuxk1K6p5kRR+EXLmwGLPPR+jG7RFKAHomYEM7vp3qK5csPad0tHutWK/rXB5+7
         B07kJNMSkSa8hkRb0ggyXyEc9ncLX1pVMBcqnkxUdjLbybZtCKzMUqAV0nGMSGXeDQLH
         jBAi5HeFYZiqENROtfEV2FMxNDGx4MX4VN+V6YtIoEW4aPbCy1n509Mg8XYPrU09UdBJ
         u7JkNYL9mOwUzl+c7AQzo8zafsctn5XLGkNer6uPvLx5A+F1auNIBlaKoE5kou3r0EWa
         6WbJgukLsXD+WHIy0CaDj4iTUDLOqO7CC3P8CQxiDyuhC3UyyZaTvLzbwGKH1w0V63pR
         +FQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BU4AE3J2UjLRl7YbtAVr7OmZDrk7XEPssPxy67QOqEc=;
        b=B//U2ICHNwm1dzP6mQZV57xEdmu5Nw0jobMNWL5BIt8MHOtR8spg/6yxkMPMS1g/yC
         n5TYyurZwiXKmaiVUADM0PDDVoDW5P+5JWlBZBlkNwQPAOQJ9NbIj/HHcf/RZDXuqiAC
         i0U3cMN0gu6lbvxhwYtXWQfvjk2dzeuFiq0sDokKYxfqj/wSCUVxzmkUiDoMGg4yNEJz
         H7Z4TKdPgbNmbBqC1oHS/tKDkiSwQEVGTHC/SF/n+3HPBO/t4KxZ/dmAv4rxiUAliUvF
         MSX4fqwuNi4HjiHKScEZs5nyk5u2T56ND7DAjZLYP2o0xfyatlSyqWMJ1tyHfuTjtyYB
         RHqw==
X-Gm-Message-State: AOAM530LK6mrGoNwM5lNWAAwd4E6bKyGL/P5Wfge87y78G95cAeIq1ea
	vxHwirQpsp8t+JoTMYY42mU=
X-Google-Smtp-Source: ABdhPJy598EHTT+U4BXbD4VUgVYqQKfCqwzft98mYEgCFEdMZzy/CYQC63NlCImq2gFM2OaCLizm7A==
X-Received: by 2002:a92:d991:: with SMTP id r17mr12083231iln.227.1604946935137;
        Mon, 09 Nov 2020 10:35:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2681:: with SMTP id o1ls1036827jat.3.gmail; Mon, 09
 Nov 2020 10:35:34 -0800 (PST)
X-Received: by 2002:a02:5e84:: with SMTP id h126mr12153949jab.128.1604946934777;
        Mon, 09 Nov 2020 10:35:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604946934; cv=none;
        d=google.com; s=arc-20160816;
        b=0tV75DVnrPNiHjR96jkCbPSBIaArvHQC7gfVavnSJFv2Ou9Sj0STtuX4ToMKrYdlQl
         iMlInJoqRZOxHbF8yp7qTD8tPWH4mV6xpgOtag8hGiJpCfYggBRV4wpTxnBvPSyobwxy
         mJtnv/UjadrDvsKgGkTK4eoJvLrx61HQp9j4AsyqWpcBal2Cl3WNVIAPNMMuqUnTJYQj
         CJt2wS2qocr1Iaq42tzz8fzCzC6NMMz+yEfG6OspzjnqMIXrV+bjJ/5wPmAd5bOOeHKp
         hk/vIFicCCjppcRcWIUiV9+YgRzCmFIeZjwfBrlnfCk1pUcT8tvbgMzQ+1IUfOfbCMqX
         ZBcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=UPtFfO/KAGWjAZ8J0b/rcbbvthH9v1BWCmAggArm5i8=;
        b=i1hsW0FOJ4tbZ1aOc38TMwEBbFP0sZoD9GO35jX1f43znG87JjAWXWgCW+bd+vxzfj
         MVLedpJRODFKpise7gT+MZwbDK+YMBrxw9mvnuu//cBy3UA3/IXe0vF2U3oVJmpQC6Fv
         hSSVwY9eJro7yz4ssx2KLppng8E0WhiKUAp5GdH0UOljyyU4v0nmpKFmskAOvxcpA0QL
         1ctTxX58rBVlQpDFIfW9a8DoLNdjJlva44gGNrjeAuO4Cc9Km4xjnX7A5TjZ4Y3W7Pwh
         AniqKijLxCk+KGg2X28I5QykNMzqKi/ElVA6n0FbILjDgnd2jE3kR4KwVZFTo7Yy7m1J
         RdTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vKs5LajV;
       spf=pass (google.com: domain of 39oupxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=39oupXwwKALckabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id o19si616957ilt.2.2020.11.09.10.35.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 10:35:34 -0800 (PST)
Received-SPF: pass (google.com: domain of 39oupxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id q25so4113017qkm.17
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 10:35:34 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:174f:: with SMTP id
 dc15mr15123606qvb.26.1604946934162; Mon, 09 Nov 2020 10:35:34 -0800 (PST)
Date: Mon,  9 Nov 2020 10:35:28 -0800
In-Reply-To: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
Message-Id: <20201109183528.1391885-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vKs5LajV;       spf=pass
 (google.com: domain of 39oupxwwkalckabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=39oupXwwKALckabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Clang's integrated assembler produces the warning for assembly files:

warning: DWARF2 only supports one section per compilation unit

If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
assembly sources (it is still emitted for C sources).  This will be
re-enabled for newer DWARF versions in a follow up patch.

Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
LLVM=1 LLVM_IAS=1 for x86_64 and arm64.

Cc: <stable@vger.kernel.org>
Link: https://github.com/ClangBuiltLinux/linux/issues/716
Reported-by: Dmitry Golovin <dima@golovin.in>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Dmitry Golovin <dima@golovin.in>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Makefile b/Makefile
index f353886dbf44..7e899d356902 100644
--- a/Makefile
+++ b/Makefile
@@ -826,7 +826,9 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
+ifneq ($(LLVM_IAS),1)
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
+endif
 
 ifdef CONFIG_DEBUG_INFO_DWARF4
 DEBUG_CFLAGS	+= -gdwarf-4
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google.com.
