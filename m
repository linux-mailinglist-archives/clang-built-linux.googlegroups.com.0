Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBUHEU6AAMGQEX3YUFVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1332FF737
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:29:54 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id j203sf1363586oif.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:29:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264593; cv=pass;
        d=google.com; s=arc-20160816;
        b=udlheRSV5TofRIQ83BbFVHiwspKfezhGcQKZnvcPVjMXrZNtjEV/Er1UJ60iCCQQJ8
         KqCR1BrF2z5f8FmkXGYMhUssVdjxRoxj2Rh7Cp5rrpU71umj7yVuy+UNofo7vJr9FCfR
         y7YdbrrSJ2S+IoSpU8LmgJZGDKJUSTgosJKvci4tBEX0gV9DzXB7AULp35FJ/e8Nd+2r
         TNagHckJFOy9iAa+luvODPNRPJcdhaGLavG10B3jR8d4nBT6EfcGzyNwMoxFdp7K6jzu
         Se4jEyYzJf/m7npqKx9vlcRE+3gUhOoFDjVTbX+62Fs4fq3GqkLBBZ4bI/nl0rcK8j7G
         cFVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ar5qTfesOSLXUZu0EzkJcDoRFG8Y6U/Lk5YdTjRitKQ=;
        b=y3M2lM7JPugYswuZQMezeGhd44oBNM+DP0ytSiwSC+4vaPTfW6UqgL5kiqvqeYtgHH
         3DXMt3mrYu+s8CQgqt/tMAvtOFIoEPO1NJmiTFbdFjofKUT2oDY1S1+cvn8X2Iw5vLEf
         uZS4/X2JmSUwpvi5ZpqcYkG5xXBVnlcOrNfc2lktwbLi0o/O/RiRc+FAkNJ4mKzBvux2
         llPBn393sUsJCBns7IrEpCOZ7H2R5qe70hxWTKtjuNrIrG6+jrys30n4OljjZqENBVSP
         d43L+7u1cPghabY7oZmFH1cIsMHOWbSn4+sX+nI0X/BKGtZnFQjmDSJ6MJryKAbjE830
         KfFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P1g7RDpu;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ar5qTfesOSLXUZu0EzkJcDoRFG8Y6U/Lk5YdTjRitKQ=;
        b=XxU6yodollVb8xVqBLhHrxIHxJcLVzAkBQ481KSRE5raAphfgRviVF8Nde3sK0Fi5r
         TaZRzsxzZ6DOX9DtuBn3YCN7ux2tXN4mDdVgZRbxbM4AA2WVrKPsFJDmAK0saqoSPDz6
         V3zF3mm1pplfSt7QkFUf6jgAYquno9YcrPIYS19If/4EPwFDHMODNL+dIor+ac8rTXDc
         XKyM0JZ+k5pmxTu7ZgU8GoSLDWT/l2ISR0rrEf7wye3PO4fS1Ci0q6xIVz8kdylfmVnX
         0FHjjeCpfv63BnpCcfppxfcufRmvWfuoKv7F70PUis9cgzj3PNLzzUcQF5m48IJ4jqSA
         bnaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ar5qTfesOSLXUZu0EzkJcDoRFG8Y6U/Lk5YdTjRitKQ=;
        b=sDide8F6aCleNZ5DW56thiusFJddA8jX7jnxBs3mZuUWmpscPIYwiIr4sQhPitJ7rz
         JqkXcpcB6c7COpX48U1lXV2471i+O8NjQplbwJmhMoyBVahRfGbqTf3wmavBctacqsl+
         2kuWlNbZsO95qVBsq/TR0y9tWfUyyQy/lSL5CXCe7rmrmGVwj5qNAHALfrhOSPPpOc1E
         0nUi/k58dJYhNcvvDiRSQpdrMb7PUihAB3ugtoTiO64jeUZg0UU5yg9KDOlj0rKpZhru
         hClmZ3JFtVK44QyGfvkDuHjpp3rWTKcNO6naX4helqATWkoevu/rkh7OgAfYIlwyAHrd
         F9rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zgMKENvgHTUuNx2CHR8/i1C8q30l0u7vCFi0PkGfGrH1PV8Iy
	/JM9J7kDho35EYhwqwKWQxE=
