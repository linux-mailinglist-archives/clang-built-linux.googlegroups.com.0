Return-Path: <clang-built-linux+bncBC7457HKSMPRBTURU2CAMGQEDCVLT2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-f188.google.com (mail-vk1-f188.google.com [209.85.221.188])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3736DCB1
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 18:09:51 +0200 (CEST)
Received: by mail-vk1-f188.google.com with SMTP id j1-20020a1f23010000b02901d1049fedd2sf10859937vkj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 09:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619626190; cv=pass;
        d=google.com; s=arc-20160816;
        b=CrhlshyeOBlll9ss68O6Kr0uB8piEuQ2pbSffUtusVi1wskBWnwbI7vZkLaIxsIeUt
         2zFRtLl/cyrOo746N3z6+UO/5nDyzROec7AtyxvPBo2lsW7g1uRYx3RwcNwjPSjJHAvs
         rUAZIMHoUwbKAz1FeLWoiTN02KORXpIoabfubSaTb+L2WE/WM0XQSQ0zbBM6WaO3pgkL
         pMY6fpG1val0DHMKcvDke/DJ7wLJ+ZuIZw4sfM0PAJrI2Ay7jZvTaMHBxu1c66N5X9jH
         PjFVgwRnXfQsAnAtYm4pIQkJ5+6n+i2I08MtImW7/Z2PTlmN9eZCWF5pQSoTEaOVeiDu
         3/pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=6viazNKyVvqxF5YPndQfzcrzCxATW46iuta16D7FZtM=;
        b=FxJ7GWaMX0Q3nTkn0KuBJkWb0pZqlFLxb9IHylsZ1uKjOXyS7L9556yr42tXtlojQK
         qWmNj+ssMgWnrx7ZoR9chLXOb6kCg+tjmkEnMiWKnMDp3xGk14Syz5lM/5Z/BEVpXPY4
         bc0Z7CrmlZofP4xgpaoFn2DpqW2pvcwnamYzRHqyBwQWMFN3v8EZf72B/ZHLL4MyutS0
         9xxi4h2iNYKdvok9NL8K39CYzyTV9XpCwtlQHOPcz8Rw74GzR8VQC0TIwQr+cyTmYda0
         tOzcY62PV3zj+zwZS2ypNmRwVyxByRBgdUvL+hgPOeKsLvMT7ICUG4UhV5SwvJ4g+Rl2
         7M9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=dgZx+CtR;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6viazNKyVvqxF5YPndQfzcrzCxATW46iuta16D7FZtM=;
        b=BlmTxUw+8vv8gUsGkjO1eOCc2gn325T/8ainGPAAilBdSY4VGfRWJ0INChDOxLxIgQ
         zDKUH8qa++3YxasOn7LHEGytdVCxNvlSjLKLmHea887vNCs5MAS9NeKDgSPX/XY6nVQn
         Ek5djp4WEvlk2Y01oWGLa3BF7dwbcBAVuJK/CxVu2baI+TbsXvg0ni17HmTQNE2j+AOO
         SYOSD0QkcXS/K4Y111d/n+pYpnKXDzgcxOybRBdT03gz4iiLqZkm2uAWp+o2emPVfIGP
         VX5AEOJTPtEjOxsZrWVp6EMdICWfqp3tS3jZdb89HbgR9wIz+TdOKYU5cKToGp9g6RgQ
         Cv6w==
X-Gm-Message-State: AOAM530HaPdZlaJFgIKIYdIuiUKAvzQzFzoaZfCIA55HiLf93i6EKgeI
	5vPKErV5ANSmUWU7yqrAqUg=
X-Google-Smtp-Source: ABdhPJwGEGECEEmtmIAJou4P6C2l8dCOfYKFdvbnp0W/XMYTedQ1+/H3S47/QN2fIwNuBwOVqrqDJg==
X-Received: by 2002:a9f:2486:: with SMTP id 6mr16995679uar.120.1619626190474;
        Wed, 28 Apr 2021 09:09:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:31d0:: with SMTP id x199ls52427vsx.0.gmail; Wed, 28 Apr
 2021 09:09:50 -0700 (PDT)
