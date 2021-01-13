Return-Path: <clang-built-linux+bncBAABBJ5E7P7QKGQESHKKCLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C3D2F4913
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 11:57:44 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id n13sf967339qkn.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:57:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610535464; cv=pass;
        d=google.com; s=arc-20160816;
        b=IduHNCBd4g8axb7a+98pD1n0cic/H3Wv1ktnzx7t9PkCBUdLbqQUujaEpoGfOZOheV
         jAaY9Qi0cgjJdqPL/9SbqBkHkpMzrGxTrXPOr72Vh2lBJklyg16ZHGPxpnGnsbNuneU+
         eIU5sI7xzxN9a3au73WA3PFIKstMTNiRhMPb9vpJ+OLW7LlDzeK0o6QtBL6rsKpnIjQk
         36jgIuex3QFVEVOr3RaoNExp5riju/ICu9vFPZYuug8ZzSF0KVokpefqNGLYKLHaoRT6
         r6wQMmlV64D7KTGPzqcZ4Qqp64cvU7jcQkro+IoN0ZC1u3rXPp+MEZ8u072DY2d8/NR/
         ZlUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=L6rYmb8CqWdPuLWpVMwqH9wUD4Izj5IA+AqZiUM8RHI=;
        b=jPS4m1Z029gsbahS6q6RI03BUUsQlHRDNtkppA9gbLas8qutIPkZALeoEbNgPdLjnu
         CFVtW7w0qy+rao4mK2ooqOyDoMbuZTem3eGfsfCG0YhWCiWB/CD/7mjh7Arcn+DqIaRt
         /RwFS6c3VWkbMOuNtv3OfT8Cmbd9M5h5u5PVwNuTlD4NpO7orGnK8RuEumWzoxAyo3hV
         iQ6Ne374mmPeFOP/PbifcxtIPBBBA3sCqEzIVQreE5CT5ndYyn6DFhdyU/bP6JkX3Ryl
         A0S79+b7CvsMRipHetAvvomsrRmaE1gfX1wQD9JnEOEw6ZcoaPH9pOwfz13WB4bi109X
         yVFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6rYmb8CqWdPuLWpVMwqH9wUD4Izj5IA+AqZiUM8RHI=;
        b=HNTltuZ6NePg1iXylhVL+cuqIIBZpSJmzvRrvg0niHZV+x4n6aql5jgWpEmW0Qvqlt
         5saJZ/gayE5PQ7AGpT+U6gFQi6bPxaW1x+NxXvTGHDTdiEBU9RB55uvqQUL5zCg7EnHL
         YeEL5RZkGaqlZvQyIIjcAjSFem4E225oaF3QyOj2hNNUrQiKxQkwYG4LivbjGwqvw0oU
         8LuRnxKG03zk8WLO1w6cOQVzF3zdWzP/kMgvexbSogcqwyCi9jBfJMXCsVnx5TLDf6zc
         FV5wmWF9naPQJPDLAgbhXSq5aa6SfbGoRuwvWeGzDynmYkqhmiw1f6LzXWXVYypsxcdr
         aPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6rYmb8CqWdPuLWpVMwqH9wUD4Izj5IA+AqZiUM8RHI=;
        b=nP+Xhy8BdPDSf9PCX5VCLn018uL+S0KpBVk8EfmbO/tAVk5QSewBT2b0X3SQiUXatq
         GHhT9UJPkNeFXNrrvGAnhp/iPnGOlGNUqiI+HZqZSIUYpfPdcHxDEWop1nLRfV2i8Fxf
         bsDhLYhzLPuSptCmXP9zOMpuxVvXe/claywJCZUKwPMPX4wsxLtjN6G6w32DEO4V4ttv
         Shjt3218HhLIg6wc5v/lO05tnWfxXG5mlKvbuLnpJ6dcbD53r94PKZvCOU0rMPjDDDlO
         krwHY7/746eYzFJh0sV5eJ4Q8eHN8cC0DPs1fvUMtOrjKlLh64f9uFCIJmoBAyUT874L
         LZ2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332nDnTeY38Fzzb/NvZkIEE5uwf+OagUaiazFR0u158XBn6WGAL
	xpgNpDXN1hk/4TjZ0QQMOsI=
X-Google-Smtp-Source: ABdhPJzrl7C5pHitS9E05VGohOKE+ttpRiBfpabRi54XB8dWPzw0WMcPB3T/z82K9QBWbLs7+3fOJA==
X-Received: by 2002:ad4:5445:: with SMTP id h5mr1461371qvt.22.1610535463909;
        Wed, 13 Jan 2021 02:57:43 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4644:: with SMTP id t65ls898501qka.5.gmail; Wed, 13 Jan
 2021 02:57:43 -0800 (PST)
