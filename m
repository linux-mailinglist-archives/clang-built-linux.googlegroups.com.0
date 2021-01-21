Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3XEU6AAMGQETCXHFKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0BB2FF744
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:23 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id e12sf5609576ioh.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264622; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8psVzOraQ5UOLqm3APqbqymNRKxlE6JTjjnS0vNNP0V370WU8fDwIofCxzI7ct2SC
         D4JnD6hahMYml1yCN7+dCCQCR+Zb/OPSs0y8xjBVUPZuLlUE1OHw1WcTNU2D9t/mHQWh
         QOHv6Ku5fc3VyQJ75pKwYwLcbPCAzMG/g96Phmyy1HILGqVAQWXThYdRxLo9pQJ4cKjS
         pRReRx7744COX+We4sjeXUtXNByi33ABDIsNJuni+UZ9DA7CxGqcWMhOT+q9tF4McxiX
         qEVcjkHdERPo0yKmXEmhsVKynEdXcmjqjaV0XVP1WSGMRebfWQi97zbvOLTJkNm9jIOf
         xH3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uoE70DTg9cHb5zvSOHKRxHb7yV3nTbviRAK4sBSJoG4=;
        b=bygSSnoRvOuhC1VqpQyMPGpCwJcVMcntjDAn7hZH/620/SFoaxE5XYUTotACav12ig
         ByUS+4gPI8tkISzC60DKf0KkpCwCsIoEnVYJxdTHvJGpJXf9RWFYWOjJZh7jCABLHTnT
         qJXvMWcaTb3wfrNfqvbTycRO5zWpBHMLClA69nqeFh6wAZtyRg5IPbMrEDFIg39vdhTd
         jUn8HAEykkIOm8+CxPRnQ/PTCF+4e14XTaAk+0wMVPt5Sqs0nW2D160wlAgPVS1aU+LS
         AF6ftE1iVnZbrOLwb8+OYSyWIKjkPEt5Sgo+V9nZCcC/XX1hRnvo7f8Z4bt10VaZH7e/
         FyJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MBTS21IZ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uoE70DTg9cHb5zvSOHKRxHb7yV3nTbviRAK4sBSJoG4=;
        b=B08wdtTT3M29bkwlbGkOnhbvtaSW74GZ3gbIq3zJKKeuvSTTUEbRO4M9zNdW76J9T2
         ePfDKiS+VAm4TNLpHZL+4S1k4gw3VJMAxnILNLWur59LEqGwBO2YZzWNwqC5fXHXKl8p
         u3weBDEjt86P6bsBn6eXvTLt/zPO146dZBRK2JhshGEFS2YDuV2ejmBOoF1FuIra9ZSE
         bW0kuxkW5n5iRe+Ty1/olZsphtvX40/JljNqiH++nuerF3u8Oa0uwZhVROOeqt/1Q5cz
         eXgpW2Oh0RXrsNMuV53NpsOWamA/XWLD1JEX4qbZcJO1psuvEUR2/Um807z23GSA/mbn
         8z5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uoE70DTg9cHb5zvSOHKRxHb7yV3nTbviRAK4sBSJoG4=;
        b=UTS+hEnPwno2R9geMm7hr6DsxKOog0eZBlve0ze9KNQAlXG9MhYMb23Zw13SgFuHcm
         UkhaGSnCnzuYoaIlOsTINSOs/5NijPmxqtv0095dxUxWD07VjyMsihZb5FKashACZwPl
         ebs2SBidKIN0lN3fQJPblei3CWZzmkB+cw+w5babAoVIHPvDvdk/ZJoMT2T+gJToemMA
         kGWXebNtpMwQ/WU6Dyz5pBUFdJl3kdQ2zF43zuoR8CFWmFGrbMbmBajVNHRG2oclRZxA
         scTgoeiZXqc2+w8vkikUSa0xujmO3Tz8P50p6wCBC5z3Get1heCjxwG7TU7jdxRbrF29
         SIRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eN0jB0v2KSrV3GlpAZkGBbuRVh54FLcALyX4/UySbBCNwgWT8
	+BXy/JKxK7HXir1CC2zRnlk=
