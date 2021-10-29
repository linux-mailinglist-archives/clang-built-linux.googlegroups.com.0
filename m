Return-Path: <clang-built-linux+bncBAABBFVO5WFQMGQEIMPE75I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B4743F4C8
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Oct 2021 04:06:15 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id 12-20020a62150c000000b0047bedbb0619sf4235734pfv.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Oct 2021 19:06:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635473174; cv=pass;
        d=google.com; s=arc-20160816;
        b=YepzmurCaeTyOKgHb6LEl29ZwyfOGBaNIRe67Mt1xNzYf37fngat0BSRp2t45amb6K
         qpQzl6tRmMRQ4mrpZDqf4b81wcx1xnsTx9V8kqJ1EOLzAQgWre/FOpdAWyFWjGwf3ly3
         ZdUCeoBr1/H/P9KsYf5B5PQIxQY5Fiir6RtpSsoL+/iw092+5QXWbFyqlRV353rgGObU
         u7TtXpmqAS5S6R1t1NuRqEzHT+x/cyaE9dbAFgyfpKRA/NbYGAE1rBWYlJmrgrfWZ8Rc
         rJS4Ld6BSfSVimJ+ThLUV79IT8+xFRJNBlEmZrmWAjUccryGlr+NqGeB4tEDdFu7mkCm
         Jv9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=SDpht8IfsujOtmcjSfeLNZUoYqZMmpHS9gJZTm2ZqCg=;
        b=e9zzg9cJ/V87HkdRs7wgdzxnshvCGWI7ZSG9bQF3k2u9ykB9+Yy4d14d7zs/RQj+dA
         awIIs78E3WF9VNWDKK90IQ6aqbozsJ2KZyx9wzillJ7607SZ7Lqb/zhMPBGRMID8dvAR
         n5mVQNxhLGpSZbFvwgLSYMTf3+/9snqZV7s/0zfF7qvEOmRPvQqevG1MrQpcnJja//fG
         5vsTvRyEZq8Gpf9p0DAd7ClvX7Ig+nOI/AzeJdZV3rvqR2TIzVs4b2xTX5LkpkQu0eN7
         ASA/WdhRi3Z4piSAhaGvwQENEwl4Zq/CwlAirMhMGdJSoSJbdjDoSI/zw0g6qXXBcmZ4
         SpyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.25 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SDpht8IfsujOtmcjSfeLNZUoYqZMmpHS9gJZTm2ZqCg=;
        b=eFIqCTN/+eO5dSCCzYeNcaghw1aYhS6gwkHGA5l5/lvKCBDIioRd6kgcNmaUAfRKTD
         Z/TK5icXDTXD7N4r2poAZl2TIs188tOKiHHPMa6p5wKxSnymbFEkfuVOFN4MsKWVRk7M
         k7kPttor4NOLks6pidJS6uxWYoizX6YuUT0gfYti4eBMJRO/M84IOA93RNSZCIgrn19j
         qbgnZx//PnAtZDOWbW2ZBHzmUCZfkWL9LlHM8sWxFEjA67TwdgRfsqd5iihlYDdrNiTS
         2DFCQNlU7BdiqnZwI1rBTOGYz7zs6R/2AMjwRkYyMqzFoWEmw8L7vPSO0ACk5ckkMqHc
         gung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SDpht8IfsujOtmcjSfeLNZUoYqZMmpHS9gJZTm2ZqCg=;
        b=AMTWVhkjl/fOY3O83uK+x8vk9dRog4EQpvxRnvWhcVY6YhcKYokcHsrn0juAVrHsEk
         rCVWnu3kyA1w7jInUhhclxuu/Dm6tV5YaFxrvbShjlJGZn9Yw+T+92Cfaef++tI2Xkjo
         fFuad6heiL+MqXY6Pxzyec/JA7kVItad6lfLiHeHRmjuMKRS0txL3UJJzuhRyO27amh+
         0HL68Xqy19fESS+b7izm/gw7o6ulsatgM4gPddluE/pCCyW3yab3/zwDHGguGm7IRujL
         P5U6rJUxqu87Ywu01wBh3jKpP6DaA/h2x/hX1Wp/7n7xiAXoUNTodOzS/ANLxNwGvnc2
         E6rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZWWokp+bUqgB6yO2XF944Vs4vUtFkmVse6K5PVNMA/iH7k0hi
	stz7WOXZBecdO6rBqulN46A=
X-Google-Smtp-Source: ABdhPJzEQeB7+wt80u0ardjfPYrlXNXULmIhZYx5ry3NTOlh+yvKbq/EX3qDX0spS0OjvB0XDcmcIw==
X-Received: by 2002:a63:84c8:: with SMTP id k191mr5858652pgd.13.1635473174228;
        Thu, 28 Oct 2021 19:06:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a409:: with SMTP id p9ls3139291plq.3.gmail; Thu, 28
 Oct 2021 19:06:13 -0700 (PDT)
