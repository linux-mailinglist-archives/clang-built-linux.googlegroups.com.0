Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZVXY34QKGQEPYJXHVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id B4496240DD4
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 21:11:35 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id r1sf14054902ybg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 12:11:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597086694; cv=pass;
        d=google.com; s=arc-20160816;
        b=hiZhgTlgugn9ammZDWnzGB0EYY1ov4qNL5rYBlZFUEMo1Yzr6BQts3IYvY5Tveo7n7
         ohnb8j0UOAa9fS+3auRLOAUtFIHF3/DqWjAeW3ttIluk+nyPnDYZMQumCcxT/PT2SQN1
         bJf4B7cMgPXvRCw1RvVR9dJqgjFHxtDmzDWv9hGeUt3uzyAmvBojxvs0BpYj2qSm/U5C
         xb5uOjdpXrlqXcAhUfRIuB+zTLKzaYOY7OAbHgP4es/oGNP4VUX3L5o4KE8RMS5OIfL5
         K85XvX3Dk+u2nUbOmu5VLUeKxFL1z61FDu2NoMYreJ+5HGFZ3JLsPYoWpKy/23vIn8Ov
         VwIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vL7WNBE+E4/2Kbkekj9YAD2NkmFRIBvSaSrgMz2Vucc=;
        b=Vu81vdCA9xBEm0y/UD6/4PEDENOS6RPvljm0K/FARAj0ewowfDpBhfJcZduDq2I9hW
         GWE5WOdV80umKdscJh5qh+kORX2HTlpbrhfgqHYZkIPqgtGps+6KdHOMhUYE3t755S+Y
         /qq1Q+ZOoETB0h4GdxDFJ+ZSOkdDNNRfnJxuPlK92eKmI03j95S+XXl40lGHYZq3j55a
         sB549d13UFOB4OLt5dzEiT6+6wo6mD/eVMCQ8pGajMl6vcmZDz9X7o7LM0ZfKOeCllal
         LpQ68X0d4fCiGHgYx14yi5V06dnZKddqsJOFExAfmKfG9uW9YR9tAgPDizjw5BCDaxYQ
         d69Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V5srQ4n8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vL7WNBE+E4/2Kbkekj9YAD2NkmFRIBvSaSrgMz2Vucc=;
        b=mTmwErW34OBCW4guiNu8xFuGlh96iLuSmk+OYmac29P3MdiQZeAWHDM89/TbqE92SU
         /BRAW1DPcSYP8S2YmBSkB4mtgLQSRME/abGlDePZtuDehKfaC2L1sqaPTuUmmi/94+df
         8sJcf23FSrfZn/qWjJi8cL1JI6FU57++BhcZItRS0/2TFoaP0MlwQuzvkzsPKW/9Izy1
         6A/k/Sj/0wlLKN/ldn1aJK88+OAVwQalB9fc39OIjnb5JUSdOePITXuUiBMDWFXo3OhC
         wL793s5DEGYPN5HQe/MAxv+UwJ5/pig/HxbL+f/TCnnQQb2201YIDT1e4nW5u+fIB5gC
         610w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vL7WNBE+E4/2Kbkekj9YAD2NkmFRIBvSaSrgMz2Vucc=;
        b=tn+QkNXDNgW16b1rnzRJBBwtdWvMEdyzjB+kIRurOmC6xYvi+qYHKxDXrvFEiLBXXD
         jn8VOJiCaP+CQsBIUI+FJdiZpE6sTSjALl58Tk8UZBobDpZ/AzsWOvWgBK0GXW5sz9nD
         CHIBo2j6nNBYUch0ArwcRwkMiOdFDzF4D6wgkPNAmqUuZ3bSWOHuvMuo/TwCJfd5Cbn3
         VaNZ5PbNq+vy+BeAC8/ktv/jaX96+90dtH8PWROJVyBjHxIrojYnGoEsURl0SkaKi7Ls
         VdvC5fW+6AJBiJAAgcX7/D7wY7vTLjACVNTI7P1lbWDZoqVWlPsbPANrk0OBmdrJ41A8
         mvPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AYIKsEURWyQbSHHhw0cwunNMRoKAt+HS4qth9ZTkKRaQwGQ+4
	ugpTQgkbhj0stegsI/XApOs=
X-Google-Smtp-Source: ABdhPJxuo4RlsyMul9XETC6IqORvcrGhNgwGGyEeOPpBZDvHuS8XGiOi/JrvpLBnoD4Rq1f8fKYGCA==
X-Received: by 2002:a25:cc12:: with SMTP id l18mr11011480ybf.224.1597086694613;
        Mon, 10 Aug 2020 12:11:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d451:: with SMTP id m78ls6986778ybf.1.gmail; Mon, 10 Aug
 2020 12:11:33 -0700 (PDT)
X-Received: by 2002:a25:5384:: with SMTP id h126mr6374624ybb.374.1597086693896;
        Mon, 10 Aug 2020 12:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597086693; cv=none;
        d=google.com; s=arc-20160816;
        b=yX+3CchMC8b+2omQ26WYc0M/6wsO+yrg8ZlIgcNpEJst2yIc1DTc3kdnEk+wIc5Lgb
         JaGwNXl3+Osq5U9uB5TVftC5UimC/Efy6/RH+X5hJOdlxdhatSn7M9bdqHk7GrxhLvZM
         3kG1dYO5OFqpBNRYaUEUbKuAyu0pwNvJuq0Abr416XcuQy57MIPCcLJeKAf6uYdmEMBi
         JzhUgAmRjANHKwd5Cpmvaz3n08l5y8Pem67SVG9uDklWxHAwJiAjGOdQFiJNArGA4YLS
         yxnVljPTyI6dF1qGI/Ox9VcdL3zeDKKWjiyBaLuSdh8Jfc8Yidpwn4ua4kCFP00fC+dG
         hxcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dCrAXBpd+MTsZ75enP1QSifoGti7vZlU+EOIjgqmEMg=;
        b=SzI7F717ukR8ULVB3VM8Lpk+4nvWXCv9ydVZf2dk2QWyau/6xnzKsa2jW5AhhbopjD
         bho/0jGpk/WWKjxifrJvQfj9hdIuiRl6PzQkJEOV3vySqbx784rLeLrOpPIfS0ZkCPe4
         /QfHkxpEPYBGFWNE1vBE+AKw2qM6uzzA3KRlF/gQ6Gr/YP5EEssDr/MpG2G8sKaeLFEQ
         pKLzs229DsIqF7x8/TUyDK4AWvTeOjxrCCPvKuf5YQaTxiGVZPnfiHyexIL/dN1YYNFp
         dvDETJZ7eynNAxugHwuqcSmygflU0WqVnK3jdXv8ekWkN64jYPr/0oGdGGhGy1Dz4D31
         E7Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V5srQ4n8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o14si1007706ybm.5.2020.08.10.12.11.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 12:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ACCFA207FF;
	Mon, 10 Aug 2020 19:11:31 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.7 46/60] x86/uaccess: Make __get_user_size() Clang compliant on 32-bit
Date: Mon, 10 Aug 2020 15:10:14 -0400
Message-Id: <20200810191028.3793884-46-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200810191028.3793884-1-sashal@kernel.org>
References: <20200810191028.3793884-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=V5srQ4n8;       spf=pass
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
index d8f283b9a569c..d1323c73cf6d2 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200810191028.3793884-46-sashal%40kernel.org.
