Return-Path: <clang-built-linux+bncBDY3NC743AGBBA7MT6AAMGQEY5S253I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CC12FCD5A
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 10:21:08 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id t7sf20701169qtn.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 01:21:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611134467; cv=pass;
        d=google.com; s=arc-20160816;
        b=oRyZqY0S9kZSr+y6tUf/owqQNzGLArEL5hG5zJ+U7XPQjnUhwUsXYuSENSjI3icStY
         +1N1hhZn4tevg+ph1YB2o+zV/xMgUWEzZpOWUip6RLi2R0pDNkqBR6+EZH0FykolZrOE
         B4pkNWRcxBtFXqy+K0goofMnwEkQa4ptaYwU4JYfarBAuQ3a5IcqQD4/I+yDW16+19QU
         pJiFOI76JVI5Wiohwhv2w6q9AeUf44VMWGSnDcoPU+O4+Gwugn3cgLzZlED4ddrv7MfL
         bDxNjDA+WSu/McbEn46WabHye4Ao4WtvFxmQPpzDE/emAWfhn2F3bPeujh4qroiELPNR
         kQRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=pHZkIC6YIXiW4mwdz43E+OF4Q9Rjn4Hp0bvu5W2pK9w=;
        b=i+4xwbPQMaOxsctNoe+EeghJSbMPvu3acxOj6TcU/aVc1jD7XNs8nfk4bCy6sdLdWA
         GtX/y9qCWOff2kzcF7XiBNNt2wIR9BO4sJtqxmpRw7HZYRRl4ojB4a6mlUe2Cmu6bVNe
         8g9nKj8vK9zoulqKuUCUoFu1MHGS12rzIp2KXU+pjohtdGGlURFaC5wkEiGHUgRn2W2G
         jfe3mLra3B5x24/lp/BI5juavMFY1q9l7NX/jfzo1xcI6c5yBJ+CdxoMY2mNwwT7vk0a
         aMIZcERQfPhtGrgUDbT7LHNzj4tIaYCMcQMuTyNOGW2K9uQ2pIpB4I0H5YnILmPgp9cI
         o1qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.204 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pHZkIC6YIXiW4mwdz43E+OF4Q9Rjn4Hp0bvu5W2pK9w=;
        b=qnsl91IWDhC2kc/D7nFOOyYFzIDeGuHzYe6dVTY3k2sDMQpr+xwyY1ORwFTsqhWGTf
         jD4KfTzqc5DpsyPovP0NpeKKapiM8xe8rE8FTAGsAH9KKWAPjDBVtG4mgOq/jAjc0kGJ
         nHDuT7w/S+lpreTRrsLO5CVr9o6Bcq/2oUysF3bliR6wYt7rp8yFIukYkrrEF4F4BjcN
         Q7f9f3ARp8FkXrxqxmyIRBUB0rl4l5BKR6TryfaLslpBVjo4vmvPvVVOi216DiZyDgJS
         zqcU0fOQWSoOG3+wn1PdpxzqHiCsnn3o6+NH0KJhr4B+JBkZbMoUjLiLdD833kUx/p8a
         /znA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHZkIC6YIXiW4mwdz43E+OF4Q9Rjn4Hp0bvu5W2pK9w=;
        b=qTzNb0/qMsGqklZ9gyf8S+XODddN43cy+ybe4P5rMBecVYEdObMdsc34K0O4zEs0OP
         wn5uW36PxxKzkhruL2BIBN0vwImUp8xaAwCn7+0TbTITdFwUioreDcIIY0lbuC6Tt+Vw
         J5sYD/4ANmXKHTKi1QbDm25AtyozJUl+auGCp43rnz7VM8X42l7su67JpagWWvE4cqKT
         lOzdUG8phn/xR/TONoIkiLAH946sA5LSQQrYag3i6ZDkpK0s+1vP2AaeWdJmC2eWhgBO
         UugVsHGxvBMB+FpY2m6Q4YikWvbDrbvyULxuz4IXQzhjaecVCyt6WBWXi+wx855CfCMG
         I4Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533F7vXQTcPXMGD7HdY5mym5gQP9JUAdVgpGPykpqVD5vUTpmJNn
	bhqeBhZfVK4jOkwsTo4DphA=