X-Google-Smtp-Source: ABdhPJzsBUIfx+Jskk0GC6LPDXC5igujyN1Vh2Rvs759A2SBWl8e4hy74lhOyb/bbilQ3665axziTg==
X-Received: by 2002:a4a:8353:: with SMTP id q19mr1352419oog.40.1611264592916;
        Thu, 21 Jan 2021 13:29:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2119:: with SMTP id 25ls966541oiz.10.gmail; Thu, 21 Jan
 2021 13:29:52 -0800 (PST)
X-Received: by 2002:a05:6808:83:: with SMTP id s3mr1127024oic.31.1611264592472;
        Thu, 21 Jan 2021 13:29:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264592; cv=none;
        d=google.com; s=arc-20160816;
        b=Qsp4EFPi8qq4QLK4n/pVRwM+oP6nraPl35PqJLEkUHqBiMMzH1VPPaApxTtoqG3EXt
         B+s7ya/ue5kBP8oKxGy0DsPBJhI8Ya4miCYHAOf8GHsFtjKJwpI06qdXMOg4WUjuawAl
         VWXnTjp4f20OwwSjYzXkPGzyUvkXZa9XIyMpNos0vyMMzxt/Aaxta8FLc1gy7imhjM0J
         NCtDZ21nYdjc0uHZYk0ueqdY5/+WohvpAvp5zch5qn6iOkz/c1BWpKraIKKR9eKLwUW6
         dh+Pnt6Ga6XbgEeCIVHN63PdFrKBewLtETMxFatIGhYrlsTRY6/tCYgftqgY8OAw2NGO
         0Z4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=b9igF67l9wvnwUsPpvwUTUEtHnMVGRbJiUHAAfvaQ6M=;
        b=TWO6nf72BSNvySWNQvyOcDpgn/Ds+azCEIVtzPquHRM5DwjgsJmnvDLiNi6278l7Yx
         Pn1zeK73BwfYIankht7z2W4AQWG8GPUAvdH35rDftyV8OyPfC2T8DpKN+HeCBN7WJQ00
         SMxQSUjI1H/2+PVjpzOHGBpAyALSzg1ASZ1Ttm8LMI0IHDJZ9bwLmfUkhRzHaRcP44qA
         nwnKqYI/M04Cn0gnl/sWZSr1MXf0zahnB4z3lPdEAfH0+7CRSmHE4wdo8Smo+rYq/6oC
         QSA2cVqgXEp50nQubCXJbdJSi74tUtoNH4HJrVNFEdkzmlg3JYFG/ui8MlttelrZF0oa
         sqtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P1g7RDpu;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id e6si201763oie.2.2021.01.21.13.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:29:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-lcgog14uOIOK90O3RnLU-Q-1; Thu, 21 Jan 2021 16:29:45 -0500
X-MC-Unique: lcgog14uOIOK90O3RnLU-Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D3B715720;
	Thu, 21 Jan 2021 21:29:44 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 608C819C59;
	Thu, 21 Jan 2021 21:29:43 +0000 (UTC)
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
Subject: [PATCH v2 01/20] objtool: Fix error handling for STD/CLD warnings
Date: Thu, 21 Jan 2021 15:29:17 -0600
Message-Id: <dc70f2adbc72f09526f7cab5b6feb8bf7f6c5ad4.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=P1g7RDpu;
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

Actually return an error (and display a backtrace, if requested) for
directional bit warnings.

Fixes: 2f0f9e9ad7b3 ("objtool: Add Direction Flag validation")
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 270b507e7098..3bdd946c2027 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2651,15 +2651,19 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 			break;
 
 		case INSN_STD:
-			if (state.df)
+			if (state.df) {
 				WARN_FUNC("recursive STD", sec, insn->offset);
+				return 1;
+			}
 
 			state.df = true;
 			break;
 
 		case INSN_CLD:
-			if (!state.df && func)
+			if (!state.df && func) {
 				WARN_FUNC("redundant CLD", sec, insn->offset);
+				return 1;
+			}
 
 			state.df = false;
 			break;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dc70f2adbc72f09526f7cab5b6feb8bf7f6c5ad4.1611263461.git.jpoimboe%40redhat.com.
