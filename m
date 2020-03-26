Return-Path: <clang-built-linux+bncBD4LX4523YGBBRGT6TZQKGQEJH3N2NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E1367194B6A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 23:16:37 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id e186sf2663397vkh.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 15:16:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585260996; cv=pass;
        d=google.com; s=arc-20160816;
        b=BJQveVa8RdLhkh8wYTzJdISledXWZ30UjEXpxLBQ5G5qTOOmpx4qSx6SutbGD94P4H
         3YySM2OhytBHBALBvBG7cyiDkgm892ipdn1nu/5XI/GW8GB1I/uZmjc5rOqeIn0gxfZb
         FHzFPuof5BADdVTpvlCFA+GdLidWEZgO0EvPVFXtGnY6I64qRundpXtB36yGcVVQC1V5
         Cn8loPzoJej7q+UYlSFI+x7+R3Ua7M35/JREga3zrYyQ9qyw2K+J6xKumHCBHS36eMHp
         +zIxd4b0iwsWxbAC2FZyheFREt0JfNjO0+RNL1w/pFERszthXO5Nq716NhiPAvLdKWqG
         A09Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=sCQlpTHBfSd8JzVfRe9jtyjiJbbL6vhetNc0JESquLE=;
        b=qN1IRgpNKaBfOswK11cwLjM715sx01nJoDz9XaJkcYpbLhSHk+DbcBsSzvK1qpsakz
         MQXCMEb96MpGxRGSrZtZgzZDLt93qVKv/0JyrKgdbiv+9Z/xwFRXBLPd2XIEhHNArvk4
         vqrOUNSE86dTMiE0o/ncrMacSegkPB6Lq+Uxp5+MSRCU6F9EipCl3C9ltJKDGSQIsbp9
         Q/YRlJIcmP+Uca7sQrBajEjgiHxmWlxIyaO/QOU4EHVHu7vmeppvaW7HiPxo3SYHDozE
         tYUeDaCysop2JWBWwxMv+ZDAanlZHM3KgwuuFSAae+1gc+WJRAC46/d1/YnyxRUI863e
         CU5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sCQlpTHBfSd8JzVfRe9jtyjiJbbL6vhetNc0JESquLE=;
        b=DVoDwp2bihl9qF84hQuv1/OUltLTu2qywZKvw4zK4//F7bIL/qSwL9o9jxS4AoHcwe
         yR0UoapPDqzTToPdMIjcKuUdPv/a6xNQMowD66A8U9kISgpglWEIEJhIGVhSZBBwaIHs
         O9K3A5nH+HLVn8aAA07tkBecfGuRi/nilL2gU7GKZ/LTT7kv/GU3Tdu1QrORGkRNM8sZ
         wwuYVxZ2eo45j1KcbGwm6r6x6u51J+vS3WXNJXmrtxHUKNuf+n6v9jBfCkq2FbVmhZGw
         yr3CivR8sJw5BfccRDty0GL3InWibFyhwRyQ9wVcWLXTHiJqZOYmIUc8pq571k6efU1d
         f6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sCQlpTHBfSd8JzVfRe9jtyjiJbbL6vhetNc0JESquLE=;
        b=K7ABgjJqngmKwawq6g27Ut0qGVuaV6ZHvy2Y2pw6rmEofLqeVZnQ1vTiT+rRaEwRW3
         JBnX5MElVWh4Jzj1+ZxiKXHPj27jSEH9R5irq0/FsOUzDRMn7C5ICtV3KWSbMZA/F86K
         m2xydlYMXig0yKf8iEThHqxXhr8xrPqjwAhTv64qISXJEo1iSuzcxexb2wsN66MrZHUA
         pWn/rVELsuQcQnQjzlG104dRU7lFt8XJiVzMzR/YtBe5/BSAzhISaAOWJMdBNMvjk4Dt
         L5+fp0WeekdjC51paqHvSpWY+kxGE4IumpD8QrWnVNNAmZa7Gyhhjfcxtwnw6GkZGRWw
         EsHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ33urLpMiyf1J6sP31lbnl6iNZDplpWg/X91YsaWuGArZx4i5nI
	LKc/njVSF+VqanRvT7nOLTo=
