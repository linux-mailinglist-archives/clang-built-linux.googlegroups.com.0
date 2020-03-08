Return-Path: <clang-built-linux+bncBDY3NC743AGBB4OYSXZQKGQEPXNHBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFB817D69D
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 23:06:42 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id v11sf807862vsg.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 15:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583705201; cv=pass;
        d=google.com; s=arc-20160816;
        b=LsAfdeRpfGcAMW/VGf1WyHtfalNiYXPkma/5BDVMKQu17GL9aQdzFm1ZgLHxexuKYi
         ny8bvq2KSVYAvODGD5Lgqv49pYJOQj3LZ9WjxyN54zyv06gkospKyr8Ixsz8GflWAXqU
         ihBuQTtQP1XjrUIPJxrA2F1ZVr6Yy1haHO3ETwv/zmNGkPca9MJPsBs7/4t6b16qjJDE
         8vUkZcUFa0ccB9uFpi7Y2OkaFHxbuQCBACci9peFT8Rer7Axpiw/NZctu/Ff9bM51pOa
         I4ERNEQVXF0vt37XOYwlCfKpAT8zqmbOC5XV8ACBngWXJNevM0kzGaQ37AIrykn3fCYY
         iKyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=vVtRyCDowlMwVl3gSgDHoZ3Psi6yTRtdQj+lRPmH86U=;
        b=EPSxTysP68CNlzYPymuI5ZeStSq0PLb5ayy0PFf0fjYenkS+Dm5BkclyYQLslKWL5a
         OOdrN6SxbeffvEo8Fth3VyfwhN15YN49lN5byLMeJunyZvCeoS26hniPmV7D23UhD6Tk
         K+yAUk3urfeNwbN2KseN8XoeM5uXr5KYkELN2ZrOWm6KxcATNf3h/UFT49aB2lzfR/kx
         Snwn4sf8SnCaTC6ormIbmFehN2hmaNfTv0Tb3KAmeLp/R6PmdFInnckrmltxZ8YDRE7N
         0+3vAVCy4qFrm54VbDcmeQTGReFTxPMMryqscXSFMf02zIPaQZ8yHFYLTz/2RpW05gPh
         qdBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.207 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vVtRyCDowlMwVl3gSgDHoZ3Psi6yTRtdQj+lRPmH86U=;
        b=N8NB7DxQF+IOaBr4NgQLrWGF20yA7D4hxLEJDWnAj5ojqxpWZgss8BL02+8X9gAu3V
         wknaOIOOpfiQJ0Glu7JUf+95U6rJ760JwBAOpztcEhMV6wnUgesaHLIP8izSAW6+7aih
         39F1bP0+Eu32LXFTTGJIftE8+LVswvIwb1LJnz6xSMkKYYAmCDO6wUFSRZyJf3mfzfKx
         jHuLcymho8XLNqHALycEGr27Mw3wFu2vzlSMCeq6AaNh0gNPIJawRDFbooqLgL0LnR9G
         5KZs67bC0//R0unUTqMNqpkYsfuo4nDFQUXsmDZorzBsn7sMka7xKK/LjNIz5e2LU8+K
         hxUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVtRyCDowlMwVl3gSgDHoZ3Psi6yTRtdQj+lRPmH86U=;
        b=CNvPhjZ8PV+xWPWo8HvRxzEPKUad02c9d+3cpzZx19pFlyIrpz8mjCpCBtJHJpeUOt
         OT8FvPWX8wWIUj8+Lv5/KzG9DnvCmRXCdqiyzIL9ntE/J0UrNcpAZEzDy2Kk5eG9fzbL
         VvtFM9ODD0GCCeO2R5xV1fo4TX+OVT6tdtxR1kSZ5vxPbefsGtNTc2jo266IhfO3JCA7
         O3JItXAJnS7yLh/Kcf92eoEd8e8jqinGwqUAixstZ1UIOm3tor5jOaHBCIA//9kmU8zQ
         OhT7eRBxSb1h/hnINUSll69e9oTzkAYYCW6C46o4l9FD/+4aQ/IJOfb5GiOCxVL86yr6
         69ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3UYLHmqQqGGPlfuY7oxTFj+sXj+w6yL1S9/bMMQK13KFBRlIa9
	uVOZvs2dnF/OgjD77hwnWpI=
