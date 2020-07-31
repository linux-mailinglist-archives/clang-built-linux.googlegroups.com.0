Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN6NSL4QKGQEWXGRBAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8AD234E55
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:16 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id w201sf2793573oiw.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237495; cv=pass;
        d=google.com; s=arc-20160816;
        b=HW/OdaY6h5SEpefQJ5Fyh7FQsYa0PRRtAJcO4D9pu47rACTnNidqYN0q1PvKHflKOs
         TO9Yj1qXo4LxCFCh/7UKFNpeMaG7H583Sr0/1mDWDQBV5d2s28VLilrShB/iUTnFuR4l
         gizo3a+RdG1iOccZzJD0VAJH1Lh+rLPZ3JWHC/YiOb5pRlBl/QyM/qcCVx/a40nduenl
         IvkIH9dcV9s8iJzJBfmrAZRkXBttrC3ou/nkiwSOf1KtBTLhtn60piI0Q8SJw/xBpa9b
         EHpbzjWawtRFchutD7wNfvBa1tyk/BuCExDBJQSB1Q3s4XBKMiYnm8qbxBmlQfFDE+K6
         wCaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qR6RvXrEg/OXTFsDdShg7DAInoky4VtJLUG13or/uiw=;
        b=CTljzUKtgpYxPJWH2Q9rC9t6B21f/1HtbBu/5Jz6J8oafuitjald6x2bb9p/sbgy3m
         XXfq866fr9Vaw+4t0zDPZRop/6sx+zoznilQ3uQMepwEF9C8FVF3S/nj12txO+6Y0Acw
         OZuioNsY7f8UokoCEmyAcDHiYK2u3kJbb418LQ3GLUmm5tUx2DFy3W2kfdvGv2STckeW
         +rFNxv4p8vJE7x2ImRFuA1EXOIJ5ywWFYiKbwzKySUdiib4aizmIF72ZJ7rxzVoQXncR
         zdoj1T7Rphym1ZqhQWQ/bvGPIuzlA/iaXkSRCxTG+LxgxsLXeqUUyz/QHph4qfEhwuWF
         A2Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d74fEfH+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qR6RvXrEg/OXTFsDdShg7DAInoky4VtJLUG13or/uiw=;
        b=W9xHtM6eflkZCnG080broHrFygeK4hv/v9O+t9Q4y8ivvLyHIFSxYoLRfInNvB/+/o
         HjUNSaTPvJzjpTOahPkiHu1am2SvHMfrRFOToHyDnmjAbTBUcvElkN3QasdxevZRT2xG
         7oL5vHLuqxsM1c0yuklg+axuQ99dUOxEX6c4TfgpjkYtzGUr42+2s4dRQtyzx85Kz7Sn
         CnpJ1V2s+6fTY8/R9m+Re02ONVciSOhWE8TT95uAJZiReACODGOVhzpxrMvUevxA87ZN
         0lojO6/Vu/yonrxPom/MjwCXOpRjg7P/srJ1HCWgnbHkA4VuZn9NDyTSkH2+yEdtWaCp
         c9yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qR6RvXrEg/OXTFsDdShg7DAInoky4VtJLUG13or/uiw=;
        b=qFwzIb6MGcIUpURQsPDf50Aa1na0/AlgNoITqnywx6LlPvD2Ngva5ntHSFg5M7is+g
         ZqmCy5IkxlvJsCam7vZHMOrhFWQMMjepi8ne/HWkM/t5f5dVjusQDfopsr4w7KW6e6T8
         we0FnFtTbkXt8hpZulM+vpIYeA9gx1SIQ1eWrPaWnebM3gImkY662P2O/Kj0NeQsDyYs
         pF39ecUnQSuH7bH3IM8K9zfzvzWQ6WNgTPCp9E+FOf8aJwx03chV2l2k99rLZHlqKNRe
         E34MVuJ9lP3Yq1mUB/XDmo5xLi4VsXxcKH1iInNrugYeWBdHw9L/JaNl+gvEXsDHtXnB
         uWPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532id6DrjL2d5mjpWyS2bOrt/GGMtMDrto+VsPm7T/us+TH4ODj9
	qWSeaXkR+mEWj3f4v4VEjr8=
X-Google-Smtp-Source: ABdhPJw14mAqmhegOVz83jOKZVQbGdh2qlR/em9pPwyyieI69nIeJSjEL1nqdWiw4iC810rnNM8jNA==
X-Received: by 2002:a9d:6218:: with SMTP id g24mr5318080otj.48.1596237495144;
        Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66d7:: with SMTP id t23ls445234otm.1.gmail; Fri, 31 Jul
 2020 16:18:14 -0700 (PDT)
X-Received: by 2002:a9d:7c94:: with SMTP id q20mr4946949otn.165.1596237494846;
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237494; cv=none;
        d=google.com; s=arc-20160816;
        b=Rfa1f2q08ctuqmc1TPjZhjUtM0YbaQuMtxdH3O3xMG5hqpNTw4Nwdd424T0tHR4aQi
         JLb2XHWhV4f8aXsjwvSzn6h4qBLLnEGLOFRVk5nFRpLbDqU8mWMXNLyvyl8QmZ9htOfB
         YQABDMuTLIjHDN/OZZrSzdQj3GYpYKMDpEBYBe9TGSh89eZlKtt6RQI4I+AtO30IMffA
         PavCIRSaQy7uDxTcIUdl5KmtD0zIm22f1xgzc0jPWJz1a9zzhLcnKURQPhaqkFRLGCi2
         N7H1viGCqjRbjboyBWdbXLLNcR8L1FkqgkN1jXriBekAormo6tfxPiOzZkOYyY6jOY3f
         j0LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rx9BNhtOHihN4cC/yR211OAq+faeKI6Zes69oCeQM6w=;
        b=X6XfSsFvOhIHAvffBYDTE0bRB6mriY9eVwmJTUG8L8/5SdjfDGW9nslmMD98DLyh+/
         12y6Nt3C4oYAuIXc3bMMmnLlPosN1G/45udKBsd+QcJPmXL0BjY8J+lwsj9kFUvuXl6b
         RSritNQfSvpT4I8YqtxFF7cR69VRjxReUmfS9UHEWdWXEQLwoWUHJi7fEpqb6INWionb
         o5DZTU14C7xEmGRdcWXKOgIMbJVeVlaLiCQgji68lgnRkeA8U6UOsjqEOYqJn3kBzlsd
         Lia/jLdWGSdjZTUXKDukEDm7yMjXca47cnvhyCl1w3dcQShe00OAwIW0IdCP2lhhZZpt
         wsRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d74fEfH+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 22si421639oiy.5.2020.07.31.16.18.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t15so8525671pjq.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
X-Received: by 2002:a17:902:b101:: with SMTP id q1mr5482552plr.136.1596237494096;
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z19sm11621350pfa.9.2020.07.31.16.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 18/36] arm64/build: Use common DISCARDS in linker script
Date: Fri, 31 Jul 2020 16:08:02 -0700
Message-Id: <20200731230820.1742553-19-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=d74fEfH+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections. Additionally clean up left-over no-op macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index b29081d16a70..5c1960406b08 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -89,10 +90,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-19-keescook%40chromium.org.
