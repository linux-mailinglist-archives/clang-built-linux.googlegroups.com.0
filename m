Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBA7L3T5QKGQETVN7IMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E007B2814BF
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 16:13:24 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id h9sf867351qvr.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 07:13:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601648004; cv=pass;
        d=google.com; s=arc-20160816;
        b=zLJcNU9WUKgrjCi5teBDLiDgaLOOtxuIQZrDe9K08LAUbYwC5LVV2LmsIpPH3ijvv5
         3L9uZPdu7JTA2mMfrGBFmbFkkHX+DLi/nKHXNdKi+fkhmVlMYfTVj6y/Wpy24tGb5hJO
         xMnbeX+ra7yxyMi6NoqwCcPMof3uGjT60087yOlG0KxSRWfR6T+NUfnjbYiC7/+lQVZv
         Dp69QFOjFC1/TseWFOX8aKjKecEEsZ8QVHJ2k75ExnqIqtmaV01VUzeGAFib0pxC0699
         PsBNBU7lDRztxZ+htheRDGcSLxOMRf8qUAnFRgY3c/bbi74WR66u/na7PRJDdxYFw6pK
         OarA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6/u0ypNMiJMkWoVw/H8FIJiKeQdfQ1g7XyJHhPYJKTk=;
        b=XfqgEXpvOjl5YIgtpFebkBxHuHkmKYOabAXwVRT8228+o0kbR49X4p3aoZ3WXWkZKS
         8D6nmvZHQogFzdDjbWy30mrRFGh412RLbEdO1POFk1sB0UP2/EcEQh9fqzx+DwdFVMFV
         ec/wCieDPEqzBWum9+3FNtz8mWInca8ytVa+3fc057pHTdsa63kfrpP73xAHxarLHoSk
         7b1hzLD6ZLPZimW6VK0DQL3pnaWgcXtXVmyUNwEhRBBrYlSI18CBVBTAALOnxS/dlazN
         h7PdQ3bOcitzaH5cRfjQP4LgYqGl68q0++7f0ZqdSnW41v8EhOMGTAP6JCHbg0VvuVbi
         yyqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=b+3b8K7u;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6/u0ypNMiJMkWoVw/H8FIJiKeQdfQ1g7XyJHhPYJKTk=;
        b=hX03JZ+SDvt6JTScqMIt0olL/0p4g84eCP63r6xV42rRYXRiHlQuTLQaa+M0I/UeuF
         EB926Bg7X2H9WPQXXTpJXGcbH4Nx0ER8f4FzkbZHuTUJmm15wsImHkRST/ea1n3cTR3m
         kAOpHlJwzDUa5wjU1SLFgTNFrDUbwoeDd8L66TVjbupaYD60/tzdv9sCapphEafUOA4W
         jXxzsrsyUbR1whyTVGtCMYlsp6x3cSXHUAkObg7QAFiZN2Z7WhR2UFC68BeQOCIPj5FS
         hJxK3bRpli1dYQfGS0XAheDp5n90TIomRLgtbqPG3+P8xPvRhhXKnOR+lND0wT+rlcPT
         jrhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6/u0ypNMiJMkWoVw/H8FIJiKeQdfQ1g7XyJHhPYJKTk=;
        b=CGTwj01dvcQhgVEUU6pa5oE83Xowg56LUnC96+LLqtUlySSTHxA/VDgM9jlvV8Y8at
         0OeTNTLbDV7ibQfSnrR6dI81UnLUwVqWNsZVt1I10gZj2DyQbg0QccanJ3Dndn2zm4ns
         qZTo1rB/DqCTab5eh3GQIQlCiXMP2cwpffpEY0B0iMNOgwFS+Y2uI+wn11MFKL5BhHiw
         dxvMtG174Pd5gU1Sczbx4nr0FcE8y1bh4gGcoeeSSLMD6G5dx81buuK9MxZ9yz8jkcKW
         yKT2eV8KHocT8F5kDbsFQVMLiMV4coForgpaeHkQTc3wo4RGhbb/UH8P4Ky+hDWkD5JF
         XdzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53216m6HHTq8aj/z9b6wYWkb7VD+P7dzVLBcgb+/EhFggNsrm7zB
	pfOAyV4pCyrkELVjeZRYDWk=
