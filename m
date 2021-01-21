Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBU7EU6AAMGQEOCUWLTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0C22FF739
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:29:56 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id l12sf1332723otq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:29:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264595; cv=pass;
        d=google.com; s=arc-20160816;
        b=QrK3DuN8dpQv7RJglRr+/yzdtEAHQj19AHpCHcmlrtHsSKRL+DNOWa1njaHP+ezYTw
         h7toLm4b933T7JFZCyeQohBukyXjw44g1+AuRyIH1UvjGk1g1B/NbKVM8gncy+sXebMn
         dU39RbC3ChrLAaPiPrjb0b+Xijh5ZJq6iOerb1DKgAMzNMhWfhqj+aOoGs24MD+FL7Wi
         /vL2+S9ymanYiU5POxW3yf57bnDuYs8r0QdqI094s4WnA4Msnmv/DhBQM7J5iKrEtYFH
         xsL5cOy7b3WT7dAK/jlgPaZAiiJB+3lgak5P9pxuY6x1oM1LJx/qK/nD/PcgZXEkIR4I
         F6Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lA0+XKKWJyMgeuR7nBVp+Mj+DXU+wiFTVkixZ/KWIQc=;
        b=DIRom05eriYsy3rVc5e7YnmX41nqVE6CEt4AQks6LlEI0rbO3YwWLkkn9d+yqr8LrK
         rBy5K+ofpRC/J8/CbbJog/aDa5SG5CMkaEQk2OZpwOR1B0T5dzRqJHZBPZsUEtc0P1io
         TdmY3ENixgzLWDqBWICL1hHxk1FLnl5F/9MAuLvHZHk1Xz7Qgl4hh66aD3aiZV5uil8q
         XDxH/0FRkf/OUyEGQulGg2NGBddShCl01WC3wLUVsKeeqg4WTSZ8s3lBTYAwpifvJRC5
         nV04Sdf1cSFDjRy8uQue7U3ate+TV2LmS5qA4fwCvJcrl31Xw5aG7xHKtaQqXiNcTv7x
         g+OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZO4htwAM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lA0+XKKWJyMgeuR7nBVp+Mj+DXU+wiFTVkixZ/KWIQc=;
        b=PJ6ccdpmEfyVs2utskW61kex4ASj4G3QU4rkwPnwQuLw5Q1uKT1bwqQC8C7BatLSZA
         WQIwDE+S4Ka3TIa5S+aKboGobIYC1OLEKezuTe4+jN04sMal8PbwVL01ic/hqIQAolPz
         369Rjh1HW9B2eSqIP3X8+9ra8LrhFblgmaPshO1qzk/Mygzc7d+5Rw1HyqeX0/oBIsYK
         /hda1RrH0Tr7G694fI+Cjf+axeeOoHVwZDMipk5NeeOXWsD5I8TFkLSUGUUu8gOv9VFh
         mrGIkfrGcVlA+4aiI/GekOiHUV72HMbai6qOXzS8uGw+ZLvmGrXDC5RaaAZqCVh31734
         ysfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lA0+XKKWJyMgeuR7nBVp+Mj+DXU+wiFTVkixZ/KWIQc=;
        b=CKQ/J/4PzS/OYsR0nmlPh1Zr8O2Q32bsSjokuh+m5ZEAT1MpvyCMKaSKwCxB68T50/
         xh+KrrRxNdYGJkaXtq3W59KhJLzMX2ttWe7EPt2wnU7iQfyDv0UsDSF46humd4F4T79n
         n6v9GyRN2nWg/iTrTzUWsvc+E+3ALcNI0wjs5XWFJXrEbdC2fYdZylWlBUfarAJK5o3f
         3wVlPqrgD3TEhYHAhFUD8AV8z4EzqJMSgynnCFkFiszNqq5aSk5Xm9sHPoBosd4duj6k
         p0vZ9z+BNv2z0RYf2cQ8ZHfRvPDD/4CxUqbCUXE9nSNVMo8VM5Sv837HSJG38h3GuzNp
         MNEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JGw1bYhzPRo2lucDzm6BE74mjg+yRcUiRnKPAe+LmMDesS1cu
	3MPgJbIeEtRAqAn7pUwVeow=
