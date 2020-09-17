Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBPWAR75QKGQEQFYDGRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5D926E80A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 00:16:31 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id 6sf1621835oix.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 15:16:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600380990; cv=pass;
        d=google.com; s=arc-20160816;
        b=qOKq4uxZUYatAHvQQEBrUeIwcFPXSwn5sPd4hk3el7CEgrWnfiYj7HDiYHiGUABf71
         wU0PGCh8EE75KiJd4nsNZb9MKzMcfV5MkfBj3P/1A9yynDTq0Qgri5jxk/lP/YQeT0hy
         asVb+B/+mG0mQCcUerNeQOu3pZEXxKv0oGvugUlVsOTgjL/l9BviMLnZono5NZJbo3I4
         JG1Bzgt36MH5k4vgaJMx0iRA85e64eE++PeN3Pbjam1k6M0oo8OKlGMNzwfxNj/geXL+
         vYm5/KNbXZvgWp68UN63i7UGKP497Q9TeDkTDxotaNI+mGEqmqc4Fzn6SKUuWriP6tSU
         HipQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XQ0GlwF4sFWB8B74ha21ZldLAaS/echVoMQM7qMSZo0=;
        b=ssXLte1TYBaHMIeC0HQM2AtcqfGR9YjL5aUkB1TpKKPiBjtFk7KFuiPJ1ONhGKDZzY
         9XmQzO1xK3htxnGvG5q/dTj9MebWyl/fMQE4bUCKtSZnWgfOdk3woWREjH0Ftz5eLuJJ
         ZtNhz/BzJ++8lmUcNgNf758rVRe27V4q8pQlE7ymhwDjiN+H2dseN08frUllmdTWh5Db
         LTUtcFOvXAR/nl8x9QdArzEqA8Xty84SkVGY2h9SySkXdxJMoCbXoTeCHlAZpEuXMZsa
         WK4LrDOuvNTMvKCgvGWlto8xfk/rmtf4EIq5IreuwyJ2O34Z7goXvMjiCzt1xyC1f7MJ
         XMhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VXEXI4Pn;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XQ0GlwF4sFWB8B74ha21ZldLAaS/echVoMQM7qMSZo0=;
        b=AMa9jWvyQK/JXOoD7BjI6YSwsZVxXRe6gJ+iQX4OrVTUsnxM1n+5a+bGRdZKByjLsv
         OzPNQOwTLfSj/GHikrPBx9K+R3HprRVWUE09tosVdk+oZ462hx7nKEx4m6lQusiXIx41
         j940dtKeIbUn0WJyu3cR6vGsjibpANv2MT207kOweMRGt4l8IajL0D1Bm2EZ5gPStSD9
         f6QYyktlIYMJdeIUFY/BSilj+whpbIp7DBp7fa18ADEtLquI2Bg4hVc+dWHXzDeMaGeT
         Cp+1I9aF0oerglKe1sfBZCsCr3YsUbJ7xcIwaQ+FuU9nnCmG//6cLawGacVt7OpaQGGf
         JuuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XQ0GlwF4sFWB8B74ha21ZldLAaS/echVoMQM7qMSZo0=;
        b=ACKBF5zn2c0MTBwnTlxkyd/AJrU9ybuVlQo2HGRRwCrp5t2baD5BXa7kkjCdUPM8Lj
         Cumnr+AYw7trfsj6hTnPzttTv9OtS2Lc5RvrvehTo2ARSkooJoiTuzFgF++PEbGYQPHl
         qwlCYWhYoPi8V9vw/JjgdG3Caw0NzACeHUiC9HbOfcZL7/VpWcKL1ZYbUOe9tye2jS/f
         f8wdZm+Be/+BSr+NtZGM1ul8MTl6I9pCfUM9fuN/8AyPmeeFLHSY21YIffbMdip3M8/o
         1WwVI8Z6ELWqejIU+Ww1imNFbS3ZqPEqcZWT1PoceifZhrv3sz59BILMvAMGll6Mqomk
         W3MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Yf+4xSD5XfIR4XjdS/tshppSUN1rW53/HVehblKmQAgxchgnP
	H2ttLEY2FRSF6yANewRc0EA=