X-Google-Smtp-Source: ABdhPJzZPQEmOZFiPxMIUiGoycpirfnApo3uzljkkJ8nRiEmsdHbHCN8UGemWte1yBb8xUSEnGYazQ==
X-Received: by 2002:a05:620a:1653:: with SMTP id c19mr206939qko.419.1611134467099;
        Wed, 20 Jan 2021 01:21:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4644:: with SMTP id t65ls12547879qka.5.gmail; Wed, 20
 Jan 2021 01:21:06 -0800 (PST)
X-Received: by 2002:a05:620a:126a:: with SMTP id b10mr8461153qkl.354.1611134466756;
        Wed, 20 Jan 2021 01:21:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611134466; cv=none;
        d=google.com; s=arc-20160816;
        b=dafDCCKAbrIbCw5Q2NG4yYn2NkXTeN1/cy8OPlZzsrlOxwtu71dDkgjdwsAZG1vpis
         1s34/kiQ33mHEp/JlIc9+RBepNgRF5xWc6TnOpVrbifHIk45iTsz9b7phNVnOrj8Gnd+
         KltAK4FCl4QD6uavKKtwadBuMMpofmhyTHQxC1wtawqzhJwPK7V66RiFs/TXFZLvzylV
         jGyqG3twP0S7d+lQn3XPEWM8wzOkDm1mnDh8gHAfuSKl32cd3z/uyQTCfI+H7Vx8Mi0k
         1y62MuMLolF5KcGXoyGUtbjgsbQhI+gdHD4/J31r0eXu00ESJSBqN2MQr11Dwq2shmu8
         R7iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=S8Unz3tdSroLF2YUFcnkptyIjZw+Cu6aVdLGyow/TB4=;
        b=rTb8VHAg9QnIJniU+zgU3FO65rsGCR3Z/e3JetmJnY7ubqKeICiLnmluz1g+JD2O5O
         vv0qeDzYKk2y5lwuLbI3WUXHuFTV/+IheGPxl6khTARzuH90RRx4/nQ0D8J418rXo33b
         q4PqGnDbkUiLuKxT4x4Vilxgd5geK7ycBzhMBLebyR0r/Ei49y5uG0034QTWoKKbXC3R
         kAlAqGC5at7OMmHngl+t/cpET4EnfqOcFJ7H4xw7FlbIc2da92xAGdZEbSXgwvUD3t2M
         Q5O7A90555u4HSnPoA52OUNfJfL1+FkkxgOVJF9b5Np7sbafBJ29mZ8Hq7uSxLLCZ2+R
         uaxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.204 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0204.hostedemail.com. [216.40.44.204])
        by gmr-mx.google.com with ESMTPS id v32si51136qtd.3.2021.01.20.01.21.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 01:21:06 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.204 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.204;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id EEF9C8384364;
	Wed, 20 Jan 2021 09:21:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 90,9,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:368:369:379:599:960:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3352:3622:3653:3865:3866:3867:3870:3871:3872:4321:5007:7652:10004:10400:10450:10455:10848:11232:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14659:19904:19999:21080:21324:21433:21451:21627:21660:21740:21741:30012:30054:30070:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: flesh62_610477627559
X-Filterd-Recvd-Size: 1671
Received: from [192.168.1.159] (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Wed, 20 Jan 2021 09:21:04 +0000 (UTC)
Message-ID: <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols
 in assembly files
From: Joe Perches <joe@perches.com>
To: Aditya Srivastava <yashsri421@gmail.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux@googlegroups.com
Date: Wed, 20 Jan 2021 01:21:03 -0800
In-Reply-To: <20210120072547.10221-1-yashsri421@gmail.com>
References: <20210120072547.10221-1-yashsri421@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.204 is neither permitted nor denied by best guess
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

On Wed, 2021-01-20 at 12:55 +0530, Aditya Srivastava wrote:
> Local symbols prefixed with '.L' do not emit symbol table entries, as
> they have special meaning for the assembler.
> 
> '.L' prefixed symbols can be used within a code region, but should be
> avoided for denoting a range of code via 'SYM_*_START/END' annotations.
> 
> Add a new check to emit a warning on finding the usage of '.L' symbols
> in '.S' files, if it lies within SYM_*_START/END annotation pair.

I believe this needs a test for $file as it won't work well on
patches as the SYM_*_START/END may not be in the patch context.

Also, is this supposed to work for local labels like '.L<foo>:'?
I don't think a warning should be generated for those.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel%40perches.com.
