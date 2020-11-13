Return-Path: <clang-built-linux+bncBCT4XGV33UIBBEHHW76QKGQEHOX5JEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8FA2B1467
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:46:41 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id l3sf4967465ply.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 18:46:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605235600; cv=pass;
        d=google.com; s=arc-20160816;
        b=GAKlB/jyyjvWvDKxlZoNvAeZhaGFwqIYJ7VvFXrCYjUeBic2bslIz5H2D9zYVo7j9b
         JcU6cMAjGpLtlkJsHtuNTp95BCDcBk6Pv1nQW0jze/q8ufTOCxugHdD7sXSniG3b8Hlp
         t096FeOT7BXiFOxDkGkQVX4i71EZBc0veEG3zq5sRXxhaPvSJxKxDbhTOclNacFgc998
         ZYxbJokAiEnDe/UYqIOhM6JXJ+12FlQM7ewTtoUtCfZkTcIMOrTz4tmOvMDl9NugAOko
         CMh+bGdFwaghHNcQWgcokVJk/whHOdvUHKWdVqbPVJoq2pKldlwPS5d0zAUo0fRgO9tk
         TuBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ck3Ux8MyEnXSNC3OFLodd24i4m5Up8AuZWSlz+C5V1g=;
        b=Vh4xEFD6ufVpjDaGAovVdgXwWpB/J3+KRUJvGAbG6QXXVG4pCGLwdqw3u4Eb+Eywwb
         WVJKt33D6ob4ZMj90b2UokWmTC2TkR6V74F0wLaf18D6VpXODwbPLxa2zThmrQmO8l+7
         77L42NTmoj3SmnLqQq7NK6ydBZxQj5Isksy/SoB3acy2EaZ7GMBfTX3Zesu7/hG0CeLM
         OiAozx7zjGLH8uTsCtxgPJxdykcc/WQMxfFypCvLgCeC/0RVbudRP+oqzkfMqZoMEzf/
         aPd5nVUWV+HXG/ZIMnLLn0gb6C/2723Q9o4jvcnDbdO1L7jaaJHkI0xLcEPXd4TPv3t7
         3o5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="U/1UCboz";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ck3Ux8MyEnXSNC3OFLodd24i4m5Up8AuZWSlz+C5V1g=;
        b=V/XNyaA3TpdbiO1rhIxPt3CB/DQ2i8AjDHobXlGpk5Wg4Ed/AXjOEzZQJ598fj7DzQ
         1ypkN/IZmczv2jdXKZ31H9bRAYXvrDO5ZfoBBmrMauiubABC/X9v4J9yXl5fMTtWQLmc
         j8E4KqhqIKfZFloqM9YVIvf7kmJZYJXJxzbsW+vm+QecAd57rHZ1cv4q+ooGwcEJDFB9
         7nN4JnjmLwU8kuY7kl7/ie0m7y8GWWihLw0pJYzNFJB9hlSjZZds4Wq8MALtSMb/cqXl
         9MJMigrcyx/Q5/oOJS3e6bZ1OC+93DU2WzJ+Kv+yMUg12oxGRtkIMkNJRlIU3yRVi/T0
         D0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ck3Ux8MyEnXSNC3OFLodd24i4m5Up8AuZWSlz+C5V1g=;
        b=sMa0de/V1Hk9YU3EQCimH0V+YNLEYMaUugSyTvsG8lz94+Xt++d4zqoeAdYavreBJC
         0mnYtDv4dtdbadg3EUXp8lcurDfsnlYuvXuaWvyx8Zs5HPoyUhN+9w1mrJTjAbLE5u9+
         PQUBULnBQcQF1Cu/ABlxyNr1Kx2S5YiLI0Ovwp5kAX3cnYOWyjWrdQMmswqpGo4LB22E
         dHfWyBwEE6DnMEsJQjIiGOSTXdsvMf1ngbW0nJ6/Ht5lsUY12mZRstNZXYvtMcTOFgPc
         /uqYT4YCHMkg/J58p6Elav1f3KhcFrR36VuBeTVEKnykM9bc7CTg/2jpAWsYKPvVlpzf
         iNsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531b8mvAGA/sWsdrQ5YNwBf8Q/iPWCLhNKNx54QGrq9+mwz8Wpgj
	RdgAlHR1PcuDCjf3jn6LJtM=
