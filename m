Return-Path: <clang-built-linux+bncBDY3NC743AGBB2MH53WAKGQECCCV5TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB11CEBC9
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 20:28:59 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id y189sf15855425qkb.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 11:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570472938; cv=pass;
        d=google.com; s=arc-20160816;
        b=BaPCuR3J2T7c4xDnsQn/0P/J361TCd+upFgWhkb/TIn4X5OTJDkrwvtOlT2ijEahTK
         edHXf4E/PK3BRQc+m35vy2Rg3+9VgZWccM5CQ3HWw556AIgnc0iiTzcwmYUDH5btGC4a
         mDKquNnpk4Pdm7D5fZFzeemz+oXlWQ8U71+hATsc3bmvlhUabi1hKVhxvdefTXA8vp0L
         IL72Uu6hpAp5SabTtGaPmvMSrfqNVLVpIrYIJRM+H763cL4/p6BpCy8Pdc57vghwFoRb
         L8J/MIqe9OxTLg+DJhqxbFuVy+5N0oTA+DFfxU6tgjao38U+Kh/qPAT2HSCSXfO5QNOW
         ndFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=CPlUrWKN/PbI2lsmBjl9wkg+7Is70An/IlkCrFpoCH4=;
        b=absGYh1vkwE6hRfabF5HlxaydhXxB/QqFbvvr1+XYMmClXZSE8GBlf9nzRk/iwYMEu
         AMafAD2/2Oe+5x3qbLAA0ioR8iSbss/+WjKRCGNBQjbMQjr1Vrk4Xlf/UZyMmGdhMX6B
         SZyZ1TaXo+PaTyrbIZ6hm0Tjsh7sqDlVQMCmVh/vY0NuwBR+Kn7g0mvDeYaUqHll3kqA
         5hTltq9fCEvW0LSF1PeDlyCBF3DJ0TFKdmAo3n9opeGCJkeVlyYoImwMQEMStNSIYgLn
         I7fQQ2JVcGVrlF4IcuEa1SByDb6H2mpRnx+SxjU/AxwWcKJ0NGNKWZHmdpjmVgcXbJZl
         U07w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.136 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CPlUrWKN/PbI2lsmBjl9wkg+7Is70An/IlkCrFpoCH4=;
        b=D3N4EVn2nfc5o/0ICfxJHqabn07jGUR7uCTEFMV4kSv9DaWkVJ0h3/O2sr8wBQmgHS
         iD0lZ28GkmyOzLlCsPOseJLefT7d9gHozy3MAnC7Uus5Lz2rPk74OlyCR++BeeHj0wIg
         9Oj/EVHuiZUqiEeiMgNNQhKS/D0J3Ti3vvYxzCwCewHEmSqNFJdhdq2dNRpX45pyKF++
         vO8flTtZTnP+lEpO74tLaT2LKFJMJr4EXjJneE7lclM7KmVHLA2e/Ec4LpCpoTuuZ5XA
         jQt1FCEvTzAibkZXsdejNM08COysiEPgG1o3yvh0OFHA8eKABD3bQ2AdR6WmNEWvoIgR
         ipaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CPlUrWKN/PbI2lsmBjl9wkg+7Is70An/IlkCrFpoCH4=;
        b=X2gVuUJXae+4TeAKs2jeljVMo5gVXS3GmjgOqK51D92FJIvyPxu7YLe5kxKbrWuhmL
         ZV1MkicXy8o1guYRpqiOwuOfqqDRCgBMnfXbTD+8HDtx/67LyylGH++CU/P364ombCM6
         75xgar92pxvgxKLpZ/i38lenom56yzVCHZPtzWHNfmSMnHklahc4HkwxETLQnMrPjAmx
         sDK/SjDRT95wRrwCTO32EyN+KjI9ri8JCy89UzCYz3LFun2iWq+bBXlp63Xjy6I57dPR
         wvgpx5lbty91cJ+iqD2hmXmQOExfTNuQYaptanBxr3F+eJXCo5H7jQ5LXobJBZRBEQbg
         nDYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkv2AgGG7YHkhKxEk6mryv93nwXFxCnkHP2ISj0gjlPDqPMbg8
	euQXBNcPD172dpw39QnCvR4=
X-Google-Smtp-Source: APXvYqwLeJxNbAoasv8aRWT0PS3+6+mxIIIQ02zMFdFJ8N9cDB/VpUC4dz66W95igmxCjlQMU6/PHg==
X-Received: by 2002:a37:714:: with SMTP id 20mr4448323qkh.32.1570472937921;
        Mon, 07 Oct 2019 11:28:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2efb:: with SMTP id i56ls270464qta.11.gmail; Mon, 07 Oct
 2019 11:28:57 -0700 (PDT)
