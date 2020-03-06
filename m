Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBJ5CRHZQKGQEOWBLPQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A34017BEAD
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:28 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id l8sf1687571edq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501607; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwcMSESoMjHEs/jK+imXu59hOMmMq48Nu1Eo5fG2S3nSMEG/NSv/fhzWUvKyI5NG+C
         6tJaxFEu9jieEEEncvJNGZRWoy9+6TxTUMfDhtGc2GtBsfgRoBBpfQhJYYmJJz5oGfCa
         7rnoN4lvEjSt4++lCl+S7zNWN/S4uqdMlEoZyvLFkIecIgANBHtA6jfcOki3XI2lJQSh
         ulUWNO8v8a1/iOl+PCY7Xt4KJ4qZg/o+dbu5Y5WCGS+VY8FxkTGc7dHpZZhGgqAVMC52
         Ryx2QbrY2Jm/AIr6WZ+Dvfjf14VXcH50Qi5s7+c0aT94hfabj1cKXb5TWwVWq0UBThH2
         NtFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4UAt6Wu5TkWICDkmL/lAuNi1D6QNKMx/J61+gcp8LcY=;
        b=FS8FXtEJBJhdvgLEQThAz5RcwPDIirSqHPusEKio6VA+PHnJ2z37Qkeelq7lCpj5vP
         iag/YIM/XNJKIYk1d2HLlCNQNmwhDpzcRwz/QbcoKvFV0EjZOhlb+eLcrLMcdx7urFHj
         e7CrQrJ1sH7lu58gRvys94RMF6LSLLKdOyKp1xJUFGMvprfoaeASyavqlaXbPfwZMSxr
         6ZRCIgW4pWoFlmrC21ivgNmd0lk7q6/7AOfk7TeEYmquwdXJM/rnHKKd8whEIHB2gf+O
         cyjKC98S6OQK5lEs19Qtofov4QzZiPTQvjtUSUuBqkwVVyT3jWn/In8JJFGcc5AGpVQC
         Si5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4UAt6Wu5TkWICDkmL/lAuNi1D6QNKMx/J61+gcp8LcY=;
        b=K4R5Nsy5dGNEX73JFB/XgtD7iiC0fj0Rz9/rKVMfBewpVfTMqO8HwWNEs0+Bgq+LSJ
         egnDMt80KZCkDYg9KvNabBsNgY547TCNr5Z8jOR56GgfhN4sPJsYDnoTs1DNEnT5THT5
         TElcQsfqs/a5qLusMz0Yx5GlnF2tmma38yDzbVmIRPSLbl4HOg18hqDLC7sfE27VHQhi
         wkxejPgKeQglgOzXDZp9qA+svYNYM8NYmyCVEXVdMAdE8E9Znc4KinVzOMWe5EqXza5E
         TtFOO1Ld8vhGG50F4h2JyDD7ZW7gbWptssBspzhFPmj5GxMQk2omV8S3u0pkel3KaPVb
         EG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4UAt6Wu5TkWICDkmL/lAuNi1D6QNKMx/J61+gcp8LcY=;
        b=a4MinPn9CwO36w/PW+vW90BBVVlxQ/V4U1PgDup5mNVk5Cx26gehwj5P2cUfSiJo66
         y9DfgEdBCufImXO5D2iFMfiH/Wirdm7Tv4cMAmxIh841hhAEzk7Ix0Xw7BF66MM8tAm4
         cYr1vtN9opaEsg7Y2eUzGRrrlLE0l21qcYVesEU8cDRlilUWnD6j9Lw6+lBdo1Y0FetM
         z8RquC83VvJEBeo+YRxqx8jFmDHx9ypOB8i1/9RTn2pp9DvP2MF0o0xyqH+Gxms/pemM
         3cAE9CoSenpHhMINv+fnQ0Ft5C7aE1Jf3sBsCa5tcLLEBCIfM8HO1npLcwpRWv1tslI1
         u7WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0R6ImE62uUEdOYIDtWdF83qW36ZGM2X2Dd3U99LdNHruKWG++j
	zEbqUjAFZT9gj7hwPXOnVqQ=
X-Google-Smtp-Source: ADFU+vuPH3E8UIEQl7Kh3tEAazoX39ls4tMfJYzgAVVJtxt46PxX1GFrpKe3dNERdGPYBFGsbYLZMQ==
X-Received: by 2002:a17:907:2154:: with SMTP id rk20mr2838672ejb.322.1583501607772;
        Fri, 06 Mar 2020 05:33:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9e83:: with SMTP id a3ls1153870edf.8.gmail; Fri, 06 Mar
 2020 05:33:27 -0800 (PST)
X-Received: by 2002:a50:9b07:: with SMTP id o7mr2525308edi.139.1583501607254;
        Fri, 06 Mar 2020 05:33:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501607; cv=none;
        d=google.com; s=arc-20160816;
        b=IeDSAkQsCDhwSKzrz96SeuwADzw+Jxc0byT5ZipuU3g//suIcphwxoxonzraGlVI6c
         Um7bB5EnOazmwOUThPXAP6UX0LbgCWIzZ39ZyQCYvoPmexaZyi64+GY9JefZ5psszf30
         9t9JXk0iHrGzwnCR0OMoKc2NCqHkpLZlwVo4MhNPKL9ivU3gfdaydNEhEUqOJUrzD3S6
         IqU5mHKOK7mRbeNBz+j6Ih+3ghAktlFXeTTW/AvP0oSbttRjaTMtCHa7SpxqaYd+4xYd
         AcYU3utIK6npAGx7eHYjbE6CYxuf8BDYocYZ6r2+7IaKinc9aapJRlLwbu5eZr138DjG
         059A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+XT/Ggmb5iCSA91ILbc1CBNHo5HVyQjPuJuT0/OJUWM=;
        b=I2VTw8bktoy22lBtCWRCjZ32NQyqapYPpu49yipzbclB6XFXAdl0zW09DogQ8nSiIs
         0cFGmyATZnes7pbQXlVUMLjM55MSiO0fj70763iOWTtceCJwlx2STRLQjDUgWsW/B/Hb
         MemxGSanNLYpOYnEKJTiqra341AGSQEbC78A83QFwN2j6WaPF6p48uZn6/3zK2oxPwqI
         CqfeOvEOdThCeaRt5Ly79cWVtj6uNrW4TpnZObrdKGsfK1m0rZ2UYBPwqrqoyW9bopZ5
         t9svLd9tIOnfAZeqlfW0htUNi6tgGUvWpCus9tP+0VK7VY8CoNBYMMAhFOI6rOdQ+KYV
         7tng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d7si116454edo.5.2020.03.06.05.33.27
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:27 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96D9F4B2;
	Fri,  6 Mar 2020 05:33:26 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D58623F6CF;
	Fri,  6 Mar 2020 05:33:23 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 11/20] linux/elfnote.h: Replace elf.h with UAPI equivalent
Date: Fri,  6 Mar 2020 13:32:33 +0000
Message-Id: <20200306133242.26279-12-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Replace linux/elf.h with UAPI equivalent in elfnote.h to make the header
suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..594d4e78654f 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -59,7 +59,7 @@
 	ELFNOTE_END
 
 #else	/* !__ASSEMBLER__ */
-#include <linux/elf.h>
+#include <uapi/linux/elf.h>
 /*
  * Use an anonymous structure which matches the shape of
  * Elf{32,64}_Nhdr, but includes the name and desc data.  The size and
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-12-vincenzo.frascino%40arm.com.
