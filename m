Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF5SR75QKGQE5XDMJFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7E126E78A
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 23:46:00 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e12sf2288333pfm.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 14:46:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600379159; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYb2a3pLJNkUWhjIFUzobwsVOKVk7V1Z4cnJ5D53U1gqHo/UEhhc4Ib5LQpZmR3/xI
         V5bKv9e1GYXncz/3aEnu20X/DnlF3dEHaUUUJ3A6L7Gl7+zOodxuf74j5FdW51u8u3pR
         NG7lJW83jAaDgA66O2ln2ymOTLHZzzuG9yfZ0E5TzQ6oTh2E4pzd4XK57Kb26f9UvPDF
         i+mAc3Ack25Rf1qsnHFwdM8ZA0A2HTOn47Uj5skqZb5umAbsfQgo1f689S0AXZw8IAU7
         KQDXZZPm2RVRKnGu62Xb8jzAvOl+w1yRmNzUlB7mqMxPNNCVUQzuH0A7FBZAPudtcLXs
         pWoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=61Y8vjf7mP9pD/QbjH0se00A7ZX8nIfL5Rv5RzV8WG8=;
        b=0P6Ya15wmWYcFWle6Jf3TMvnTFgjt7PgcOBRRQzaRKHzjPJc+Z0QJW8eHpOyQbMYAS
         85777duz6oGE2S4Vfi9PTeN9T0VzXgzXf6Qh8jshOjiku5PtYrFi1c7tyuobDpnEWnCX
         +xwTa08krmn0aqigZ+Qo5vazYNjbX19tJFuFyBCkAnoRPvLl08CJae5DKVBezrh6aWnZ
         7juzZND6I4Umwh4JOBtRCA7sLrLXUXwqCyiVNsuW76YD9P38yydApQQcJyq+TAKViFIb
         gPcxPcpQ1kfhsra4AoLC5n449lpu3Uyd0n9RXHBWv7IlYKndt+6Iaf/AWl83G7uKLorf
         yRIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TWVIG1xe;
       spf=pass (google.com: domain of 3ftljxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3FtljXwwKAFkE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=61Y8vjf7mP9pD/QbjH0se00A7ZX8nIfL5Rv5RzV8WG8=;
        b=fCmU+bTEAZLu3/pALijsyyWYA16jf3+7AsfbcQv8Ey6YlF7xMV3oMRZczix5Ox2PeA
         VdP4y0Ql2gmO6hlCGFErXuHF52YWyO06C2xJVUiWufLbvkouTM8L73JZi/Z84/Jrmkpo
         quRngNOqcfTa9jj7cLzJZCa2ALE4ptKVUthUXzw912INjRpqCfQxL1Ba4XANA1m8ZA5/
         38KW6en5m1W6arvG+I4zwui2nijfJqvz9XzhLYBWzz9zN1aEm3N/Uxag/0FwzuhkTLj9
         eovtp6JWuMCgZWZkVHwlly/rYJDHMP+J3ik5psawLYbjmdqhqiYNv2mOV/ToIqNgysxT
         odVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=61Y8vjf7mP9pD/QbjH0se00A7ZX8nIfL5Rv5RzV8WG8=;
        b=BL+tsHC6BMcV1FMkZK+EC3idLKUcQGWftKj9FxOvvjKnRl4EbivcqrTiSJPlcTQfF8
         LMhZ3ak1lKZstinA4IXTsriZhPoaMC6R2f0TStleFDjh021CQNf9fd6O60fuNrhLiLEj
         ruDWzchdt8gtRYRXheL6lvpmzjXdakhkxU/EOWRc3l8JxMEAC8xaEp4iF9r19MRpi4bK
         GVJKbWvtlk0kkO93v4Xb7QZna4A257U5uJPPnWZXH1V/pOIQAra250/Gr5Q4SQNmyYEm
         bygkb9rhmGDS9Xrb/2V42qKwwo30nksvL5xCFddv/bjVkPNoeno7IaYB7icXI1kxzhRI
         9/Bg==
X-Gm-Message-State: AOAM530BJTMvdWkrNB6qMoFaS4q/yRti7VslQNZ5Lx60cyV+KoDWNCY5
	/XBs3viliYRdFHI7PnGdKdg=
X-Google-Smtp-Source: ABdhPJyc9Gnku1fdqU4AvQXV/nf4AEJbm6bCh97lMpwE7LDTjXfl72V7saY/fSm4+LdTQeKWhMbjow==
X-Received: by 2002:a17:902:ee01:b029:d1:8c50:aa89 with SMTP id z1-20020a170902ee01b02900d18c50aa89mr30222158plb.6.1600379159677;
        Thu, 17 Sep 2020 14:45:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls1278331pfc.11.gmail; Thu, 17
 Sep 2020 14:45:59 -0700 (PDT)
X-Received: by 2002:a63:4556:: with SMTP id u22mr24838130pgk.248.1600379159048;
        Thu, 17 Sep 2020 14:45:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600379159; cv=none;
        d=google.com; s=arc-20160816;
        b=P7XUyInqMv1INHVUDDQSz7adfqdYuRmBGsn5FqZd5+BbCEXm+gu20MRRzgWxPC25ag
         h50AuJhxh1UfGzI0ymNUrsCq300TLNsv7yBxxrXGklRuvkN2qdQbAjfAi3PxOEyFfM9W
         HwTyibm0OCNT/icrW3LrWpaTCN4RB3QKnWcM2IZsWBPZq4b2TIueTmB83ivd2hUOJwev
         kgrQ2mz5kwxwSBudBrIYj6b5j1mCuG/EkgzitXjJKpxT5GYAnfySUx5N95/SSwEC2pRj
         q4n1yxjnoSJmFzMPnYTL0bRt/aWE2HKDq1Cy48OQW0eKiN5Zc4Z7kmxkld/DUxLoHoF/
         rOzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IhKMP2yDqla4bVCkJ4x51hskFiR/f7svOYkmrG2KUNE=;
        b=HA43O+zhzsd9U2QOKp/j0VX+V4BMGrSvN2ag1SR/tZmgTE6qcUd4qBpnxa2tngYX1t
         LzLzkmm48jonrRfHG723NrnNquKahrw37/o3egI3XGL3cRFl6m5fsT+I21nHob/Iz0FT
         XoaBQJscQQKj9Dv7VcPwtWVqhFY+9ns4EvyQPZuafEIP0ctejiRo4uYKQvvVrXpQI8Gn
         3iXIZXgxN1CFuY6/qhR+TAGTOyblVCrf+FbAoEoO3WZUXPIv6Wp529Hy3DuW0B6exBL7
         NGf0jRSYT0dXTxSXCyEMjCIww5o8YI+dnpR/tTAtxZ9zz4e0piqTGO7UnCxPbJWv3Dy0
         I4Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TWVIG1xe;
       spf=pass (google.com: domain of 3ftljxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3FtljXwwKAFkE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id k65si133756pfd.1.2020.09.17.14.45.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 14:45:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ftljxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m23so2768664qkh.10
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 14:45:58 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:5745:: with SMTP id
 q5mr30422692qvx.29.1600379158156; Thu, 17 Sep 2020 14:45:58 -0700 (PDT)
Date: Thu, 17 Sep 2020 14:45:45 -0700
In-Reply-To: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
Message-Id: <20200917214545.199463-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3] nfs: remove incorrect fallthrough label
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>, 
	Anna Schumaker <anna.schumaker@netapp.com>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Joe Perches <joe@perches.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	Miaohe Lin <linmiaohe@huawei.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Hongxiang Lou <louhongxiang@huawei.com>, linux-nfs@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TWVIG1xe;       spf=pass
 (google.com: domain of 3ftljxwwkafke45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3FtljXwwKAFkE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
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
* fallthrough
* goto
* (call of function with __attribute__(__noreturn__))

Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
Link: https://bugs.llvm.org/show_bug.cgi?id=47539
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Miaohe Lin <linmiaohe@huawei.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v3:
* update the commit message as per Joe.
* collect tags.

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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917214545.199463-1-ndesaulniers%40google.com.
