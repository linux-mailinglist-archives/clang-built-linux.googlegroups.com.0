Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBMN4QKAAMGQETCHBBII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B952E2F6B3F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:34 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id v21sf10342393iol.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653233; cv=pass;
        d=google.com; s=arc-20160816;
        b=YxXfhCrc0fYB8kdpRapMYgSoQl0mMhahtAWfpd7Y2ZtAK/AIrHMDLDihj5EXKYth7k
         DaKBPjCS86WcpGuAdU+svGMpkmrYGuazNW2pmrJfQyRI9CnL9vY69Dl8jVzso0q1yoxF
         YU5m11M01W9C/g66UMf3JkU9lGS3msKRLvnPkCQ5Frl8vllQkZB5Ii5G7/uMPNkZSbsr
         LNRNI5fMcHXKt4wh4uvNxGjtRnTiuuWwyTQnjfpbXoTKYpw21tegZyi61r9XRneH8emK
         q8i8I4aqWwLzY6TXNp5iF3+bomyBUHTt9W/TjPFZ6tTxgIESxM8htO+RcFLsd9BM15jc
         GkiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UabFOqDvTHd/Z3FdbHpqtA8+5l5XqswRrMOhdNjXNtY=;
        b=07jzCqaQwx6K1T53wmu4br+9vBmkCXaNW8YmCK42IVFqktDO6djcaLp4z5StaC8MnG
         RaHwf61vKhl/Po18Ll25oR6xYHuwZUobff1ZAo7LA66/bGtsrNaVnVzSjFeQrHsa8HTC
         6lcLL/Eoah0LeHjHMkwmWAcEtyqQAUxQh63QvjQk+XOLqJe2vGYRp5gknwF7y5bbaLFi
         OtINuTq4gGmNNnlk2aGnSnejhVSD4j7zrc0qFyEmHHe89alHSe5e27tY2E4a0/R+JMmI
         0mMoW7UcEJXFnpUL4HFf45uayXk/sszjDp2+OyKGZfwfHd2BWN97HtMJBjX0TSLdCOAl
         0Q7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dub8Ik91;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UabFOqDvTHd/Z3FdbHpqtA8+5l5XqswRrMOhdNjXNtY=;
        b=mYipvoS8RETOKwfVSQvl2d23RKRYRRQAYk9g20tlMuYg/u6/Fd3cl2Z1CrvbjDavfu
         2HyuCab39ggIoAdNQz3yhMnt9sKvhBjT7i33WKLTR/Xs9qlkX0JEeZ/CZgLs3zoaFxac
         gxEDmSNPBiXAcb2yx1sKYHtlGlu3gMasENOI7OIpWnrIj3QS1+EAb/p85KnpGXqwsXnZ
         G4KUuKh8T9OccKK4pvISxNPLED/te5+iquLjKTguliLolfA+1at1LXJ2cwessRGckDuM
         fZkk3a4AxAlpDdt+EPiCw7nS5dWfHEoyGn5BVLKntXI3JX7C8zY6XsrSjw3xjpfQgSE5
         G78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UabFOqDvTHd/Z3FdbHpqtA8+5l5XqswRrMOhdNjXNtY=;
        b=iOmpVYLMLAkOad/507pMaUPsCb2JiHQXLnRI7D0Rs81cpuLh1W8BFgFSEGWY3rfFhZ
         u5eOC0xBI893KMyDxIysrU0vc5btNADyaVavKY0VeqW4kFswb0wDgsLdx+2i62bRtRHW
         otKn27OblabpYYWM9jSuSmSXx+oeTWjPyJpqz13NX5jcBz3uujn+31oKeYhY70SVO2za
         6q42UraGVKp1Hob6UBeSkpAv5LgRQPcXGO6fNgZGN9DF0gUFWviHDRpwbDFXp9QQQUom
         fN0vjstgKOo9fmH0OULVqQhaBtse3b0LuqxLzTKvna0zpUogES0WQYVFOZm+4+SPcpNH
         X2PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cMzlgStoc3eLNuuLj9DapnEG9wr2ihVbPwG3o+UFdK8x4i+7U
	Xdd5jvHfdFDcsghu2Juv/a4=
X-Google-Smtp-Source: ABdhPJwP+0kJV7H3oWkOEr+6Q8+AD4YvoTdPsomp7ZXIKD+7qYhyAbMkx60K62iRaWgRFEvzhWHuIw==
X-Received: by 2002:a02:9669:: with SMTP id c96mr2478597jai.47.1610653233759;
        Thu, 14 Jan 2021 11:40:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9299:: with SMTP id s25ls1033055iom.10.gmail; Thu, 14
 Jan 2021 11:40:33 -0800 (PST)
X-Received: by 2002:a5d:939a:: with SMTP id c26mr6485391iol.63.1610653233287;
        Thu, 14 Jan 2021 11:40:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653233; cv=none;
        d=google.com; s=arc-20160816;
        b=IUGN5OgjYDzsYOERZMfqD2mIjDvQm7EWAYKutfqj9guZdbdChOu8s0wD9RfjuxnHKY
         CIC0h/02sQljHOlUVtu1GTW7CYg56fgo+4A9D5BbWtvdNcYmp6gOitAteyzGtUv0F8aE
         xMj89JJhbhAoQ0v9qDtWXjK/duOQR8F7HTEmNuLIYjsl8VPUCEerAMSPY0YQ/8WzGLgf
         KMJs1NR0+1qFlGtwnD9jFIt2oyakFJZIgBh3zwjD80NE6KG6JsXITjUYj7cL7HoJMX4w
         dbrS82KSzSx2hp+aYmVd2c8dQVUnnfgXKzOR2rizYXM43W9meeyDhaPOvHJWkxtkr3mR
         jmJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UQfXCHh4i4SXIEZjgVa0H71mp1wdk2045lCYD+UgrNk=;
        b=w+lm98IwUl0uj6M+s/5N0Q0UtpTkV4sqeZRPR96KdWb7zwOuuvuBFYAqOSdSH6tNA7
         dEv2MWsIw3kIG/KR0HxwSw50kDMoB38mxPNmS3ebHvrfMVwz0Zl9jICCC9TzPMzxrKby
         /kf9rsPbZVo1qJOASNPWwF1UN2Fy5rHtoViGGB7yKZStHa5tAXqw5TMkE7eZiNUze1V+
         zEqviFMwOU5vjg8J7EYwcCH6RV2w8j2D4F/iF/NZLUKOZYGSRX9xWoXoRXC9GiuQLORe
         i2HQtcHbEVn6RHQxSWRUHwtVYLQMiJe0QsXpeUUhCcu13xNH4vUMT6H5uuyAOWFJBBEr
         hzPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dub8Ik91;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b8si823932ile.1.2021.01.14.11.40.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-jgI2Nlx8NV6D1s5T8o8JAg-1; Thu, 14 Jan 2021 14:40:30 -0500
X-MC-Unique: jgI2Nlx8NV6D1s5T8o8JAg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2848800050;
	Thu, 14 Jan 2021 19:40:28 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8835A1001E73;
	Thu, 14 Jan 2021 19:40:24 +0000 (UTC)
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
Subject: [PATCH 02/21] objtool: Fix error handling for STD/CLD warnings
Date: Thu, 14 Jan 2021 13:39:58 -0600
Message-Id: <90a81eb41741429562d2fdd5bf1e23c416b1fc6a.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Dub8Ik91;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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
index ed26c22c8244..93c3937d1d6a 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2592,15 +2592,19 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/90a81eb41741429562d2fdd5bf1e23c416b1fc6a.1610652862.git.jpoimboe%40redhat.com.
