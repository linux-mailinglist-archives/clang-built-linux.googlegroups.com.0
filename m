Return-Path: <clang-built-linux+bncBAABBZXLTSBAMGQETQEVQMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E7933210A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 09:46:31 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id s66sf2089286ooa.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 00:46:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615279590; cv=pass;
        d=google.com; s=arc-20160816;
        b=HwYyO/+3oSxIH3m4lyCSYh4ZJ1peL4EE+ql2mdQZXqsOcHO3sCT/gTeo/3hATTGJRZ
         X033p3RjZ5xsyt0MVU9SrHcy+f+O12gLIUr7k8OvYRvFM2n2O5EAzYYJv49jJmpERqMJ
         LgfVS4CuLGLPtuGJa8S0O82h1PqqF6Kb9JtkqIwt5hMPPWdRk9L/ilKHHIi3MPWs87f5
         J46a8u3KvBBwebNwImJOHz6JM0V63rLr25h86dC3AgoKAOi6ro9sw0FM3w3ZtbHwRS3P
         C33atXDSjLF2trEi8nbbPNv0vw+DKuKVemwGP9O8+23usdKpQh+RG59hz+XOrejMNMpi
         vqHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=CnYbQkVhAG8TwHYuLnb/IheuXKNdU93i4Z9jwEM32sg=;
        b=GRldT9XmspMZQreFUgrLfkmExRNkqY4gS/0x1qTTZq2pKvp9o4MmBcRsnST+6GhLUT
         u8nTo57HhOJSz/v5ZjqOogzi/ekrJFayb9bxr7beO161dKoCi/cvJ0GCUQsD5jl+fZuh
         sQzHdOba2WXcsmmLAWkVKIncDlImfY36bjjrOWNMsIF453z5LrS+Im4iprLjUYOwFK8v
         0hse5l9GYglpqOWVBkXkrXRDNWCwP6z86fIcVoLAV4vxUqIMDGIen44p4V/hcQxx6Vk6
         S4fsyZX87pponqHo6ztXRamaafFlz3CUW4GguYqCgOgVNqOHQiJ6ult9H6jn/DmApDH3
         9Gxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CnYbQkVhAG8TwHYuLnb/IheuXKNdU93i4Z9jwEM32sg=;
        b=DSD8e6DNT/gb+RCTFNfRnX8u9OGpeRUt5ip0oEJUX+6eszLjGzNeEvfZgI2uRon7m8
         jqBsZXJLcHtkmW024c26+SasbkLxZBVyyUGIMIdC7JsxXkqAeNw16RWXQPzOpGRXSf6l
         pyCJvQt2t4us1VsP/JE0gpm3VFSz7HbfMthY/JqCSY20wBmjEqwalWCWy7HU3kUwBkzr
         HLKrObSUMc6hYwCcPKubRptIFISThPmyaYytSg4eHgXZ1iknYm0vhd8UTUU3BIiCiH+E
         JNoszsIASFbW2d5mMJ5aytIaxlFP28C0ERLFPiMelM2p2KnlD5eoyKAcwAIClR1UNgZ4
         CDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CnYbQkVhAG8TwHYuLnb/IheuXKNdU93i4Z9jwEM32sg=;
        b=scYab9JfUQy51qJWSUcUjr2JtXH6Yof02k7gn6oM9CTsxmdl+p/7DCLH3H8qs5f0QB
         8LfxBOBjL52hsRDXrNF2Raw6fkSjmlUU7WpL4Hds12DKSV6M1n8VeMYNjXgjEeTY9WfQ
         USnxwh8rsAAZoicOS5Lk4JJzGJuCQ6QWsau3DS/fPfy1eOFtCFUvwV2h6dzTGvyTgWeR
         LzdTPkxu+qOffdz4j3JUBbAJ3eFvu6TWusW3B6ZsKt9smX/1h8FegfXLLZceo9KqxZfL
         T9fXqLlPunhByYbHxFyYhi/wzdjsXST204+KJrkVQAeGvpozvnhPofhJuNQxhz5rTmIP
         fsvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533W90PqeGLwzM7VdQ0vfES4LATCWzTBJDJnxwxbHo9xvxt9fLbM
	MIR21pXsA/C7tCqAT6ZRg2w=
