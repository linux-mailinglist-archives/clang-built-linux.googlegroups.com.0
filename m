Return-Path: <clang-built-linux+bncBDY3NC743AGBB2M4QX5QKGQEE4KDQWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2758D26B4AC
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:29:46 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id c126sf2164465oib.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:29:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600212585; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6SGu/ygNT8m4iNAKzN55yXrTyBjcMY1uMUUxlO4T2mDIvYE0cMMRNavaR4HxyfbWG
         FIb7Lo13tfUnrKc6VvRi6zQgJGvKKZ0vZg47uCCX2DeBAMUMBKRsYHDL18TKHm+8aPRR
         P8vY6rpfL0yqxqE9TM9By1uXF/vTxpVgUbN+1WqlQlMNzC3FobBT+Zu5+0TuE+c/+kcx
         r8ldByKH9pJFQUz0qHx7l1aIWOJOtAMxkoAskLCFFnYJ33DaPcjydMVttVMid5ZCSK9C
         TWBibZK9LUllovNqUpkm3rFWe3SW98T+ROithfbDsczD1GryissK3AJ2bfFM8EfGmYWn
         5Axw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=6d2D69OhdrimYdXrFuOOmJTfmbz338d1hGbb0Q1pbgo=;
        b=Xil2v7Gdqw4bL6xnx8fXyOE2yEScXLyG5vkvgrKPgR8gvU5oroEO3kDlvVF88PU+Js
         ONXDySJLhSOeCjz4LKuhRnMgxf+iwtzH4Ce+i/Zopjts2FkMLxI5YhOErGuR4ZkTJWBF
         oRi3vawe0x2sQ8/9zkbee3fLaoIEZLLSX3j9h58pEUO8rIzvrRmAWT+ci9xtJb9OA00K
         nSjo/joCUu4MUqZfCGViC/pUOCJs71s3tVmNfePILPl/TC4peG9VbxUTlPgEmbWSccnO
         0U80+Ut3zJL1CrXIVT65uum2prGMZfgQpyGpy7inbSOr0aLzbkYHMgHF+1EdX/N49YfM
         lsJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.177 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6d2D69OhdrimYdXrFuOOmJTfmbz338d1hGbb0Q1pbgo=;
        b=S9UXP6nB1CjiBcXcDsge3nHE+u/xHFXMsENje58pwcxrWWT8pLOWVIy+Bv5SBl3RvS
         mSiw1NR6LW0qnVGLNvTd1h5tgIDgEl9SPBfxd5KRm4E6w8yD6WisRLsNSEJR+VwFzTxK
         rVUmQt5YY+s9LR8fxkKt7AOOqeYrqxUwpkaKVfDtUpuU995DcOpHxFbQLgc2f+oLYAE9
         jZAgRSW+e6A9ZyZpxKwtz4JJOCWb+ksY3VY4jhtY2MMHpxHQ+Mlbq1FSNo+ZOXpdYcgH
         F5qhDrMvSruyH8viqkshA3FpAv0Vv8tKjLlj9tOqxcS5ns0Vg96X9cXl1oU+wCXqNGpV
         L2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6d2D69OhdrimYdXrFuOOmJTfmbz338d1hGbb0Q1pbgo=;
        b=MsW02kh34Hps+MnLTdcLPUFfYmFyoVE6MdgKBB63JTrbS2/MM3ahj8sgnA6dAH5USd
         BZaN2JPCvneulQxbZdBqJU5vW7Zlc80NKNj6LoQ3he/cp8c0zfdcC/Xi6rgNef4r4+F1
         6m7Irjlyn5bdJ0eVBFd2qEcXUsiRwkSB6022kUic/4SFU5vGmdEJsl9Xn7ZVeIZf27zA
         +foHfHxZMC5gHh24y+xGVPz6ZgmywsLT+3EuKd1DZjTxaXZ/EXUDrFttRN4GLT9tODwj
         +Hm2H3sHNBoCoAVeM42JCHz9BNJKAYSc7QCUoMbOLL2T2+U1jqiRe+FlsGwcWMWnqY/1
         aAtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319Lg3URCF3byU8DXMQ77SsoxJb+GOzHBwDLnn/EB8dnDKF8BX5
	7qbl694QnNS7mnIETDHnim0=
