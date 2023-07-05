Return-Path: <clang-built-linux+bncBAABBENESSSQMGQE5Q3SNCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B99747D45
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:47 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 3f1490d57ef6-c386ccab562sf6802471276.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539666; cv=pass;
        d=google.com; s=arc-20160816;
        b=plToV4LhKJYmNAj57Jr/b48Sdo6yWMvK4jdTju3tuWBv6Rl1jDDQSKpB6Ewy4Td8hP
         3NfQgAh2lfCKlJ0arAKjbYhHj65PYNB64PEBYSbQL3+wjVkQe24V2V64oGh/0VbE29ps
         +TjrEW/kGXqUhJ54P/lxwl3U6vk29rVuS9rwFWjX5CUqt1VpZEXBr9Mu/9LlQr7BTVlT
         EBWSGnsryefIGJnuCaf+01ZFu/mFSh96FGjzLZqRFabLR7EEZ7LXeCR5vN2Fa62dilLb
         OhQ1TDxfvqIGR7Tfcs+0a4vUdBq6szHmGRhsw1h/3bdX+iFvp41ADUHiYji/JhFRM0D1
         PQHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RbaWKBfBtSg5UtcX/EQPJ8aoHkBGxJJz2Xqt5ShtSUY=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=FLnTC/xjVj0lzXhBcNJ0FzNu+Xv4oZ6Lq11W/tIwcIa0LDGuMQgvABG9X8jul3I4iy
         fBigzgWW6I9OzBkJNW/qaCsd+01bIQwGOSFn66oX+qOGoJzkFe7/XQ6K/BqvGFmYeJT+
         ZR0V01aHJZCPeLGmkPfmJ3ndxxfyTQzB21Pg4wGo01C/f3LTE8cXI8z0p4NGNYM1Z04j
         yWuVZh9P3uO0dmq6fML0NSuv9RzBUNz+j42TdcmhtBxCyuNObcwdFmudY1SAZ6575CXT
         PzKhJZEgBMrxRtsjCw7Z9346febeTSmBdvqb5lW8Nl/ABjJAHW5ackUMwso+iUFtzmzf
         DwZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539666; x=1691131666;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RbaWKBfBtSg5UtcX/EQPJ8aoHkBGxJJz2Xqt5ShtSUY=;
        b=kgjER9u/LMphTVTCNwnJY70GeddLQnRdGWvT2yGFMJ6YDDC++yXDTg6R7Y5AuqeBUL
         w/6PXIVMrWg8+tEFX4CXDz35TDpokFppISHf8qjux5yPkcPLYaOa+GvF8YTa+YI7H4gg
         RQIfuOL1MRn272jVuIjsg9BvV3OJtYDAdubLr8WjIKqzXBKhcfKByhog4/NdMzNkgWp4
         644iWgKlfbUUTvxmoyXCntumn0kPbP8Tfs39SXMIuRRraVYe/Oe2AcwvILuHdMwbiQc2
         u4FHWnOy4qN33bBoUCLKt/cMJRg4CjJCMne0NvQu1xVcGRliBHcWd9EHg0tPM07aHt4D
         GAPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539666; x=1691131666;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbaWKBfBtSg5UtcX/EQPJ8aoHkBGxJJz2Xqt5ShtSUY=;
        b=gt1ID2RpWQxTYfD0qDp8/RPOuRXdpLQZbuic7Wq4qnrA9axwjKJcehpi/6NmZ/NvA9
         JC8JXeR3uPajE/Ac6u6ZmUeaD3fFaEfLmyWpEwdLpWF8uVIjI6Eqn1mIwq4iQFpuV5ZX
         euyDRekG+GThwkX8RS8OmdBePziDv1KtzB6sLHH6OWI6AgWKzsOHZhtOTDq5MEZZDW4D
         uqlb1JLds8cR+eUswHhV7KtT5T/6T86RgOwn1kJvqkDRy2KbrtalkvvRjdfXFZaVj4Fo
         8kXaATIKOw3NL3X8LBXMWWSUuEtZT2NmTW4uJYRiM631yPfTHMMqmFJf9V2Tu4RZgZMi
         F6hA==
X-Gm-Message-State: ABy/qLbHkMvQU/+1NZds2qpqzBj643SCeYX8xswNYAZDOYpyHWZ/2nDc
	8NyueLGzJRiy+dKJum65rj8=