X-Google-Smtp-Source: ABdhPJyc57l5H+bQEv8uHuUOREH5fE7D9PwxRGxmRq9xpodGwKN1FwydhYjH90VQ7sL2NkA+LysUXg==
X-Received: by 2002:a4a:96e1:: with SMTP id t30mr1319760ooi.19.1611264595551;
        Thu, 21 Jan 2021 13:29:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52c5:: with SMTP id g188ls760518oib.8.gmail; Thu, 21 Jan
 2021 13:29:55 -0800 (PST)
X-Received: by 2002:aca:e103:: with SMTP id y3mr1092203oig.11.1611264595182;
        Thu, 21 Jan 2021 13:29:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264595; cv=none;
        d=google.com; s=arc-20160816;
        b=ipz09eTHMXLyzwep0gbZLMr0WoxZOABCgyCW8UwDOTQ9gv7ftnj0UXRJYfa5hNGcq7
         Fp/yNkC2rhKrvbu222y5w6tyq2sae6du5oaPNJspSAtFFXMRiz/5F1J4B6x+eSRRWttY
         TU7+oLFM1oJC3d1Yq/FX6fHzjq7C+W4blCPq2tWWBGuUHjaFOpEkptqDTuRWZFoia8yu
         YqIZbhSm0hpIDfF/8aIFX/2+vMfBmVrpz9OPIc/UJgfrFXkEzjWzvtRzLP8lFbkmUThs
         wKV3Fpjl4xl+L8ofDDGPI9o//h05GO9KXodYoxtS9BABenAYFnY4xoCc6os6a98hvLvp
         fUzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A3tZhw5lFO9vqK5NVdOq0e0gwHHYr93gbViyAOdUZh8=;
        b=GgSaYbtSyUQlslCTYEebC3OuzHzcXhbb+HdxYCCkoam9AtAQlUTQ7+5TvX9jcnoD+C
         y5M3D/zDVfhb6xyOhQ+a/Q2fGh6i+SEpO/lQ/qV9JOSCoBNz6UzuUl+g6CLaCnj6v34I
         EY9aZMDTU9Wlo9sA5+LVwWkQ6Duqesz1Tpl5thsphlh9p4dapv/HQyYGgtgw+7mTLDwQ
         tm5PFGmMy+dEQwHZ5xxBDB8AtT/PCNOCBtA7bVKuHvhO3kbLIKSiecA3Ig9Eq8u6MwSS
         UWTjSPBcmagx0ylHDhWVnr1MFE7j5gARPfntYQcWXRSEc3AOqfFJDvQrw97+4WyERZgw
         GVJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZO4htwAM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r8si453636otp.4.2021.01.21.13.29.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:29:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-nnvBoIYePH23VFajn1q8dw-1; Thu, 21 Jan 2021 16:29:50 -0500
X-MC-Unique: nnvBoIYePH23VFajn1q8dw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4959802B40;
	Thu, 21 Jan 2021 21:29:48 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AB8433AE1;
	Thu, 21 Jan 2021 21:29:46 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v2 03/20] objtool: Fix ".cold" section suffix check for newer versions of GCC
Date: Thu, 21 Jan 2021 15:29:19 -0600
Message-Id: <ca0b5a57f08a2fbb48538dd915cc253b5edabb40.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZO4htwAM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

With my version of GCC 9.3.1 the ".cold" subfunctions no longer have a
numbered suffix, so the trailing period is no longer there.

Presumably this doesn't yet trigger a user-visible bug since most of the
subfunction detection logic is duplicated.   I only found it when
testing vmlinux.o validation.

Fixes: 54262aa28301 ("objtool: Fix sibling call detection")
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 081572170f6b..c964cd56b557 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -846,8 +846,8 @@ static int add_jump_destinations(struct objtool_file *file)
 			 * case where the parent function's only reference to a
 			 * subfunction is through a jump table.
 			 */
-			if (!strstr(insn->func->name, ".cold.") &&
-			    strstr(insn->jump_dest->func->name, ".cold.")) {
+			if (!strstr(insn->func->name, ".cold") &&
+			    strstr(insn->jump_dest->func->name, ".cold")) {
 				insn->func->cfunc = insn->jump_dest->func;
 				insn->jump_dest->func->pfunc = insn->func;
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ca0b5a57f08a2fbb48538dd915cc253b5edabb40.1611263461.git.jpoimboe%40redhat.com.
