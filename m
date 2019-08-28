Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC4NTTVQKGQEJOOZFGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9E9A0DDA
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:12 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id v134sf843266pfc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032971; cv=pass;
        d=google.com; s=arc-20160816;
        b=sZDlOqlaJfiHvq5JhnG1A1eHzxWg75IWqytmvxScFjlMfUZ3JpGwVsvMF5YqGPhyUj
         ab0/5GMeVyObMlwT6F/uWlwXW/w1DTZCbxV8QJzTjUBD/n3uXmvtbBKypiCw70njuSOG
         S4eydcswsNoZ0gPpOJvmwp87izf84ZORpMJkcpnzDt+Cud7/NwnOvCDt/DmXG/+aDnzR
         y4CHF6syC+y8me6Jplyt9AhnTE7Su+GQ376ixqUenvBcbhK0aDlpvZEP6/1QxHoEavwp
         xPc3p6RDl7oqvZvFo4K34nZ/mzgQsBIJmZkDSia33ZzVuzAH4OhkmdqrfG5enm44+cPq
         201A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iw9pdT4l/7AudJWXONdaY4vAtf71U70UfiT7HKL9m5M=;
        b=QjMGXqPCsSBRH2f8eYIIO6Py0DNVLSe4xfR4C8Z2rVPUW/7t/+rgQPJmyhQqLex+Vn
         2pO0GS69CyQ7xfaDElw7G7IXgilVsXl9y2ZelBO/z2sV1O1yVu+MYAKkYISQcBfzgC5v
         mTbaSnvYxtwENPFOY8JaS5fL/L++BQIWGAAsuCpbl7Hng/6r5VepEpu2l+hOYXKOSmvV
         igt620Fcg4I/CZgJTyMOFp4i2pmGtmkLa35Pbapu92XfcI7tkzcUHPKKs0vSbccFyA85
         99qNoliZ4WjRTDXzW+8Gi7dRii0OMyo6b6p5r+WbxFHolGdQwrW3pMdILtJ/7RpTh8aq
         TFsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DhOt2NbA;
       spf=pass (google.com: domain of 3igznxqwkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3igZnXQwKACUOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iw9pdT4l/7AudJWXONdaY4vAtf71U70UfiT7HKL9m5M=;
        b=Cbm5Mx+cFbOqtxxGgSqEXTD9L1mthrM9gIKwtIdN9GjY0NIYiSVVH8QPAN3DUE9u+7
         9o8SjUs0N5DA3qhpJRhp/5Wui0DyQVVR4oSACmFJssRp8PK2pAHSMQJZ+GtO4f6r4coU
         isu7k8cZIFWHqh6qhSD51JRaMBmyz1I59S0S4d5vUOh3HoIy+JZa/DKfd6th78ax1WBe
         qeTGp6YAwSUbAz3QUVO17rircCTepzmMXRe+CiPWhoo5QP0XVoizN21Jg9rQVl2NSraJ
         QaRgxxbCiKvU50sgaTETgxNzWD/DJUYpbFRTZZVhpTQV2/vPTVAJmAG6Fqd7cblTCmQa
         fh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iw9pdT4l/7AudJWXONdaY4vAtf71U70UfiT7HKL9m5M=;
        b=H66DCeSlQnDpJjYqhaDkdvGtve8Z025Lyg2NeZHqiDGymM9nR7DSoB2YeFN1L3bnNl
         1y3BljKIkW8wBTNNB4EA3Qs99INcRaiFv/jMlY0jAGxJC7L1vXxaJr7Kiz3c9a5A7fP/
         XMtyAT1XCc6ON2dDPBNVvq+0/8/1bca8doPRAt6ZudoPINTER62FBiFI+XVWP1wAMP6g
         4wKgR6b5Hnn6FW86UH7ugmjB928vfVrcfB9gXjs3KxhFqvdltVzi288LMP5LaUdjs2z8
         8JIRE2WE9LzKOo27mYcc6rfwr3ym7beHEC3awLGypPGwBjVE+/ycB8a8+dY7w+nBKxIh
         fM3A==
X-Gm-Message-State: APjAAAVbTeR0S0lPmjEIKFvQ9W8+mltErR5sRQJ/pXie1s40JekamOIT
	zP0PGhnIHr7Sh31jKvQOTNs=
X-Google-Smtp-Source: APXvYqxq/yA9CuPGgwjW0ES59QX8WHD7Tll0PC0TLi7kL1ObPjzNxgVHHm6X9ekvcZtT2Atxc5xjUw==
X-Received: by 2002:a17:902:b40c:: with SMTP id x12mr6725953plr.81.1567032971479;
        Wed, 28 Aug 2019 15:56:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6203:: with SMTP id d3ls76005pgv.16.gmail; Wed, 28 Aug
 2019 15:56:11 -0700 (PDT)
X-Received: by 2002:a63:5d54:: with SMTP id o20mr5574941pgm.413.1567032971162;
        Wed, 28 Aug 2019 15:56:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032971; cv=none;
        d=google.com; s=arc-20160816;
        b=ue7kgJiYaJrsUCYLbuR4uKmetxZbUPlJvV0dmA9R4auBFr0gCX0OI+8UrOov6d1kDY
         7vcj/93cipHoSwzyhXw63vQWzxtnWb9+BXaPauMN8k110MdlatCKSeT+zFCuDX9dcAk7
         xP/KHv6GrtXUGDuKWuDodW5u+DHXUZr2ER6SQ7tn5J7N1R2ru9xmsT1YuiqjFHMQ6HEl
         I34n9Js6wiK80al8RJl+ywvQlITdUaCFgdfm1X5D9/zSEZjXqe+tW7zZqojIoNcCYRad
         Jly+88bq5bvxGCyNYi5ZvcEYBmxMrbsBtAt1ZCmwXtSl1SG0LAxkDKl70xptUIiw6FpG
         1Vng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2yoc1GXfYVLtZMNWi7ZECLQeadNDjorQFIKFDUAGhfE=;
        b=d1nEslCVaewx6uRwQcNaAKQRzy1Mo4Qrcluj7jv/wf13kjwY3uGtY0TOo2mzNoLoon
         7q7z+QzdDnHLAXz7+07bx9zGt08TBYRa5ZV4Vz4IvKqbHuwqijtrjbyn6jB2B8wc9TcQ
         mArGrNabi9JUNnT+Yw97sX7yzHE6LbuZw/HCG3r3EC+++IQaGuyv2vleC02Uo7xkASzV
         TQzllFreHqSQxpcfTs2EkOV2gmZhD2BeHxr+AoEeD0/nk9+p9qPs38fsBOOU0MUmkFfg
         FeA3lpRq8NZhdUfeki2RJqw+++sK6TPQ4qwZ3vd4Zp4yGssnt+MHQciTTQcyeXZffQaB
         t+YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DhOt2NbA;
       spf=pass (google.com: domain of 3igznxqwkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3igZnXQwKACUOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id e20si70745pfn.4.2019.08.28.15.56.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3igznxqwkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id g126so747852pgc.22
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:11 -0700 (PDT)
X-Received: by 2002:a65:56c1:: with SMTP id w1mr5392712pgs.395.1567032970530;
 Wed, 28 Aug 2019 15:56:10 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:26 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 05/14] ia64: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DhOt2NbA;       spf=pass
 (google.com: domain of 3igznxqwkacuoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3igZnXQwKACUOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/ia64/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ia64/include/asm/cache.h b/arch/ia64/include/asm/cache.h
index 4eb6f742d14f..7decf91ca11a 100644
--- a/arch/ia64/include/asm/cache.h
+++ b/arch/ia64/include/asm/cache.h
@@ -25,6 +25,6 @@
 # define SMP_CACHE_BYTES	(1 << 3)
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* _ASM_IA64_CACHE_H */
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-6-ndesaulniers%40google.com.
