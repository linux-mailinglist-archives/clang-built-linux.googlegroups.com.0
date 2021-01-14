Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBLF4QKAAMGQEXGUGDNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA792F6B3B
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:29 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id w84sf2843087oib.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653228; cv=pass;
        d=google.com; s=arc-20160816;
        b=YkspSFxGXu5BESJJwRBr1FYZqvSIpb6yBkhVGoM3HkAGCSBqyfDcy5PvXw3pnp8FTq
         Ymmv046NLrCQ2RWm8sDKfOreaMJnVpReyL0cjV7Hq0zL+R/+eGJkKPlq5kwLijY99pLE
         1DBeaoohdGGS10A8+Sj+50w/TEMGxm7nOvzfbAdjZ/JQ4qv8Rl/Rf5tadJ6ltZNHI1ZB
         nqegGjf+HYx+8hjKBIffbjMeh7S57MLOUjrf2Bb0GDPzqVIwO7oUwtnAv7B6jPfqVRa5
         pgPY/oaMUwqS73mdY6OCTDD9hVhgMjaPvvIkvDDqySKRGSB08CMojSEl07/AWQSx4XWq
         AFZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BMkLoyA0xaGldXy4ldqLumCEOKc6mxsqra5con1eMkI=;
        b=jS/N9rnpOP7HhBYMB3gXcSLtA6ILOaWbqF4YokBI4g4qCcMKvu76HPKOj9ad9ys8wZ
         NvtTZnXew5md6Zqxx0wmHPiKKQLxPzrupp3ihMy2tPS8R5s40bQOV/n8AUlPsm8un5Ho
         zGy0W1y1Rk0XLqyb4KHsNRn0jO+Wu82xBOkp3dlAUnf6sQsHw+QI4E15Ims2v2CE8ES/
         kxb6+m1CDvcNtRw3lcOn/pxxch4bDZInxfXuTmbqAFYCJv75fK3DMFpz7vUTPvap7v31
         9YgTXOxf5o5PZigisGQMtF0bZFIiuh4lot9xQu59Ox2qM9nhLBptIWiHWziXhp+R9upk
         7NVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ilLBm6Uj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BMkLoyA0xaGldXy4ldqLumCEOKc6mxsqra5con1eMkI=;
        b=fF5kvoURGOPy4VvVmlZmkZ3syEuTLNjN4Ly1V/7E3ZOqJEHkYCu+3L3g5eZOaksWs2
         T7YZ8Jr/RmxdzyZ4OiVubBAqVuBy765hh5GPX52XDIZK8/FUfIwfyTSDAZjdPf+ywkxj
         PnvgCga2DfCrWJiyvjMosrOoqBQCW2p8ZvubqdSuA3+SdfoJdjnj8GtV7oPPxRdN5/p8
         cckLVDrMkuDofDH3ERMQTnw9TTKSb+9oMXrJCi+ywaZwKc6H5w7OB3k5DZ04VWHM9ybd
         wNg/cX0TR4ONaXTyczO5ZunTn55SZbSRaqqAfNNcLul1BJUr8JMT8RgApnlO2DL+TcUA
         d8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BMkLoyA0xaGldXy4ldqLumCEOKc6mxsqra5con1eMkI=;
        b=TxkSnfgIF6+eJf1fIog5C8L7BEbUB1b23pVcKMxuxrqs3vEoeQNd1O1PjFFI4ijh0S
         b9RF7enPYpqhKR7jwikOKwj2gLOvFWN5ngvFu7x195EegZQ7hRb/Fsq/LZKxsZhI9coM
         jo9IKRi5zdrxizx4W3/dLCFtjPTaEv1qrGIKO5sevMNSZpHCWMUSw1k+HqmRpVEJWgUZ
         NyRX+VAcLx4MUA3NdovEkWKdD19va64NuPnf+nszYJ60VLDhWy0iEQ8rrhdGKBVKrsgt
         QKK0PP+DV94TPi9/h6I+vgiVKt2DEZzhcOthq8CXZ+YPGdxP5DCUHqEQrYN4BxXdPYw6
         cvZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TXiA0UDhNEn0hSXOouytywJnJwTCvrr/pPE/NxukHMAnq2xWh
	4UHbTDsyoeJp2epf5bm+7e0=
