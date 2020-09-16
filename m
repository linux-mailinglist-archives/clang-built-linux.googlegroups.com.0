Return-Path: <clang-built-linux+bncBDY3NC743AGBBUXGRH5QKGQEIKC5F5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id C801826CAEF
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:19:31 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id j134sf5688vke.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:19:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600287571; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9SF7DD/23ENY9b3Q1dSLFOqlfWYsbofEc8pCZ/FpvpVQOD4gWUkXQ04/WIN8SI3Sq
         o8zNaksvKmcrxv6SyefrwbsmZHdWGFpb7VLsJEWaSEO7LEGcoy3hwr4GM5EyxUDL9GYj
         poqCiuKqg2yfYCefnhGaUg9W8SnlBh/iA7GDsh40Z74zlKQ/tsjC2v1Dk2v1np1sUzJr
         PLwOfZqSdm7znm+kA1KRT91FtpKRlvs6yrpumV3TIQWi31TyeuyWF9eh5iARQwjfCrZX
         3LvFIFD9OsicNQKk5dgdsMbqGMxUVf40NqbbYotz5IquzRku1WDmByBo+sP1D3679HQm
         urQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=TEonntpP5yQtMtbD44KfGSXxh0wtP98X5YQ+lVTTXbw=;
        b=HIpfdT7duGJXcog76e/LCGkHNZRV2/jmaYRXZ1jXIfpeJCnWFrYOvUVVBx1EmAzubp
         QzHUN/wN0+Ruqhw78KmD7/9FOV75Ws1gPF8fg0DHAdvkABSTX1pHGZE72lJ5NqkCSXrD
         FAEFNZ9F2pIbeHsxlV7dhJRu9zsg9WOHnNdd31Ot2DbFSX73ahUcrYwOQXZ1VpYSq8B5
         uNa0Mwv6NQppnt29hSEWjw/2CPlPBMpb1053tdsO4l6FgRU5cWhHf9a6AZEKk0Vaa3eB
         4B7xewC6o3V2J+ZTm7QemDRpDlKTwMdbGJU86U1sjc47GwEGH7N/Ab7E2ucPrNaFj/Yr
         D93A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.91 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TEonntpP5yQtMtbD44KfGSXxh0wtP98X5YQ+lVTTXbw=;
        b=kEdFb4Wtqsy0qRkkqKBC6UvPdFea50yL+Wq/XLcx+yMhDNppHPztkSu5Ffhlqakqyi
         dAVUPUk85HG7aZ8QFMgMXw+hl5ZdcioAvIHelel/nGeCunE5SWGhQlTwF5aeB77Banv9
         +WArVuo/6e8CvNkGrzcImIogFIu9Oe1OrjtVITboF86FBQLjc3kNBaA1WfZFIFWyFJS8
         NabPq/CNwWbrIhtXXMUPqGy/dWLWCxPgldQwkW4xqwZHjmPJwRNUhUZQUrETuiiAhCBW
         syQuwZVnEx38MqncZ0Ki5L4l1TbFU8KE9yj4Esh8h60oKQoPZOGx/9u/Lio1Tl9RF+k+
         GtuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEonntpP5yQtMtbD44KfGSXxh0wtP98X5YQ+lVTTXbw=;
        b=tkhXCa5LrNPfgebDk5LWMZQjJmphTpkerecQEksaNZCRoH1fnoWjVQ2Tea/v5oF5oe
         BsfLbkLqK5q0dfZmKdJp7ex2AgbiEl2hT26Gqfk3g3AEVcL6bEe4pgGEKvTJkeILGE3P
         66vPzxjU1YPYsaYtotxabr27P6oRr2qcJsH8+ZHwdYSWjx/BNeiOSoghhDzVEGEUrAV/
         bdrFIbFRqAMGv5z2OisjEfu/afY+MIwOkTHlTaNZBIL/49J449jxFZz6+6dpF9cuX8y2
         zBJuohH/caIjZ8batD3tE+yyhhmlbti7zbsqlhcjjfgKpfk+0NA5H03ikXHvaeAos7KJ
         LEsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332KW2ckHzepAiQGZ5Ay9F0PL9XWbLrE7uEcCxV+jS7YbWAijqX
	ymDtpRa+WQO3EWmZJspOXtI=
X-Google-Smtp-Source: ABdhPJx/EjyPVwzi2r3FU0u/yjiccVNqp5NG9fK+05vfSfvg83vpwMfuzbOfKCfu1A2ExE9sp4hdYw==
X-Received: by 2002:a05:6102:3124:: with SMTP id f4mr6049975vsh.55.1600287570850;
        Wed, 16 Sep 2020 13:19:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:20c5:: with SMTP id i5ls463291vsr.6.gmail; Wed, 16
 Sep 2020 13:19:30 -0700 (PDT)