X-Google-Smtp-Source: ABdhPJxrtBNLtBUkya2G9WVEh/S7EZG+J69A0aoanWZecWeDwU4bNiZuycVz59CvDaEPSZtGXAQJRA==
X-Received: by 2002:a17:90a:cb05:: with SMTP id z5mr387342pjt.216.1605235600183;
        Thu, 12 Nov 2020 18:46:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:543:: with SMTP id 64ls1708007pff.2.gmail; Thu, 12 Nov
 2020 18:46:39 -0800 (PST)
X-Received: by 2002:a63:4d64:: with SMTP id n36mr324509pgl.203.1605235599493;
        Thu, 12 Nov 2020 18:46:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605235599; cv=none;
        d=google.com; s=arc-20160816;
        b=JqvVRKD2qu08WJ8VqqIG1iGvuj0KXip0u5jSsmAAUu5x8ombmvpU6K7aoM9vShDnsK
         I/a7eqS7I5hyvZ8FZKmg05vjp/jhOXrOeop6cxb9v4wEB0qyha5KEgYgBuy4ojpQBYjC
         0i40T2GSD9ptYxhv1P3nhGitCt+PlubtqfrDFK+iHInxtfEnWyLf4BaAjLEbLuXRsDKh
         LBr6dxq3PDzrPUsUJrqB0ZlHTtioYEiLhb8VRXZAjukFqSXiisJX0kJnNSWP8GUw2Chq
         BEgfSrjqSp9m+GhZuDdqxeYsM+lEq/fBXl1tR1nQCbKEBi8Iz8zQdxRU1hshsBBKpChq
         3LGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xVN4M3CyFKBDcLKo0zurUbZBLyWsTUoKL6br5htOmbk=;
        b=iioa+dj1ac/AV06jxgFlEzfHBjo0EvQEKFkPRPCCsYNamsjUUyNzayZDlZEln48M0y
         C88/4OTfy38EQCmiEDdhWqj/rnGPJlYBYA/3czwWiAMqgQCLGwIM/xkkuJaHttWOC+eu
         9m/v9LuUdGjg6gLH6zqXy6EywvR6/pwP/VAZw5j6cqhFiVZMMjiNsoNuKUZYPc6PseO8
         uUhiaGEc+2fAGFsCyedKOwrjjZfIBlU9bWMY/L5r2udiTs9eqb1zYTOivxej0Xn3yBGT
         oGzB9nbKzVAzIi7o+ykm2JNx50j9IFPm+3mYIk+DuW6uXK4AeWeQMpkU+YQTVs6lvn08
         7E6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="U/1UCboz";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v8si477763pgj.1.2020.11.12.18.46.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 18:46:39 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 431DF204EF;
	Fri, 13 Nov 2020 02:46:38 +0000 (UTC)
Date: Thu, 12 Nov 2020 18:46:37 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Matteo Croce <mcroce@linux.microsoft.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, Pavel
 Tatashin <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>, Mike
 Rapoport <rppt@kernel.org>, Tyler Hicks <tyhicks@linux.microsoft.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-Id: <20201112184637.de44afedf0ce0dcab36dd0ad@linux-foundation.org>
In-Reply-To: <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
	<20201112035023.974748-1-natechancellor@gmail.com>
	<20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
	<CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
	<20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
	<CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="U/1UCboz";       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Fri, 13 Nov 2020 02:38:18 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:

> At this point, since 'pci' enables BOOT_CF9_FORCE type and
> BOOT_CF9_SAFE is not user selectable, should I simply leave only
> 'pci'?
> This way, we'll have the same set of options for both sysfs and kernel cmdline.

Well, you're the reboot expert ;)

But my $0.02 is yes, let's keep the command-line and sysfs interfaces
in sync and cover it all in documentation.  It would of course be
problematic to change the existing reboot= interface.

I assume that means doing this?

- #define BOOT_CF9_FORCE_STR     "cf9_force"
+ #define BOOT_CF9_FORCE_STR     "pci"
- #define BOOT_CF9_SAFE_STR      "cf9_safe"

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112184637.de44afedf0ce0dcab36dd0ad%40linux-foundation.org.
