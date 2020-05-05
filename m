Return-Path: <clang-built-linux+bncBD63HSEZTUIBBPVMYT2QKGQEJP54GNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 553C91C4F17
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 09:31:11 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id o18sf1392579qvu.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 00:31:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588663870; cv=pass;
        d=google.com; s=arc-20160816;
        b=xeO+54KHdGgzpsN400gN4WgjTm1OPPC1maNuQaklYaETuRErZeH5dSKjhW4iK9F0s5
         gM8KtGhlq+d3BTjq2HZmCrW0lY2KgItJTMYPfnFqRyyj8xdFOOiPOa/8zyarQeEFPpBi
         ZeB8hhZeG0ZTmzKHVXjvLGYFcw03q3WfW0Gx9VLOBAFYz7Cc11sOA2pI+XAe7iS6t0tx
         XXnBJiqPM5L1U6RXLIx49wDAcPesyvIiNsB54sNdGmDRI0R953eARrN4iH2NwkerNhuE
         KRsr4p0Bt+rNUBlyOuBpUnZVTp3Fr//lOq22gAQeJJQSN3iSdUs+Q4LSO6LTOnynla+g
         WrLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=FbrwpaoEY5+9Mqnqm99RmeeXwQW8L1tZK7wDw3BeNiE=;
        b=xKQCi0IjDbhD2ZRnCe2Tz/OZ42Xe3M+qLXH5wqRGuwqXqj7X0mZdDvDb9BfWMtoLU6
         n6wTbjsytjgTMQJ3slV2zDu3sqthiRBkWwrDIVHf26czqLNcTr/ehrLXFFc83Wa5Rv4N
         MKnWFAVTCL+/QBOHJjck/IoffhXJjumxguj5N8HOwBc7PywQZbmv8+3UpvxUqQVdwGZT
         Q6PFiZ9Pif/35erNuENAkeyuRDZM2RXQkjK7344DbFFZ/t/HQu5GYjuBg8xauXT1Vz72
         TAIo0E9YlkMUhvOkHmyxRMbJQphWpo5S9uGHiVQ4MJvAzUiDzDtcP/7v7srPH/qTTvG1
         Kr3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Hd0c5/vE";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbrwpaoEY5+9Mqnqm99RmeeXwQW8L1tZK7wDw3BeNiE=;
        b=HSpCdGLfaMah+uyE+CTmAXZC7BaBszilHk1v2wGLlvndavVPXAx9lwHm5iuBu/CiS3
         xzcb16sq2YXKx4rKBDUxIuofPJ4VWOLPHP+ASeqvhQU5t3WaTKublNrzFLPHCh9FRus3
         UKOH8wvKx0jxHcALJDhIKFuETNBF7ZIqIneF++7iI+PGHmUBJvujPy2eZFNdqV8xZEJP
         PASeLR/iED7RbWwqpLgNKWSj78tSGWKr6ajisdUlSZWlT3jDBh9QNx7qTuZrdRsDBE+1
         0lHgETV2/WAVuj44+2rQWYfHyAPuemNxTpTyakKcZDtPeo26oTeT7FytO5VV+JuEJYRP
         jK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FbrwpaoEY5+9Mqnqm99RmeeXwQW8L1tZK7wDw3BeNiE=;
        b=XfSrPbanVyqX4vMfH1Nj6HqwIIHUQOyXtXdniTd+Sn4x4vs9L+1g5Y3MqzyiagSOtF
         CajklvKnIeJd9bL0yEWhWrf2Cr1/CZtpzLW7nRuC+91/sooiQYf3V3AhduTkJmnMXZVa
         TeDvoJT7kIFcFbQ9cbRmGat3op71f48YJHdsvCi6O6ea/SIGmTHYyf5ueZIQwCfd2ZF7
         afeYBME93hkfZRCPVpcAkLoOGvNjOAl9YZt9EZ1oLOO/m9r/mQI7l42Yc8UXQ8zrVxAQ
         1K4tLGKV/LSftnj4f9hYIJfKYizRTKESHWxkVZcK5caj20AC/cqQe7crdw2FdsyiQnPR
         em5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub+QMUHLJBPYhJVrk71UNdwK4azWiLCClg7STp1JzS/MpnKxsbL
	TRNpdaE/m0S/e/8KFUVDVF8=