X-Google-Smtp-Source: ABdhPJxFFKt4vcHqKrJhpDzTZpYDGB8/1xG6dIzA4kzcNYPQxr+lELyI8XdSdHdkP1b9mikRWUuUfQ==
X-Received: by 2002:a9d:53c5:: with SMTP id i5mr22236255oth.159.1615279590468;
        Tue, 09 Mar 2021 00:46:30 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c86:: with SMTP id c6ls5374063otr.5.gmail; Tue, 09 Mar
 2021 00:46:30 -0800 (PST)
X-Received: by 2002:a9d:2f24:: with SMTP id h33mr3315427otb.128.1615279590071;
        Tue, 09 Mar 2021 00:46:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615279590; cv=none;
        d=google.com; s=arc-20160816;
        b=M8hdmwujPQj5qUHLqfqH8mqHWMz4cCutia7wjTxVyMThmWFXBYLMM9V7Jgny8rdq3Y
         4hwUlWSLo9taUXXqWnPE2sRE/722o0DrsoOA6vWePdon4r56MyVChRyqPoAgbipy+ldq
         Ux8p2CC12OYtqH+mK4iNXAOQW4kp9aJinF4QRKc9y++ZM5JsD0Bv6yUyN4TJi3t7a/sQ
         3XZ78pULLRp+wBl7O86LGd4Y8/dTVlbl4em2Uw5cGwJilWhC2pagA66RplZxs0a8IK/R
         Gl9rNnb7OTIOy0XxAJJP3tVaMR6ed6ckKYSQuc+BzmOUqKnNdRwcuVO7pSoc7Q5/eUS9
         3fZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=xesvDhYyU9554MGE7eIuntPXPYfuKYTKfEuailgiQ7g=;
        b=AjqJIehyWm927ZgOTl50npMgqpvvv7WzhZg4jLi8osg0dAkFqOhl2ST180C3skb+Y8
         5vCN0aipFqTx6WvgmGysUlEz4b/gS1Q1dcXNCNToecvtxvrBKKptREscDJOUV4sZ7c7T
         m6orfHvXrDnC6fT5NQoTcFVqu9V2InJA1Up2C1fXS8vJOtXtgP3Ph7p2etBDe1Pq9L3Q
         txQAL9tcxNKQOeXixmhL4L7q0LaDsvA1jU3fvYJ7Q/6p+ajprMWBKvNYB2K+4vB1cftW
         1/u1FGIghvF3WM2+g7FjkvIaBgiFEY2/sPzh67ypT58geCwt1RtyzWVl0ZNMSTmAW0UB
         Hp5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-57.freemail.mail.aliyun.com (out30-57.freemail.mail.aliyun.com. [115.124.30.57])
        by gmr-mx.google.com with ESMTPS id q10si1065051oon.2.2021.03.09.00.46.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 00:46:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.57 as permitted sender) client-ip=115.124.30.57;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R121e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0UR4a9FV_1615279578;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0UR4a9FV_1615279578)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 09 Mar 2021 16:46:23 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: jpoimboe@redhat.com
Cc: peterz@infradead.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] objtool: Fix a memory leak bug
Date: Tue,  9 Mar 2021 16:46:16 +0800
Message-Id: <1615279576-100603-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: jiapeng.chong@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiapeng.chong@linux.alibaba.com designates
 115.124.30.57 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix the following cppcheck warnings:

tools/objtool/check.c(1102): error: Memory leak: orig_alt_group.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 tools/objtool/check.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 068cdb4..bfa7c31 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1099,6 +1099,7 @@ static int handle_group_alt(struct objtool_file *file,
 				     sizeof(struct cfi_state *));
 	if (!orig_alt_group->cfi) {
 		WARN("calloc failed");
+		free(orig_alt_group);
 		return -1;
 	}
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1615279576-100603-1-git-send-email-jiapeng.chong%40linux.alibaba.com.
