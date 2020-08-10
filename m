Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBENXY34QKGQE4WMY6PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D12240DAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:10:11 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 4sf8505675pfd.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086609; cv=pass;
        d=google.com; s=arc-20160816;
        b=yLQ7AZHMWDppwiSPMcewx3dvaSLS4c0NrSLI/kWSW4huwtryrSmdu+hbWZ0/CkYXlS
         Bkz0MiOcWbRvdyHf18CgtYa/uErsTGwAtfi18rNYX2aNRyd12qknFW40K9zSfyLPeApi
         nha/zfZ2IbyY2Ua3f15f+g0V+nMmOtX374gOEEad7CZ2W2xXPnR3fz7iIQPB3vfo7PRa
         aaKFkr0t6f96o6hj+6IijA5vYACYcoT/c1mwXSk7pY67AGPFox9MaY2UeNvZ+eqyiAuC
         FFz4ZdK/egCivlVAObb+0h9r2s93btq+MB6gsMyYBFkewOBaRj8heXYEJwZpM3/9SBwd
         Jsgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IPeMl5JYh23Kh5Rcp+l/rJVpMHNCR5Y2iYGe0d7G0dY=;
        b=XP1JrReHYPKGHaZP9EEDzXilY82wkMNDC1qU9GVyG8B5PztadMsEhYCo1radTDuvfd
         X9OY1yp9hPXAwz8Q2zz05gIsgTrdY8qM2Wmwf6aBJrC9ETp0MHvEwVQ57TkvD+cyMjc2
         /fu3T8J5SxfGa9/TFaz0oS6i6YxKijmaMFUBQQZHVa9BkNUEvPFoJ4z8LLIMEPgpRRO/
         3dvSKQCHfI1iBw1/xLMLFaSF1sBmsRbz2v6PfMyaukqAH9xyZWwCCcyafKxdydAU6mrw
         vnqmgvwNlczwx90yotG3eSsBheHlxSzw+/9bkQ+x9YLk8zsmg2oUPYn+2hT4HC5CDJgE
         ybJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zLRaAXkd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPeMl5JYh23Kh5Rcp+l/rJVpMHNCR5Y2iYGe0d7G0dY=;
        b=nyMxveJsC044ZmFjV3bYVhosQmf53sVXAee3rPCIAqh5dT5kzxeaivIIf6PaWibmo0
         EuAKUq5FKZ9bQeGB7deZ2HHc7hAz0/rfYGPA042+CqzwapjE4sQ13b6YAU/imv1VQwtG
         7Y3Rde8Q1tebaSeWpaijpZSL9aNoHWo4wk07FZYpx/94wVx19+mms8vCURRKs64O0P9p
         cEORrIS7vup9NWoy0JT/a9NRlvK9/J67sCHDMjUE9ycwxuxdj9N0wrG5B+ldK8EW2+2+
         ZF3/oPTBhpItoukJg1N7OU9pZ4A758fXppqsMn062WKk5XkR3CVfS6aXnDmSySE1W7gx
         KcXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPeMl5JYh23Kh5Rcp+l/rJVpMHNCR5Y2iYGe0d7G0dY=;
        b=mj2jkq7oJ8bsUpS3mQLU4plU9G+Upbbv0bNcP7Vs1pJbekCf6PySJgUnw2XYpU02HS
         uu3U2JlSZxKlhdzkpmoBo7Ph8TuJGAF8KjKpK8hYcKhitxUrEqolwCj2QLeFz9in7q8F
         PjtTH9dYnvrOgh54YkE59UJNCNOeAMOTkQiEsRLfsrg7BHGn2DXktdyKM+YHvBnPEEFi
         te1+IrYC3RcghuNfi8Py2nbbBrBAxURQbocQrpWQ737T6DrVxcuM9E6oUqmNG8JcCQTz
         YZW+ezq6SwsJ8Y4cSFy78EnMaE6HirHY+ydt56UMCX7bdN9fLq5svUWYV8F0cdRcU9ID
         nihw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mNEsFeItwxq5C+iymzLx/q+kDLn7qDW5uBTVJtfMdgwg2JDmt
	yTOhAphbB5KGjAF4x8n8PRo=
X-Google-Smtp-Source: ABdhPJzS8ECg53tRg8+qd8kUAEbB0OddecWdZazXjaAaYbLTMBq5FM1L3xWLwMUqZOVaSQAruJyRdQ==
X-Received: by 2002:a63:6f02:: with SMTP id k2mr3903028pgc.191.1597086609334;
        Mon, 10 Aug 2020 12:10:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca88:: with SMTP id y8ls168534pjt.1.gmail; Mon, 10
 Aug 2020 12:10:09 -0700 (PDT)
