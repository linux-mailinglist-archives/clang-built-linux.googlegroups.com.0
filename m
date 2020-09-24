Return-Path: <clang-built-linux+bncBDY3NC743AGBBLFUWP5QKGQEFJB5Z2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C5F2777F1
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 19:41:01 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id b39sf3040917qta.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 10:41:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600969261; cv=pass;
        d=google.com; s=arc-20160816;
        b=IhmdCnXokAP25N3tf7DVYHz1DQBB8PkjPhSEGrijCaz05MHI6UeYj6DLg8kNVNHmb/
         9dlt/glJmQ73whUi1bttBw47SnLHK9murwmhfZkZALTVKJa1A/auJIBN8FN8aYiv3+rb
         PhV4KAqwggFxC0+prh0mKS8CNPWNeireshBlAMqhJMifLUiWiKV0yEI6z7Hi0wjSwcDx
         8oqwHmwwIndrwxqugjoweCbCwf1CCXObqWqnFNV0l1MFzNuHd0qKAXE/Hr/K7tXQssBm
         MEwT8mp+EjP7HE63/1mgR4kZpoTgQF+hMiaACxg62uWVFQC4pemMHcOHL80ljIqjdeu+
         mkOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=6itv/0EuNrM3pKYfV/+8NSHKu/PF2FpNnFus4iV8j+w=;
        b=aItjjYg/Nu7eiZLJiL0B181yhxJcafKRlgjGNXkub3A2B7D40INSLlHEt3eFJYln1t
         uNPZpkTsHoKTcMQKFagxWdqsDAW5ZCaeX9dvAuORytB27FqvsPtQM2HD9/nKWegkXvJX
         AlCNjZE1zMxs9WGJlUca+m9WpMUqw5zC90Jy5Xz29OfuMoyfFxozqwy/0cwLvBR2SiV7
         S2dxrMpIlGFycPw+6hvd2UGgswdU8aU1eL334XY9oNpHWBSH3vXoC682/qZOoP2OspyV
         yTWnpuxa3UnBxTOda6Mf7wkJ7YJBv+WW6AulRWCQDg1yKiknU9ZmsSILEQW/PW2AKP3K
         jV2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.28 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6itv/0EuNrM3pKYfV/+8NSHKu/PF2FpNnFus4iV8j+w=;
        b=iuwjTRI1foj1NcwNLdZt1eUmAwQ05kWNgQU0jHFDvDh9n9ANg6JUIXsWCiEZlKFdPa
         WUKg3oUW0CU+MUzGjqzT9l1NzkisYl4VapeE6AXmoE4UKtvwEylvSI6ofzYFM6+UCAJV
         axzhutKKOabZi77YCYPcdtv/y3qphwTEwFzncRHiHiQ4+LPIKJxUrZ5lfLzBqr67nYEG
         NTon7HDpdgZcSFCa6Bu6TgKN4CJ+vaQK7dORfQcp4R8yIGsYddFVP6lWZx40gq4cqIcq
         VG13oOttbA0uV+D20KQc3xuQaz7RHrXZLo+/2pUVsbmYL4cx2/CKjKEIw0A5iGofbO2X
         hYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6itv/0EuNrM3pKYfV/+8NSHKu/PF2FpNnFus4iV8j+w=;
        b=MuffeMV/4pZ+sFa1dc+0i110zWVXeITrPKX5v5V+Y1rbKvvIYALJ7wRRIlgvxhAsVq
         h5y3wu53gok91w4VE0qpo+Tz3ys1+dbMDXhckIBoEKPbOzNzsK54edneWe4Ni1o7rXCK
         aF3S8ei5iUL66aQ4c2WcXL14LpjwZmiQf48ji2VM/UvD6dqqKZTGhApyP4KuqV6UzKer
         0DazPrbHPBBvj92A8qfO6MXL0ieBXfrnUPEDOUksuq25iVRLaGOVRnTOD7735XEwF0IV
         Mh/UYN6TSVZ7cvVFe14N95bpAMqYYbUK7xYS3duaMp0mYCw/tr/bgZLas9OvMzMrmep3
         wuCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329fMSQZzfFE8CWdjsTvkr2lRVwQqpKLJYBhx1Z2YYCUIoqCW5S
	hOFlUGXUuIWZxXOTm9dIZ3E=
X-Google-Smtp-Source: ABdhPJyNoleFd4gcem+chdvrG2sHG28q9H/Urz3kbrPMSo0CVgh+52BsM7lNA/ZUM+Uqp4V7zbUoug==
X-Received: by 2002:a0c:80c3:: with SMTP id 61mr335566qvb.13.1600969260932;
        Thu, 24 Sep 2020 10:41:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:585:: with SMTP id 127ls1743357qkf.8.gmail; Thu, 24 Sep
 2020 10:41:00 -0700 (PDT)
