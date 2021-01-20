Return-Path: <clang-built-linux+bncBDY3NC743AGBBTPTUGAAMGQE7WC64FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B92FD88B
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 19:43:28 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 44sf17123728otc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 10:43:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611168207; cv=pass;
        d=google.com; s=arc-20160816;
        b=R+kyIeJ/K10pLhgQzOQMWlwabPX7I5LbCnrkZ2Cu+73J+SjsjOz5HuOmN8kLbiQpis
         nXaZT4BVgVQ7rxMFvAjk6KiX8YR06OHtpC2XNI/dlPFYO2l793RoIAhrugod79nxCgHs
         gQdDs/qxCwOZN2iir5eY5FGmJqwymwPjuGDuoQzDXPypn4Tr7Wko4JqvYcc8NWMQ+u+/
         bjeLIzdq1IWJA6/fOQksdCtNBxGvOS+SuJpOrocyhrBlETyybB4UnpfZ4aoC4SHq/i2X
         +KtYyMxX8bg9Oz9ZB2ufeg8euvtdDFqKssPUDoUUylLx0RkJAhtYO8bRaq4Md20nJb87
         MASw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=RkjgKLM3nBbCMBNtu10lAqiZFQexquYgdwLco0V4kaE=;
        b=d3Qf3FRP31RHaAfIJQ8m808c6yCM4az5dAE0Q3xqQ9l6jaOO3EAv8bQlzJdibAiOVf
         VxJ6EiI76ZWA10dcg5mVnUxdsTi6cv2a9vihV8FiGmR6rEhTVveKJoLfucqDbWPCrekE
         v4KOd31c9pSFDX74CIID7Z4wryHnDuh4jNUy7Eb7C0ueG6k6f/BT1Ln1UmPyfmPvtL+y
         zd02Uf8obPI3pUN/fU7+wCS1VmQOBO4PH2jMniqAVu16W4N8/PYeMLPJFwIGxgNtTF4D
         dxuNjF5G6xZF8k6iH1ogkL4kNT7vTmgylXdlqT/6CAtjggn0uJ2WpxfS9HPWeY0i/NxL
         QwKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.93 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RkjgKLM3nBbCMBNtu10lAqiZFQexquYgdwLco0V4kaE=;
        b=MYMSzeLVcycM75Z4kZ+PaLgYU/BSpjTU2G8F/O33CX79pLtFtUJ6Y2Zc+og5cgvtz/
         ZYcx4+eKovVrM9ToAFs0ytK+mpO19MAuA2CYdoSzlUeiofvonbeE0n97nyVdzlGO1vT7
         qZzQzO/NOYiAmrt7h6zNkv7lIgFE7FqNEQpvfjqKPQCVaGjzI5gl8ZFse9q/3nrOEoCx
         yvZTzIdV65yyU/RR0Z/1ZuSWLlyBK3QQOH+mndq8tfsJrSTTHh8mmDfWG5snQKRUzZCQ
         /4RVF79y1l8kSx7z3W5VMPl3N0dnUYi41FcR54zDUtcRS2PLsnvJTX4HnvlEk85PaISA
         JPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RkjgKLM3nBbCMBNtu10lAqiZFQexquYgdwLco0V4kaE=;
        b=S5q3tr1dBpqDPKvRpFPNu1YjtMovu/pHfDmZD8m5qzECe4xQWW+5WyH6eTHQOozkI7
         Mfi49bu+yUfKOSxWpsXio3C75/PPWrnZnn9gbvRcpQ173IHysQ4XrmEhyVbntK3yvTgQ
         Kw36I5migCtKlOA27EN7H52391wQOvH3A2BvSLBg+bMBlWi1+5c0SeB54HpmtA0DnBbT
         Bwo6HK3OOlO1vA8t+q6IYaqhqzCqxuVMbTj3uLjFVKpAACgAbu69y2JCZ3JZ626TIV8V
         6IatQnUyo6iU2Zn/s5hVwVltB9LzE73KO0elE1Hs1nNs3eWOC5U+F1lgbNrLBXAm4aKK
         CVew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/DAM71uy2mICnqrZiQ7Nz5DPU8H8iMdeJtv6gIyIinP5yCPiy
	kOjnd360CNffUgFP6VoHNu8=
X-Google-Smtp-Source: ABdhPJx/PP/BRCdFpS6zoDXMnWeZY3VUP4A8Swt4F62Sqxu02GG2CoRjBHPvjjXC3pFp59UYLjE1uw==
X-Received: by 2002:a9d:2065:: with SMTP id n92mr7816245ota.150.1611168206069;
        Wed, 20 Jan 2021 10:43:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1204:: with SMTP id 4ls6628398ois.6.gmail; Wed, 20 Jan
 2021 10:43:25 -0800 (PST)
