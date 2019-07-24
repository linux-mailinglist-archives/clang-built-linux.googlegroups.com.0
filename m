Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBBVC4HUQKGQEVZFQUZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2F672EFB
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 14:37:27 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id i132sf18001884oif.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 05:37:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563971846; cv=pass;
        d=google.com; s=arc-20160816;
        b=sldmoS6MYqvF/mMLOXSKg3FC+RPDITG7VmQ/AU7ruKKf8I33nzDT1mKHuh5JghWEXr
         XeQU845TkH+rsgNrZecF3n1upQrf+3Yjy4TjJ3LkL3Lh7ZchGhHPNkn7EyXg/kP/I32X
         gMlEwIv+bFtKcz7HgMh/xFy3tJUhFk1+B772NcPvtGzHAGlBUG1OV6/YYztOhB0tm6q2
         Z3x19AGb9RrcLeEko5elri2Ajg/IMlmKoqYphd9U6jbzKDh9zlYCy7WTv52IsBj0YcWo
         vEYsZ6IkVS4hHZbBMhZiDCNyqPJmJB23Dr5+qNlbkBDl4GF9YK74JzSe06Hs3HI08s6C
         Nwpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=sei9xn8jNR+0QlXiK9dHCiA6Kn2kId3gLUGBis//wJg=;
        b=A44wb+IzL9Myi04SizlhQAZh+vXzzv5gKMtRm7rI9NWxbEtazCDeAQm3VQEkrcDhyr
         reVeIyyl+ETSQRNkyEaykaFtIER7kW7014LNWIdHKxgmb2Nm/foaZo5QUMdMEYK0dJ+U
         ScXdHfq6nRBxhyWqfH7/InnbBD6aCAon/9fyUjOFH0Tw1F+Ir7I1tQeHajUQRMH9l0AL
         3EvgC9yhvXIIzdww9w4QvqcPJXF9Q+Q1pzpounf/9qzwlWlNSAd3PQfH3V95lU6rHans
         Z9MdihueBNENGMk3IJgib1mcKY4cWBXEVI1tR0b/Ej01+M+q/IcPfgE8yiaDmA5v55L5
         j+7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sei9xn8jNR+0QlXiK9dHCiA6Kn2kId3gLUGBis//wJg=;
        b=Ti1dW/FiqFz1gRUcBbVntRWlU9HKrPZOVethw6Xv2MVgZv7wW9/j/DFipce2iti+ox
         olRMA4oRke+8T40fG3SieLdKAQoTkil2BMNarvGJzEzxbHt9faY8UwWpq7x8kcvIJSxP
         vhgFPjdChM6BXlzcIo4lSC4jy30CsFrBVU+E4HYjjzYQxZUfXydwF/shzXNk21OwPCH4
         P0wUHa5l/97URxx/bfS4kAAJJXEQCmr147rkrjXuM5ghKlcgFnD5ndRuhWkXq0+O6CfH
         Yd/PsYRKMScBHpbaPNI9GA2Oo6vZepAD9gXYswMF/7p6PQsYEsKz9L5dLv2R499a8vj+
         F65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sei9xn8jNR+0QlXiK9dHCiA6Kn2kId3gLUGBis//wJg=;
        b=ePCnnSxi9+5xYdbX6aQ7Z5CpMupldrKM9e7rzQ3o+yQcKypEHx0Oop2I98+n/r4809
         W4xX+ipowm/CDh764o4RnqLSrMBO6JnBEDtXFNZ1RDW1GfdB5+N0kK+9b2AQw4U9L8Ke
         i+HwdOW0EBdMuDNYopqxCn681ZSizaIgsEFlxz66xNlOgE9oHk+G3XV0RGf5YDYmXgzH
         mCpLHoop70Ny0qaJwjv8+KqhMo9ZuUXVPVDeghB78Mar4XfV0vgmdHSmoD0ibQHR6qs/
         Ay3Bc4rbtSkvYJ4dtfUTBucWm6kamezQthXGP6WzTb2kgRu2hQxyoK7wujjr7CFC6Sd2
         8+dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDMziszsmgKxaMYWCVJBQmzw2uf0l41IpX9sNADSMqLXDuZJTV
	YiwB2XKbo8pZKxbKStCIc50=
