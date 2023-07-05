Return-Path: <clang-built-linux+bncBAABBFFESSSQMGQE2AYAC6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x40.google.com (mail-oa1-x40.google.com [IPv6:2001:4860:4864:20::40])
	by mail.lfdr.de (Postfix) with ESMTPS id C8165747D4E
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:49 +0200 (CEST)
Received: by mail-oa1-x40.google.com with SMTP id 586e51a60fabf-1b02ecda1a3sf5667286fac.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539668; cv=pass;
        d=google.com; s=arc-20160816;
        b=dULXGquEZfZaByudbULM1UelY9s8iv0o/IgOIEIV4a5OQugM+GhP6ffLB8zYmT8UDs
         ZkdeDDxmd/H298zs6QN9VBB8t8d0eCbR7jKd9gsCqeIYGTGudJKdspzuEs72stvsHngL
         8UMb/27URmR7KIJ1aDUU5NKKDdpZbuqVB/WR6oAUcBeHXIrQwg8q7Psa9H2yBSuh5ntY
         FDlzUufNcR0YqmzGUFOGMnvLDUF6sm440cTuPUbtMEokMUHEBPC/hmoP0TdWnwCKLEq7
         xV+dbjkpS2sylcEOOW5V9zeMJb4QmHl75J0xNQjIHfVOtAtg/BMkvsldNjY9NsiMbXq4
         wTFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=qxNQbxgjSQi4ZkMvLSrmafOGqYPPJXElbAdxF/FIwFw=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=mp9At+U5J8rZJ1c9ILtI7POmDNKQtp8y+FBWSLkPYSgzBF46HnG0sRcdSJtijj1OYU
         NY42Aem71ESoRujKAEHoC1SeMN2HV/we4JhGLg9e3G5ZfFp5GAx0s7BSpz0BChxkupN6
         YG+bDtfetLrBdOyKO+S0tL6LZPb9EqRmSnj6dOB6Y+GPbRYDLW0tTH0jE/LYRgQOUwiE
         7dni90Y4Wk05SyCgO640RNiNGTXE8aZp4TdzKmmmxAy4T9Kqd4meYLJthkea842Z4P5a
         rPnOMHtRC7ms0RulCKb7u2WOORzTQ6VGpaNPxT1//UA75AjD7zFZzg7eKT1Kw8KUe3yT
         1Epw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539668; x=1691131668;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qxNQbxgjSQi4ZkMvLSrmafOGqYPPJXElbAdxF/FIwFw=;
        b=axt6ajqouB5HKi5YDG1AQoUJp1ElaaRkstrLdnhfnNu6NW1kK1mHKY3aqodORFeYe7
         /znyP8Kv7q7GVNAvf54tstDlLKAgLJStMzswFv7aZZYj0jWFl4Rc2S9esE40dyWDUWy2
         WwikGTIg9mUYaAe9WOwL3FnL2gNFBJ0jR57g1Xq7224ukmR746odMqt6+gALb6oyYEHO
         0MjyDZI0wt3V843UxLAv/ciw0Bq6DvfbBzfzSAluAvdNvIFXoZ6UxXolQJCfHza3hlic
         PI44SUoTyb2RJWFKW6FXL1VS3sTmSSYCYe5xqbjvzLR9jnPgTMEVl/mzY58z8laXWtNG
         YHIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539668; x=1691131668;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxNQbxgjSQi4ZkMvLSrmafOGqYPPJXElbAdxF/FIwFw=;
        b=aFDFX2mfN/lj/Rv9k7Zo2c3vLSJ15TxCTx5WZILAFryu/facXAXH10j4fEFm91tKre
         +OjMwGxIkjbejA/bGNxr5bRvn8OaGJVsoAQE+mZxgTvYkVNVJaM2tJpaLZkGh9XwVqN/
         Z+uJaYyp8A5Dru6an6BVWIK6uMxOx4IYojkIE4DT9w0nJnhZYwbljskPF5pTD42lG6rK
         P1T2N6DvmW7oYiDwMxERNvPI40X0CnCaTB6YEBCZn6ino+gJk41WhXTbFO533dNcZua+
         sNUTfOHH1Q1QUDsDov0+XCk7eBuyp3ADk62sHhXw3GCk9Hy7dbd3mmpUpnugVcq9hLRX
         BLtA==
X-Gm-Message-State: AC+VfDyCNAQrFDgt1N12rF++B8DcNfUajX9zNJ1nodfwIMXiFphN7GDa
	5Y/aSgLJKGVBbZhg1zsALXk=
