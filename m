Return-Path: <clang-built-linux+bncBDY3NC743AGBBFOG575QKGQE2IKNNOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E63628443A
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 05:23:03 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id k4sf3637658pff.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 20:23:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601954582; cv=pass;
        d=google.com; s=arc-20160816;
        b=V8a2AwDZMc1f8rcQEX0it5cAoHAN0qc2xfTwnDmiP6oaza+pYEbGXdRdoeUl7D2bVq
         6YLAO25NOE/sJ2os4SXzytj/FMkc7XKV7GQ61aLjkYxsoui2GygL1a6bHGvc5EgHmGkH
         k7oRnS++yJIb3Z2K2zrWiGTNsceNKXgNsfrjiCHG4+1mpeoEHFGTDKmtIFGvVfjY3vPg
         gTi7NiV3Pa7we5bLPy+Ei6fiiiylYzldAk/CT2UEfyVjjHzQSAiIUytIMd3Yl6yajUxg
         of4UIvZ5AGj0/lF1exXGVxCrQh/ax1aN/OrOH8mDyhmyAcRMtVagx/YXpbUtwzHp6BG4
         M8uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Sc9wQua3BUMxDnpiTkPanzFBxlnh/jTomuhFCNMS6l0=;
        b=RtSvynyZMm1TYfCCLmNUXmQXt9ERqGktAWmn0rj9JVBnZsOAEwk3R0JqoaXRb1l2a7
         fNJkq5wokO7nNVoWkITYYrr3Q+2QB6PSSgZ7v4OP4cz2iBkoycxT3RQqp0aUs5O3muGI
         Bpx+Db91sTu+rMnOdC+CxbQOp5k8wQUprU3klPn96+63Cn8tmEj6srqhAP91Q90jdH2k
         j6V4WscqInPmUPcb8/SMVsC0LenKvr9DxChp7vSgEgndcfmJBs1hGyo0VRCQwRT0n6Y3
         DeA6kdXg9XX4XFKXljRu74EKaMK8EgeYPSp3pijL78W4XPETcKuaL5QFWAhmqB6OG7ss
         UGFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.36 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sc9wQua3BUMxDnpiTkPanzFBxlnh/jTomuhFCNMS6l0=;
        b=mYiCdiCHJ5u9TmAt/+fVdS3XYbmB2OytQORL4BoAEaeg1ycSTkCGTp411YWuomKm1G
         FokmHa1KogyZHrjXvJLGBcUPHD64Y4iROuGG97utZvoGPbjYtRPNI7+QCdWmDWjQB11u
         zprHxoxTOlLzfzufCI27S7hvtTbyIiUpc5zxYEzC3gk25XfjomF3BZTs9NZFh5PH6aWE
         iHaEV0LHaoZ7bGbl6bK3HEsz+88XQrXwN9QO3++D5576w+kRScnISU0W6y3s2F9wMl08
         BEi5DR3NybOzdkIzLAnT4K178YUmyIlc/zclPqBWwOqlgu6joNy2IVsIR/OtGafYuVYZ
         1tHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sc9wQua3BUMxDnpiTkPanzFBxlnh/jTomuhFCNMS6l0=;
        b=r6/0LgG/nHmW5zjCwImxWMxkCbfdTgDYGC7XElP07PCf5UtdAS7/Z54ZU3ZfFQLv/Y
         ieWMCm0xYW80eIyUZyVJ9sACjpV0dqBT3rZO+j4tBPi7v8ibNyhHCgzXXTM3MqfVuQ5g
         wonymspg8O6mFEU9nC2kF+CyfyYiNiLO7Wonlkdge+dCAk9Eag+M70CfKh8Wg90nTOD8
         xwUTLl7oHcAOnkOaHQkHaX9JwMHqU/XkxJshWBLfWf99Hlt2fWeE0HZX3KxIjSAjlPR2
         N3LeRSIqZcldKl0x52QF7wvprk7fAkT+L+Lf///IQqUKp8cY/zrNJtTSWfDMLoCx3Yeo
         TI9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RTP/lle79/0velQKls3EOP4t/BAht6kMBcMb7b7Ek1ZOI8FwD
	8MZkvubQS34W3g/hjlFd1Dc=