X-Google-Smtp-Source: ABdhPJzXc3hYUDZ8FfST8Uk6URiLParvRg8wgFmhcepjDmzHlNY77zxrmzKqA3871sp1zRrZC5fNtg==
X-Received: by 2002:a54:4d83:: with SMTP id y3mr3705728oix.0.1610653228791;
        Thu, 14 Jan 2021 11:40:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72d3:: with SMTP id p202ls1624693oic.9.gmail; Thu, 14
 Jan 2021 11:40:28 -0800 (PST)
X-Received: by 2002:aca:3094:: with SMTP id w142mr3460990oiw.101.1610653228384;
        Thu, 14 Jan 2021 11:40:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653228; cv=none;
        d=google.com; s=arc-20160816;
        b=ekNUl1eEPKltM2RvdsidBL/rGCSctoeW6Qfy7Ils0qWWRnONKruU3bbxGFAiImZbbI
         PAO4UW7zNmpI1lVtXcNW4uHfYnnQl6ROoQrPQIOyW7QOr4QcuNxyFHUXknpQ5+RJAEJ6
         fIj/Zxyh4TjVF6SNGuIKk9bJtc2q24Xdw4FZCtN4mcw7tBuChk2NXdJdLEQaBHuk6YBH
         y3z2E/8qRJbgp8m8gMWC1pY01ba8n3Tb+asTqC4xg57te7H4mfyGzep5kh+zBDfae7yG
         XUlEAG/aBb4rtXQ5m4wOo2hl97fs9uIPhoWeqnt7OwOxIkhtD9F8GcLiSpilvFOCZQn7
         g8IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2tcE2k2XGm5FCaTXfp9k/QKHT8dSba+C3K9SORkf8GI=;
        b=mfaK0I8MSTnJd8byjMJpO6a4zy17V/0dVKGLrD6H80eBAULwc0ML52jC2pUpmO++6Q
         OcNoovq9Cr2t34Ce5m5nNUPVohReJ8MDZhv4PIVwgmRH7ZQwtTCwtQv8SY5pvWlay2A/
         ZBuf8f2dWdQaYO9WF2BLaCcoP5OVzobopc5JS7pdhsJUh5Wuxk5h9WlpUx05FrE6RMNs
         2ww7EyAmD/KeUYAPcOxQRiihtqr7CF6NBgXxIr7l2xJCm9whmLfymWrSPCMI+2r71qMb
         WEA0RAqSYCftik7b1wjugwV8A2CuiqsdpipoZAFHLEgZb9ETCSgKH89XDu0LxQcUQpx/
         I0cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ilLBm6Uj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id l19si426852oib.3.2021.01.14.11.40.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-FDhqXBKFPSu7IS9eNJNOEw-1; Thu, 14 Jan 2021 14:40:26 -0500
X-MC-Unique: FDhqXBKFPSu7IS9eNJNOEw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C45B15720;
	Thu, 14 Jan 2021 19:40:24 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DFE821001E73;
	Thu, 14 Jan 2021 19:40:22 +0000 (UTC)
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
Subject: [PATCH 01/21] objtool: Fix seg fault in BT_FUNC() with fake jump
Date: Thu, 14 Jan 2021 13:39:57 -0600
Message-Id: <c6bd154e55739c332c21ca4a91a66787cc3e104c.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ilLBm6Uj;
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

Objtool appends a temporary fake jump at the end of alternative
replacement instructions.  If the replacement code is empty -- resulting
in patched nops -- the fake jump doesn't have a section.  When running
objtool with '--backtrace', the fake jump's missing section can cause
BT_FUNC() to trigger a seg fault when the NULL insn->sec is passed to
offstr().

Fix it by ensuring fake jumps always have a section.

Fixes: 7697eee3ddd7 ("objtool: Add --backtrace support")
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5f8d3eed78a1..ed26c22c8244 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1017,7 +1017,7 @@ static int handle_group_alt(struct objtool_file *file,
 		INIT_LIST_HEAD(&fake_jump->stack_ops);
 		init_cfi_state(&fake_jump->cfi);
 
-		fake_jump->sec = special_alt->new_sec;
+		fake_jump->sec = special_alt->new_sec ? : orig_insn->sec;
 		fake_jump->offset = FAKE_JUMP_OFFSET;
 		fake_jump->type = INSN_JUMP_UNCONDITIONAL;
 		fake_jump->jump_dest = list_next_entry(last_orig_insn, list);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c6bd154e55739c332c21ca4a91a66787cc3e104c.1610652862.git.jpoimboe%40redhat.com.
