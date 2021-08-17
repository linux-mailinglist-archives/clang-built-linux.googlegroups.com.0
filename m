Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCMC5SEAMGQETFDF5PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 540623EE0D6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:30 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id a127-20020a4a4c850000b029028b35f322edsf4524571oob.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159689; cv=pass;
        d=google.com; s=arc-20160816;
        b=EILZHDRsBaGa9/5KJ0drrwxkJDpm8ygYzT4rhFJLoF11DPBFRTENux6sIE4X8lLOqK
         SuVdqxB3Ci7alLw0fsDB4ag6vnLpQHuc/GEt2Fi8yQs5hDIu9t22HTkmg18urC4DsbYf
         bey4zz6zthIRPrWbAPkSJeBdazCmTkL3cYBN8hmJd7lI8uyiB037CewrtnY7etf7WHl2
         Mnz+z4RvCbLQ09N5H6ulhufvhwQoeaF1JBOwPJ3Vnh9rO2khzG4xlGwY/5eMvSTeoCZT
         x1XMGCZdXWbqTAiGPzGpATWqWPrYghCgeOTXbtHnA8Vbhg2cU05rAuYEoD9GlHCc8ojF
         MFGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=L6qre2Cjy2WdCmnficKD/I75hflKfk/unu9HjvuXy94=;
        b=QxtzGSDyGaS0RYr8YCwiFZRFGj9+ysMSzJAgJsi+OnjbIqFOHB+uOaD23OP29pf+LS
         4fuN8nky1/ASIVa5qjBkQsSPVx3naZZuYSzCfMtLHd38Dgoe17IYERvoKnkPMRppbl6t
         0I5netWxbo34ev+EQcq6J7BtNTGt1vCv9bY17Zq0E2EcQieUEw8DBWfh+lwVFUeQPE6E
         OGliRxQrAG8lv2r/AmPqUEH1PZtBLmcAScxaJJjMS9piWOSeWB77Ek2Kt5McID0nv6JJ
         ibgTTpMykXvLmy+xw3C5szT99AnTIu425ofG2s0ce9ALvfYl1imsVPxtPc+5KwFLTVSx
         y8xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EgGa8cEH;
       spf=pass (google.com: domain of 3caebyqwkaiuwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3CAEbYQwKAIUwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6qre2Cjy2WdCmnficKD/I75hflKfk/unu9HjvuXy94=;
        b=c9pKjbMuMEC1fVQSBFp81hf8bu3eO/F60D4AOntYj5jwzJEHrfFmf7v8rQB1SJsuev
         Ag9o+MZN8wQmJWOp93iJDB95l2rXmDaTHYtzZ6HsZ0SF023R/G9lrdX7gVA6tPNkJZ0I
         9V6nkhAA+t0LXD/NfO3qe4p6cDWmjZfNj6dj5W8Tdca5SEXCslG/LYXqRIM//Zoqjnei
         xNbc25iL2M4YdY5QXT0rrsjTxUxkll0Y7UnVLezvxiWG4Sjjps7RmHvG5IsY44/ZX5w/
         HF5Y0AvkNKydrKdcqCaJuyzzFEXG8w8HVBBgVAej56Vb+po6pz/MYH33Bb9L7RIVN33e
         dHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6qre2Cjy2WdCmnficKD/I75hflKfk/unu9HjvuXy94=;
        b=VWzDwMMatF1Z39/WAwiT05uLgzj09zvNnxdVEd0dim3HnX73ap1oeC7pdCOEL4JxNv
         RQIqy53dsXf0tfMWNrzNkq9gWdzSbokyuEEqHsfuS7PRQL2SjYyhNuel9Kx5xf/OZkZX
         sr1NMd/IjVexlCxVFkygw6JNz+Y6+Yf+hAlNSQjM0665TcfQNxtUI382Nm68PWhIA4MK
         vYQjDvZKB5ePtrek6jjZRIKrTu2uhGhCfmqtRrV5jt9tL9ug2c55gNhZ3KPRvy8asPur
         lHSQREaKyYc5DNKy2jYlJgMYDU6tWUX+kmV3aVCzrMD9noGRVIDx4CGSlbaKR7wBD3Wh
         NoCA==
X-Gm-Message-State: AOAM530iOUAfAr1ZFgGR7RLSNI0yfZpSlKuw1Nm7es6ssffzzQxh8uRg
	mFvJneiyeEMDCP8deWmYwyI=
X-Google-Smtp-Source: ABdhPJzEUA9ik9BWy5YFWOc7FYsnHWIIiu5RyVYBl/Vjo0DKFzhDZa3aBQxwF9UbjW9zdMj4F+5mIA==
X-Received: by 2002:a4a:a2c5:: with SMTP id r5mr640370ool.66.1629159689338;
        Mon, 16 Aug 2021 17:21:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:201d:: with SMTP id q29ls60462oiw.7.gmail; Mon, 16
 Aug 2021 17:21:29 -0700 (PDT)
X-Received: by 2002:aca:c6ce:: with SMTP id w197mr401262oif.6.1629159689013;
        Mon, 16 Aug 2021 17:21:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159689; cv=none;
        d=google.com; s=arc-20160816;
        b=iln2S+rLKZ0Yv6dvkX4KURaJG6Y5hW6llinofCjXeUWiKmBPdQjP5p7zzFbcqUHjWY
         BYYUi+oZBKJcCoIp4Q6DAVpB7dvET+h3Zc53qP/5C7HbaM+0E6cK/qiQdJHtCkfrAGKu
         OKv2Odk2b26GmS+87cC3gG8W+7q2q00nNC7sfbkHOZmz8G4qSSEGbKBORinrMqmw17+Z
         zqCAm0G4lK/aVllrfMLIgvLNs+sc6CNbqYsgDFIDYPpY+OuoKwDdaAXmEykOSGJV3wsK
         bDth93EG6foKGzdVBntV1baacPSPYe2Mf69gm8wBadfoGdV4IPy65dCyuYAVPs1CE7hl
         a1GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lCzitv5KqDP2zQ/J1/ah211/+gv0A0rekzxCvgbF1SI=;
        b=Pb8Pc1BqFpoQJz+R9BCJu6InBpfw6S8Ct077FnaU1ANDEjmC8cWgt4F/4vcmKBiDmq
         osqfbIDvvxgol/L94MTACQtXccpGbgxZLPsYEErmmZyc1Zio916e5ho6zY8EwUoawyIU
         OV0OXc2NoMwTW0D8OzMWaDjEWN67FyzVPF6lubddoFpdSwwqzeCCfxf6L0itb8iuuZZU
         SatDK+vBufJOJTIQbfUs95fTA5RBJqtYoEpwLTHfCsnu5Jr4vo7RDd37B1gH10Be3Zgz
         52sAsgDIQVFQa3VMYUSHkObWm8ePmt1RDJtC5Kv7zpQG9cai3xjlQVokyLcpQ8OklFSR
         eiUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EgGa8cEH;
       spf=pass (google.com: domain of 3caebyqwkaiuwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3CAEbYQwKAIUwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id q18si18883otm.3.2021.08.16.17.21.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3caebyqwkaiuwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id 18-20020a05620a0792b02903b8e915ccceso14414514qka.18
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:28 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:2408:: with SMTP id
 fv8mr715411qvb.4.1629159688552; Mon, 16 Aug 2021 17:21:28 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:07 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 5/7] x86: remove cc-option-yn test for -mtune=
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EgGa8cEH;       spf=pass
 (google.com: domain of 3caebyqwkaiuwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3CAEbYQwKAIUwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

As noted in the comment, -mtune= has been supported since GCC 3.4. The
minimum required version of GCC to build the kernel (as specified in
Documentation/process/changes.rst) is GCC 4.9.

tune is not immediately expanded. Instead it defines a macro that will
test via cc-option later values for -mtune=. But we can skip the test
whether to use -mtune= vs. -mcpu=.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: x86@kernel.org
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/Makefile_32.cpu | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
index cd3056759880..e7355f8b51c2 100644
--- a/arch/x86/Makefile_32.cpu
+++ b/arch/x86/Makefile_32.cpu
@@ -2,13 +2,7 @@
 # CPU tuning section - shared with UML.
 # Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
 
-#-mtune exists since gcc 3.4
-HAS_MTUNE	:= $(call cc-option-yn, -mtune=i386)
-ifeq ($(HAS_MTUNE),y)
 tune		= $(call cc-option,-mtune=$(1),$(2))
-else
-tune		= $(call cc-option,-mcpu=$(1),$(2))
-endif
 
 cflags-$(CONFIG_M486SX)		+= -march=i486
 cflags-$(CONFIG_M486)		+= -march=i486
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-6-ndesaulniers%40google.com.