X-Google-Smtp-Source: ABdhPJwamsgjPicFSb8PjVWntqyzktE9X/p/Mmr+jkuKrqywWWahCfBULmpgEMuTxpkgwp5yet71OQ==
X-Received: by 2002:ad4:4527:: with SMTP id l7mr2446325qvu.2.1601648003627;
        Fri, 02 Oct 2020 07:13:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:cc8:: with SMTP id 191ls727530qkm.11.gmail; Fri, 02 Oct
 2020 07:13:23 -0700 (PDT)
X-Received: by 2002:a37:a781:: with SMTP id q123mr2351503qke.436.1601648003139;
        Fri, 02 Oct 2020 07:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601648003; cv=none;
        d=google.com; s=arc-20160816;
        b=dXg7B2L5uk3utPUIKCen2Poj23QTUj7ECEBa4YCEBNfx9WD821Z6Glav1IukKhthzj
         bMgXTg4qtDOTkjso70ne/0d0S/tFHTB7X64y4b6KSgsPAYsO2OsrgMVim4jdHLmTIt2r
         9isjYsoP6od0ncqNOOvI4244IyJP/r4u8wXmWR71pNP3tl4j1DQ8z/JXh69+8i28/pHr
         0cfmsKE2j0qbV9IppkxwlkzTIGchCYBFsW2iHCwoc6VrooV9M7r1Ze8WsreCn2qxvOCh
         DDpAqdpzLRNpYImcfHg16i86qalwPjGGqQcLoWygmrvnTxPiOJduCIHKsPK104n3ZDys
         BhxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T8R1XgQI7k4cK5q1LMAze0lbj0we9wkSuLhijnQjdY4=;
        b=qYbH/iMi5vDRXFV/MRSEbN1qcjP72yNfEHfYcaN0uzSQd/gC0MYyy1rHWTsiJ9y5oQ
         cQ3nWERSQx5Pxj9cIBqQQ/FbwVJLEoCYD/P5ldY0eWuHBmtZAlktV8S069kBqlsqC2Nr
         OcUsjTVNnIyTSgr7GvzwZM07X7gsjdfrDRtM6FHHuuomP0r5+awV3wKXaeNOps9Im1bg
         zMyYY/dv6EhLdOJSvoPmqnyhNScN1XySF9yL6yXqBwHTRrLC/2SjA5tCVuQqXRSQjSQE
         HnKQ2OoGPUmNwUL6G5y1LxwFWUbQvDcaPWLYrrKyI6w6Ii0cbyK0BUh3wDP1FJH5xSj4
         ueug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=b+3b8K7u;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id k6si112456qkg.1.2020.10.02.07.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 07:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-KaOFE74rOgejG5g4BEKn6g-1; Fri, 02 Oct 2020 10:13:18 -0400
X-MC-Unique: KaOFE74rOgejG5g4BEKn6g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C952801ADA;
	Fri,  2 Oct 2020 14:13:16 +0000 (UTC)
Received: from treble (ovpn-114-202.rdu2.redhat.com [10.10.114.202])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3550E81C5B;
	Fri,  2 Oct 2020 14:13:07 +0000 (UTC)
Date: Fri, 2 Oct 2020 09:13:03 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Miroslav Benes <mbenes@suse.cz>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, jthierry@redhat.com
Subject: Re: [PATCH v4 04/29] objtool: Add a pass for generating __mcount_loc
Message-ID: <20201002141303.hyl72to37wudoi66@treble>
References: <20200929214631.3516445-1-samitolvanen@google.com>
 <20200929214631.3516445-5-samitolvanen@google.com>
 <alpine.LSU.2.21.2010011504340.6689@pobox.suse.cz>
 <20201001133612.GQ2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201001133612.GQ2628@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=b+3b8K7u;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Thu, Oct 01, 2020 at 03:36:12PM +0200, Peter Zijlstra wrote:
> On Thu, Oct 01, 2020 at 03:17:07PM +0200, Miroslav Benes wrote:
> 
> > I also wonder about making 'mcount' command separate from 'check'. Similar 
> > to what is 'orc' now. But that could be done later.
> 
> I'm not convinced more commands make sense. That only begets us the
> problem of having to run multiple commands.

Agreed, it gets hairy when we need to combine things.  I think "orc" as
a separate subcommand was a mistake.

We should change to something like

  objtool run [--check] [--orc] [--mcount]
  objtool dump [--orc] [--mcount]

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002141303.hyl72to37wudoi66%40treble.
