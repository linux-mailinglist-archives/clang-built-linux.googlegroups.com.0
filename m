Return-Path: <clang-built-linux+bncBCILLLGERUHBB24V4P4AKGQE3UTGTUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BD23422A30F
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:25:32 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id o34sf2771419pgm.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 16:25:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595460331; cv=pass;
        d=google.com; s=arc-20160816;
        b=ppBR/TctMXOrxk+VT9zNZkt0Fu43N6wYTTmb1Qy4AhzzGB3t3sOUsB1S6aywKtWe8p
         EaKO7b/11SYgjABRDal5rB/uOir2o9ktLIyW23URsnbFBozwdkT5gf9YOWsSCUuAwPUs
         ZY+icu9UiehWXoJc9EZ6O/cvbCU7bmH7HALyAhLohU9MAvkMVrBWZqxeVWfpWiUd59PK
         tr6yYd3QjY2Nsxogelcc4LjmxjMH4nEoAPFuQxVjPgYxcBxKlw8cuPouiTwTIHYNhBVN
         pg5tvCLiCuS9PMbojkmJ3rFwhwnlxrUw4kINSzD9tgcIoagaKB2w0FJ0OiG8Fpl7SwnU
         Z57A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CuIhgsrGWNb3SlvGJWp5YYi5QYqhsLpztahHc73rQbE=;
        b=rlx4rERN6EWr9OeIN9qsPR7or3d2/V7HeiXj+ogVY4qCUdy8EYODLw380Pck+JSe25
         vgP8fQ0OdCwUBcwxenPQS+fAUFaG7Bb6rT4AFRKr/j2mC9XhHj+f3KMHSr7590w+hiiT
         ERyrYbiUQjSK7JuU+FQO3GqQ2tlIq0RFbxVy/zY/p87VdMJf0ud+i0+odwGHg0lhSQJl
         Yl2fA+C8cwB41ZfsmlsGgPvBj5dWQFC8uwvFDPE5gpBakCJpN5cukfTGTqTfB4jF6GLR
         WAozGxjjI8dsFOJgmiqIjRCHInQSG7Kpd3IZWyfMSSpfZPDqUmcYaUCDpwUgnytWLou2
         Px6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.222.68 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CuIhgsrGWNb3SlvGJWp5YYi5QYqhsLpztahHc73rQbE=;
        b=LD6+4BzH7TBSGJoDKFMyHuZAvWtEu5duYtLmfqzZ3VmjUdyjOJnvT5WeDCHZ1UB5tx
         NUiaAdWxDCd0TcmX5IOdQkIxyNXFZGoLHn916bJR2dXu2kJ1vCWl9fgbvRBHIUES/xGC
         pWTQzekcNbAL8eCSuvqEeiwbR7xvJ/qcwpCzc1aJIda6S2KlQ63s7SCgGJRfrk11/5of
         j6so9Hi9XCZdFjJYLA8pe5Dij/NMZ8OZ3gC8WOHrzGRrpWZSXJOOiJ204k0h1J2zt/qn
         hKbFbb+Qf6QJg/GaPoSjlOBvLOCp3aA6XGMErn4kOiQkpmRWMaZNhnl4qJ0Ijy8HtCaP
         oHCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CuIhgsrGWNb3SlvGJWp5YYi5QYqhsLpztahHc73rQbE=;
        b=tdSTjclVCsvDQQBuQdludKMDjRFHslyuvvhpPLZFP5A0IAkZ9KdhF9FzBeITr/qGlO
         A2WN2Pw1DTCo7LNEEafEC5/ElxQ57Hl0q23DqzO4+mg1C9JhlD5J9GHUHhBG2UcW+i8F
         E1otm9/qeBJWg2W7BI29BAGrEiWA1CnDmg+oKnvAdycD4yxhh3Dx0481b30/N0c5bNhT
         JH9d/wqGxdSJUapIyx0if5oSAN7sKW82BeRfQ6ksbFyew4coJfXJw91YRqyzgFd4bqjC
         e4bDqS8O3Pq0tvxZKKjd9AUcax0uGU0PSUmNiAbxAv9V4WXpJNFrQHQzBSHkOiHrk+Oz
         QNOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533d/K2qi1V7VDnhR7TKMerNxcjAp89A3OH9LLUR6VJk2t0KBRXn
	bmCs25EBOzuq/zyT/poXGCY=
X-Google-Smtp-Source: ABdhPJyxu4WPTGynO41qCwAT9mAounobIF4K04hLqp81LWW8zSSFtRRwnx0qUArF6aeBIKvMbjHDnQ==
X-Received: by 2002:a17:902:7086:: with SMTP id z6mr1502766plk.4.1595460331211;
        Wed, 22 Jul 2020 16:25:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls1055084pgo.9.gmail; Wed, 22 Jul
 2020 16:25:30 -0700 (PDT)