X-Received: by 2002:a37:9a4a:: with SMTP id c71mr1340920qke.56.1610535463135;
        Wed, 13 Jan 2021 02:57:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610535463; cv=none;
        d=google.com; s=arc-20160816;
        b=hKdDGM2qc76kAYxNbLY/XcX+3v0iHH7jakFPe3v2Ec+daVaNVObntz4ML6AwH3a+zH
         iFM98qTkp+5Ej6bSXyes0MKrMaB+TUfjYupUZARAzwwbbCVb3YKYtbhblaoKA4m/cPBc
         N9w2P7m5smkRi3Y7pirL6jluaZlmP6Z35UtU+36wutffrcIeL3ZDuQMjzCHHVDm85X7O
         6wqt57sIGzFqkox+sZeTq1JDw/xxK4WVYQtLWYEXgu7MtGzc1YzSr23GvfptGtkJC3Zp
         pqGUnjyBJxZ0M1BKtabpPqWD/1wgE8Pk96RYmAbnuFbY5s5wm/vPwzNoOorhdE34tbdQ
         Muag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=sMZMm7ya80Ab1lo/4ftSGP3sJjlPDrPT/XZw7gdNNm0=;
        b=dBtHcgj9VXU4u5LeBK8/ewQv3f55nbP1qoOztgf1NfC185VNTGttoQSDECiX3scaMq
         KpJXXxSOEiTuMjtP1laDun/hT2K52DdtcupCfzAD0o1NheW+iqOjDam9RC8iowvuzK8z
         63pvqqZ0mMyOcZMwxOkWFYcX/9b+bEeWKZ2vLkEUNauemSSSGIJhdZ61TeOSgwv2pL66
         mO41kd9fasfuARMXNHDM5wvUcf4Hu6BmoGGjDSU+fgtkNRQb5vhzLVFVuTH5i2/6yjnt
         ZFofNufTzo6gcEW4elelvDc1EWS4UTyAMUYl3Xv36TjzgJfdUhswazdBC5WHK2Arf9oj
         V6FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id p6si25860qti.1.2021.01.13.02.57.41
        for <clang-built-linux@googlegroups.com>;
        Wed, 13 Jan 2021 02:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxr78d0v5fhLMDAA--.6498S4;
	Wed, 13 Jan 2021 18:57:37 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-sparse@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH 2/2] compiler.h: Include asm/rwonce.h under ARM64 and ALPHA to fix build errors
Date: Wed, 13 Jan 2021 18:57:33 +0800
Message-Id: <1610535453-2352-3-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
X-CM-TRANSID: AQAAf9Dxr78d0v5fhLMDAA--.6498S4
X-Coremail-Antispam: 1UD129KBjvJXoW7Kw1UZFyrZr1rXr4kAw4kCrg_yoW8XrW3pF
	1DZr18KFW5ur1UGr98Aw12y347Zw4rGF17AFyDu348ZFyaq393X390gryYkF97Za9FqFWx
	Kr9rWrW3Cr1UZ3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUPK14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jryl82xGYIkIc2
	x26xkF7I0E14v26ryj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
	Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UM2
	8EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS
	0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2
	IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwAC
	jcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka0x
	kIwI1lc2xSY4AK67AK6r4DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4U
	MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67
	AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0
	cI8IcVCY1x0267AKxVWxJVW8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4
	A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU
	0xZFpf9x0JUCzuAUUUUU=
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

When make M=samples/bpf on the Loongson 3A3000 platform which
belongs to MIPS arch, there exists many similar build errors
about 'asm/rwonce.h' file not found, so include it only under
CONFIG_ARM64 and CONFIG_ALPHA due to it exists only in arm64
and alpha arch.

  CLANG-bpf  samples/bpf/xdpsock_kern.o
In file included from samples/bpf/xdpsock_kern.c:2:
In file included from ./include/linux/bpf.h:9:
In file included from ./include/linux/workqueue.h:9:
In file included from ./include/linux/timer.h:5:
In file included from ./include/linux/list.h:9:
In file included from ./include/linux/kernel.h:10:
./include/linux/compiler.h:246:10: fatal error: 'asm/rwonce.h' file not found
         ^~~~~~~~~~~~~~
1 error generated.

$ find . -name rwonce.h
./include/asm-generic/rwonce.h
./arch/arm64/include/asm/rwonce.h
./arch/alpha/include/asm/rwonce.h

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 include/linux/compiler.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index b8fe0c2..bdbe759 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -243,6 +243,12 @@ static inline void *offset_to_ptr(const int *off)
  */
 #define prevent_tail_call_optimization()	mb()
 
+#ifdef CONFIG_ARM64
 #include <asm/rwonce.h>
+#endif
+
+#ifdef CONFIG_ALPHA
+#include <asm/rwonce.h>
+#endif
 
 #endif /* __LINUX_COMPILER_H */
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1610535453-2352-3-git-send-email-yangtiezhu%40loongson.cn.