X-Received: by 2002:ac8:2af8:: with SMTP id c53mr32460940qta.344.1570472937669;
        Mon, 07 Oct 2019 11:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570472937; cv=none;
        d=google.com; s=arc-20160816;
        b=hqNO71OrzlLtzbfb+72gQL5ac/tz25rxZkm8XxP+S2MKgWn+/r8/pJVjnzkIreZc/1
         G+yzqgA9RAdqSaNsYlGU0+SLrp6oq8fDXByPIJUCJC7ei6rPfulQ5CpcH2ueBKLKJG5j
         wI6jNs/P8KcvexeiNpe/pFxHP1m69oHxEDlrXkzhSPlHgSG+QvBLM2hKcm0JElmzxopR
         IeZJtjW8JDIeIdjtaML/U3Xu+KVc/DQOws0vVNIbJT8HWe1iMdHIiKB7tP6w0BwyOjF+
         9e1x4olF798Tw1Vuex7v/DMpiPLGBkhZedRI92FFpasZh/lbHVRk/9z6mSHG14+lfZPA
         HKOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=SYt9UW+VN9hiffuvDGIOonUe6OcwDkjTpWiQwWE3MoE=;
        b=rji0rbgPhAsb0G11h6d50tV1DvsH5QwL3yum4JFKVWCRWanSvEgwoxdOWLhq2imZ2c
         ywt9J57Dr6ER6nvseINYD0n6Tr8l12IToguGNLl+fr1OtuuR0Aq2e5Lvq7g5BK3m5kDT
         8EfN8W2hegw/xDZrF9AKjfW7WhYlmJyDaDvOHIVIvyi/yw3k0qYl4CuW2jRycm6JjaII
         bvrQEsw1e9h8wU6LIsL4Cq3THT5rGxrZHjp1yRjMaGQmirIYaoNyKY4z3SJz6papf/hu
         24oo+EOtZyKp1u6Z8j0LeJfkGqew26BFKDl7jlq/rmCkDQJueRl62eeCSxsUBOwFTUqP
         NfHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.136 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0136.hostedemail.com. [216.40.44.136])
        by gmr-mx.google.com with ESMTPS id t53si789025qte.2.2019.10.07.11.28.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 11:28:57 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.136 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.136;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 190F9182251CC;
	Mon,  7 Oct 2019 18:28:57 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2553:2559:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3350:3622:3865:3866:3867:3868:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:7903:8985:9025:10004:10400:11232:11658:11914:12043:12114:12297:12346:12555:12740:12760:12895:12986:13069:13255:13311:13357:13439:14181:14659:14721:21080:21433:21627:21811:30054:30090:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: neck58_87ecfa613314b
X-Filterd-Recvd-Size: 2424
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Mon,  7 Oct 2019 18:28:53 +0000 (UTC)
Message-ID: <0e5abed9afe267155cc8601d0fd7fdaa63883920.camel@perches.com>
Subject: Re: [PATCH 2/4] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin"
 <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, Pavel Machek
 <pavel@ucw.cz>,  "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>,  Shawn Landden
 <shawn@git.icu>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
 <x86@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, Nathan
 Chancellor <natechancellor@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, David Miller <davem@davemloft.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Mon, 07 Oct 2019 11:28:53 -0700
In-Reply-To: <CAKwvOdkVZ64sLppKxF1XRgarPmCbhw1WLsSq1VcV1tagPgWtUg@mail.gmail.com>
References: <cover.1570292505.git.joe@perches.com>
	 <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
	 <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com>
	 <CAKwvOdkVZ64sLppKxF1XRgarPmCbhw1WLsSq1VcV1tagPgWtUg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.136 is neither permitted nor denied by best guess
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

On Mon, 2019-10-07 at 11:14 -0700, Nick Desaulniers wrote:
> > On Sat, Oct 5, 2019 at 6:46 PM Joe Perches <joe@perches.com> wrote:
> > > Reserve the pseudo keyword 'fallthrough' for the ability to convert the
> 
> Have we precedent already for "pseudo keywords?"

Many.  see bool vs _Bool, u32 vs uint32_t, etc.

> I kind of like the
> double underscore prefix we use for attributes (which this is one of),

Linus apparently (and rightly IMO) prefers
fallthrough over __fallthrough.

https://lore.kernel.org/lkml/201909161516.A68C8239A@keescook/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0e5abed9afe267155cc8601d0fd7fdaa63883920.camel%40perches.com.
