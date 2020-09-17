Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZW2R35QKGQETQ6HCDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F33F26E3FA
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 20:39:35 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x11sf1854635pll.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 11:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600367974; cv=pass;
        d=google.com; s=arc-20160816;
        b=bpLchzi5J+WWCFuixFU7dQS8MVqEYSRU46rK6BZPaIL/qm2z6KjjCvr+8vaYLTjKKM
         z9lnh+WSxNTxQmTgvAunDHgF4ZGZ5fC2sqDQlHYnlwS3CxwVlMFqAtQE+zmAoVb2hhVm
         9/ltIoI3WgSkN0PeWIKNAxX4Gcm6R+RAibQK5p0IU2HuHTVUv2jfGeRtuvmmy+TYHtmb
         EZ5CPkShp+rOsY5ON+dLaHaV9YYFNg09MckTW3fL4CjwkYu9wwjwYfv1yUibMw69uETU
         YZ3nOYal8T7AqCBif6sJlqvFRSpS1mEMBbWUYIlRm1C2cYKUsC3jTdsndfEnumCSqQQG
         2Pjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=38gP66OO1F1plFo/OLJlbpmcRB8qwx287PcZCUWdfsQ=;
        b=IR7B7xOcWxmcvy9LTN4EMmTNPpx4IHxeEZ4eOx2Kc2bCvXaUOTSOnG/3sWfJ/eNfZX
         EwAmO7CMJRViiCMvE2Q7sUPwd+iH+PiQ9klTloQuKBovG6+/gXPkwVmLloYuopZpmWxS
         kr80Y/Bj27Ti3TYzumTdgazebOlf/yMF5/fAgU1vzFGxzpuip41QDn2Oq36c8CbX02py
         vIct2tVBD5yGrxcKhFpeZCoyrqiTYowCbgGtDMxyIXxqtjHuRNA0OCEEkCORJHr+tG0j
         rYexOAJKruVesT+pn/tPzqwQ6/IBZJyOSiliNg84vHedzeCuLiqwGc1fRE+W5lG22lW+
         fovw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JGBdEJK9;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=38gP66OO1F1plFo/OLJlbpmcRB8qwx287PcZCUWdfsQ=;
        b=qL4BeIHGdZuOT26cDC2Xw5xORV+vnPtxLFc/cIacpHgLCH3By02u5Nf4D9s8k7ycc0
         ikQkADicqCkbwWcDJw4zR1nRGw5d+ek6O+4Zc2T0FdzY6nq5hIPaHVo00fGjZIHP7i1f
         jIEy8f7xWO2iG/4qz8sUvv8M1Z5iEyk96tbE0KeIEnKVtYOsJ36OGThFJKFefpNPUkEY
         D4I5yvZGzJGgPWKmFKIHa7Hb8igfCJHs087WfDfQLZLvwML+vcTvd0Q/D/cXIkDA5i1X
         tn0NdjDBdg1c6rKUG6d2ONwpjaTJDEnZgm30z1JHwK/TKlLmCmrJkwSwJ7NIZmXLhqNy
         Tj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=38gP66OO1F1plFo/OLJlbpmcRB8qwx287PcZCUWdfsQ=;
        b=fhgwFelrEr9sFQWbO8bzaJIDVbeh3jExgnq61iU6fZuDoxW52i//hEKA18hLbrt+P9
         fgtJQtWcO1cD78+S43dA10H/KVy2bBLzOJmZn+d433FTgYn5NNcee4LTEVDBCot7Ttsz
         dNJb/LUwV7nWQ3yAez2eX7nZ4m++sDfPdKyI3l03c0aczrkDeXZfelN2cSsp4iqIjGHg
         2JBRnUT5T9xepGPTZOrS7gTyhKoG9yjO5/62mMy6o7setX2uCL2MBw0c0cU5UFsLg1kf
         mcLhVKJou/LUXS/yROr8wYXQvptFGbzrjs9EnfEcElRU2EWq/Qq7xWvxk2ER798cP4EK
         TbZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kM2oV6VTF6BTUALE5iAT6g2DNUmZI4LNUJWeM5pmSHe5RnK1m
	XZjCoy5942cRyZk2PHQyFRY=
X-Google-Smtp-Source: ABdhPJySf7kvKeQWxd61UhKehg44X04vTvckHo0/kkrABpBjcbXmyqaAnos9z7kvQnTFiER0glakjA==
X-Received: by 2002:a05:6a00:792:b029:13c:1611:652d with SMTP id g18-20020a056a000792b029013c1611652dmr28198070pfu.13.1600367974328;
        Thu, 17 Sep 2020 11:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls1446432plt.7.gmail; Thu, 17
 Sep 2020 11:39:33 -0700 (PDT)