X-Received: by 2002:a05:6102:379:: with SMTP id f25mr6542723vsa.47.1600287570370;
        Wed, 16 Sep 2020 13:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600287570; cv=none;
        d=google.com; s=arc-20160816;
        b=al42qyNiuqzC5kh07RFR3/TJ0tvo2UVHJNiKosbkVKO7KaEKcbML9haieemETmO8zq
         YfLhkr0ARYKwN2M8w6XxK9zue6DwDUEfw+umMDpseVV3NY40PEcotjqzkguaBcnB//jx
         b6Oq+RydNDTrQnzcbP8NzYPWJD/ebcpzL8CN+KIloIbQqg+WdppD/I85gQiXgiKqWf3V
         iBftSyOZB/3B9ZWU2p/jhMqL2DmZxw8bvjPlqBFk/4z3yu25+NYO/Q2C8qJl2u9MTH2t
         mxIeAKSaYyqhlLtE9fiS8CtMPmQgkZOVJQifEUHxgPlBxOMkwWM+WJehysIVynU3hs2T
         z7aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=SW0nW7Kp+bY/YRT2b2St3VGiNwp5SkVJ2b9rkTdebn0=;
        b=yHvmN6x/M70LOxBAvuwZxdSioPCTvYPDW9UDZHiBbDv7P3zM9xv3n75xzXZSF00eE6
         Rk9q/q0Y6KxXRz9tOeLA38ggFERQFx5NBftaBQUmMS1sDseWkK0ITCsqcFNnRvQcNA64
         Q2M//3g+EaLwgBeQBgEuEb6zQs1e7+sn8HDgV/wqAS01mhOfGVML7PHVWoxXdTSYKKYl
         rmARsGjaFlsjDD0zM+HQvQo0xtWW6MxhAXq9mQoEoMLuxqVy1BO4/+Jv+33VtcazvHPY
         ldUCUKuV8AkjBb/n+MRtfiMmdr1KqRGi5bp0MFjOr7ChWaXjCNXK6UrA8pDVhNEQOAKS
         jYwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.91 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0091.hostedemail.com. [216.40.44.91])
        by gmr-mx.google.com with ESMTPS id y65si1290218vkf.1.2020.09.16.13.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 13:19:30 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.91 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.91;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 958F6180013D2;
	Wed, 16 Sep 2020 20:19:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2693:2828:2898:2902:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:4250:4321:5007:6119:8660:10004:10400:10848:11232:11658:11914:12043:12295:12297:12679:12740:12760:12895:13069:13148:13161:13229:13230:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21451:21611:21627:21939:21990:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: goat48_1209be22711c
X-Filterd-Recvd-Size: 2294
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Wed, 16 Sep 2020 20:19:27 +0000 (UTC)
Message-ID: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
Subject: Re: [PATCH v2] nfs: remove incorrect fallthrough label
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker
 <anna.schumaker@netapp.com>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Nathan Chancellor
 <natechancellor@gmail.com>, Hongxiang Lou <louhongxiang@huawei.com>, Miaohe
 Lin <linmiaohe@huawei.com>, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Date: Wed, 16 Sep 2020 13:19:26 -0700
In-Reply-To: <20200916200255.1382086-1-ndesaulniers@google.com>
References: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
	 <20200916200255.1382086-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.91 is neither permitted nor denied by best guess
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

On Wed, 2020-09-16 at 13:02 -0700, Nick Desaulniers wrote:
> There is no case after the default from which to fallthrough to. Clang
> will error in this case (unhelpfully without context, see link below)
> and GCC will with -Wswitch-unreachable.
> 
> The previous commit should have just replaced the comment with a break
> statement.

> If we consider implicit fallthrough to be a design mistake of C, then
> all case statements should be terminated with one of the following
> statements:
> 
> * break
> * continue
> * return
> * __attribute__(__fallthrough__)

Just fallthrough.  __attribute__((__fallthrough__)
is only used once in code for the #define.

And maybe add see: Documentation/process/deprecated.rst

> * goto (plz no)

goto is a valid style inside a switch/case label block.

There are more than 1500 of these goto <label> uses in the
kernel so the 'please no' here doesn't seem reasonable.

> * (call of function with __attribute__(__noreturn__))

I guess panic counts.  I count 11 of those.

Are there any other uses of functions with __noreturn
in switch/case label blocks?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel%40perches.com.