X-Google-Smtp-Source: ABdhPJwUU1siEtYG4RklxrxsDBNwMIgtEl0BTYMOCJMrccahZe3Ne8aV9xt80mytWu/xDGgTMdDcfw==
X-Received: by 2002:a17:90a:ab8f:: with SMTP id n15mr2331280pjq.139.1601954582138;
        Mon, 05 Oct 2020 20:23:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls4294349pgi.11.gmail; Mon, 05
 Oct 2020 20:23:01 -0700 (PDT)
X-Received: by 2002:a62:78c9:0:b029:142:2501:34ea with SMTP id t192-20020a6278c90000b0290142250134eamr2707616pfc.67.1601954581282;
        Mon, 05 Oct 2020 20:23:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601954581; cv=none;
        d=google.com; s=arc-20160816;
        b=jGfYO89h4JyWWnLw8+FUv3M+iQetsGOPgppuVT1caFKC+oLQ3TbQy7rScMOxEM45m+
         31dtH8LidqKJ2JNilK2L6mncp8sMGGnArqiyg4kwOWTowVdLWjjMxlNRSYyF/DvQhCUv
         vnHlsSLpTnxkEHc3bfTI2t2+otJwY8gSl4Aio+Lyf7rR7fujwVRMlbwv87lqfYTh0ED4
         pG41+f1zYtK8paUjUhott8O0qBdgZBr+Is9FdJCPpJ+d07pRgWL3mApdCMIiZ8BF0PPm
         LmYhKS29Kfcoi1yGeqP7pNZjjjlbByN9jRAhqEydTKznH0QVmV3BwWOnKWEVz17VBZzk
         v/jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=xejk1Jw1dCr/7GT67ifKeV4T7ltKvTKYCD4WyDCjc9Y=;
        b=jL4hDL/DTrPdjD56oDnhWt/Nq9guRxOaQKNmz1awzt5VCVUvv/4VYXE4KloJ9nMrYb
         2f+Ja7dh4hYE0dQ3LWyM/B0i9S5is6ys4az7dSZesVS3x9Mi7hhpg92b7p3iFOFZOZfY
         F4RD7n4FXVN0WKK6CybHR6qJUp/NDhX7husYlEWLOfXl9tRgdZAiXUfeGuO7Ss3LT+Nx
         9F7zWcP6kibg8CHtwTpGOpbVRLrAQSDeg4/xZwYrZhj6A3S6cZ5LVNGiLsLC9XATH0jZ
         fehHSx/no8i+soUh6A8LzUH0sUEnnOlqkAa3sgO0jz5nBKoCzPr/Rsjp4HrwbYsF/Lxn
         yHJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.36 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0036.hostedemail.com. [216.40.44.36])
        by gmr-mx.google.com with ESMTPS id mj1si102498pjb.3.2020.10.05.20.23.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 20:23:01 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.36 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.36;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 2D810180A8135;
	Tue,  6 Oct 2020 03:23:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6120:6742:7903:8985:9025:10004:10400:10471:10848:11232:11658:11914:12043:12297:12438:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21627:21811:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: smile39_3a0ca7d271c3
X-Filterd-Recvd-Size: 2790
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Tue,  6 Oct 2020 03:22:57 +0000 (UTC)
Message-ID: <1fe3add91c0de96a24460c94725ebc3a352dc22a.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, "Paul
 E . McKenney" <paulmck@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Josh
 Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>,
 LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org, 
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Paul Mackerras <paulus@samba.org>, linuxppc-dev
 <linuxppc-dev@lists.ozlabs.org>
Date: Mon, 05 Oct 2020 20:22:56 -0700
In-Reply-To: <CACPK8XdwX=1T8WrsVYurL+JedEsb1ZTyrWtJXDLXycu-qu4UTg@mail.gmail.com>
References: <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
	 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
	 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
	 <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
	 <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
	 <20201001193937.GM28786@gate.crashing.org>
	 <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
	 <CACPK8XdwX=1T8WrsVYurL+JedEsb1ZTyrWtJXDLXycu-qu4UTg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.36 is neither permitted nor denied by best guess
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

On Tue, 2020-10-06 at 00:34 +0000, Joel Stanley wrote:
> arch/powerpc/boot is the powerpc wrapper, and it's not built with the
> same includes or flags as the rest of the kernel. It doesn't include
> any of the headers in the top level include/ directory for hysterical
> raisins.
> 
> The straightforward fix would be to exclude this directory from your script.

I agree and that's why I submitted another script
that does just that.

https://lore.kernel.org/lkml/75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel@perches.com/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1fe3add91c0de96a24460c94725ebc3a352dc22a.camel%40perches.com.