X-Google-Smtp-Source: ABdhPJw+P5AD6KNH2Ci8LmgFeSlU8LRe158oeA8te3s9Q4dSBvdbL0ACpH6BMhtstWyNmM39oKB97g==
X-Received: by 2002:a02:c550:: with SMTP id g16mr1058485jaj.6.1611264622610;
        Thu, 21 Jan 2021 13:30:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:12b0:: with SMTP id f16ls972428ilr.11.gmail; Thu,
 21 Jan 2021 13:30:22 -0800 (PST)
X-Received: by 2002:a92:ad03:: with SMTP id w3mr1438166ilh.290.1611264622246;
        Thu, 21 Jan 2021 13:30:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264622; cv=none;
        d=google.com; s=arc-20160816;
        b=i02wlN8UTsavEoClnzj85eRaMnI7CU8Nse0kd80/H6fI2twyx8eQGyDJv629kxnDn0
         gCzZ2CF+onuXsY32Lj+mQJXtm/jt2siYanjtE5RWNNQrseUuC/fs11RvR0Z64bVeh2BS
         EW8ZZZEa3aMBL/kJEBfWsxLO6HhZjFMOhCw7SxbsmsGlD03a5jixu45H6zFYvDgnh5tb
         FqRfGaLy+94PLGkn01DwFl3K/d7Ge8MRaYIW/qYQFdRB760v3G6cOs8CK5JvvpUFIebE
         Vqgb4J0qsAasuSc04BZJI9e7pWB4PtMwstAUlI5NQeX03912r1K866j0ShfEHijqJChU
         jQKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jbPyBNaZWOcYzEOJ+JRoeVR6FopIWpC5tf/Fdam/5D8=;
        b=knQDZAmXI3C7ew5AUezUHHoOH+xEZ+I9vhE/voP+CuA/gM4yhZI4oVmIh/qHEytHUH
         iUvN0Y83JBDP6WYKlodJyeOpEX77v6CMmhPbIMXSwOmm4kKfhI0iwJn0HI+GrVaAeBtx
         Sgv+d9dPowYNV6aVshn1eLE+dxdxZP8OawY6h6pzczZYDibgqzDFl0WHHCNsZv4/5Z8k
         kaENm8AyUth8C3WDjY+3XnztyPxwqD+DL/Ie+sXx/wtmShCB4dgMbSGeft07ARwoA4GX
         gUvN3zU3xzwzKD9urb2P6CoFtkWJl0vETDoecRZYnsIgbLCJ7gOx9rcxvHP6Fstd6rX7
         mqcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MBTS21IZ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s10si364703ild.2.2021.01.21.13.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602-21-m7bb-O2uDVgNvdaeSyA-1; Thu, 21 Jan 2021 16:30:17 -0500
X-MC-Unique: 21-m7bb-O2uDVgNvdaeSyA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A562C1005513;
	Thu, 21 Jan 2021 21:30:15 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 80C9D19C59;
	Thu, 21 Jan 2021 21:30:13 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: [PATCH v2 13/20] x86/xen: Support objtool vmlinux.o validation in xen-head.S
Date: Thu, 21 Jan 2021 15:29:29 -0600
Message-Id: <0883bde1d7a1fb3b6a4c952bc0200e873752f609.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MBTS21IZ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

The Xen hypercall page is filled with zeros, causing objtool to fall
through all the empty hypercall functions until it reaches a real
function, resulting in a stack state mismatch.

The build-time contents of the hypercall page don't matter because the
page gets rewritten by the hypervisor.  Make it more palatable to
objtool by making each hypervisor function a true empty function, with
nops and a return.

Cc: Juergen Gross <jgross@suse.com>
Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/xen/xen-head.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/xen/xen-head.S b/arch/x86/xen/xen-head.S
index 2d7c8f34f56c..cb6538ae2fe0 100644
--- a/arch/x86/xen/xen-head.S
+++ b/arch/x86/xen/xen-head.S
@@ -68,8 +68,9 @@ SYM_CODE_END(asm_cpu_bringup_and_idle)
 	.balign PAGE_SIZE
 SYM_CODE_START(hypercall_page)
 	.rept (PAGE_SIZE / 32)
-		UNWIND_HINT_EMPTY
-		.skip 32
+		UNWIND_HINT_FUNC
+		.skip 31, 0x90
+		ret
 	.endr
 
 #define HYPERCALL(n) \
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0883bde1d7a1fb3b6a4c952bc0200e873752f609.1611263462.git.jpoimboe%40redhat.com.