X-Received: by 2002:a17:902:6b86:b0:13f:8d7a:397c with SMTP id p6-20020a1709026b8600b0013f8d7a397cmr7429153plk.50.1635473173626;
        Thu, 28 Oct 2021 19:06:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635473173; cv=none;
        d=google.com; s=arc-20160816;
        b=gT4rk9jVy63mCvAWaNuo3CyQeokpkflZcKET9Btc3qmiWWq0uLvC/N1KG7nPynOiNE
         xlAcIH8FBVm+TMMzl8b5y0WeBrm+u8qU4tHvgqfn2zuVia6bvRJyA7g1Wy3Of9M61Ifk
         4C0UulTAIREQYPRdY5QlDDKciShXf790qMKXM3lZfAsDrKahp4uwHsH7thZRgHRe01hO
         DJPd3A7ozB+mTqqzb0opHdeAeL7HGS/npm56O0y6+LN0mO7mXgvllpCvoYpc5btNqMEv
         OibMat61PX5IUjYfLsfSRMlH1zenWktKxGOL+L58TpWYnvgrXWW6jw8f/EvdYd4hPmrg
         RLNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Y+d7oy8X4Ipk4vmpmYwlaX3GXY8Qo/lQ0fzUiwbWxIk=;
        b=eM0JwZoijsbtFlcXcgKZ8yyIBv38eAnO+SV+Mkl+1MXdwfbF6+l5dnwqJKTtf+dLUw
         9kCu726KNw0qWhwaKO+/+EZm8DKWJceIUhDNDT2Lwg2i+cKGEp3lIJVLucbbjVdAOq1G
         57isovSwuSh3VkRXlEXWD55FQKTn7E/UJT+W6SBoSD6Ey+xAR803fACqPqEpxYUWvzr9
         odKiMS46o4fvq3fM1oL9R0cx5iyeegq2w84r7gTlUw2szWjF8lJhDU4YQSyhsm3cCNVm
         QN9ipruHO0dGa8Nj9yEQWz6XdM+M5wZaQ+b2H58eftjI5kJfjnbQ6MPk7NrWsD1tdPCp
         cGXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.25 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
Received: from cstnet.cn (smtp25.cstnet.cn. [159.226.251.25])
        by gmr-mx.google.com with ESMTP id ay7si259218plb.4.2021.10.28.19.06.12
        for <clang-built-linux@googlegroups.com>;
        Thu, 28 Oct 2021 19:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.25 as permitted sender) client-ip=159.226.251.25;
Received: from localhost.localdomain (unknown [124.16.138.128])
	by APP-05 (Coremail) with SMTP id zQCowABXGfYSV3thW+2TBQ--.15439S2;
	Fri, 29 Oct 2021 10:06:10 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: jeyu@kernel.org,
	ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>
Subject: [PATCH] module: Fix implicit type conversion
Date: Fri, 29 Oct 2021 02:06:09 +0000
Message-Id: <1635473169-1848729-1-git-send-email-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: zQCowABXGfYSV3thW+2TBQ--.15439S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKFy5GFW7WrWrCFW3KF1kuFg_yoWDCwc_Jr
	1DXrWjgryYvwn29a13Jw4rZryxKw1jgFs09a48WFZxJFyrtr13Aw1vqry3Zrn5WrWrCFn7
	Xas8Jrnxuw1IgjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb3AFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr1j
	6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26F
	4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02
	628vn2kIc2xKxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7
	v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF
	1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIx
	AIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWrJr0_WFyU
	JwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCT
	nIWIevJa73UjIFyTuYvjfUO_MaUUUUU
X-Originating-IP: [124.16.138.128]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Original-Sender: jiasheng@iscas.ac.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.25 as
 permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
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

The variable 'cpu' is defined as unsigned int.
However in the for_each_possible_cpu, its values is assigned to -1.
That doesn't make sense and in the cpumask_next() it is implicitly
type conversed to int.
It is universally accepted that the implicit type conversion is
terrible.
Also, having the good programming custom will set an example for
others.
Thus, it might be better to change the definition of 'cpu' from
unsigned int to int.

Fixes: 10fad5e ("percpu, module: implement and use is_kernel/module_percpu_address()")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
 kernel/module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/module.c b/kernel/module.c
index 927d46c..f10d611 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -632,7 +632,7 @@ static void percpu_modcopy(struct module *mod,
 bool __is_module_percpu_address(unsigned long addr, unsigned long *can_addr)
 {
 	struct module *mod;
-	unsigned int cpu;
+	int cpu;
 
 	preempt_disable();
 
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1635473169-1848729-1-git-send-email-jiasheng%40iscas.ac.cn.