X-Received: by 2002:a17:90a:e643:: with SMTP id ep3mr819398pjb.18.1597086608927;
        Mon, 10 Aug 2020 12:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086608; cv=none;
        d=google.com; s=arc-20160816;
        b=ExuNx6zDjoGyfPRh0hC/HdFy1P0If1JfGpiErbaQoKt7km8RtsHM2+uiriucD85rFA
         9/6CiSB9leq40kDK0m/CZmeWjrQMLxPZv++kA1UstW3YCOyTcHYJ9LKLEAe6SJ4qvfEN
         LV4sJdrKWlogdHlMHwWk7Za7hcTgnjV51qJiDurgQslE4z2FfVGDn2p6ySdo0+oTJqK7
         8EMwutP+N0AbmvAJ8+2xknWFuddSdzfR0e49o2KAz/omXsXmrrHhXNNodyk70zIHK5Oy
         KDBIqc2tsjp5lef92AVurXjoW4qBjqIXqGc90RDpFGeq09zOghmx3wbtfbOAxS1I4tgP
         Bf2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KY/28G5gN5lV6C1KHKOe22S8ZYB4iWTpP4n9DRtSKMA=;
        b=LagoORV/Vr6I8HMRUZ4Jg3kHEHIXU6GQoMjMASUlJ+1vhFq3TB42LLhMaXDJk7kY1Q
         4sZpGJaXK3AeBuR67VjZ1prUiQSrTVkKUv1Sr1aqPT+mv40hCvHA/gIpGb2AKMCZ0/OZ
         3aFhIkuuUE18OUslN40EKu+PkNDM89v2UdfRyj6QFyDYR8unKpnc74Gy3Yhy3kzyjkTB
         IRHyy97ONFJV7Z/v8+htyGCg7ubMNK5WTMtfnJBpEENJOWphbGY7+U5QJh3l+CzNkHOs
         OpTVndUmBdSu/xtSC987GB777Kh1U3jnysnkE+CttCp+8hnM+AatwCUNykEwxoUz0tgM
         N+oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zLRaAXkd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v5si907488plo.4.2020.08.10.12.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4DAC22078D;
	Mon, 10 Aug 2020 19:10:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	David Woodhouse <dwmw2@infradead.org>,
	Dmitry Golovin <dima@golovin.in>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.8 50/64] x86/uaccess: Make __get_user_size() Clang compliant on 32-bit
Date: Mon, 10 Aug 2020 15:08:45 -0400
Message-Id: <20200810190859.3793319-50-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200810190859.3793319-1-sashal@kernel.org>
References: <20200810190859.3793319-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zLRaAXkd;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 158807de5822d1079e162a3762956fd743dd483e ]

Clang fails to compile __get_user_size() on 32-bit for the following code:

      long long val;

      __get_user(val, usrptr);

with: error: invalid output size for constraint '=q'

GCC compiles the same code without complaints.

The reason is that GCC and Clang are architecturally different, which leads
to subtle issues for code that's invalid but clearly dead, i.e. with code
that emulates polymorphism with the preprocessor and sizeof.

GCC will perform semantic analysis after early inlining and dead code
elimination, so it will not warn on invalid code that's dead. Clang
strictly performs optimizations after semantic analysis, so it will warn
for dead code.

Neither Clang nor GCC like this very much with -m32:

long long ret;
asm ("movb $5, %0" : "=q" (ret));

However, GCC can tolerate this variant:

long long ret;
switch (sizeof(ret)) {
case 1:
        asm ("movb $5, %0" : "=q" (ret));
        break;
case 8:;
}

Clang, on the other hand, won't accept that because it validates the inline
asm for the '1' case before the optimisation phase where it realises that
it wouldn't have to emit it anyway.

If LLVM (Clang's "back end") fails such as during instruction selection or
register allocation, it cannot provide accurate diagnostics (warnings /
errors) that contain line information, as the AST has been discarded from
memory at that point.

While there have been early discussions about having C/C++ specific
language optimizations in Clang via the use of MLIR, which would enable
such earlier optimizations, such work is not scoped and likely a multi-year
endeavor.

It was discussed to change the asm output constraint for the one byte case
from "=q" to "=r". While it works for 64-bit, it fails on 32-bit. With '=r'
the compiler could fail to chose a register accessible as high/low which is
required for the byte operation. If that happens the assembly will fail.

Use a local temporary variable of type 'unsigned char' as output for the
byte copy inline asm and then assign it to the real output variable. This
prevents Clang from failing the semantic analysis in the above case.

The resulting code for the actual one byte copy is not affected as the
temporary variable is optimized out.

[ tglx: Amended changelog ]

Reported-by: Arnd Bergmann <arnd@arndb.de>
Reported-by: David Woodhouse <dwmw2@infradead.org>
Reported-by: Dmitry Golovin <dima@golovin.in>
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Dennis Zhou <dennis@kernel.org>
Link: https://bugs.llvm.org/show_bug.cgi?id=33587
Link: https://github.com/ClangBuiltLinux/linux/issues/3
Link: https://github.com/ClangBuiltLinux/linux/issues/194
Link: https://github.com/ClangBuiltLinux/linux/issues/781
Link: https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
Link: https://lore.kernel.org/lkml/CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com/
Link: https://lkml.kernel.org/r/20200720204925.3654302-12-ndesaulniers@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/include/asm/uaccess.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/uaccess.h b/arch/x86/include/asm/uaccess.h
index 18dfa07d3ef0d..2f3e8f2a958f6 100644
--- a/arch/x86/include/asm/uaccess.h
+++ b/arch/x86/include/asm/uaccess.h
@@ -314,11 +314,14 @@ do {									\
 
 #define __get_user_size(x, ptr, size, retval)				\
 do {									\
+	unsigned char x_u8__;						\
+									\
 	retval = 0;							\
 	__chk_user_ptr(ptr);						\
 	switch (size) {							\
 	case 1:								\
-		__get_user_asm(x, ptr, retval, "b", "=q");		\
+		__get_user_asm(x_u8__, ptr, retval, "b", "=q");		\
+		(x) = x_u8__;						\
 		break;							\
 	case 2:								\
 		__get_user_asm(x, ptr, retval, "w", "=r");		\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810190859.3793319-50-sashal%40kernel.org.