X-Received: by 2002:a67:5e84:: with SMTP id s126mr26066997vsb.41.1619626189980;
        Wed, 28 Apr 2021 09:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619626189; cv=none;
        d=google.com; s=arc-20160816;
        b=kCwH3w3HDNpPIPxmHU3L99BAyGeSzfdY2y1cQQgfMHaoThJ/jzNZs1p1A+DOCqENcE
         qbzCyvtv72NjFsGD2svcTyB+M+tx/Fe0l7Z3G2LF+KWiJ0i6jORaq3SyT4UN10dun6BN
         YZZpzBB2gN21e0hk3hzEdA5IAtOD5YpuxYfMQgNGB46aRo5chXMzigS1yaNCOTE3GP3W
         cRRaZtwzatr2A0jQxMEb7PRK4XZahd02y55jdDHHrjqLYdCIm7r3YsjPR0evV/tEzOGY
         A0z95zMQPGylx1wHIg6PCEXPu7kif8MccBpFaLOXrPr69itJrojx7lZU3Ye5jVvj8hHa
         Cd0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=Fr/CEsYByjm9dMohk/wXI/cR/Hj1LdowKtaflzAh6Ss=;
        b=ZP+4lRPXC7PIL34UVvYa27q34KetsumDhyVNns4pGtA7X3nx9d78V123DK+/ifSNcd
         w2DdR1sX8jjoTJgNXeY8y7B3cxLHm5HFHckEaVZ3RRASXVsP/eliaW64laWUQ024MLaH
         nf/Lap0+s0nk/a5dwl8metqCtl++rWmoH3rsN3kE4E5A3cFDyv+eVgH/VS9gAFCa9vYD
         FohicgsfaWnGc9tQxcMqc7ZluxSnCHRQCYe3aade5g8KCmIaeeZSk6q0aS5iKgXQwjID
         kIrTRLfYVEPor2oTRngY2mSiQ1vQ93i22KSuzTDZxpeNgxRkQeiqdTEZXxS2ge7fjC0v
         I5Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=dgZx+CtR;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id l9si40932vka.1.2021.04.28.09.09.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 09:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 608988aea817abd39a1f674c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Apr 2021 16:09:18
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id DC415C43217; Wed, 28 Apr 2021 16:09:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 99792C433D3;
	Wed, 28 Apr 2021 16:09:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 99792C433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'clang-built-linux'" <clang-built-linux@googlegroups.com>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<sidneym@codeaurora.org>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org>
In-Reply-To: <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org>
Subject: FW: ARCH=hexagon unsupported?
Date: Wed, 28 Apr 2021 11:09:15 -0500
Message-ID: <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjqqUeniA=
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=dgZx+CtR;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Friday, April 23, 2021 4:40 PM
...
> We'd be first in line to help build test such a patch. Please consider 
> cc'ing myself and clang-built-linux@googlegroups.com when such a patch 
> is available externally.  Further, we have the CI ready and waiting to 
> add new architectures, even if it's just build testing. That would 
> have caught regressions like 8320514c91bea; we were down to 1 build 
> failure with
> https://github.com/ClangBuiltLinux/linux/issues/759 last I looked 
> which was preventing us from adding Hexagon to any CI, but we must now 
> dig ourselves out of a slightly deeper hole now.
> 
> Is this patch something you suspect will take quite some time to work 
> through internal review?

These patches have completed their internal review.  I have pushed them to my tree at git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using for-linus branch, up to commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6 :

~~~~

commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
Author: Sid Manning <sidneym@codeaurora.org>
Date:   Tue Oct 13 16:17:50 2020 -0500

    Hexagon: add builtins to kernel
    
    Add the compiler-rt builtins like memcpy to the hexagon kernel.
    
    Signed-off-by: Sid Manning <sidneym@codeaurora.org>
    Signed-off-by: Brian Cain <bcain@codeaurora.org>

commit 19a75d4ece15d519036db9e52768e46ddc1dcecd
Author: Sid Manning <sidneym@codeaurora.org>
Date:   Mon Apr 26 22:38:31 2021 -0500

    Hexagon: remove DEBUG from comet config
    
    Remove CONFIG_DEBUG_INFO from comet configuration.
    
    Signed-off-by: Sid Manning <sidneym@codeaurora.org>
    Signed-off-by: Brian Cain <bcain@codeaurora.org>

commit 4c8a34896e830ad02bf8cf4abe5b639e0de12938
Author: Sid Manning <sidneym@codeaurora.org>
Date:   Mon Apr 26 13:51:53 2021 -0500

    Hexagon: change jumps to must-extend in futex_atomic_*
    
    Cross-section jumps from .fixup section must be extended.
    
    Signed-off-by: Sid Manning <sidneym@codeaurora.org>
    Signed-off-by: Brian Cain <bcain@codeaurora.org>

commit 9492ed9c4d146f2143f21b82aa8157a2787ad993
Author: Sid Manning <sidneym@codeaurora.org>
Date:   Fri Apr 23 15:06:58 2021 -0500

    Hexagon: fix build errors
    
    Fix type-o in ptrace.c.
    Add missing include asm/hexagon_vm.h
    Remove superfluous cast.
    Replace 'p3_0' with 'preds'.
    
    Signed-off-by: Sid Manning <sidneym@codeaurora.org>
    Signed-off-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/028801d73c48%24d6bd21b0%2484376510%24%40codeaurora.org.