X-Google-Smtp-Source: ABdhPJyxDRHlHBBXxaX7LUV74MJdffUjCG1UpAZzZC/9KHekVp6/DCK8uW3RwavTC9kXYyXChA8Y6Q==
X-Received: by 2002:a9d:d51:: with SMTP id 75mr7728195oti.229.1600380990751;
        Thu, 17 Sep 2020 15:16:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49c9:: with SMTP id w192ls828050oia.5.gmail; Thu, 17 Sep
 2020 15:16:30 -0700 (PDT)
X-Received: by 2002:aca:413:: with SMTP id 19mr7895379oie.149.1600380990351;
        Thu, 17 Sep 2020 15:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600380990; cv=none;
        d=google.com; s=arc-20160816;
        b=FjyjpXeRqHr/07bthEjgSlUjdP+2xKzMEB0Vzkk8rxrBdL6NgjIzvjO13S24U0/gVq
         PaMmlcZi9IeLiOL7DD4JGF3VA9wmE8N2D9dt4eKSKVRlQdoguquTIic5W7Q+Dc8KG/UV
         PekKms/2yyWVvJvJ/sif+CgBCLPoH/qXxwHp5m3pQ3GPu276O2gZUMa9PzjGr5onxdH+
         xuGwDPRPLmw2KRtRx6S88DTLvDcmymSzv5lhHrAYuDSvXuljQap6/oA10fFG8+M66n8G
         T8L/iU1aAmnhBiUxWziigxkzJRYsCuJH5InUsy8843NSFMbbNKYfOSVPMnH6cb+Yc/pj
         tA/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ziYgXqbocOD7j0uxO/EAGepHJEfgOW1DX4mZklNm150=;
        b=ODv9ab1ssMOt4YNPo1DYHady+lTbX9VAnE2y4srehuQFtgpmi5/IcN6UlBJv6m9L7f
         SbUlQV4Mnl7bcPNStFruWTHXJRjvg4C+SNA6dtxERNUj5juo2LYov+vJspUKNy+dc4NO
         qY6it4tIXZ8Leo1/7y7AUUUK2o1tYJJk1bWlNZXZlTdn2qR27DjTqiS+KQoG5oLIwAsg
         ed1zn8318ts23IflqaD+MjT+wM1hhIBo94U4vuiY4J/zOqmnOYJ3gDEYA6sNTrtyNZVF
         b0JAM763dIZIqnk1LscFTr17W/YPru+OzaGImRu8qC79IyDw7A5Zo1JrLmOK7UYAiGRa
         pbiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VXEXI4Pn;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d1si83843oom.0.2020.09.17.15.16.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 15:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-E3V8NLmqPlSNE6AuXh-rRQ-1; Thu, 17 Sep 2020 18:16:26 -0400
X-MC-Unique: E3V8NLmqPlSNE6AuXh-rRQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 152641008558;
	Thu, 17 Sep 2020 22:16:24 +0000 (UTC)
Received: from treble (ovpn-112-136.rdu2.redhat.com [10.10.112.136])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87C5855761;
	Thu, 17 Sep 2020 22:16:22 +0000 (UTC)
Date: Thu, 17 Sep 2020 17:16:20 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>, Marco Elver <elver@google.com>,
	Philip Li <philip.li@intel.com>, Borislav Petkov <bp@alien8.de>,
	kasan-dev@googlegroups.com, x86@kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] objtool: ignore unreachable trap after call to noreturn
 functions
Message-ID: <20200917221620.n4vavakienaqvqvi@treble>
References: <20200917084905.1647262-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200917084905.1647262-1-ilie.halip@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VXEXI4Pn;
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

On Thu, Sep 17, 2020 at 11:49:04AM +0300, Ilie Halip wrote:
> With CONFIG_UBSAN_TRAP enabled, the compiler may insert a trap instruction
> after a call to a noreturn function. In this case, objtool warns that the
> ud2 instruction is unreachable.
> 
> objtool silences similar warnings (trap after dead end instructions), so
> expand that check to include dead end functions.
> 
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Rong Chen <rong.a.chen@intel.com>
> Cc: Marco Elver <elver@google.com>
> Cc: Philip Li <philip.li@intel.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: kasan-dev@googlegroups.com
> Cc: x86@kernel.org
> Cc: clang-built-linux@googlegroups.com
> BugLink: https://github.com/ClangBuiltLinux/linux/issues/1148
> Link: https://lore.kernel.org/lkml/CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

The patch looks good to me.  Which versions of Clang do the trap after
noreturn call?  It would be good to have that in the commit message.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917221620.n4vavakienaqvqvi%40treble.