X-Received: by 2002:a63:fc01:: with SMTP id j1mr1924183pgi.0.1595460330788;
        Wed, 22 Jul 2020 16:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595460330; cv=none;
        d=google.com; s=arc-20160816;
        b=Oxa/VXXrBFxeDT2vd3B4XbuxpmtNfLoryNoYy2pVpIYwHZsjYcTWfUwkIADoEtOkM6
         XfDO2rTis2ep33uhpMBoS6A0NMRk4c6rt8Logcx0y9QcTpSrtKz9NWIXg8EpVGVM/scY
         80dbrPdlSle4Op2Xc5V4ghQp7hIdqntPIDKVVJpxMqmZeT7LdtYQF6tiG67BNUVKZQIk
         x/J20OOcAPGb8DBc4LM/jUAnuITk6r96ANTMlMgvnWVMsJ5QOQE6/mJToE8qLg+nV5V0
         SpdkvQbR/VZrilU8EYM7aubF93ACgmYQjSDcess5k1MgOBg5tW0JzN3wQcN9dkiM1/P+
         pnQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=u16+n9WUBgulDsvWWrvJlcH01cdO9g6pus/V2E/LhAg=;
        b=oO8mgDvsWGES37/3VSf6c0yBFElYqtYCUHLmrIIL050l/jntNeQ1N08/El8RiDD0sg
         1/nua9UfJ+noy93eqvoXB7BIuyZy/DI7Eg+da98LOgweFQ+Ait/gHGOINZcCw1hT6JjB
         Q0AalCC7ynQLcnb8ZFV/N+X/hXonkcYcnJmy4bYoFi3Qf4sY7TbUysY0eZ2N2Qui4TQJ
         L1XuqMET/25rdzXzHjmQlpDW8qAuzu3ZKOCQL5CgZrjpFGm9gtzIMgGmtECfR5fXfuZ+
         rbRDwVWVlow+Yq+1OvpWut8L1RVrk7cv/PRhYQMry5vSut68Y3i8dKHKVZ7qDT1/5U0/
         C6Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.222.68 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com. [209.85.222.68])
        by gmr-mx.google.com with ESMTPS id d5si59389pjj.1.2020.07.22.16.25.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 16:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.222.68 as permitted sender) client-ip=209.85.222.68;
Received: by mail-ua1-f68.google.com with SMTP id p6so1199520uaq.12
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 16:25:30 -0700 (PDT)
X-Received: by 2002:ab0:7551:: with SMTP id k17mr2018238uaq.102.1595460330003;
        Wed, 22 Jul 2020 16:25:30 -0700 (PDT)
Received: from google.com (239.145.196.35.bc.googleusercontent.com. [35.196.145.239])
        by smtp.gmail.com with ESMTPSA id n2sm164181vsa.11.2020.07.22.16.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 16:25:28 -0700 (PDT)
Date: Wed, 22 Jul 2020 23:25:27 +0000
From: Dennis Zhou <dennis@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Dennis Zhou <dennis@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 00/11] i386 Clang support
Message-ID: <20200722232527.GA1156429@google.com>
References: <20200720204925.3654302-1-ndesaulniers@google.com>
 <20200721222754.GA820494@google.com>
 <87blk7ywp1.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87blk7ywp1.fsf@nanos.tec.linutronix.de>
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.222.68 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 23, 2020 at 01:08:42AM +0200, Thomas Gleixner wrote:
> Dennis Zhou <dennis@kernel.org> writes:
> > On Mon, Jul 20, 2020 at 01:49:14PM -0700, Nick Desaulniers wrote:
> >> Resend of Brian's v2 with Acks from Peter and Linus collected, as well
> >> as the final patch (mine) added. The commit of the final patch discusses
> >> some of the architectural differences between GCC and Clang, and the
> >> kernels tickling of this difference for i386, which necessitated these
> >> patches.
> >> 
> >> Brian Gerst (10):
> >>   x86/percpu: Introduce size abstraction macros
> >>   x86/percpu: Clean up percpu_to_op()
> >>   x86/percpu: Clean up percpu_from_op()
> >>   x86/percpu: Clean up percpu_add_op()
> >>   x86/percpu: Remove "e" constraint from XADD
> >>   x86/percpu: Clean up percpu_add_return_op()
> >>   x86/percpu: Clean up percpu_xchg_op()
> >>   x86/percpu: Clean up percpu_cmpxchg_op()
> >>   x86/percpu: Clean up percpu_stable_op()
> >>   x86/percpu: Remove unused PER_CPU() macro
> >> 
> >> Nick Desaulniers (1):
> >>   x86: support i386 with Clang
> >> 
> >>  arch/x86/include/asm/percpu.h  | 510 +++++++++++----------------------
> >>  arch/x86/include/asm/uaccess.h |   4 +-
> >>  2 files changed, 175 insertions(+), 339 deletions(-)
> >> 
> >> -- 
> >> 2.28.0.rc0.105.gf9edc3c819-goog
> >> 
> >
> > This looks great to me! I applied it to for-5.9.
> 
> You applied it? I'm not aware that you're maintaining x86 nowadays.
> 
> Thanks,
> 
>         tglx

I'm sorry I overstepped. I've dropped them. Please take them with my
ack.

Thanks,
Dennis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722232527.GA1156429%40google.com.
