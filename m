Return-Path: <clang-built-linux+bncBD6K324WS4FBBJ6Q735AKGQEIIHBQRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 21009269323
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:08 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id w2sf49643lff.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104487; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8uBBIqqriI5P4sGkKt5uXfYVqorawXw4LsgRB/Nq+XNa/+rlbboO2vaNNXTfruW8B
         r4qXOHuOl2+79MsohPqxSPuHXU23r3GihBioQvbMPN42zTe7bkALRLdhmSiZmXW9E1zg
         2FpvdMN39BTYvBt2lZMwn804ZKJMtO+x8rTJ+5hoBK1pJNZdrPa/+aY4nCMrGmC4njAd
         CXZd8qyNpXGeelwrUY6FfQYlrCupIjKLVVx1cnoXDPZ5gUzDsXipSyrRo+HKxwhx4E3w
         lZhVPICS5/EJvXDkF0eQKgeifon/GLziupbDzLe8vYIth+u9oB4hpyabO/quA/ywcoF0
         zalg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5HceQMwbP1MNejnFbA+/9z2s3rsnV9ROJxufYyKfQlc=;
        b=vSGh2J4YgF3aNnjj+n/OQOy1vm91lBEo0CPGQRFdoV9HUItUyKXeQGhQBbdU/jZaL/
         Xojg54fFSg8n6Op2UwofXLxmq6RZGQ7fenJifXkWm1Z5ALzYAOwn6LAcQOoGxOrwhUQ5
         LyY+6uwdxJRYwCC0PCfDmt8s3hktZ/9gK1fpHzRg/Q7MMHnIORXFxK+FVQCqYBHcmM7Z
         AtscS4uPCLQ/DfMZfZizFf6dc1TNdfOBTFVEMZY9hBXFgDy6J4kuDFaI+K84kpErCc/Y
         gJFeBoFQYbn6DO/DrZjfjQr5GgKN9Ib1lV8qTeyXsJN7lMUQncSbJ/qh7wl0sfWU3NdT
         B0AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uI/iQaAn";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5HceQMwbP1MNejnFbA+/9z2s3rsnV9ROJxufYyKfQlc=;
        b=gvH3docU3ginH+mYzQcXCudnZtAEHXqPvwzcC+GkgkBtj4Vio5FPXD1euabu9EsGhs
         IFWGv3NdY9/3mRDiFmGqhXlRwctnuxwMpc9GO8c1Lyq/Ow9jfl8p1mPkoqHBVd8PxRqa
         mg1Z6qcQnafhhoTo1+4zMNX9uKO5dPuWzMrYixmM8A2119QQzMdVi7TCy87Ee+cgOq4u
         sKDEvJ48o1+Y8LFnXOYvs2OEWbTCofYbxYsV0/sHvuF5KhqevhBHrism7/pCr9rgG+k7
         dIWnN+4s7gyi/LBsIhLiZXhBNQNLb9uT1dfKbK5aUZ7QHN6reLugxbhz6ZFBo5uYw3Om
         krkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5HceQMwbP1MNejnFbA+/9z2s3rsnV9ROJxufYyKfQlc=;
        b=MDAtrojtjP8aIVjJ1DYUoCaU8QJYdi4EOAA5sWRl1YVdYvVWWkCPojbkOAq5odXmlQ
         9Wrps5c6cKPbe70GZn00elNwLwI7BKqyeEmqTnVTzkHhgzrwY9YrfoRFjZx1znBAU1Hd
         +MHZXQ3/H97gV98vpLyC6XqYq1opbRI1E5+0582UNF2LTmQcTbTivCMmejOMB3q9YqJJ
         c1i5XdxQu6ns/46hrrqFVPyT+6RHwtX9QDfRHDdtMhiCKmbASu+EF7Z70/a1LkCSafNR
         CmFWoNmFD3tKFmFCkZOM5rzqTY/K2lTIaS7ss4nelW4QrPW5C7i8iR6TReaod+CXTR7m
         FzPg==
X-Gm-Message-State: AOAM531Gj2nBUaWNmTz9N9dx38S5PnrDUt4omeTk7LsaAQwlojhc1kg7
	aPIje9kyNtS6FUakuHyfxyI=
