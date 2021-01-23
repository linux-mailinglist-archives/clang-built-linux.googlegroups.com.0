Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBE44V2AAMGQEQ3QHFAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6364E301264
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 03:46:44 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id y4sf1237221vsl.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:46:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611370003; cv=pass;
        d=google.com; s=arc-20160816;
        b=bF7GDVvXdCst30RBScs8QiEfBAUZzX6s2myLg7UHCG5zbtY/ODjkQcp1dZeLvZPR47
         G+FLB4sJqAgulv89Me0q0XG9kgDviv8MoOvLQgVye4hTZSuJvHQHXdnJYE3IdpQ8T0mE
         tfgjV5wqhOipp3hIKu0MRuHBwSd1x6XR13yPACDdlq3UMwMxvF4xbE5bo12fbeznALDs
         R01OiQ5fYjwdyAmYBUJqPw0RNcfw4soikQAX8gddjv16YSSGwC8VHPoH93Haxg7wJNbT
         iMO/bS1+1W9dJDWE2fKbUXKwPE4b+NrGMUGLWDlvkFb5Y3q4V9GTxCi1uxr0BsYNAgld
         4hEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SdoVN+vo4YczOKv0RcmJJ0P4fL/Sb48Oc1IpBPbh8WU=;
        b=jB1X9u4sxAHigcQXZdESLoIicTqrk+TDUeiV78kYRynKpq3T6ZXxEEsCs9DCsM+lfg
         23AL6FsEo986YZnwDsm8Bfj3/QZJWjSKSQV8nNnIMlsb19dFAvQ0zf2B/31SnCpnJYIr
         neOWB50SlxTakGYmODReDt967HHiMFBlig6ebnaukU4a4iGR4wAoLQoFjKNt/pkmOZ37
         BNgxfmpUgmUhhx0yCJGiib2LPbO/zUfxym0wcl5SlcX9nMxAtjC1ZF8QWfFui/7cdtO0
         Ris7odiHBgFr5FZG9C7L7L2EMePnIc6q1l8GhfcVZi48vscVj+KLAsU31n1mmRD1bJ7l
         UmpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T0xvgOpv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SdoVN+vo4YczOKv0RcmJJ0P4fL/Sb48Oc1IpBPbh8WU=;
        b=FfAmvOw+TXCVzZ+xeP87fOt92Ri6C0rtBs0l66TTAaD5uq4NORm5zvT26K+K2wIN3v
         eRfheo/elNiHZH5NVaEVap7W43fMvwJWmfBdiKjxRRmxYIlc9A51Fl08z8PtzuoHRPtp
         KEaHa5OI/2mq+VEaW5R/a3oN3Y2Ir7u/BIXkWVgY4VZNWOQwnMBaWhzTOtDuZOyzuAOx
         Bex5/pOpSErix6BrCLC4P9nS8pIDlNUafh8QVqpJ+rBzt0sZ5peWu0G+0Sfy7X6P3ScE
         PfDWwHueLELg8hQlJKdniB/pNqTVIpo1xu75YDbCRadLcTNONnoMBca4H3XnKp+5CxBy
         J3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SdoVN+vo4YczOKv0RcmJJ0P4fL/Sb48Oc1IpBPbh8WU=;
        b=k+381fU8DgvNUuvmxzCBS2Ux/rN0Hf80oHSEADgkzNGE+cbuw1SiDEAdtb9rPbrLOT
         4U566F/qW1jV1KKBfOWzydo1/dep6gPoybrwv2cBdF5p4q5Bhsd1gNTP+O6Wpv49Vhro
         p+TRHVLvn0VKAfxyOjHg8rdUnrFqZ8jjW1w61dCRejKrSEk0e5u29wQY/obPGC1b+TSB
         srJKgmcJJWT71HlGlWimn7LtVc1N+j6Cp8r6Qd2/70V9VkTjVArb9G8wygaQQdSZ/gGA
         coEAo4pa5rEVrEw8JMMCoPPjRsy9oiqPh13yn8tdg1eoUXMWD646QXAP5SYGYALUgfXG
         7c0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314vDFkvumYcQCsb4e6w6C5mC3bI3M0RIiACLJRo8fUQToaACAh
	9Ep+NKLnjXFNwHNt5MB7au4=
X-Google-Smtp-Source: ABdhPJwmJw7WJvyhb5LAxGfdOsL85EymX1k74lOHs6KDHGVE9qwSXCk5FqN2kx4Va6ezJmzGotl8LA==
X-Received: by 2002:a05:6122:12bb:: with SMTP id j27mr53675vkp.18.1611370003245;
        Fri, 22 Jan 2021 18:46:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:eb8c:: with SMTP id e12ls1072337vso.8.gmail; Fri, 22 Jan
 2021 18:46:42 -0800 (PST)
