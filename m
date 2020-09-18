Return-Path: <clang-built-linux+bncBDY3NC743AGBBCE6SD5QKGQE6B6OL7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C655326EA8F
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 03:36:09 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id j12sf1176943otn.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 18:36:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600392968; cv=pass;
        d=google.com; s=arc-20160816;
        b=UZJ52ZDdYdYOjjR3eph2xquZcZoFqJg+QoQZU6LYPmiQEFfLHtpaEwEmm8V7olkriW
         AkaxIMtLT+DUGq9knaS1rWNCH8wA9ZIpM0AhRA7gbYi1eOh0uRjW/gGBzIUGO1r0T5Io
         kbDV+owUsmAPOroZoL40AyHEoogPPB09LkizsMEKEpY8NBr1s2xN15/Zv9duyLyiWr2U
         gW0DkcfzWP+2deVv40TGLhsNZotBwv4W5+mHxm7p7UDXTlLS2gQCjTp/+T2VbeRMIzZc
         HzR1cyAnxCE+9Wit1WOld7yR3JPdGzFIAogwg/Cw61YJJn6l8vM5DRscm3qi8sFLZJJq
         fvaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=FV/FF79k6/a4yeMMlwywVTHtBMKaJDRIDJqmkTpxn60=;
        b=RSMjSxZDWtpcnkoJFShhw5D/EKACMJ06ovvEsVzxqgbwEL4FeB3kuoIfY8JFUFQwdN
         8RDpBE4zLZNN+fcOSLYtqUehi3dbnU3soIMhZ902ekGbmclJzW40ZF7xvXJyTfvC9lnN
         NtcgadOeRM49YRghqFVBkinwv5dOV3k723DjquReFU/BlcEPTs/OEmbTY1MF6mzIZhzm
         8LQcNmMFQca98kz5n4ABe676ab/h1OSRZGXoGDxOjfxl7qRvGB2zA5gtUUW7obqiysfG
         M5Cj1IMwwwDF+nLBFSAzUzZAAnqVugj7I/9yrEerl9Sq7+j24BFa2mnL6of0qeyrz3Oq
         ffrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.9 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FV/FF79k6/a4yeMMlwywVTHtBMKaJDRIDJqmkTpxn60=;
        b=nc36i3j/1XYRmUy2HYWBXY7Po9z3mS1bo1V2nBg8y6pO5Sp7d8mcsT9Q7EKzwPysBz
         SDTzJgQr/Fj/XCP+YUYDWwqe/nKPB8WzGbXZ0f4lARBrl6oWp9F0E84duZVT+RAcLBpE
         uQ+Srg/Xh1SSYFmpsOd9+SfFytYF//h2DYAqHs9tMZps0T5Lefd99rTT5+iARIW7Vdd5
         6E4tWRWlJpwDCy7ehIPRl9OcvTPDdCg139NYJ6DaD6YpZQhkedeoP2yrH0JoOOTVN/eb
         uG66e3d7jNOV5PJgOXQKyn68kbnpelXMUkvmttiBWySYM28qqhnBQKM25wIIx/GPneEh
         uX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FV/FF79k6/a4yeMMlwywVTHtBMKaJDRIDJqmkTpxn60=;
        b=Q1VjwBX25gaKWh54yy0DwW8zt02KnTSnyfMlzpJPXIBzxgpuywtmKTfLXQCKRpuKjQ
         s15Ex9rUkZArSbHD9cskNuF3T6zm7C515zA4MgLCaAB/BwuaB9iguXe84jxksgIzhMvT
         kOeFQJxEiWyfnl5txERwInEgymWUmomeoLCmrKWgUKkLoDwDvbeEq9t2y1DR0KqshxHs
         1KWvABhB4I0HPTxco0zJZ0PFs2w7/tXCcUgNkJby9KanBbpQZ5d0zeEhnp4lTkn/SfTT
         fTMDvrJh94rf0IC+LOA5Jq/13mJPr6s3J+2toHCrHgOLspkl6tpVNYNz3Ns5LcqI0UCM
         38kA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yBxTTz+8LBrku0Q8B+csFCFNoeLaMqnb5gOo4nO7gyw+qRikH
	yztO/n23cKOAMjw27OIHFbw=
X-Google-Smtp-Source: ABdhPJxk3Or/M3Zl5oWbVHBvC+1Zgt3QC8kGsSZnuaHcjqGueiTO4MtSf0sNJ/2JGoPs1q7TEyIIqw==
X-Received: by 2002:a05:6830:1553:: with SMTP id l19mr20145806otp.6.1600392968514;
        Thu, 17 Sep 2020 18:36:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls898222oto.10.gmail; Thu, 17
 Sep 2020 18:36:08 -0700 (PDT)