X-Google-Smtp-Source: ADFU+vvQcbMm6luhhINctpYJj/bHHHzlAGM6QglLjLf+tkt5Fcglp122bvBe2RXCM3SPGn8IvIo01A==
X-Received: by 2002:a05:6102:9cd:: with SMTP id g13mr9190020vsi.47.1585260996785;
        Thu, 26 Mar 2020 15:16:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ca1c:: with SMTP id z28ls927670vsk.4.gmail; Thu, 26 Mar
 2020 15:16:36 -0700 (PDT)
X-Received: by 2002:a05:6102:1081:: with SMTP id s1mr10094649vsr.24.1585260996376;
        Thu, 26 Mar 2020 15:16:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585260996; cv=none;
        d=google.com; s=arc-20160816;
        b=PoLozw8O1UdrG0/xnYzjeJ77NNi7Zzuw2QKtu4LdHlxfnu8RQRUDlTttSD6zPH6o0W
         lmfpcwKTAmQtCVbQeDhPOX/LaOhHQM5xaPNsJin9B/NEXPegzhBLLpxtUCbrX4sBMna7
         yhh+HZOtk6b7L+GWIQLExgeMm8qfrI8tHqI2Azl9GFSyFxFlI1woF8esXHvnMScfC9iT
         M6aogMgg7h+5e2mjAmvl7VcfYUx1EuVod8t3+JJUFqb2D3aWmEFkQUDFQE4OhyhClKAm
         loSmSlla+278mRQZBbyO2KOKTtYRijrAUNX8EcExu8xJBGGtyYBKl7fV5hFSLxG8ss7F
         emIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=5ikf9PGw+XdxkIXlatl0Z+d5v+VBb1fP5kyBakvqs0A=;
        b=VyPaB8UK/Spo0zbXFgNH7Etz9yyqjMblWhjislMKvyHVzTfnWulbUZF4nfvKULPP40
         +YcCkjj8kb7oedc4YlQRb45V9V/6ZAXcb15/fiZwmdNt9ixxOaOwOmHBCxBQeL0M63oe
         7oSJm2MZQnGLKaJhrAi7yAiCQ88qhIQ67r6f3HVZwNSPBkMTvlHjFAdbg+oxI7JaFV+9
         XXpSK/G9NHrG55mzdh38o488VEguk13isvQg3P+ae+q+Z5pTJIb0BNiKXkWJLPt/3VFq
         2SVuvbWoI126VetaXJhOjWNQP6URhrmc/TQpYmLUFiHQzcbOEQxDHx5LYJYkSmF94ji1
         m5Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id 205si265895vkw.2.2020.03.26.15.16.34
        for <clang-built-linux@googlegroups.com>;
        Thu, 26 Mar 2020 15:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 02QMGQUE031114;
	Thu, 26 Mar 2020 17:16:26 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 02QMGPkn031113;
	Thu, 26 Mar 2020 17:16:25 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 26 Mar 2020 17:16:25 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Fangrui Song <maskray@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, Alan Modra <amodra@gmail.com>,
        Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200326221625.GA22482@gate.crashing.org>
References: <20200325164257.170229-1-maskray@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200325164257.170229-1-maskray@google.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Wed, Mar 25, 2020 at 09:42:57AM -0700, Fangrui Song wrote:
> .globl sets the symbol binding to STB_GLOBAL while .weak sets the
> binding to STB_WEAK. GNU as let .weak override .globl since binutils-gdb
> 5ca547dc2399a0a5d9f20626d4bf5547c3ccfddd (1996). Clang integrated
> assembler let the last win but it may error in the future.

GNU AS works for more than just ELF.  The way the assembler language
is defined, it is not .weak overriding .globl -- instead, .weak sets a
symbol attribute.  On an existing symbol (but it creates on if there is
none yet).

Clang is buggy if it does not allow valid (and perfectly normal)
assembler code like this.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326221625.GA22482%40gate.crashing.org.
