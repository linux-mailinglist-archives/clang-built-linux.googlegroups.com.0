Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBGU3477QKGQE4PWQS3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B09CA2F00DB
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 16:36:59 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id p66sf7827970ooa.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 07:36:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610206618; cv=pass;
        d=google.com; s=arc-20160816;
        b=eI3iaEegQrLkb5g+hzheH4ssvNlk7ZfP/fnskWVXHXinQSrtNwH3c8BN6voJKXnMgx
         SBOI2Q0ykr9RjGhz7wj61syE6LEO1Y+d7RSxU6NMcrhkb3AizSLOe2GM7TjIpQYsOXUv
         4clS1sRdzdkm6ueG1qExbSrwzG0U8TH6XSFL+Jhl/XHzbS0vywcEHEtNypNIj+raGEG5
         ilfKWIzRi1qqlBKN2w737h8Hz2KaldnaGDQNYnu1xuvaWCU0Ws6ir51fDlWim5QqShO/
         HoVBnX1TLkT+9/4RgqsKanJ9Z+yJ8ymDmGwqXavtyO++wOM85MgtgzlhsaADDhdoawib
         PujA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iX363SYSkjugR0Jis53cd7PCbZRvi3ZGmvW3nmwII1E=;
        b=mEJmQQdqkItvmzs00sIs1DKvaGubpeZ1TpYIVblTlsFhQCYRvcUj1FYyeKIjZl147O
         iKFgnCNEwiEtnRoHqI+LAzVDaufOoQ1w91DKgfMO4vOaQINyTMSS1TIP+W6uMvltuV5e
         WObC6u7w36FQy44K3GL58JBkOkUPK6wBDT54F2wjtOzDtb0bNKiGTT9gnRdJdWfcsP3h
         Ik1Ri7RNUk5P9hfDBQqOLGOCAn2xMTgJ9BVLrTIGbBmGGkB62YkxCGUiZLlfvHiWgDJq
         A57z9an7Zqux/W48AoLSq1k+Njo3SFRE3qpuveb97yKpkoRGcO41CA5Di2TrvVwgmYRT
         NCVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="O3mKq/U3";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iX363SYSkjugR0Jis53cd7PCbZRvi3ZGmvW3nmwII1E=;
        b=AwCD3+Kklnlbqfwa4wuczDvoKvk9QqbmzPYsPMyKe9XFg0xZi8XF6JtSr+ZZ7DMf5S
         m/ZjtLl/HEDiCKTphhTnwFXDjngE4tJXOeQVgXscx9dWI7cyBhp3vq+8qx9zTQExQKoT
         GvhaTqs8qFh7EuGBnAZZ0u8VDxfRII+n76qjDk0RYxy6K7W1rVkChcOA0qnU3EkzyjA9
         uMN44JFTm9Awl1uSsbuj50m79EDB4JZQjVw+7jfjp015L0lyWbbO7hEcIGRd5bI/0fnr
         O+TAwAFP/pjITUi692qNymJNmL1mCReL8f9T9kPbo+NKVfUvatHHaQR4EH0tJwugIjFH
         dt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iX363SYSkjugR0Jis53cd7PCbZRvi3ZGmvW3nmwII1E=;
        b=Th6OoWbR/FO3HIsqhfgU0vP15RepN3pOUPYv5K1PCvDPDkUQ/P+m4wJRIo6SKos5lS
         JMARBgOghqJaHkr8hQcE4xnYunqvSYFmkkJJQGI8NB5iVxw+zjVz2Di9QrMnx9+rrxpV
         NblRpLXuE53ne3GpyikavPxxlVUfIcXiJdL0mqqgAd9saZG+FLoJz/b5H+hVj8YewT0I
         6Wg4jvoRRsFlrg+K0RrCrcdaD6Ni33nFpsyigC1UuMq9wT8eVyVcyYLSFUT6BqSnVvEv
         NiwocaxJNcCVfAdLQlHj5yiPpZdZNySGPsBhITkcynyfVfBTHCGws4sfgRvPyTFmHGDa
         Hbbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DcyNWjMbQeDbxh9rqjUf5Yhx4i/N7QvMedLDQw+115STmwfFc
	BEnmVkM3MD6BeWpEpIVb0lk=
