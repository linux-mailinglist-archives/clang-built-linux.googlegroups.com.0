Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBWHEU6AAMGQE6ZSTGJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E15702FF73C
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:01 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 68sf2007439pfe.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264600; cv=pass;
        d=google.com; s=arc-20160816;
        b=vSiPv9VuoYJIA3KGrG5qtKBY1Uha715fU1dpfJh2sKhbgcaYDwa8n9lULelKIvpUQq
         ok1m5JaxU3P8UOhIuXsu0Givz7bVNYWfhTX0Vk+A/GBR6kubdIl7EUdhIXoz7dc9QLi2
         oVtZWt/WbImCE0ZTJwQb5/uwkO5jQUVubajOTxWHTc0h1gR2Xc//nE/mC9tsX/wzJy3f
         vnSea/xgmN4ePGpr4UlAmEvKGMOjsKAijMP3cXumAtowjAAWUvyRR7MlARYRCNGNrdHU
         yiTYKQhsWhHvbNfga0tWxUMmCwTEQ8K4oJP7/DQQjUlrhMStuT24Vd/jWOJ9oI7hn/JE
         Q9bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sYTuY7z+djxVAC11x/UM3KRFV4pV/poevCpT5sLTehg=;
        b=ZaEfbeQUb2D8P0W/wnCiFt1juvpaakDZoUkC9P3kYDLDov+NDwKwNWd7O8lPdZmkja
         Yt7sCdk7LcdEIwwUnnHMa8e06htGF8QmuO+8sOIA4sPKABLJX+dw8zmK9TjhLS2pbfUa
         M55EDdt6OkbQmqdKHvW6SWJXH32sE05WZZYl+7CfsGo9gFYvbN4dSGa2KHacvHEwEkdN
         ViZV8mnjjfdO2aoDP2/6/qxafb2EoUnJY0Bqg8Ub2TtoIvz3JYKZ1dAW+m0P8S+gyidJ
         i00Lx2WJbBaN4A6k5YpVpxP7rB3EK3IP7jk5ExoPK55xYSZQ8+0zie7hVM8CJmLQ0pmw
         7FmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PA0DuqRJ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sYTuY7z+djxVAC11x/UM3KRFV4pV/poevCpT5sLTehg=;
        b=rHeLJD5sT+TQvCYHMTxtysKPR71j/Ywy0HslaTRSEHa32w7D6QPe49osExN7ss2xQ0
         5DTJ5Zpc3VwFr/uSKi188WOxHx8cr2YL/mszrwYEyivlz5ZTOmDoLmJoB390fkkrQvAF
         wo5YnDzC5bcMHCIAqFO2GnDim1+8BWTwEpEQ/oJUTGHDMFgPz6N66K80Jac0KI2GW7UW
         JYIZHtkBtqmtZqwmDURiEedfe7W5T4o5Zu6ydEozJnPizPwRtXgeaXb+6uQOFpYnRzdX
         weIU2uGrDotyCCOqP2K56BvZ4NoaL09admfhDaZKBsmRWn8MIWRBjpAqwNQnAIsZ/dpp
         bmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sYTuY7z+djxVAC11x/UM3KRFV4pV/poevCpT5sLTehg=;
        b=sqmDq/RUIoIbvrW4bcFhxu1aFzM+QdWjfDwuqx6a+R7o6vBn/hP6uBgfd4/Yx5rNLM
         /NzVLiWsKzrf71EV5/h3jgq4rfKFa785Zgcf7T024HMjeorad0teUXKXQANQ3lc/M7Gm
         Uc9e5Coz+VebjzNLV97DVxZ4Ua46wKOioSTvEwGZBxYv7+4JJ3jpvrqIGxnqZZrm+LcH
         5/v36YDX0lXNlB5sxQeqhvy8cGDYvcz0zFQ5Dw1AZM7T/lc2pXdp6hu5iIbaUAfMDRxg
         IMp0VNwXL9l56+fI06VWdZXvNVIlhxeAmFESvwMqkvK6n/BBzd4WAM/SjPuiSxpqukCO
         tSQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+6tmq2W7IAU2BssEo1twzWT4C6Ov45eJdZyBzpVCi2Zjc2m+2
	WSjvVy5RRsg8h4zgzqF3ErQ=