X-Google-Smtp-Source: ACHHUZ7urpL+UrJbCLnm57iBv1F4WNqb8StvBsfIiWHNn29wW6zmNngYerrComxTYruiIAR93XDCnA==
X-Received: by 2002:a05:6870:c0d1:b0:17a:f324:84ef with SMTP id e17-20020a056870c0d100b0017af32484efmr19278977oad.59.1688539668603;
        Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:d1c8:b0:1ad:11bf:6d1a with SMTP id
 b8-20020a056870d1c800b001ad11bf6d1als64188oac.2.-pod-prod-04-us; Tue, 04 Jul
 2023 23:47:48 -0700 (PDT)
X-Received: by 2002:a05:6870:4184:b0:1b3:ab3d:8dfc with SMTP id y4-20020a056870418400b001b3ab3d8dfcmr8806711oac.11.1688539668136;
        Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539668; cv=none;
        d=google.com; s=arc-20160816;
        b=D1Q7tsI7Zslz7/LWH/aiGuuJedsvXz1NYi0XMAwtbVth/YD0Fuq6Y8wcQJn7ucGTs4
         Y0eQO2DlT/+8sKkO+M2uugEk/T7XJPZkqdm2lDWD13e/9cokqGfm2+rLEAVVtEMf/+RZ
         78zzyaus6Cg165UxYbji2IU0Hp6jysRhjkT1ArNOq68C7p27O6xiUn1sEEnyrSKXOUUr
         rVuVjll9EMcKMWmA4lh7TzA4f2bphiqHQGzqxD+61a7RXJWTkV65w6z/DIcYwQ1mcwB7
         LxnfYwpQowVOzrLihOlwPfklmmTDClPq+566GfY3iNNbc5xl00g7quGDY3bMl4XZ1gMl
         OCzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=2neAU/IK4b0OhgnlWzsS+Qvp423p2cVzgO8MumxHXIc=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=gxNSWoSYMkLn8vJhB3gjNHElrxUxnUnWQBWXPOf+LoarYiuv35siO37iqQmMIYrK8C
         eodX4qL7LBwqm000stQ4uQm0TqJGp9x2mr0k8D6ctWN8M9mL4DhOeuhMvvcQmEzmFgIS
         qgTHXl8WlgQEtHq6DbGZeBJ1873A/XIH9lyQj/oW8YJpWZ331vIAZx5Fw0+YDBgQjpJu
         PSCvqkrLASyKO1c57ht4XSWFTfWcrnVKr5k2nqXOANrLO7uTDqj24kYQz4AjOzS1iZky
         yLPIHYdVh9OXzlsJlTpcw4IU2vaGXzxMiajFLCSPY8s5/SeMEn7qVTSyhsWhTtDeoRF5
         +G4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id wn15-20020a056871a90f00b0019a232f5a23si1523838oab.4.2023.07.04.23.47.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Qwqrv5cjdzMqJs;
	Wed,  5 Jul 2023 14:44:31 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:45 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 9/9] x86/kprobes: Fix JNG/JNLE emulation
Date: Wed, 5 Jul 2023 14:46:53 +0800
Message-ID: <20230705064653.226811-10-lihuafei1@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230705064653.226811-1-lihuafei1@huawei.com>
References: <20230705064653.226811-1-lihuafei1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.174.174]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500019.china.huawei.com (7.221.188.117)
X-CFilter-Loop: Reflected
X-Original-Sender: lihuafei1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=lihuafei1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Li Huafei <lihuafei1@huawei.com>
Reply-To: Li Huafei <lihuafei1@huawei.com>
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

From: Nadav Amit <namit@vmware.com>

[ Upstream commit 8924779df820c53875abaeb10c648e9cb75b46d4 ]

When kprobes emulates JNG/JNLE instructions on x86 it uses the wrong
condition. For JNG (opcode: 0F 8E), according to Intel SDM, the jump is
performed if (ZF == 1 or SF != OF). However the kernel emulation
currently uses 'and' instead of 'or'.

As a result, setting a kprobe on JNG/JNLE might cause the kernel to
behave incorrectly whenever the kprobe is hit.

Fix by changing the 'and' to 'or'.

Fixes: 6256e668b7af ("x86/kprobes: Use int3 instead of debug trap for single-step")
Signed-off-by: Nadav Amit <namit@vmware.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20220813225943.143767-1-namit@vmware.com
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index bde43592f54a..c78b4946385e 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -505,7 +505,7 @@ static void kprobe_emulate_jcc(struct kprobe *p, struct pt_regs *regs)
 		match = ((regs->flags & X86_EFLAGS_SF) >> X86_EFLAGS_SF_BIT) ^
 			((regs->flags & X86_EFLAGS_OF) >> X86_EFLAGS_OF_BIT);
 		if (p->ainsn.jcc.type >= 0xe)
-			match = match && (regs->flags & X86_EFLAGS_ZF);
+			match = match || (regs->flags & X86_EFLAGS_ZF);
 	}
 	__kprobe_emulate_jmp(p, regs, (match && !invert) || (!match && invert));
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-10-lihuafei1%40huawei.com.
