Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBOF4QKAAMGQEV33OMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E692F6B41
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:41 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id m2sf10286636iow.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653240; cv=pass;
        d=google.com; s=arc-20160816;
        b=xOZuepQ7rCTyltfoIm+ocQRDgkLg2i9eeqZxg/vBHDojfVRxXLtXvHxvMnYGKGMJWF
         movY3SYlX1gPBFYnO+4f6aFMHXXygB+C25Lx11klbtlx2QbWGNIxS6O0aoDh+IsAcyUe
         2MrnwK51rmW6mPC1hEwZe7e3o7+YaaKfRwN8nqclJyW+dXvXUHLICU6l2iuFYH7DKziI
         AiGhCzUIjQOUSJEiqi+CnB8MDa+3G8WdYmr4ztRwsYJ0XKGV31zur4lEGX1FVUHAvuSf
         +gPWRrJ0uck2RitKE24JykI4jxyTpbTSekFrqJw+tDbfTOzJLeQ4Gf5e1RgSAHJpvLWr
         iWKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cBs9Sj9d0utkUkuwaYUQsMq9j6uctq58KSTDq3semoQ=;
        b=O0pdllwMHzNoHZzoyttJmD/zUT0g1Di88e77HALXPMEE3dKKrf+/cv9nKxS1Upu2Wt
         /BtA5boyKZ1rkqpJ8ZIR2RwpN8mXMAn7NJBYHpsst5pa0fK3y/+W6gt4q8ZNc1FwvCWn
         fOx+YWQyGFP2sVQ4aWC30gLCh5s+kQBHpWJquUsKJSUujC0B3qbT6IKcA7f/Sc2aCk46
         4/XBh/+6csvd0k6coimyeYXHhr74AyPw5R2h0SM7Yc/k9mWPE7tlf6LHu/dB5BSSaOP+
         pdMbtwbhrMPK810N86zZSMh59RTe/chpNs4SDNfFsPNtnU907LtvSfge5yAg75tPeu+J
         Zd7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hQihsff5;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cBs9Sj9d0utkUkuwaYUQsMq9j6uctq58KSTDq3semoQ=;
        b=DR4r3nAEfLIXj9fMcyaZtSi3BWdCVMamL5S7sCpwG74d0UZ2VNB6C+rbLoPjOTKXZF
         IX9LiCK4gKRMdgN3/adfTdOmEivLOMG2b8guSKrBy3Sbe6qw3R8ahphLsO7WZ3puJTnk
         2OTfQZETP7iLM3gfKVsKw3ii5NzC2UiPCyWxsv651pSgMsP2KpjnVZPv1jyqAJ1fyJxq
         ImS040OfIP6xVyrRZTJGNzCA5HbjakxHqOMhe+oL7hib8eRr2+2QTHlSNiLYFTgR5ruA
         nTQQvUTe58YQ0KSi7QdcrqZ3sn77T+rKFJ+WZx/34HAE4rQ+5EM1SpUn5yzxQfzvMOyn
         v6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cBs9Sj9d0utkUkuwaYUQsMq9j6uctq58KSTDq3semoQ=;
        b=Zf7Xypal+udzbGaS5ppPZPVwTkrHM4Di9FZR08B/Gn6ml2aFUS9BQtdEqMc4azW3Ad
         n7pj+5kak425tauyHG5heVa0NBWNN4GmN3qdaEI5KQjSqYIoLGPyE7zS9x37nO2rlHsB
         NcwMM1imTqfAf5guoX152Mnmetug/ACfUKKb+FI5np3x3jDS8tQyKok7ndus1V7P1eIl
         vgrFmPhDscn1ewI1lAefpumPfDIGrEW8amIZ5BSISrIbtXuxhjt/kDXrgu7N06FfALJ+
         VdHXfxyXx4fEEZhXxckH5kHZCb9WVYx2foBRWZB8xq/31HBoQBo7HK1K0dD8CuCNFJnL
         nBRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ym7sv+ukg1boWvPtmvq+IGkd08z9nb9iMulMlPUiuIWp6I8Xv
	Ui7R+MZhTH1UGU5EAsQdEDA=
X-Google-Smtp-Source: ABdhPJxEbysG0TR14wcA9qUozhe42gW+fkAsKk0/APqvty8kdOxf/SqSeC0SRTDiBIeMfv5N9HwAzQ==
X-Received: by 2002:a05:6e02:10d1:: with SMTP id s17mr7954302ilj.12.1610653240644;
        Thu, 14 Jan 2021 11:40:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3609:: with SMTP id d9ls1940223ila.4.gmail; Thu, 14 Jan
 2021 11:40:40 -0800 (PST)
X-Received: by 2002:a92:d2ce:: with SMTP id w14mr8619371ilg.182.1610653240265;
        Thu, 14 Jan 2021 11:40:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653240; cv=none;
        d=google.com; s=arc-20160816;
        b=o+/ennF10Tdobq4LVCIdPemydM412d/x9TB7mExr5VpKAiazIyLICzqN5Qg8f1SjeA
         Zk8hkF0GGFyTmmb/5gUAKt+R61Dd0rfNF7DzmVyQdi1sKymrMhxiiw2KtVSoOxESYCYL
         LqvcEEXihU+IsQtBFt6MUajZDoF1RZvmfI60lLS29p6fzuROCxX4OzNmqYcZxSaYA/uS
         52k0Xnk6cN3CE1YsZS5PExuyQcmCi03nkNGGP4B/hieybarRSqLSytgbeIt0Hr4ORxuJ
         ekS78vfRe7/jO7Ey6XJEIX+ssrnaEty3rvPLK+D3PdK4YIc/iO9EyKo99EtcrFNFjHtd
         cw1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5c3L4bYrLhZL5OwOyI939GNyjck2m6pGMD4sS/JoR5s=;
        b=MRyyvNF6u+oRI9EY3n0PEkff8VNUJza+M5DZ5SYZEqADe9VronET3myU0lnK0JH1IN
         vixSLZLfwu9ocH3dGTbgICpMhJzBm3VUKoW4tg1dQy+A4FtLHy2CTlqGmslQKviGLHZK
         St/cUG1lQp9r8s9LDoz0y7YJS8clTkswAx5Bc2pkFwq/bHotNH2CN1m43kyDJBZ6VEt4
         Rdoa/Nh17p4jgB6P0PHcIoLyP985yNGffOLsYmS1NpAy7AFds70aakUOPS1h2rggZTC7
         LvVP1fXP2SdliEan2sL5GWdvV2BOBsxMpK0IjyYjFNY4B6XhKZJVjneYh2Jnhjf3h6QB
         +wlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hQihsff5;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s10si399963ild.2.2021.01.14.11.40.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-NtGuaEGLOWuUjzF4GKUjqA-1; Thu, 14 Jan 2021 14:40:37 -0500
X-MC-Unique: NtGuaEGLOWuUjzF4GKUjqA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAFDD107ACF7;
	Thu, 14 Jan 2021 19:40:35 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7F7321001E73;
	Thu, 14 Jan 2021 19:40:31 +0000 (UTC)
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
Subject: [PATCH 04/21] objtool: Fix ".cold" section suffix check for newer versions of GCC
Date: Thu, 14 Jan 2021 13:40:00 -0600
Message-Id: <93bcd631c50ea58faad9edee4ad675c57bb0f934.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hQihsff5;
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
index 00969eac5f7b..12d48db41626 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -850,8 +850,8 @@ static int add_jump_destinations(struct objtool_file *file)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/93bcd631c50ea58faad9edee4ad675c57bb0f934.1610652862.git.jpoimboe%40redhat.com.
