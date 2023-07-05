Return-Path: <clang-built-linux+bncBAABBE5ESSSQMGQE6BU5JYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 84168747D48
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:48 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id 006d021491bc7-565f0c7c243sf3062422eaf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539667; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLxlRpPE2kSDu61NHQmUCLi3ouKBUF1++w6b86MHu/jspbrT8WIW2ga74JWS2K9MfV
         hrcbwETPXQCst3wRmVPz9rIKolZryhze1lYNsNwSBmaaMBh/EXzJ8+rPlQJ7PGOl06Hc
         +tX/qLVEdAnf0fjJgXb8h8PvKqpbI2gYZqGgSUkokciYqYv9x7X+66HKnWwwz8k5WBnq
         EUF2/avp1OW02JDlLhxOBmiK9/LJ9lLhqkdeUBGxy0BPgEJqI6Lt9bwoppk0bAnIv84k
         YtUzRaIFJfCKgqbXetmctT3VbPZIr0h8n453Bsy97izYzOp/wQILTRqEork2DS6j7DLZ
         cdCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=b7UaGK+wGlOqwZiizXiA86od/oExJ70f7oSOFIR/QFM=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=V56gJuYklAOF0SiXI95xe2WJue400Nj/b+Qb/b7WBKvHYK2qGmvVsxtV2FeW8uWmNS
         qPboQiqPwUQ/M6dADcwg6FXxljpmpcMUcpfaCfUc4g30qG9E9pxx6Tn7eWpSx0jAJNvM
         Cq6fMeLDHIsCJX11sidT8bNgEmrpAzb474me5tH9K8jNUCs33R6lfqcD1mwL5S2+YQiI
         cdagKmtPUtpLDkZGasjrPvF/OE9dqQLUcR02cirjuV9CngocRFyP+NkqihKH54TgBrb2
         LDRn05qePrpmlXN1Pdn5Ezgaw1GRRb5kROpZnsxhzKphrr7M9YPXCX4fBIlXeghOyOLa
         l1yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539667; x=1691131667;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b7UaGK+wGlOqwZiizXiA86od/oExJ70f7oSOFIR/QFM=;
        b=brbkp3yBs97gzgN7f4OtuohUwQqlzFqfYEwL4G2We+NXLTbP9g9dGEsktJ7ZErPR5M
         MQk6vogDXId0mtN6mkqyfXJN9U+EMCoF9nSAcjSXyG9CzHmluKxQyEkXg+lXGpsLEICt
         thM6oq9MnupvuWNZANcR/wO6ExbzqYXfjEYuGm6A+7v/aAziHlfBk7Ch47joS4RBOuZ8
         6W+F2Zh6c7npAyF2ICnwf0gYe1WWj/v7dG4yuddtItbiGKD1+8q0a2VEix63S7QMFU7b
         kw5yvpVD+gh7ge39ekIOLBMGaf+Ms7jXTHV2dpmh3Pg4cg+z4HmWY74eHRrDDw2Gyjzm
         vu2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539667; x=1691131667;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b7UaGK+wGlOqwZiizXiA86od/oExJ70f7oSOFIR/QFM=;
        b=e2F6WtSNX5SgIxUZbl9P+ef8N4f/Ds7ZVwqdxXkAUsqOlTEh456iHI8Cy0HkdnQZPH
         pVkGA3vitxXJYS2cg6hz1UITt0l3r7FsuBG5RjUR/Dz6yKRKxVXlPGSWfnwuCK+g+zw+
         0Vzo/7Uo4KR/UFc0zPErVFQtdQtqGRubQ9YTcfy07Q9phTkuRLQfvz7yrWEE3MdX3Hnu
         +4qWWGTPrYKxJz4VW+HgFJ6ohQUNUAko6XmUx/Xhv+sKuwzcB+4pM8hCAiqIgmfrKMvL
         Vw3AaSeMVLP4RmKZRpTnWlknDto/jTIZPlyBCb6csgE4Jy2/a9QMSE3/KwNulXmTTa5J
         5RyA==
X-Gm-Message-State: ABy/qLYXfoZt5itK66bN+1AgKtEr4S46VfiwS2TqlcCO95ftSUvl39Z8
	HOUm6Z8aF6c8CsYfBGbw/HM=
