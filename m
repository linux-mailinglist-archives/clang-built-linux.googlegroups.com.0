Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG4P4PUQKGQEKVNPV4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD3474091
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 23:03:24 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id u24sf4875684uah.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 14:03:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564002203; cv=pass;
        d=google.com; s=arc-20160816;
        b=nHXZX2sE/p/O+++8iGl7H+RicaoZoft4NQJmkhSyje0qMNmLqQZw3XYNxMGLuOZ8D+
         yGe1aUPJyOWRi3BGGNG9ZFLy5v7mkdxit1O+mK2dJNJKq/eKotUNtDCbwranDQIMXqM3
         vFzcNhQElq+EYhu8vTy73ZxIHLcltEp3C/Z3zxyCYxkh72NWA0ye4cFt/LTQ6U5UtJfV
         2AbJwDtYm8kTzEzcBQdgfVaQXYsv9L67g4I9MNxb2v4qoKNN0+eaktO1P+FVJctnwfeh
         t2cO51/LNTSiKiSVMyLPgxsvVzx69Zd+Y44ceYq8VWteNIDSO2ii1Q1iSQ8JKl+LDOO7
         YVog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:references:in-reply-to
         :subject:cc:cc:cc:to:to:to:from:date:mime-version:sender
         :dkim-signature;
        bh=zhVIu7yvf9WmPNmxTxwKiAqV/dG2pLkQPFJOxV2+8dc=;
        b=xuJ92yd1qThBRhgWNz90SowcagGhouTcarl12Am2H8TD6E7+QC91Ul2MSe6dh0+jhM
         SsmQrABRIsqXDac/yP8hoxi1mX3dli0n221s0+1bKBExLh/nNyrwitO3FqNudO1KBTte
         TiosXlJVP+UGWcY93JlqARZdE6sd5idDa+1CN1WF+a2jrUYnlPKGQqJmnKaquqYHOn6D
         DIGv1Veqxi91dh5mBvkAcDETMRaCHXGAvG6ujOIvYG/+UZR16hCywpWSV87J3F8iKMYF
         3U7EgUNlvg6YutflkNANATXrxdaBjlsg+F6hsP0ST+Hv8RDbLVzzuKCB/XFljV3R4ZUG
         M+6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rw3vJWSo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:to:to:cc:cc:cc:subject:in-reply-to
         :references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zhVIu7yvf9WmPNmxTxwKiAqV/dG2pLkQPFJOxV2+8dc=;
        b=mmqTNPuG3JqI6ny3rJSbyv2iCgClf8+mYHxelY0FF9nUvXd/pu7SI888h/EW2EQc6d
         W3DwGRnn6x1QON/TBLdsiOyL3cPYv/rLtezaNTBhImYC35CawwQCi8erIE7a6X53SL/s
         iFJoGjI6VrrJ1zCksco7Z30P2mQxfyG7c7BeYhQstrxROaFkjNw7dGiytWHesvDkz8wr
         HGNtKDew0uPL7DyryugmShmLaFSh/IwYDtDvr9/xqMnLoF4fjqegsqogFfkR2dn8Z3tA
         ZVcsOOEhKJ0DItUP8FI8zLZg0a0wwwmbluN4KetqG2hhjQEXDR1flspYfgmHJuUhpx5b
         KU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:to:to:cc:cc:cc
         :subject:in-reply-to:references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zhVIu7yvf9WmPNmxTxwKiAqV/dG2pLkQPFJOxV2+8dc=;
        b=D/SHDFR5alNKAsrQS8QMy6/9L67QrNFJLyNXhf/SRrR1piR+AeM86lv38rUepoS8uk
         jfRaLdRYjE2AuTtb/E0xZvA/TNXbraIZ6lEWAxyW9TpUwghk0d8DlIBUFLnRIX1B7TaK
         pBxTbg/2keShsIvGjmbIE30fCs5PT89FE6x7ApNjRAD6PUmCphW9oYHScLs9mLWCPkeD
         Yt8w4ls3R8v+x6AFl6d2tIGN20OJ0/tbAibLnLFgyMvVv+LPR7UJIuKmlTaWupiu8cxB
         P+M2HTsb65fCvGfFmUEl5lCe22f9Zd74xb8rwGDjIu7cFi0UdeuqJiGQlQCiW1OKPV2N
         Cm0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVORnIEfqnZrma9omDc0Jv7+e9xzSlys/cA3644vvkHYZm1qvzH
	LzfCfMSU+kC3XWH0jYFHTR4=