X-Google-Smtp-Source: ABdhPJxezEiaL8KRduTdvMxi3Dk1zn1uDH7ZDzTqWgv53u/Nflx1ulF92mBTPcL2FC14Hahb3sH0YQ==
X-Received: by 2002:a19:e4c:: with SMTP id 73mr5063304lfo.286.1600104487663;
        Mon, 14 Sep 2020 10:28:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7e02:: with SMTP id z2ls1520769ljc.2.gmail; Mon, 14 Sep
 2020 10:28:06 -0700 (PDT)
X-Received: by 2002:a2e:8ec2:: with SMTP id e2mr5572946ljl.96.1600104486213;
        Mon, 14 Sep 2020 10:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104486; cv=none;
        d=google.com; s=arc-20160816;
        b=ctfq9hIdO2s6X18ShzT07uKuxB/z+R1cpkEQvJTyDHErnIPcgbSIDaDy2YBkASYTKW
         /7Z98gKJuzyMSUy3k/qCY+Bad1zEQkSsf89TSpGyUQi1+GppcqwcOiYl363w6UYTQHOi
         UK55sjw0vvLMQwUCz3dT0oWmTRpW0ZDO07JPIcv6sCQoR8SIb4L1GEcuwHw8f90aETcC
         INUXZM0jT5s9Tt4ehY4DsyCnRC5lKk++7FQb1FxQTb+3dnLmEmdD2uGYaYpFdGfE3iSg
         tjnU5N4CyRo+JwyKC/7MyYbeXzhgMBuWMwKfL0j97Wcv1Il4kZ5TxayJmTU+qraYQ6pp
         V1MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=giQoIm7ww9o7WbiRNjhgzGzCrffBGGule76BQnYzoVI=;
        b=gxLUKqjmIDoveFJRaMjycCOmfHiAC3NsFX6O9DvwDVLnQJaKRPlMYGayJVL6sI4PXM
         janF7TgRtfYbDYMoEkGQdtdbgkqnNcxp9nWHclYFw3/POjRzAZv+cPrTYnyJjLvKrDyC
         o5R0ucKWsyH/hFcA9RJW2BD/kQKNlnAXoZzhzx+MRQXpxJf8ARc5M5z6TX0aa8waz4E+
         BAaV8JX5v8IpbCObDth1D61FJ/W8++xrHd+LFFONnmmClciVnjGk8SYTYB5QPlU+fwsL
         QL2+WjzY1svOESfgqF6xXNpcPbkIf+WJ3aIgEkpD7Svo9ha/CxNf47uvoq3tDr4BOub8
         yOXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uI/iQaAn";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k10si380345ljj.0.2020.09.14.10.28.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id q9so814792wmj.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:06 -0700 (PDT)
X-Received: by 2002:a1c:f608:: with SMTP id w8mr432260wmc.161.1600104485530;
        Mon, 14 Sep 2020 10:28:05 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id o9sm21315846wrw.58.2020.09.14.10.28.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:04 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George Popescu <georgepope@google.com>
Subject: [PATCH 02/14] KVM: arm64: Define a macro for storing a value inside a per_cpu variable
Date: Mon, 14 Sep 2020 17:27:38 +0000
Message-Id: <20200914172750.852684-3-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="uI/iQaAn";       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@google.com>

Use the hyp_str_this_cpu assembly macro to store a value in a per_cpu
variable. This macro is designed to be used inside of the hyp code.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_asm.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 6f98fbd0ac81..200bb8d0a720 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -211,6 +211,11 @@ extern char __smccc_workaround_1_smc[__SMCCC_WORKAROUND_1_SMC_SZ];
 	ldr	\reg,  [\reg, \tmp]
 .endm
 
+.macro hyp_str_this_cpu sym, reg, tmp1, tmp2
+	hyp_adr_this_cpu \tmp1, \sym, \tmp2
+	str	\reg, [\tmp1]
+.endm
+
 .macro get_host_ctxt reg, tmp
 	hyp_adr_this_cpu \reg, kvm_host_data, \tmp
 	add	\reg, \reg, #HOST_DATA_CONTEXT
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-3-georgepope%40google.com.