X-Google-Smtp-Source: ABdhPJzVon1njvYBRN02+pkoV4vQcjUm6rCWKoYtUCDPZTBlCRGgkCeWjnGxovFgSEzXoqlFAGYs3Q==
X-Received: by 2002:a17:902:d510:b029:de:72a4:ebf1 with SMTP id b16-20020a170902d510b02900de72a4ebf1mr1373776plg.11.1611264600706;
        Thu, 21 Jan 2021 13:30:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:545e:: with SMTP id e30ls1291889pgm.4.gmail; Thu, 21 Jan
 2021 13:30:00 -0800 (PST)
X-Received: by 2002:a63:6d2:: with SMTP id 201mr1270120pgg.270.1611264600073;
        Thu, 21 Jan 2021 13:30:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264600; cv=none;
        d=google.com; s=arc-20160816;
        b=iiSNI3MtzZPoJ+jMuSfIP7A4NtLSCM7X72wnh11UztWHeZXzJMEy/x9ajwh3yFr/A0
         VZvZHZvekRU6DibgDbPqWmyedZhsEr2COv7mEfHZU2t4g3XWuiR99l4+dATwyTNMMqvb
         3AqEdFKTMzjynZ/Nk+qx43rSSyPaNykLBcyRdxnG6Mn3ndtZ5I7/bXrYzPzsgWlrWL4+
         3i3XXC86uUhxOMUfQWyOXeJhNCNQTPQKVGbnaFXp4LhWjHFJaPr7q1BZ8MCKxwNnPHha
         PO2pzVwRZeQ/1UYOTPIsaF/xqDz8maCCdq3T0shwgcr92iF7lMAlKP08Op+kOQ5ho4nV
         +77Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mSBrdFLH1aTW1XcCXI87tsAr9GhvHUzfa+3/IIIy7xE=;
        b=SWOcYBVxHBeDbzNSOzQ2uww2okkmkS4jO+Os+ePATwHsOJDuyamMzu05Kj0G4mgIvH
         x0VsyyaOIkWaypJ71fISUVwXshy/EgUE0MuytNCI2j/j94Codrym3e4rCioxotNgR1ht
         FOIsq8t/a37c1gdkLfOClhzSPW2UZaI2w1KZ7/vUJ+JGQ12yebMlX537yXLUKe2fnF77
         hm/aRVLLQrO/LW9UQ54gvvCsQyAh4zauG9/QR8YbE+zgbdGd/wsqW0LogUDJ8hn6HkHZ
         1c9xNHeBL7c2XdwBsMOz7rEKN3zx2unsCThrubGcDa4xZ3GIQZZw+amywRFzz/q5kljU
         r5ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PA0DuqRJ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id z9si494119pgv.2.2021.01.21.13.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-eZWr8JnFOcOgzhGLoIR4pw-1; Thu, 21 Jan 2021 16:29:56 -0500
X-MC-Unique: eZWr8JnFOcOgzhGLoIR4pw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 366CD802B40;
	Thu, 21 Jan 2021 21:29:55 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0D30919C59;
	Thu, 21 Jan 2021 21:29:53 +0000 (UTC)
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
	Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH v2 05/20] x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
Date: Thu, 21 Jan 2021 15:29:21 -0600
Message-Id: <6845e1b2fb0723a95740c6674e548ba38c5ea489.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PA0DuqRJ;
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

Prevent an unreachable objtool warning after the sibling call detection
gets improved.  ftrace_stub() is basically a function, annotate it as
such.

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/ftrace_64.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
index 0d54099c2a3a..58d125ed9d1a 100644
--- a/arch/x86/kernel/ftrace_64.S
+++ b/arch/x86/kernel/ftrace_64.S
@@ -184,6 +184,7 @@ SYM_INNER_LABEL(ftrace_graph_call, SYM_L_GLOBAL)
  * It is also used to copy the retq for trampolines.
  */
 SYM_INNER_LABEL_ALIGN(ftrace_stub, SYM_L_WEAK)
+	UNWIND_HINT_FUNC
 	retq
 SYM_FUNC_END(ftrace_epilogue)
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6845e1b2fb0723a95740c6674e548ba38c5ea489.1611263461.git.jpoimboe%40redhat.com.