X-Received: by 2002:a67:e014:: with SMTP id c20mr84289vsl.54.1611370002860;
        Fri, 22 Jan 2021 18:46:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611370002; cv=none;
        d=google.com; s=arc-20160816;
        b=wbkqqN25DN8k7fQphaOy03w/jkTHpHpEzgH9qBQeoxYiOFH8dMfIg4WjzJ5eq7416I
         qrBOgAZhrQ439+v0/QjLMKpig/2dV3AOHW2wxgEpXiaqiaAXdfab3UYv+uSAO7vTmRMQ
         waWcYnFGMtwFnzszybMzz1q1W84YDszZ8c3lOVx8/gxY14vK0ij7WCjAAFLNGQf8/04A
         y6S9R77kXAcvF52JxVu3NLVDw33+l5F4WBx5AmQndzomGc4z10L1EUd4I4Sn4G6dkKDH
         H06cqkEVEaqPdMo3ZLnTpGfPfWrPjUG8E+Qe7a4ZciqB602pqUphVgyFLJkTJhJzFHgm
         K5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cxv8yeNTpR9XS/lBII/no4JZ344/E/lNrITT32lKLQg=;
        b=R7irQvBZGQixP3hxaGEqHrkf1fG2WD1GFRfXGlbX4nfu25WeLmY2fRswi45DcM46tS
         hmKFNqzhMU0/iyKklwhsYZdgGVNRS5udK0ZvS60GSVHl8d4CH6FWMmb12diDhWsaCqL7
         yvCHhDvyGTtdWHeu7o3X8uqtmBGGcCVv9RCHTpBAaM+eYTAmwknT+/xUQpJLIZIduOPu
         A+PHKYFgb2u69IERVJzkfzu6tsd+5eEiF2YeTG4TaMt8BSDZ0tBpf7kMmeO5JZDAQmRL
         tDlbtG8bQrVqvUOhORXClD95LNRSGtUz/bGFvQXRbQf9SPA9wgS0K6FY7QwjwxDQYYxZ
         /8jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T0xvgOpv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id p73si283164vkp.3.2021.01.22.18.46.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 18:46:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-JeLdl3hpN1iGRYxRxolM9A-1; Fri, 22 Jan 2021 21:46:40 -0500
X-MC-Unique: JeLdl3hpN1iGRYxRxolM9A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34472806661;
	Sat, 23 Jan 2021 02:46:38 +0000 (UTC)
Received: from treble (ovpn-117-226.rdu2.redhat.com [10.10.117.226])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DEF560C43;
	Sat, 23 Jan 2021 02:46:36 +0000 (UTC)
Date: Fri, 22 Jan 2021 20:46:34 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>, Fangrui Song <maskray@google.com>,
	Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210123024634.qu62tyq3nkqusken@treble>
References: <cover.1611263461.git.jpoimboe@redhat.com>
 <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble>
 <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
 <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com>
 <20210123022609.n7xsj2a4potoijz7@treble>
 <CA+icZUX9mYAFE6aFdmGS+rnJbeBMMMeVBrSs_pC6ragzXCjT7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUX9mYAFE6aFdmGS+rnJbeBMMMeVBrSs_pC6ragzXCjT7w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T0xvgOpv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Sat, Jan 23, 2021 at 03:31:20AM +0100, Sedat Dilek wrote:
> On Sat, Jan 23, 2021 at 3:26 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Fri, Jan 22, 2021 at 05:32:43PM -0800, Nick Desaulniers wrote:
> > > > In this specific case, find_func_by_offset returns NULL for
> > > > .text..L.cfi.jumptable.43 at addend 0x8, because Clang doesn't emit
> > > > jump table symbols for static functions:
> > > >
> > > > 0000000000000000 <__typeid__ZTSFjmiE_global_addr>:
> > > >    0:   e9 00 00 00 00          jmpq   5 <__typeid__ZTSFjmiE_global_addr+0x5>
> > > >                         1: R_X86_64_PLT32       io_serial_in-0x4
> > > >    5:   cc                      int3
> > > >    6:   cc                      int3
> > > >    7:   cc                      int3
> > > >    8:   e9 00 00 00 00          jmpq   d <__typeid__ZTSFjmiE_global_addr+0xd>
> > > >                         9: R_X86_64_PLT32       mem32_serial_in-0x4
> > > >    d:   cc                      int3
> > > >    e:   cc                      int3
> > > >    f:   cc                      int3
> > > >
> > > > Nick, do you remember if there were plans to change this?
> > >
> > > Do you have a link to any previous discussion to help jog my mind; I
> > > don't really remember this one.
> > >
> > > Is it that `__typeid__ZTSFjmiE_global_addr` is the synthesized jump
> > > table, and yet there is no `__typeid__ZTSFjmiE_global_addr` entry in
> > > the symbol table?
> >
> > I think he means there's not a 'mem32_serial_in.cfi_jt' symbol at
> > '__typeid__ZTSFjmiE_global_addr+8'.  Probably more aggressive symbol
> > pruning from the assembler.
> >
> > It's fine though.  I just need to rewrite the CFI support a bit.
> >
> > But that can come later.  For now I'll just drop the two CFI-related
> > patches from this set so I can merge the others next week.
> >
> 
> Two CFI-related patches?
> 
> What's the other than "objtool: Add CONFIG_CFI_CLANG support"?

I was referring to patches 10 and 11:

  objtool: Move unsuffixed symbol conversion to a helper function
  objtool: Add CONFIG_CFI_CLANG support

You can just drop those patches from your testing (and don't test with
CFI).

> Do you plan (or offer) a v3 of objtool-vmlinux?

Not unless there are any more comments.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210123024634.qu62tyq3nkqusken%40treble.