X-Google-Smtp-Source: APBJJlGWTONSxI21S3PFW+qdycs/UC/tN54N6QxPcvwqD5VmkxHLIXrScvKyieXKYBin3mbX01VydA==
X-Received: by 2002:a4a:5583:0:b0:566:3723:a030 with SMTP id e125-20020a4a5583000000b005663723a030mr4077882oob.2.1688539667127;
        Tue, 04 Jul 2023 23:47:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:dd98:0:b0:565:a5af:7059 with SMTP id h24-20020a4add98000000b00565a5af7059ls5878623oov.0.-pod-prod-05-us;
 Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
X-Received: by 2002:a05:6808:2107:b0:3a3:6331:fd74 with SMTP id r7-20020a056808210700b003a36331fd74mr18006922oiw.43.1688539666606;
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539666; cv=none;
        d=google.com; s=arc-20160816;
        b=FlTW2z4mYp5Ox3AGm88eXlzrCR2ihwRZen9lqP/p711XmQTrDDrHVb+EdZsVQVwFny
         Cn2XIrAosZ8Cwd2d+lgpW6D5BjbGIpCSiitrHKTfcc8lSB/8Rk4KIs/IG0WjkUoIY8D1
         ptspW/F9YX7PAnf2AoXDo/FrsVH6tom9yx5wZ34D4fJYvi8ErNysLjHfrWtcme4qlTzX
         2+d5PoMdtrql6ckHiC82IpiZfOHXAqywGrC/aQmk567n07OCFxfiPzxGDqLMehtscRP+
         BND49ObU9sgVWQ4DUmMgFQTbIcg7ZrggSYAk5rtGbM1o6nlcKNoDF6N4p6+keE+d7Qx8
         0mgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=Q97cMH10b5E2XMJa4LfP6LWKt9typ0QrXVNBpW62Y8c=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=uFBfNlGVD06dVV4oFk/MVHV/Z6W+NwczL6+ayMYAn4dt8GfiDWgMRsmQKRTqupIhIg
         jvPR5/LjJvktLAmRdI8/X1dhHxqwk03RrFEBM8IpbM7i7jaeXWe4HhtgxWaByRqJlmzi
         PFbcXp1kosr6j0M14ajtDyxBPbfHmTdj6j46sqodTiWQDAW9czZP+JhDeEhLYukmhXa+
         sFdmlGR60dNTYj2KqcYvNcn6Dzdn+DKDFmTAQ2qIXm0/rIMnIhnJ6WT4ZMyQcdF/pjSc
         LUtw0JGYLKvpCygbcDgiR/+jsfbu6NDCzSdUuQGbLyqKD+dLNGvHGmNYtonv3lohg0+c
         j/Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id eb14-20020a056a004c8e00b006819db556a2si1106161pfb.3.2023.07.04.23.47.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4QwqsJ5gHzztR5t;
	Wed,  5 Jul 2023 14:44:52 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:43 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 7/9] x86/kprobes: Move 'inline' to the beginning of the kprobe_is_ss() declaration
Date: Wed, 5 Jul 2023 14:46:51 +0800
Message-ID: <20230705064653.226811-8-lihuafei1@huawei.com>
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

From: Wei Yongjun <weiyongjun1@huawei.com>

[ Upstream commit 2304d14db6595bea5292bece06c4c625b12d8f89 ]

Address this GCC warning:

  arch/x86/kernel/kprobes/core.c:940:1:
   warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
    940 | static int nokprobe_inline kprobe_is_ss(struct kprobe_ctlblk *kcb)
        | ^~~~~~

[ mingo: Tidied up the changelog. ]

Fixes: 6256e668b7af: ("x86/kprobes: Use int3 instead of debug trap for single-step")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Link: https://lore.kernel.org/r/20210324144502.1154883-1-weiyongjun1@huawei.com
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index 109221af5d49..07f222743811 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -944,7 +944,7 @@ static int reenter_kprobe(struct kprobe *p, struct pt_regs *regs,
 }
 NOKPROBE_SYMBOL(reenter_kprobe);
 
-static int nokprobe_inline kprobe_is_ss(struct kprobe_ctlblk *kcb)
+static nokprobe_inline int kprobe_is_ss(struct kprobe_ctlblk *kcb)
 {
 	return (kcb->kprobe_status == KPROBE_HIT_SS ||
 		kcb->kprobe_status == KPROBE_REENTER);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-8-lihuafei1%40huawei.com.