X-Google-Smtp-Source: APBJJlEeeN6WiWkIdxT8unBwenntVP6ewWYaiC2AhjASofOsufqmeFNXyHK317B+mDPIIWNYelD4JA==
X-Received: by 2002:a25:7310:0:b0:c61:daee:2c8e with SMTP id o16-20020a257310000000b00c61daee2c8emr1378118ybc.63.1688539665972;
        Tue, 04 Jul 2023 23:47:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c2:0:b0:c01:1ac:fc10 with SMTP id 185-20020a2500c2000000b00c0101acfc10ls59103yba.0.-pod-prod-04-us;
 Tue, 04 Jul 2023 23:47:45 -0700 (PDT)
X-Received: by 2002:a25:b315:0:b0:c5d:6992:6fa7 with SMTP id l21-20020a25b315000000b00c5d69926fa7mr3490289ybj.9.1688539665216;
        Tue, 04 Jul 2023 23:47:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539665; cv=none;
        d=google.com; s=arc-20160816;
        b=kC9fetuVHRHOfK8SVw0yWfAf7fp194UtiIumT1sQpgE9SfTkUrzM3DnNbozgYH5SAg
         2Sdx4tILWZueJ/kjXR6YnofRoXtaQxjPxTuiVbwPCFpMpNtYn8Qz1ow2IPDfV6mYc6YZ
         Q+UQ0PiiGhqb9adYjqzPGDZY8eKtDonX/ND5n88w7VtoCZ3+ln72PPFyquUnZodSsCOz
         LS0SSnHqOhqKFN2rHsLeTVZhZEH4CZPs2zokQuSZA4pvp8QtgB27e9ZGRZYxmB2hjoZT
         j+jYD0zlmycHYOp+6YbfJfD3DXM/5Q8ItftEWGfT6pAM6HGXHlHANSfSm7LP9YzRogUx
         RDSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=XLJaZSovZ8IhzrvehgD/V7wWdm4jz0Qy9v0YmaXQiqM=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=QdTa9CRIcGe+kSWnVvLLish8Tf9VVAM6NrKfOAlVdJrzSO8Hqx5tXXJ6jhYv8PxHl/
         CR7Z0tQkE3I589Plhi/1dLo/bVDjJnKel6XC5i28ff0djmzHmeggDC3II0bFQ3tl1MNX
         lUk8VEwUdkFU+O2o21xwVz//L4JmniB2HAk12/55SzTD2tElEnbP6Kp8R9p85PkVduRB
         8ZVEOsJJDnRg9bCYJBjJax2rq9Z+2zPKg4rgFUNkH+4+UbxZVv8g455EpXq6Zc2tIK0T
         crMT+s0psn/XxoVz2zx2OVY7nEdTI9IFLt+UQcqiG5g6LCm4LhmqNd5jaNBNl50bplSw
         M0Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id d81-20020a256854000000b00c5cd7978953si228224ybc.4.2023.07.04.23.47.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4QwqsG2MhhztR6Q;
	Wed,  5 Jul 2023 14:44:50 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:41 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 3/9] x86/kprobes: Retrieve correct opcode for group instruction
Date: Wed, 5 Jul 2023 14:46:47 +0800
Message-ID: <20230705064653.226811-4-lihuafei1@huawei.com>
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
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as
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

From: Masami Hiramatsu <mhiramat@kernel.org>

[ Upstream commit d60ad3d46f1d04a282c56159f1deb675c12733fd ]

Since the opcodes start from 0xff are group5 instruction group which is
not 2 bytes opcode but the extended opcode determined by the MOD/RM byte.

The commit abd82e533d88 ("x86/kprobes: Do not decode opcode in resume_execution()")
used insn->opcode.bytes[1], but that is not correct. We have to refer
the insn->modrm.bytes[1] instead.

Fixes: abd82e533d88 ("x86/kprobes: Do not decode opcode in resume_execution()")
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/161469872400.49483.18214724458034233166.stgit@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index 19ca5164be4d..40d5c603ce8e 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -464,7 +464,11 @@ static void set_resume_flags(struct kprobe *p, struct insn *insn)
 		break;
 #endif
 	case 0xff:
-		opcode = insn->opcode.bytes[1];
+		/*
+		 * Since the 0xff is an extended group opcode, the instruction
+		 * is determined by the MOD/RM byte.
+		 */
+		opcode = insn->modrm.bytes[0];
 		if ((opcode & 0x30) == 0x10) {
 			/*
 			 * call absolute, indirect
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-4-lihuafei1%40huawei.com.