X-Google-Smtp-Source: APiQypKt0ufrA/wSAxMOUmf4fnor9R9lXcILz6tduflaiwogzeoZpqmy7+vcjTtinHVtbILlgWGkwA==
X-Received: by 2002:a0c:99e9:: with SMTP id y41mr1460349qve.164.1588663870190;
        Tue, 05 May 2020 00:31:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6288:: with SMTP id w130ls1241312qkb.10.gmail; Tue, 05
 May 2020 00:31:09 -0700 (PDT)
X-Received: by 2002:a37:6658:: with SMTP id a85mr2099451qkc.493.1588663869876;
        Tue, 05 May 2020 00:31:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588663869; cv=none;
        d=google.com; s=arc-20160816;
        b=pCQz3GGB8Q22cJhRHOyEdfQzu7BcmN/1U+8rT214rTn3jgLiUzjJAf8kUNaH2eBBBN
         +zOGeeEXLsBQwltRJ3cPCeVAm1MMmJPFBjRvmHvlizUPlzHoucDmyjHsc0LsMhV9fESj
         eWyNuWLnj6EkKpI9ot+XaSsA7/pDOdsd2upKqfzDoHkc789087fg2mLufLa+sE+DjZra
         VBtFAYmhOeuYgMUnAykprOwQ+vpKShcrw8mK6RKo2jWoZyE4DrWgVFt9liKgeHto9D2d
         z+dDEDc/atmG1nr58XEpcNvrThYBrHylHU0mcd2Q9PxycvEkJqcJloaqZIHddwiPLmKi
         ugbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=iVOtyIW6NoT/5gA7RXK6OxiscgtT2y2RG+ESKXnF1FA=;
        b=z/6K/ZZAep04AU9EpQ0on6orWfXgjkvM9SDlOEyFV4l6QywqALabrbEowOU4VKcawi
         L0Tl7GbbdjK5tZo/IlhREA5r9PlBd7trt8/c8PmfLA+3bCPjqU7e5IXCQtEBAb93rL8s
         AaYjDVeU+gU2rm7Cned8KfKbQ4w2xzoHt44XkygYoGLO5+DawOq8FP17Y5skbNA56kqo
         Dn7dZC7aPlHOovPft8bHAHBGXCJJ+AQNxxvYXv3bkTOlM7AOXtHh7Gs+1Pn7r4OpNjCO
         l7LDEAYosIwSs/rZCUhd11Ew8IMsdEkQOtrbDXFVDHcTKTgmh0JSfDaw5ehO+V5prDe+
         SDQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Hd0c5/vE";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g38si97009qtk.4.2020.05.05.00.31.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 00:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from e123331-lin.nice.arm.com (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8C03320663;
	Tue,  5 May 2020 07:31:06 +0000 (UTC)
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Cc: arnd@arndb.de,
	clang-built-linux@googlegroups.com,
	maskray@google.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: [PATCH v2] efi/libstub/x86: Work around LLVM ELF quirk build regression
Date: Tue,  5 May 2020 09:30:54 +0200
Message-Id: <20200505073054.22437-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Hd0c5/vE";       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

When building the x86 EFI stub with Clang, the libstub Makefile rules
that manipulate the ELF object files may throw an error like:

    STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
  strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
  objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10

This is the result of a LLVM feature [0] where symbol references are
stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
causing generic ELF tools such as strip or objcopy to choke on them.

So force the compiler not to emit these sections, by passing the
appropriate command line option.

[0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Collingbourne <pcc@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 8d246b51bd49..e5a49dc8e9bc 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -30,6 +30,7 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
 				   $(call cc-option,-fno-stack-protector) \
+				   $(call cc-option,-fno-addrsig) \
 				   -D__DISABLE_EXPORTS
 
 GCOV_PROFILE			:= n
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505073054.22437-1-ardb%40kernel.org.