X-Received: by 2002:aca:c1d6:: with SMTP id r205mr3688067oif.37.1611168205606;
        Wed, 20 Jan 2021 10:43:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611168205; cv=none;
        d=google.com; s=arc-20160816;
        b=qYD8CnsZs9RXlxTWOqEgsgUGxv71MUq8TMXCDMnUsvG2m86TEjt1bB48l1wUQTIc0d
         v+SRCWKDObP0KEKQ7H8/dwT5alQON0QSs2rFHD6N/0y+ZUnFKBKWT6B9g4bSDiQPMyE9
         7hXtqeMTrV6bpLV+bIMZVAPqn024Xh8zEhCkMmvC4HAT5CDwDbHsvxmZrShFIWwi7Kna
         irSSIf2qx+F0Tk7KE94DBqWqA6Xfi84JEn9xCeGMqiKJTQJtmijDIdUnGeE7lkSB1p5z
         tT0nFogoKo4uVp5OvF3aS7CxkYLIWhUJeuLX7gOFuEtsEJd+yCXCNWrqLZDjtiSV5Wev
         by+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=as3OfRl81U/0mNkEhLjyk+9Cg5HmZZkgmQNqv1GYAO0=;
        b=BVM048zPAREvDLDlI47vBDvWuM9xDtJiDrSj3US69GVQBXIRl9ExXOdf/LyEkN4zl9
         g1ZEERlpIXMv9nN+WxzBQzTjvZKnrra3+sYo7ZcSis+NqT+CjbiprVamUUZwp0FiD+zn
         MTZLtoNwhtF8V/U+uxqiV/cmnF9VJvsDsS+vLiLNlWie9YZL/gF65ScmxVUzwWX5s683
         1jWjc3W+UmtBmgkXBDNuSSfMNlLfkBp3LNA5VOnknQlP17QzzXnkupdfIdeJLX8tlWNL
         PULCQgkdYaml+kjeZCxrVxGJDxEy8oQ56+1/t6+bAHhWamLOWGfjCjzYx5JioiDMRfwP
         OEkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.93 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0093.hostedemail.com. [216.40.44.93])
        by gmr-mx.google.com with ESMTPS id u25si298289oic.0.2021.01.20.10.43.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 10:43:25 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.93 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.93;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id CB1C1365F;
	Wed, 20 Jan 2021 18:43:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 90,9,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:368:369:379:599:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2691:2693:2828:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7652:7875:10004:10400:10450:10455:10848:11026:11232:11473:11658:11914:12043:12295:12297:12438:12663:12740:12760:12895:13255:13439:14096:14097:14659:14721:19904:19999:21080:21324:21433:21451:21627:21660:21740:21741:30012:30054:30070:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: lunch37_0515e5b2755c
X-Filterd-Recvd-Size: 4179
Received: from [192.168.1.159] (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Wed, 20 Jan 2021 18:43:23 +0000 (UTC)
Message-ID: <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols
 in assembly files
From: Joe Perches <joe@perches.com>
To: Aditya <yashsri421@gmail.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux@googlegroups.com
Date: Wed, 20 Jan 2021 10:43:22 -0800
In-Reply-To: <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
References: <20210120072547.10221-1-yashsri421@gmail.com>
	 <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
	 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.93 is neither permitted nor denied by best guess
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

On Wed, 2021-01-20 at 18:23 +0530, Aditya wrote:
> On 20/1/21 2:51 pm, Joe Perches wrote:
> > On Wed, 2021-01-20 at 12:55 +0530, Aditya Srivastava wrote:
> > > Local symbols prefixed with '.L' do not emit symbol table entries, as
> > > they have special meaning for the assembler.
> > > 
> > > '.L' prefixed symbols can be used within a code region, but should be
> > > avoided for denoting a range of code via 'SYM_*_START/END' annotations.
> > > 
> > > Add a new check to emit a warning on finding the usage of '.L' symbols
> > > in '.S' files, if it lies within SYM_*_START/END annotation pair.
> > 
> > I believe this needs a test for $file as it won't work well on
> > patches as the SYM_*_START/END may not be in the patch context.
> > 
> Okay.
> 
> > Also, is this supposed to work for local labels like '.L<foo>:'?
> > I don't think a warning should be generated for those.
> > 
> Yes, currently it will generate warning for all symbols which start
> with .L and have non- white character symbol following it, if it is
> lying within SYM_*_START/END annotation pair.
> 
> Should I reduce the check to \.L_\S+ instead? (please note "_"
> following ".L")

Use grep first.  That would still match several existing labels.

> Pardon me, I'm not good with assembly :/

Spending time reading docs can help with that.

Mark?  Can you please comment about the below?

I believe the test should be:

	if ($realfile =~ /\.S$/ &&
	    $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
		WARN(...);
	}

so that only this code currently matches:

$ git grep -P '^\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L' -- '*.S'
arch/x86/boot/compressed/head_32.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
arch/x86/boot/compressed/head_32.S:SYM_FUNC_END(.Lrelocated)
arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lrelocated)
arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lpaging_enabled)
arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lpaging_enabled)
arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lno_longmode)
arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lno_longmode)
arch/x86/boot/pmjump.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lin_pm32)
arch/x86/boot/pmjump.S:SYM_FUNC_END(.Lin_pm32)
arch/x86/entry/entry_64.S:SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
arch/x86/entry/entry_64.S:SYM_CODE_END(.Lbad_gs)
arch/x86/lib/copy_user_64.S:SYM_CODE_START_LOCAL(.Lcopy_user_handle_tail)
arch/x86/lib/copy_user_64.S:SYM_CODE_END(.Lcopy_user_handle_tail)
arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_clac)
arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_clac)
arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_8_clac)
arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_8_clac)
arch/x86/lib/putuser.S:SYM_CODE_START_LOCAL(.Lbad_put_user_clac)
arch/x86/lib/putuser.S:SYM_CODE_END(.Lbad_put_user_clac)
arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_START_LOCAL(.Lwakeup_idt)
arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_END(.Lwakeup_idt)


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fb1b511d71761c99a9bece803f508b674fce9962.camel%40perches.com.
