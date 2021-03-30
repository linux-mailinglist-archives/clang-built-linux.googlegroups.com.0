Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBHO4R2BQMGQEJ2B5KQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id CE69034F4B5
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 01:02:54 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id p17sf288737ilj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 16:02:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617145373; cv=pass;
        d=google.com; s=arc-20160816;
        b=a0cKFBBvYKF9523LVUapwMjyOUkauuVkk9eEZSO5/m3UxB2fXXrBd7FK/PEAkgNl4E
         x6N5UmC2ap1yL/VPiS4WQzCGCaNzJCrOuGcJou/DrNMHUTPuOURf3tgwTOg4ALW3jO5H
         ZTiENm9nIZWcrXKI6r5g9SZVNnY/8G/mZqRSu2y4wyI+0GOvmIG0bJjUctNwP7XmGclq
         G4lsa3fgLX2x5jwvEt6+y5xC49dm6ZzMX6nrQLI64lX3+W86gEwYtUgIfriBbVutwSBa
         KFW6s1iKDzaAtkVsqqImVS5dY+vF+MHz0pHRrbJ0ZlWJrbp1YYxGaYaUWH3vFxhD1Zja
         J8jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=PDhw6H7/lvUTu1fgEtYvq9ckzVLPbiKm1XFfAxPMNjI=;
        b=mcmIb9f9iKmF1pfv+9PPSTnmizGxJXRAgarIJXsovZXZI2rDKXv/4weF6/rMbvHW3O
         22kH3rCP0Gzw//4WQQcGTg9iCAmEw0lA9SIOdDZ6jnr58rBX/VIjyN+dDjx0yaOXyehM
         zSK4X0GQvcJ8q6yRTblVs60FUloIy4GEpqvW0h0p+dnecIkyxaBRkSZ+9mdhV9kaTJzZ
         XwU7fwPhCt16e1+V4mTy6Psm24E6YGBsz8jshhvRLPyCVUFSbqv9TtR9ylg83QVh6g6L
         nxev3UTkBcWQOjBPPBlAXnh3FGkLpi7P7TkNCiuQn3hZAqJGqf2/oy2nsMs4c7FXbFbF
         ffrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RbDrIYhM;
       spf=pass (google.com: domain of 3hk5jyackere0zr4trzx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HK5jYAcKERE0zr4trzx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PDhw6H7/lvUTu1fgEtYvq9ckzVLPbiKm1XFfAxPMNjI=;
        b=SYKS0PkrA/Z0T+7Gj8xCQH/bGdLPq57pdHykJZnm+KyWl1wlfuP9FJxE1VhJxGY4G2
         9LYk9pmoJQXw3nmLjD3E2Mu8HsKS35/zazCeEFPCbYPLGJ+navQ0bairh7WUKeD5/g45
         XveqCBfKlaox9eDhLup9UyBh1/D75atqcG8vfezJSJCRe1nYsNIJG4Xtn5fzC4noDuaP
         wXK3dynRa30wqvNe/F7S0uAwl721QO+B1aZU64pxb0MspmkGl/NXqs1u9JeVgOAzyg31
         sgb36ZYlMPh6VMIh4rQLYDl8gV2vVbdsVMVEHX7s3GU4BIc/qGrF9yebMo1v7HeYOwkF
         eV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PDhw6H7/lvUTu1fgEtYvq9ckzVLPbiKm1XFfAxPMNjI=;
        b=Soj4Ta3AEHTE7sGb7QZkpAkazgkeUCsp/m1l3AvzZvpRXAhfW2frATcEOFuTw/rw+M
         EdJhRH5EVHh5uh2sIuFU9JwGzU4j4qjHL8hdMJqmDV3lcFcKxgZY4xsebx3UuiP3Fyau
         NPDJNXXCG9hO4bhpnVbplZhg+P7SsERs9R9XyJOGBGG4cRZy7Po/xaASs3mMhY4nuJQs
         WwJH2+jXgNgZWwxghpwVsN4k7qBieMYMy2298bP1cPTlwzNzgKJKJHuyCRXpqLf0awRC
         ohsnSXttL9z6vLlIN6n51Lq/0y7VHkWfnWPeorkqT5wIE71tWDvVT9JNJtDHC+hsJ6/y
         K27w==
X-Gm-Message-State: AOAM533XxAxO7F3/z+vGa6uyNPLmEBvjnFbsHSWuvQxjoTQg9gu40kUC
	KN0aNobZkkyTFx4iZj2QPvw=
X-Google-Smtp-Source: ABdhPJyWcmYmQHcyTyUTewOgz0zsMFqaOFYsibiLxR6uaMlb1QI1rf9sHRAr5KYJnzBv2LehnA7ccA==
X-Received: by 2002:a02:ba13:: with SMTP id z19mr464057jan.131.1617145373421;
        Tue, 30 Mar 2021 16:02:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6213:: with SMTP id f19ls29138iog.1.gmail; Tue, 30 Mar
 2021 16:02:53 -0700 (PDT)
X-Received: by 2002:a6b:b447:: with SMTP id d68mr155936iof.87.1617145373072;
        Tue, 30 Mar 2021 16:02:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617145373; cv=none;
        d=google.com; s=arc-20160816;
        b=lGGhZU7jkqk5KcYWobljzpMQLDuaAncErvnCza0CnK73ih6+h55ZGLkE4aWAcaWKHW
         6DABq6rSIwIjiJ0bq/mf/Q0PN0Gi/jTWbHnobZhD7nm0hp4ydr7bAZlgjsTPituaeiLg
         W/4RuQFh4o5HP6gKEkSgUxtpPXgiIS+zuuBVtBA5T6E3HqAGUBJ2TyM4sVCBE+HkPSFB
         4nDI6IL3Ysyk7JxOgZ/Q2ZZ++ewQ52GV+0oY4J8OCFPqzVMmigZO1AGk0sGsdXyi3SWL
         ELYpY/npvD/G7fp13Yu9G5y0nJ3iWi1Sx6szByDGHev6HUecORYxDqBHujXAezpvc8m7
         qumg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=lKfr5+52jWwI+Zvip3lB7Kvy32Qdo0Kz4Xcb667U8qU=;
        b=HXKpry/Qvs8zshvZMYuUPFthvfMrQxmtMJeM2pN+zJuk0KpHCCkE+gCFjfwAfzsG7B
         EpwyEfOqtJ6e4NDRBrXKdI9uBq8Svz4/19YKFmkARZz1lpaFrN+tHNXtYNBAqWCSlceA
         fjvh7BS+cMvVJkjeQdTVn7Ybwgapwo6eaPqMqKRSp34ilcn3NH1S3vGpbISzQato45/4
         fkOf6DB4RQ2aqySo8ktu5xySQ5vJOaDecYHxWOKL5GAyzJuxTNOdz3t8N8dG+SC8PKPj
         WdzV8FGM/5np1F6Hix98FYNOXKC+I0YKu8oII8k8KHqMUcPfxicX/6mzsZOfxRGf0mHg
         1GlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RbDrIYhM;
       spf=pass (google.com: domain of 3hk5jyackere0zr4trzx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HK5jYAcKERE0zr4trzx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i2si16053iov.2.2021.03.30.16.02.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 16:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hk5jyackere0zr4trzx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id i6so245066ybk.2
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 16:02:53 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:b0cb:af41:d8ca:7230])
 (user=jiancai job=sendgmr) by 2002:a25:2386:: with SMTP id
 j128mr754316ybj.284.1617145372572; Tue, 30 Mar 2021 16:02:52 -0700 (PDT)
Date: Tue, 30 Mar 2021 16:02:49 -0700
Message-Id: <20210330230249.709221-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH] blk-mq: fix alignment mismatch.
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: cjdb@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Guenter Roeck <linux@roeck-us.net>, Jens Axboe <axboe@kernel.dk>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-block@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RbDrIYhM;       spf=pass
 (google.com: domain of 3hk5jyackere0zr4trzx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HK5jYAcKERE0zr4trzx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

This fixes the mismatch of alignments between csd and its use as an
argument to smp_call_function_single_async, which causes build failure
when -Walign-mismatch in Clang is used.

Link:
http://crrev.com/c/1193732

Suggested-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Jian Cai <jiancai@google.com>
---
 include/linux/blkdev.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index bc6bc8383b43..3b92330d95ad 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -231,7 +231,7 @@ struct request {
 	unsigned long deadline;
 
 	union {
-		struct __call_single_data csd;
+		call_single_data_t csd;
 		u64 fifo_time;
 	};
 
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210330230249.709221-1-jiancai%40google.com.