X-Google-Smtp-Source: ABdhPJwt3bjUab2X++Fcbh14FdCELqiw/7LVJo7XQTzIhMS2Sj8eHjjSoozEz/80SwDkgGJWnl4/vw==
X-Received: by 2002:aca:1108:: with SMTP id 8mr1318304oir.26.1600212585144;
        Tue, 15 Sep 2020 16:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1b72:: with SMTP id d18ls47133ote.6.gmail; Tue, 15
 Sep 2020 16:29:44 -0700 (PDT)
X-Received: by 2002:a05:6830:1d5:: with SMTP id r21mr15772171ota.244.1600212584755;
        Tue, 15 Sep 2020 16:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600212584; cv=none;
        d=google.com; s=arc-20160816;
        b=c4vhXsddk9gkC6tfJOROta4b5uQQZcq6tjVzPSnxhxvPGf5e/ikzta6Xt5UjarlXcT
         O1jedgxSgOO47o4+qe6ft8qf8IhyqRqdJGIUH3yzImeOBJg4GvQ5b89hWinTM1nxPIu7
         HJFmd+wvUDRAD0LQwxJY/e4knEYTeQrGeRlogAH6Pi3nkytmyGggstMQvgzAi0VPGpnp
         J4VdI+5SwHkLi7mJ9MmWI3cXQ3nvlj+axKDdSWWBxnDc5NI930NlBUXIRdp/DLJ8tPnQ
         N+WYVEDPac+pRBa5SfexzHztgAmXLnmIfnapFeLCz0OnzJpHp89pghxg1SLM2wTkwO9Q
         +dXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=yscDt95Q+9LA57/s6fTHQ7Q2taOtbhOW6f6UqSq2bzk=;
        b=rNVZW0sL/ywJerwVjyHhSN5y4mOTT8/rxgCRSwe7u7lRoLZfwrpqm31kWNmJDEyZ4T
         pxbYKt/MZehCI33WztAKsFHp2C2ueOd3bou2jlNTum1z3wK8TOJP8qUFV1aPDf8slmms
         6VnpKucBz8B8kx1JWRr63TnJsYMvrs2fBfjH1NhNDMj0OZE0y8aYkJjEFqgQW2zzXE78
         GrB18HXa2FZcETKE5zENXxvOQfpswqvMK9hUDgNlpDwgjwSh30eq94B8RHwDDuR4qlxT
         lzZA0D2Oh27gx7TwJpFe08cTfy+VKj4SlA+9ZkKWl8h4DfLNztENQ4AYV6R4TyvwRjhP
         i2UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.177 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0177.hostedemail.com. [216.40.44.177])
        by gmr-mx.google.com with ESMTPS id l19si1178890oih.2.2020.09.15.16.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 16:29:44 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.177 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.177;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 1864E182CED28;
	Tue, 15 Sep 2020 23:29:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2693:2828:2898:2902:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:4250:4321:5007:6119:10004:10400:10848:11026:11232:11658:11914:12295:12296:12297:12438:12679:12740:12760:12895:13069:13160:13229:13311:13357:13439:14659:14721:21080:21433:21627:21740:21939:30012:30054:30070:30075:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: kick55_460a4e627115
X-Filterd-Recvd-Size: 1859
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Tue, 15 Sep 2020 23:29:42 +0000 (UTC)
Message-ID: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
Subject: Re: [PATCH] nfs: remove incorrect fallthrough label
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker
 <anna.schumaker@netapp.com>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Nathan Chancellor
 <natechancellor@gmail.com>, Miaohe Lin <linmiaohe@huawei.com>, Hongxiang
 Lou <louhongxiang@huawei.com>, linux-nfs@vger.kernel.org, 
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Tue, 15 Sep 2020 16:29:41 -0700
In-Reply-To: <20200915225751.274531-1-ndesaulniers@google.com>
References: <20200915225751.274531-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.177 is neither permitted nor denied by best guess
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

On Tue, 2020-09-15 at 15:57 -0700, Nick Desaulniers wrote:
> There is no case after the default from which to fallthrough to. Clang
> will error in this case (unhelpfully without context, see link below)
> and GCC will with -Wswitch-unreachable.
> 
> The previous commit should have just removed the comment.
[]
> diff --git a/fs/nfs/super.c b/fs/nfs/super.c
[]
> @@ -889,7 +889,6 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
>  		default:
>  			if (rpcauth_get_gssinfo(flavor, &info) != 0)
>  				continue;
> -			fallthrough;

My preference would be to convert the fallthrough
to a break here so if someone ever adds another
label after default: for any reason, the code would
still work as expected.

>  		}
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel%40perches.com.