X-Received: by 2002:a37:b87:: with SMTP id 129mr272576qkl.38.1600969260207;
        Thu, 24 Sep 2020 10:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600969260; cv=none;
        d=google.com; s=arc-20160816;
        b=fpVbNP3bR8mBzZ6CFoxvHMia3y65I/oOvRMSk9hnyBWv8+N2DJsbEei8ocbzla47Xt
         4COYrdOs2Dh53C0BEIMnMYTwTz7AX6IkSQofyP8z+Wz/CDt6x0vo1jSQ51D1BP3E8cep
         /OxbhIKjBh9TqBJi5E/XzD9DXGpt45WVBm2DUwaRK8+/V897+YYOCJfsku4IiLTiDS1h
         IYSKLFfP2kZlfbSFOK3pZ4Ka+oJjOzD3lw5iyq3p0wqigCWxuJojiO2Y+U5Ng5gIPrqM
         WSjo58fvZj4Kd+HbSZXflk9vPBRlP5opoL1a5yM8FyBI1UYMT7bEt2imAYLIw0SIE3VM
         BIjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=YJGPKvYku/QEOfkjNcOfPY0mxXrepuf1L4LK+VL/9CI=;
        b=Du9fuQHyreLcpSKdEGXo/qxcLwp4Ap09UnpVXZ4d46fkOcDFkQQxMSgnzl75RbLQ/z
         7lsUwVton1d3L4D2PxmdjHsLJyRnOU6J64noPKRpChVvbid0qtzSS9TgZ8OWjDCQRc+u
         rQPZ859JQhfZ1BdIiJlRdSokI4x5WQR6X6vCVR9uoGNN8M2gG7ZaWh1KVg4WtE3DPfrQ
         gWnj7tITYn0oZEEx2Z2oCyh/scsfprapm5VvGXjQybK0YeR0sdjkMZN2vaGy1TbTxMN3
         dt9CtphdNkUXesspqWXSTMzomWHT7M72hnX4P18PwkHREj6mF3fb7hL+dPHOEB0bPPPc
         wkUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.28 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0028.hostedemail.com. [216.40.44.28])
        by gmr-mx.google.com with ESMTPS id z6si11202qkj.6.2020.09.24.10.41.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 10:41:00 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.28 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.28;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 50DFF182CED2A;
	Thu, 24 Sep 2020 17:40:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2561:2564:2682:2685:2693:2828:2859:2895:2898:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:7514:7576:7903:7974:8660:8828:8985:9025:10004:10400:10848:11026:11232:11658:11914:12043:12048:12050:12295:12296:12297:12438:12555:12679:12698:12737:12740:12760:12895:13095:13148:13161:13229:13230:13439:14093:14097:14157:14180:14181:14659:14721:21080:21325:21433:21451:21627:21740:21939:21990:30054:30070:30075:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: house52_2a01d1527160
X-Filterd-Recvd-Size: 3569
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Thu, 24 Sep 2020 17:40:57 +0000 (UTC)
Message-ID: <ca629208707903da56823dd57540d677df2da283.camel@perches.com>
Subject: Re: [PATCH v3] nfs: remove incorrect fallthrough label
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker
 <anna.schumaker@netapp.com>,  Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, "Gustavo A . R .
 Silva" <gustavoars@kernel.org>, Miaohe Lin <linmiaohe@huawei.com>, Nathan
 Chancellor <natechancellor@gmail.com>, Hongxiang Lou
 <louhongxiang@huawei.com>,  linux-nfs@vger.kernel.org, LKML
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>, Andrew Morton
 <akpm@linux-foundation.org>, Mark Brown <broonie@kernel.org>
Date: Thu, 24 Sep 2020 10:40:55 -0700
In-Reply-To: <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
	 <20200917214545.199463-1-ndesaulniers@google.com>
	 <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.28 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-09-24 at 10:19 -0700, Nick Desaulniers wrote:
> Hello maintainers,
> Would you mind please picking up this patch?  KernelCI has been
> erroring for over a week without it.

As it's trivial and necessary, why not go through Linus directly?

https://lore.kernel.org/patchwork/patch/1307549/

From: Nick Desaulniers <ndesaulniers@google.com>

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
@@ -889,7 +889,7 @@  static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
 		default:
 			if (rpcauth_get_gssinfo(flavor, &info) != 0)
 				continue;
-			fallthrough;
+			break;
 		}
 		dfprintk(MOUNT, "NFS: attempting to use auth flavor %u\n", flavor);
 		ctx->selected_flavor = flavor;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ca629208707903da56823dd57540d677df2da283.camel%40perches.com.