X-Google-Smtp-Source: APXvYqwn7KIWnev7jet1NICZr+xTsmgNmo6jhX+x5cfZWz0Pu66YQC4QHIqCg+b32Z74aYl6QRnvWw==
X-Received: by 2002:a67:7a90:: with SMTP id v138mr53497475vsc.200.1564002203550;
        Wed, 24 Jul 2019 14:03:23 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d712:: with SMTP id p18ls6157013vsj.14.gmail; Wed, 24
 Jul 2019 14:03:23 -0700 (PDT)
X-Received: by 2002:a67:f1d6:: with SMTP id v22mr50526522vsm.178.1564002203303;
        Wed, 24 Jul 2019 14:03:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564002203; cv=none;
        d=google.com; s=arc-20160816;
        b=A8JcmPyr9/t1KApJzZZKhUSKHDHSF+wZh/ePSNM1QgXuXkXDS5Dgt04XwqEmuFoC6n
         eujlKeQH0lUaxp3Fa440p1+6jJGt/SF5aR52abhxX24Q3xnaKgodYNFxrE2VkxNOfJyF
         RPKMsfF4DFpACYChFbgrblHSCeHT9Swp7/rDWIepJOtWkw4zKHomhhba31q4rWqg38Cc
         N2wFig4+AA9SjiJWYmLynMmFz8izJVYp5xvoCRuqEAGvwMwYc++qTvp7inViERdFcSXD
         zpHmXAphuee58nemFpiyZtK2vzZ5XI3Jxsa+iawN+x6QIik71qFJ57Fao+SBq+EP4U1B
         gXUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:references:in-reply-to:subject:cc:cc:cc:to:to:to:from
         :date:dkim-signature;
        bh=qsYyXJKN8ceWLnKlFj6Adz8cSn7VaewnujrPOg8v93A=;
        b=ty+oexSazX0Sd08pQsgpZhp3pMaB+ei0D1WDiU23D8hZNrl076gaW7vlVjdpPf2uZQ
         gTDLetmr2cNhmzWuqRk9ksphwrw1evrvYyC8KXpvlAqImSVeicDtoHZEQOKhL92JDWlJ
         zJUy5xXAZLgQ7vK/nWw9SZtTTZ2UwUf8bG5hlzqz5ArfkNV1ifseOgf4Z50teYS1c5J1
         KBbROG+oYus5PkaTWLDFwC9ucm8pMi6XpA6+q496hSHhEmQhVHy0NRpXqqkOfR3yJDjM
         zch3jbTuWv12PWSqvmd3m/TmSouMqUtbreSXGJg01qomgAvqodJ6/UKs9c9KIjIKi77K
         3QTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rw3vJWSo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 63si2524745vkn.0.2019.07.24.14.03.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 14:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [23.100.24.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E7CD021880;
	Wed, 24 Jul 2019 21:03:21 +0000 (UTC)
Date: Wed, 24 Jul 2019 21:03:21 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com,
Cc: stable@vger.kernel.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH v3 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
In-Reply-To: <20190723212418.36379-2-ndesaulniers@google.com>
References: <20190723212418.36379-2-ndesaulniers@google.com>
Message-Id: <20190724210321.E7CD021880@mail.kernel.org>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Rw3vJWSo;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 8fc5b4d4121c purgatory: core purgatory functionality.

The bot has tested the following trees: v5.2.2, v5.1.19, v4.19.60, v4.14.134, v4.9.186, v4.4.186.

v5.2.2: Build OK!
v5.1.19: Build OK!
v4.19.60: Build OK!
v4.14.134: Failed to apply! Possible dependencies:
    e847f6aaf68f ("x86/purgatory: Avoid creating stray .<pid>.d files, remove -MD from KBUILD_CFLAGS")

v4.9.186: Failed to apply! Possible dependencies:
    e847f6aaf68f ("x86/purgatory: Avoid creating stray .<pid>.d files, remove -MD from KBUILD_CFLAGS")

v4.4.186: Failed to apply! Possible dependencies:
    e847f6aaf68f ("x86/purgatory: Avoid creating stray .<pid>.d files, remove -MD from KBUILD_CFLAGS")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724210321.E7CD021880%40mail.kernel.org.