X-Google-Smtp-Source: ABdhPJzOi45J3cUIK1QvIyWJf3DLXx740D3kgbNb9b9/gBm3fNVSM4jJ7FXgIODLSteoT3tKw3YgIQ==
X-Received: by 2002:a9d:4795:: with SMTP id b21mr6000524otf.65.1610206618480;
        Sat, 09 Jan 2021 07:36:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12f5:: with SMTP id g108ls3805383otg.2.gmail; Sat, 09
 Jan 2021 07:36:58 -0800 (PST)
X-Received: by 2002:a9d:774a:: with SMTP id t10mr6063381otl.190.1610206618105;
        Sat, 09 Jan 2021 07:36:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610206618; cv=none;
        d=google.com; s=arc-20160816;
        b=PQsbBCSaKEMj3mmYN6fWK6+Nv24R++5+wnAYN42g1uTiqb+CL/VpQhOpC6QAvPPxC9
         qOH6q4gwW8GXiU5V8wygQaadBFdLi+QJz7d2egryEO3FIeX+yrQj+G3TfZ9DRFsj+iaB
         K3BpxT+V0ZsrrZ0uonvzQZ+LLChbswZ/lGBgYTYsMEx0QQM2bBaNpnv+zXbxlONFThXB
         q7CtVoR/i5YtTNHnkSIo/9ng0glb+55314G/K+XBORz39wuCV1O3USSGUpwlqitS8fvK
         8dk54CianFNfjzshznBVj88kiznFwiDDr6qKb1dgARhltb6gLAWmLZGxack2AQ8NeTQM
         d98Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=a2MU/nqWLE/JGSkdP0kIS5IkD9QMgYVvccKJFswQ5ZI=;
        b=j9SHwehPzsFJH3Pb/mF2os2jvSVjEANWACaSOZsPu1JIqZfmBxkTH5Fg3PyMTGKUAi
         T8PCLTPqI8DlzIsOa7TB2dyrojWz+1812ZTlMF7djUmlMeYJo/Oic9iyB8ITO0OqHYUF
         Hwi9ed4Gsh5ltCMZqNiXdj4id0KQWHlwcrOK/jb3CkcRCegRnbsF1dNwtGFxLLuiuw7w
         3X0CvG0iFozzYxJiBAfxU8nemcZLEDCHV9YNr5rmwrWzCJL9i1amcepT5HHw7ctrf6fC
         IizmPkq60w/O5UAz0MG2XohUGQhkn+VjHqM9mzIdqEOUtHPpL0JRB1DqfgOsmjj/oM0E
         myaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="O3mKq/U3";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id x20si1413598oot.1.2021.01.09.07.36.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 07:36:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-VeFGfpw6MSCN1ixeCjF0BQ-1; Sat, 09 Jan 2021 10:36:53 -0500
X-MC-Unique: VeFGfpw6MSCN1ixeCjF0BQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 771588015C3;
	Sat,  9 Jan 2021 15:36:50 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 379F75D9C2;
	Sat,  9 Jan 2021 15:36:48 +0000 (UTC)
Date: Sat, 9 Jan 2021 09:36:46 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Message-ID: <20210109153646.zrmglpvr27f5zd7m@treble>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="O3mKq/U3";
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

On Sat, Jan 09, 2021 at 03:54:20PM +0100, Sedat Dilek wrote:
> I am interested in having Clang LTO (Clang-CFI) for x86-64 working and
> help with testing.
> 
> I tried the Git tree mentioned in [3] <jpoimboe.git#objtool-vmlinux>
> (together with changes from <peterz.git#x86/urgent>).
> 
> I only see in my build-log...
> 
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> eb_relocate_parse_slow()+0x3d0: stack state mismatch: cfa1=7+120
> cfa2=-1+0
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> eb_copy_relocations()+0x229: stack state mismatch: cfa1=7+120
> cfa2=-1+0
> 
> ...which was reported and worked on in [1].
> 
> This is with Clang-IAS version 11.0.1.
> 
> Unfortunately, the recent changes in <samitolvanen.github#clang-cfi>
> do not cleanly apply with Josh stuff.
> My intention/wish was to report this combination of patchsets "heals"
> a lot of objtool-warnings for vmlinux.o I observed with Clang-CFI.
> 
> Is it possible to have a Git branch where Josh's objtool-vmlinux is
> working together with Clang-LTO?
> For testing purposes.

I updated my branch with my most recent work from before the holidays,
can you try it now?  It still doesn't fix any of the crypto warnings,
but I'll do that in a separate set after posting these next week.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109153646.zrmglpvr27f5zd7m%40treble.
