Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6W6RH5QKGQEPSMQVHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D18C26CA7F
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:03:08 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id l22sf5938849iol.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:03:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600286587; cv=pass;
        d=google.com; s=arc-20160816;
        b=tEY9DH8d221HtCds2ZWKvNrIPhfq3wSK2IAj9ExBrOoC4Ba7UmuZXz5veHhNLvMuBm
         686LnWUi9htYLHe9sJQm9zkQmj9xHmz3u5nxhZWJPfnjY33xqqqdlFfN8DmWesvyMI7K
         8VuSpbUt7sqO0m/rzOVbDIuw97mPTzxkVYobxP3P8EvZog3NL1rmhAZXZ8auAghpKlyn
         yk4+KmQ87zLJYSQ9qU86g/1BLDVBgPlLzFKnviM/M6KAYy4IhihpyHf9cxP1nDFB1wvo
         Vo/IzndFTWHtzTbWgLUiY/6hkPE6I0iqcnudcYm+4z93lMUBSk9bW6ayhOCvJPlkAzM4
         YH/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=sni42dAZ3Z7wKiJAlkP2D5epYJ9tr0tZD19y365uclg=;
        b=u8rBDeqipdIg+REgNLUnguKKuAr2zaf1D9mCDxZ1dvzC28drYpATjw2MjNOahBeY7s
         Lq2pf86u8OXO0XM/SsHiKKUl0PnFQnU+fDemOOWPB32Pr6Nl5LW1l1pEdlwLSYWjlUmm
         ydsJgS4PTrLtjhBLwdTqL/fuMDz5XygHmxaYwqSi0syv+vJVdbZEs8dVJCWgQxIcFDlV
         a4HfjRy8A+AO+YNCIZXsqcr9wGh7YEtWpEmMC6lu6+Xtr2tpa3tnqgSfbDWfbcWSMMQ4
         +MoVK04TihYTIjd43XyrKpw5lYdl0K82xPe949s/DYlufxwjKtU3GpvkJfobu3tmnYgo
         8+JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ovVAMVBq;
       spf=pass (google.com: domain of 3ew9ixwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3eW9iXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sni42dAZ3Z7wKiJAlkP2D5epYJ9tr0tZD19y365uclg=;
        b=tXB3PmvZN9mOF+izWOZ1gLJGkaQjns2giYhQOB9rbAvt0W7A7qZZB6mZOSpUUVvgj3
         +3iBX08E4giO+oAUF0EvhXYSPl6vRTRj4F+clEWm3BfmyzfpRTfD5qeSdWxwZqQqwJeC
         oxcO72rWbUfpwQ9mpJy4MjuequuqZlyR/4S0xSzKZ8wknDHTtJsBau6R/peXySH8xKk/
         bd7HRa9gBXjpS5p5gRgjLMU1G+Jv9SacFr9ZW3MfmILi3bmDK8pWSux+QYeYABN1g7yX
         afHL7sYJPtS1o/voNnO4zGhUCvmBVTJIlhljD14fZK1GLoDMNo1CkF82gMJc53x9fPzg
         tPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sni42dAZ3Z7wKiJAlkP2D5epYJ9tr0tZD19y365uclg=;
        b=VXui4A9FQ8TiL1ArnjZN1nh6USXeB8TgMs+1Y2chSlh3Regg4r9r4Wo0ytDS/oFOvT
         1g5QYBkEJeUefKFLPqLjvGE1n8Lo97GInjF8qpoDtFAV9jjmJObc4WicbPJqgZBrG0RD
         HhZyZPFFXJJEKE6ET4/4wyjQrzYt1Z+RsVQgaGbAt6pxr2cVlzpP8k9SE5zD7Dezcs10
         mpqTWUXytMYf27SjwWtlEAi2II3xT1f26evGKSFpaJyt29QU1Jh2/B4M/mcmVQgEm3hL
         hgj3wmRPDvMpIfBTTBp1IzHm9Q4dN42PDs5odY+eaOG5eWbjPp9e0cKsH/CVKCeoDfjr
         PFLA==
X-Gm-Message-State: AOAM531oqQjvpo+IYWaHTtqKyEdecCwn1Yq7jz2AlTLnxLWUOMwT+Eo0
	3CbdNbbOsolYHsOnGSI/70o=
X-Google-Smtp-Source: ABdhPJyDSftrIGtxLS+YUAnUGHosEUneBHsKMJBYuOSWHBB7Tcf54AOkB3nMlcD+aH1HcnsuMizqFw==
X-Received: by 2002:a92:9907:: with SMTP id p7mr12541818ili.200.1600286586982;
        Wed, 16 Sep 2020 13:03:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:220c:: with SMTP id l12ls422720jas.6.gmail; Wed, 16
 Sep 2020 13:03:06 -0700 (PDT)
X-Received: by 2002:a02:6607:: with SMTP id k7mr24064700jac.91.1600286586586;
        Wed, 16 Sep 2020 13:03:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600286586; cv=none;
        d=google.com; s=arc-20160816;
        b=uLogvNieuSUNFPe+IDzrMS0u/+tUScCRdl9lZsZpBUKd6byr426d1TmrB4P05UVK/G
         i+p3fEU5kpd0+3JdeRyRNtrgMBi+dVEIeiVtmwNBEu0YpkES6ODMhuwUqj8svdcsS2+B
         1qf0Yo9djC+3lCsAsqnY2622ASWP0UMUXIvoRyk788ozvm91cOnNLJeJ1BWF9717Wq7U
         KGrJ818ovKBZgUw9mmgm32f//qgQlDnjNrlo8zrUXkIQDkL7kefWBDw39NWr+tq9nH7B
         /B2VqNj+AgMFvBomKOkx6RDyQvq8oCo1BRemRwj83WEjLwPTXk7M1qMHhz2XsisnFDx5
         KD+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=MazoKl6IvxkPqAsDdAfaizPzdK2lM2rR4UndvMvYgzE=;
        b=AdWSwUHAqJIo+KeujSSZv0qGT/9Jd1m6cV1BZ7Vep7vHJ4V8NUx7pSXu2CYGVuH9zV
         yASgkJfBQC8K/KQ/ePSu4F/34WnK/25A8qb0e0hFaKprWQeNQZfArvFWsygub3f3X2Ww
         AReZMBEBi5vxHpDcd0x0C3dWhtTDKXnLaMcJLxjfBYzeLrxLWCq0lT//Xcj9/70SuU14
         NouAGwonBSJ9fZbc5Bj2NhSCFBmRrpbjsmjPgCZ0R0QVDYrwko30Sjh6Nin6cWvMEsps
         XrrO+cx9k1XmxMkRG4tTPlmcu6YCgI2yoIRgFiA3z6fiwocZRTXtMKjmnniQ9U3ONRmm
         7w6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ovVAMVBq;
       spf=pass (google.com: domain of 3ew9ixwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3eW9iXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id f80si1503259ilf.3.2020.09.16.13.03.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 13:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ew9ixwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id j5so7100701qka.7
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 13:03:06 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:f2c1:: with SMTP id
 c1mr16825811qvm.30.1600286585957; Wed, 16 Sep 2020 13:03:05 -0700 (PDT)
Date: Wed, 16 Sep 2020 13:02:55 -0700
In-Reply-To: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
Message-Id: <20200916200255.1382086-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
Subject: [PATCH v2] nfs: remove incorrect fallthrough label
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>, 
	Anna Schumaker <anna.schumaker@netapp.com>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Joe Perches <joe@perches.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Hongxiang Lou <louhongxiang@huawei.com>, Miaohe Lin <linmiaohe@huawei.com>, 
	linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ovVAMVBq;       spf=pass
 (google.com: domain of 3ew9ixwwkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3eW9iXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

There is no case after the default from which to fallthrough to. Clang
will error in this case (unhelpfully without context, see link below)
and GCC will with -Wswitch-unreachable.

The previous commit should have just replaced the comment with a break
statement.

If we consider implicit fallthrough to be a design mistake of C, then
all case statements should be terminated with one of the following
statements:
* break
* continue
* return
* __attribute__(__fallthrough__)
* goto (plz no)
* (call of function with __attribute__(__noreturn__))

Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
Link: https://bugs.llvm.org/show_bug.cgi?id=47539
Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v2:
* add break rather than no terminating statement as per Joe.
* add Joe's suggested by tag.
* add blurb about acceptable terminal statements.

 fs/nfs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/nfs/super.c b/fs/nfs/super.c
index d20326ee0475..eb2401079b04 100644
--- a/fs/nfs/super.c
+++ b/fs/nfs/super.c
@@ -889,7 +889,7 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
 		default:
 			if (rpcauth_get_gssinfo(flavor, &info) != 0)
 				continue;
-			fallthrough;
+			break;
 		}
 		dfprintk(MOUNT, "NFS: attempting to use auth flavor %u\n", flavor);
 		ctx->selected_flavor = flavor;
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916200255.1382086-1-ndesaulniers%40google.com.