X-Google-Smtp-Source: APXvYqz4Rx0sk3bOJBn9jPOXHmQA/qldAY2rquHULZLYlbqITD2c/cnBvZwJOMCv3maXtXW0BjypSQ==
X-Received: by 2002:a9d:6287:: with SMTP id x7mr20692023otk.359.1563971846459;
        Wed, 24 Jul 2019 05:37:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4411:: with SMTP id k17ls6007381oiw.11.gmail; Wed, 24
 Jul 2019 05:37:26 -0700 (PDT)
X-Received: by 2002:aca:fd4e:: with SMTP id b75mr41626942oii.129.1563971846195;
        Wed, 24 Jul 2019 05:37:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563971846; cv=none;
        d=google.com; s=arc-20160816;
        b=JDh/8WjJb06uabuHdaYPvudQ5GEV+0xsPX1unG7NIBmr6xuOynCC15KgjD88fGQnKG
         bshqm0w50dko26wolAvdKTFyMY3/oLV4u13R7c/gPSB9XGxpH62kckKL74cuZk7NF8k9
         WGjZaHzll8jbsWnJaWQpYxrysNAG2XKj7+8INHfrnKP4Zs0SclQIKGj4A6WVceRbD0Fl
         s9YZRbz60N/hmQvy2wBnUEX0zmeM8EeJt0fZrQa6OIskDZ1WjLi7rZV2hi0X2UVFGRaM
         SWfXNECUVFaY0tYAhpDpfFYUXiTi0cnwUqROllgnBna6vEJNHPGqlroagcJ3o9gl1UJF
         V4Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ztYe0ZOWcwXYrZFPC2kuJdfRykLtRyb64TOooc9bTgI=;
        b=i+4YRrG8Ksaa7iNeE2cZ2K67nAZ011Da0Nd/LB/XiLOszKJHSxz7lApyaUnvieliWz
         39IlD2oBxtg6e4GRO7qsK9XhPu2qz1OLHPvdQLkN9rn5AOQNOz9zwbv+fyDQbzRJmk37
         a2VIrpVvl+5z9NF7/wXp1E2NWpNYuJXrSZYmA84AiTVdm62c24jbZz0fw2kh9Y9sPmDa
         jVmJzcRh2G/88/XUoKqbhHSXrN2piEEtVHGCKholal5MOHTgb/wLCZdOp+KxzS6mIlqp
         KcoAAzkurOve9Jm7ptFxnsgyO43q0fgWSNaAA/xuwKWrqZKZ9OeWdOiakEwOIyZFR83j
         1PlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id n27si2266569otj.1.2019.07.24.05.37.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 05:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DA66730832C8;
	Wed, 24 Jul 2019 12:37:24 +0000 (UTC)
Received: from treble (ovpn-122-90.rdu2.redhat.com [10.10.122.90])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6A901001281;
	Wed, 24 Jul 2019 12:37:23 +0000 (UTC)
Date: Wed, 24 Jul 2019 07:37:22 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724123722.xtskgjigzr22qc52@treble>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Wed, 24 Jul 2019 12:37:25 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jul 24, 2019 at 09:47:32AM +0200, Peter Zijlstra wrote:
> On Tue, Jul 23, 2019 at 09:43:24PM -0500, Josh Poimboeuf wrote:
> > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > 
> > >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
> > 
> > Looking at this one, I think I agree with objtool.
> > 
> > PeterZ, Linus, I know y'all discussed this code a few months ago.
> > 
> > __copy_from_user() already does a CLAC in its error path.  So isn't the
> > user_access_end() redundant for the __copy_from_user() error path?
> 
> Hmm, is this a result of your c705cecc8431 ("objtool: Track original function across branches") ?
> 
> I'm thinking it might've 'overlooked' the CLAC in the error path before
> (because it didn't have a related function) and now it sees it and
> worries about it.

Yeah, I think so.

> Then again, I'm not seeing this warning on my GCC builds; so what's
> happening?

Good question...

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724123722.xtskgjigzr22qc52%40treble.