X-Google-Smtp-Source: ADFU+vuR2hRxDwItE0EiXd+tpicaqc37ee93Zx7bzCaVERtRO6Syc3D2PzNAf8T+dD7z7wspXroLdA==
X-Received: by 2002:ab0:7792:: with SMTP id x18mr7222762uar.116.1583705201313;
        Sun, 08 Mar 2020 15:06:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:751a:: with SMTP id m26ls519100uap.11.gmail; Sun, 08 Mar
 2020 15:06:41 -0700 (PDT)
X-Received: by 2002:ab0:3381:: with SMTP id y1mr6935188uap.5.1583705200983;
        Sun, 08 Mar 2020 15:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583705200; cv=none;
        d=google.com; s=arc-20160816;
        b=05wxgP9cDU/xYm8F9/HW0aB734MgZGhuX5nbCgBD7IANPJMPZl8+s9vw9wI2S6MN/X
         1dUd3xgs8xTkT+DAiuut5kvJl93Ctxuat/dws0BsxpMQSbrgcjQy7jRVI/PdxjDWBOIm
         GDp5DLTncFNDE8z++wfrDGcSEa5XvIs6mKOnf8GQgdrCe4v/SAKuI2O9gMg+Sn4EGx5t
         SPAKEYNRL9QdYgBpHhKtMPnCydd6cgw3FEsNjZY0l/S2iEBKAiyn2f4Gm1PjI8TUxkby
         QTd+RKuOUQEk4sTFF+euuRFCvLE+Ny7QqJvGr/71xSBfJwEXNJ9/Q2Awa3v14CyaveyU
         Jejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=jvIgi3PHXDrPBXsFp5s4ZiWdxx6nOHcSq1UitLQqF/c=;
        b=JYUCjSzZcqGh8gAI0zcpaSJ1TEYi5aLCnQWM3+h6z29/LFAnM5sl212M/2rpc7kEd+
         DyQl+BbP5yBscUbm45wou7Ma02EzE/atXwWegTKqhnorKic+o99sw2eBNcq6GISq0XHK
         D44qlrJ5JXrsjDjnZuDa5gtN2XdcEFCw+W+qmhd7Nf1iIa5bLSJ31BHgLIvTkseZnxf/
         OcjALfZyI8a/foJDjGnT3nmx0jAMmsbJMaar2XMaNgB2zdwMqXMKue5KtLfuF65Xobhg
         vnnl/K+BBcel3E1RqkUqRz8KF8Od8V5V0PiZIESQ8/c9gMZFMUXNfwXY2tAGXTjHPo+t
         locg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.207 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0207.hostedemail.com. [216.40.44.207])
        by gmr-mx.google.com with ESMTPS id o20si21662vsn.0.2020.03.08.15.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 15:06:40 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.207 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.207;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 855015DE6;
	Sun,  8 Mar 2020 22:06:40 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2691:2693:2828:2895:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:10004:10128:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13161:13163:13229:13255:13311:13357:13439:14659:21080:21627:21939:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: wash33_1d0ce4d7d731c
X-Filterd-Recvd-Size: 2123
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Mar 2020 22:06:39 +0000 (UTC)
Message-ID: <c1994e1c86a97619f233ccd93d7714acda9b8cd3.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Andrew Morton
	 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Date: Sun, 08 Mar 2020 15:05:00 -0700
In-Reply-To: <6a48e37a-a377-c9c8-3de8-c183b27cec46@embeddedor.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
	 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
	 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
	 <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
	 <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
	 <18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel@perches.com>
	 <7a0a3e7b-9c76-22f8-8dbf-acd9960d7950@embeddedor.com>
	 <b934b12940ab50218be3b7c5d1b98f5d4f24a1fd.camel@perches.com>
	 <6a48e37a-a377-c9c8-3de8-c183b27cec46@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.207 is neither permitted nor denied by best guess
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

On Sun, 2020-03-08 at 17:04 -0500, Gustavo A. R. Silva wrote:
> 
> The point is: will you update your patch so it doesn't remove
> existing blank lines from the code?

No.

In the first place, I believe what I did is
the preferred style

You need to look at the code and see what you
think needs to be done and then do it instead
of merely sending a fairly pointless nak when
in fact you can't really nak it.  You could
reasonably object to it, but you aren't really
a listed maintainer of any subsystem and you
don't have an upstream tree that is being pulled
by anyone.

I believe it would not trivial to implement
your desire.  You are welcome to try.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c1994e1c86a97619f233ccd93d7714acda9b8cd3.camel%40perches.com.