X-Received: by 2002:a17:90a:6a0d:: with SMTP id t13mr10449480pjj.208.1600367973800;
        Thu, 17 Sep 2020 11:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600367973; cv=none;
        d=google.com; s=arc-20160816;
        b=U4r+R8nYS6m9gabfyeqnc1HdGNByeuuplxgMdjeXfj3W5zvJ3j9+1pxFwI3G4HdbwM
         eHSJJ+vSiSvD5LGoxLoRXueWT9X4ioNufld8VlUb6tmXR2sMVm+PBOr/tnkvGQF89hZ5
         2TsS5gE4IYCpA49YbO5EyPD6ZLe4vlREc2VbhZky8qLamU6FbTKxBRGq+AVlqQbYWXKi
         fn3K8WWq3lakQfV1dNzuRJrQ/z62EvZ0PqH5sO8jSuzrHpZSZclnePgRZmWBs4ey41d0
         Hgn6ihzamU1dgSrG3krbFtLp+pW9JogCkjCefI2+0PB28JcVriYHzwnTyHsgR7xuURt6
         ULLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=s8/ARKLQp0M0HyDLCLKuWSzwoxVAsS/APQ6NuiD3MNU=;
        b=FHhYJRbooqoFLfY1aXQ8UoPu0RuMR7ZMN43lHD0HSsCD08xwi5G+clUj7z3luytu/M
         BZ3WyD8svYPN8X4C9QbGYTNcUSgWIpmZBRKha+5IWlsbagGJ4rSik2iThWjdKLCqIeCF
         jdCxykbZFO5BpBTxd/BSmBvWBOhHjoMKTxjoIfKpgFP09e6gIeJ7U5xC7Co9c2mA6WvN
         VrK/50Tx6Qlb1JEC5iluTHIBlv0Rmo38vrOILHcn0k43ggHeZ+3eIBr+rwXNoOU/l4JK
         EXsby6ALXbFV5c9twT3EIgOYedougQePoOrNQLyiKh5Z1+agnUu0FKga+IGFXmOgEioy
         lJ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JGBdEJK9;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id v62si57743pgv.0.2020.09.17.11.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 11:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-I6O1PZQ6O7yXfGqmLvj70w-1; Thu, 17 Sep 2020 14:39:29 -0400
X-MC-Unique: I6O1PZQ6O7yXfGqmLvj70w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CC6D10A7AE1;
	Thu, 17 Sep 2020 18:39:27 +0000 (UTC)
Received: from treble (ovpn-112-136.rdu2.redhat.com [10.10.112.136])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E159819D6C;
	Thu, 17 Sep 2020 18:39:24 +0000 (UTC)
Date: Thu, 17 Sep 2020 13:39:23 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marco Elver <elver@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Daniel Kiss <daniel.kiss@arm.com>, momchil.velikov@arm.com
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200917183923.b5b2btxt26u73fgx@treble>
References: <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net>
 <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
 <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JGBdEJK9;
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

On Wed, Sep 16, 2020 at 11:22:02AM -0700, Nick Desaulniers wrote:
> I looked into this a bit, and IIRC, the issue was that compiler
> generated functions aren't very good about keeping track of whether
> they should or should not emit framepointer setup/teardown
> prolog/epilogs.  In LLVM's IR, -fno-omit-frame-pointer gets attached
> to every function as a function level attribute.
> https://godbolt.org/z/fcn9c6 ("frame-pointer"="all").
> 
> There were some recent LLVM patches for BTI (arm64) that made some BTI
> related command line flags module level attributes, which I thought
> was interesting; I was wondering last night if -fno-omit-frame-pointer
> and maybe even the level of stack protector should be?  I guess LTO
> would complicate things; not sure it would be good to merge modules
> with different attributes; I'm not sure how that's handled today in
> LLVM.
> 
> Basically, when the compiler is synthesizing a new function
> definition, it should check whether a frame pointer should be emitted
> or not.  We could do that today by maybe scanning all other function
> definitions for the presence of "frame-pointer"="all" fn attr,
> breaking early if we find one, and emitting the frame pointer setup in
> that case.  Though I guess it's "frame-pointer"="none" otherwise, so
> maybe checking any other fn def would be fine; I don't see any C fn
> attr's that allow you to keep frame pointers or not.  What's tricky is
> that the front end flag was resolved much earlier than where this code
> gets generated, so it would need to look for traces that the flag ever
> existed, which sounds brittle on paper to me.

For code generated by the kernel at runtime, our current (x86) policy is
"always use frame pointers for non-leaf functions".

A lot of this compiler talk is over my head, but if *non-leaf* generated
functions are rare enough then it might be worth considering to just
always use frame pointers for them.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917183923.b5b2btxt26u73fgx%40treble.