X-Received: by 2002:a05:6830:454:: with SMTP id d20mr22651471otc.139.1600392968097;
        Thu, 17 Sep 2020 18:36:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600392968; cv=none;
        d=google.com; s=arc-20160816;
        b=nNQedNUwRaPA6vIo1+a+Qv9GfxRUTfpqRQTq0Dqby3l5LzxbbF72YgJ9T6jSukrWh0
         xRoH/4SSUEO9E5iY2IVhUI44Ezd1LoEmwgu8WpoKlKnsiNCvuvBm6myKWqFlbA+bTxo/
         KOy4AtdEDRwrgH+9nVvaWLoGt07WO2HQc3/ggfSkTSEhQjHvtwmLwY7RxN/cNpuI/Cal
         2Lqn982Mt2RhtH6okulhBe4AZuBTsNzElHx6LARPSZAxuYdcfPTcpLJqbnsdBjBbK0KR
         xf1w5lHeIJgx+jGITosfd3LPiQ4HxlQiewT501wjTsChdQHvBKM/eg1aueuJtYzadWzD
         ogkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=NhFl/NUa3D+S/f3gGS9FPSJKfsFEbdfkuvPdcqaY8jA=;
        b=NOC8x9eFhZnjWS4LGmsTNs7ollwCgETSwN2HhJ8uz3v2ZGG0UnTZQ9IGWgScwkyKWn
         efzUaLZXpl56qjyQ6XMIpZTFM8uI94GmMwfeYJ93B3aLB2r8bIjo2iJ4wqlhuq9Es6Rw
         qyVQ9i3YdaS6ITQM69bvD8adSc0KRrd19XGl7e/5HS4DEhyVR8GGpsTaU5Cga5b8fuVc
         yelrPGDK6Ihiy05IBS8YFyKjPVex7c2/ldpaL28lGzwiQxIk5nEMSkmN+mx4dq3IiCWK
         qFCMurr16ji4mzBNRI1l3iFfe5El6syx8JjsJXEYSAYk0onKdefrCdHyMyVstKus6mCw
         fxXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.9 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0009.hostedemail.com. [216.40.44.9])
        by gmr-mx.google.com with ESMTPS id d11si171607oti.2.2020.09.17.18.36.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 18:36:07 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.9 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.9;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 6C077182CF66A;
	Fri, 18 Sep 2020 01:36:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3870:3873:4321:5007:8660:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12679:12740:12760:12895:13069:13148:13230:13311:13357:13439:14181:14659:14721:21080:21451:21611:21627:21740:21939:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: home77_5210bfa27127
X-Filterd-Recvd-Size: 2929
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Fri, 18 Sep 2020 01:36:03 +0000 (UTC)
Message-ID: <ce5aa7a4881411836f16693a482d756be7bc79ca.camel@perches.com>
Subject: Re: [PATCH v2] nfs: remove incorrect fallthrough label
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>, Anna Schumaker
 <anna.schumaker@netapp.com>, "Gustavo A . R . Silva"
 <gustavo@embeddedor.com>,  Nathan Chancellor <natechancellor@gmail.com>,
 Hongxiang Lou <louhongxiang@huawei.com>, Miaohe Lin <linmiaohe@huawei.com>,
  linux-nfs@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Thu, 17 Sep 2020 18:36:01 -0700
In-Reply-To: <CAKwvOdm84xCFq_KVQcNws2QveJdOM_uRrH9s023Gv8sp8V79JA@mail.gmail.com>
References: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
	 <20200916200255.1382086-1-ndesaulniers@google.com>
	 <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
	 <CAKwvOdm84xCFq_KVQcNws2QveJdOM_uRrH9s023Gv8sp8V79JA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.9 is neither permitted nor denied by best guess record
 for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-09-17 at 14:41 -0700, Nick Desaulniers wrote:
> On Wed, Sep 16, 2020 at 1:19 PM Joe Perches <joe@perches.com> wrote:
> > On Wed, 2020-09-16 at 13:02 -0700, Nick Desaulniers wrote:
> > > * (call of function with __attribute__(__noreturn__))
> >=20
> > I guess panic counts.  I count 11 of those.
> >=20
> > Are there any other uses of functions with __noreturn
> > in switch/case label blocks?
>=20
> If you look at global_noreturns in tools/objtool/check.c:
>  145   static const char * const global_noreturns[] =3D {
>  146     "__stack_chk_fail",
>  147     "panic",
>  148     "do_exit",
>  149     "do_task_dead",
>  150     "__module_put_and_exit",
>  151     "complete_and_exit",
>  152     "__reiserfs_panic",
>  153     "lbug_with_loc",
>  154     "fortify_panic",
>  155     "usercopy_abort",
>  156     "machine_real_restart",
>  157     "rewind_stack_do_exit",
>  158     "kunit_try_catch_throw",
>  159   };
>=20
> Whether they occur or not at the position you ask; I haven't checked.

Just fyi:

Other than the 11 instances of panic, I found only a
single use of any other function above in a switch/case:

drivers/pnp/pnpbios/core.c:163:			complete_and_exit(&unload_sem, 0);
		case PNP_SYSTEM_NOT_DOCKED:

Found with:

$ grep-2.5.4 -rP --include=3D*.[ch] -n '\b(?:__stack_chk_fail|panic|do_exit=
|do_task_dead|__module_put_and_exit|complete_and_exit|__reiserfs_panic|lbug=
_with_loc|fortify_panic|usercopy_abort|machine_real_restart|rewind_stack_do=
_exit|kunit_try_catch_throw)\s*(?:\([^\)]*\))?\s*;\s*(case\s+\w+|default)\s=
*:' *


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ce5aa7a4881411836f16693a482d756be7bc79ca.camel%40perches.=
com.
