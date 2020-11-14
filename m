Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBFOTXT6QKGQEY45F23Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C112B2A1A
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:49:26 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id f7sf4529166oti.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:49:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605314965; cv=pass;
        d=google.com; s=arc-20160816;
        b=HFcA+S2lGgOC0uEwNpLbmQA+QHx82iGLr99OsZ+7xxX/GFIsLq8fGwf8sgqh5dO8Cl
         hLqu1NzyLhl0V+cCW/Dv8Pesy7LIGBgcTA1mxH9XlxfYQrkuF3emn8jfMbtPfnKDBgXU
         bEwUCwtr7u0PuMjCDt6XnQnLxdvLtoaSn9QP4s+QONZV9RkiaA+CdZJXm45BylZ1Sciv
         T5KQOnKANNJi3nJe/aljSJjiGqBstqETNus91P1hcB084nAvpRTUpiGl0ql/MVV/oLCD
         MdesmifFB+HEw43Ff7PSAS7zY3CnX3cIfJPoKJ/lbOA3fGgDThxQwTUV+UfUGGW+nWqX
         Oxfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=w6ghNWeprSjCdtcr/EOH6w3ZEOzIWFNw8E8c8OiLmqU=;
        b=kC2VhajK6m1F79yOBU0YQg+pJsIGtd4KQZkqHcpyFzzqxqk1Qj8p02/nU/n6/yVuGm
         UPGYm5SpsyDiJJHP36BfKhDA62HXCPQSgWHEA3jNWqUfFMLsJibgWWUewUBWsJtDLw4w
         LXyng5QEqPFMVEG+AUd72ijKddSdVf+l3cLs332R/gnEYA/SBa7LlwPJWq2Ch9Pke8D6
         n/ytGV6/Qu6TpP+8l1E7h4H8+V9J7HeLM+4C15rUDo6QrdwbKQmmWYt/pT9HBTMJ8zOm
         BJs6HqzG8vh2bCrCc9KOo9mWkrFhAnAL1zQ0hdLP2PvcjQ1Nc01IhvYOcJbUJ5OufZIq
         6mbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MqdPjOPO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w6ghNWeprSjCdtcr/EOH6w3ZEOzIWFNw8E8c8OiLmqU=;
        b=Z7DSxVT1W1JtnFQnInFEH+KNo+VMjB1ANXo/inATqSccRpcZzvLXH3ZG8dVGCtGzsD
         UmW275pPVhojMl116mfB0nrMkF5YbBB/29B+gb+NfOeGTHeXFP/C1WfiXK6BV1UQGDh4
         bAtJ811lr8KgWejFc0Wvb0r6nrrSebo/KPvpNDWw8OJZxjCyKI9QVn+t1NVm6Sza0x39
         ITOCdGAgP955pJDWznvcwWHgjzOmw+k1FgNsRh5fQfxIRJhBwayCNKZknNNcGqhmERVH
         OfI1iIoYChAi5R5/YGaMdm/zts3ZC4HaTwaXWwYr6yufGMhC9ZzZ0t/hkMOfoiHpZe50
         s8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w6ghNWeprSjCdtcr/EOH6w3ZEOzIWFNw8E8c8OiLmqU=;
        b=joYwbrv44Q3stU/sV738XYmI4KW5SpplqZVauNAjvyMRbUvlBM838zfKTRlFlEWoYP
         mr0QMKEwfJMKgSEfQ7s06FY644jv4aDL6xgOko0IhcMVVKzhdq5bzd8/kPLudOAEUhz7
         N1augMUxfEE8eltOfWBug4H3Lfw144ifsQu3lT4nZGFa471PVF6QpNZuj+u4qVqh6BTP
         MfM2am7YRoOFAICOzXAQPBrHdHbjj1q5K0URrwQE7sG6J6U3aeFzd/NxGJOJl1Fw6hPw
         WNPj2vO+CK2wuuY9tEexLSyqTdb8JgNhs4sewjlQWFB1MlpKFlAgsOGryDRRYZ6Gf+qG
         apJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i8YjR5ULSVOKUDTbqOn+X/WuyUgXFBUXAuFfG4wnUBxwlJuyw
	W2H1m59QbomiuTf95ryUpRU=
X-Google-Smtp-Source: ABdhPJwlyK/o+qpSz43KTTt04pl+GQXtrYuHwkAX581reWHfyJPpcw750GPwCMKDAAdpJjfq1h0sUw==
X-Received: by 2002:aca:750d:: with SMTP id q13mr3383290oic.77.1605314965394;
        Fri, 13 Nov 2020 16:49:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls1926345oib.0.gmail; Fri, 13
 Nov 2020 16:49:25 -0800 (PST)
X-Received: by 2002:a05:6808:69a:: with SMTP id k26mr3381188oig.140.1605314965097;
        Fri, 13 Nov 2020 16:49:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605314965; cv=none;
        d=google.com; s=arc-20160816;
        b=aPro53WvFlocUozc6QUKJcXzfRpIBNxTO/EWnwseo6sr2+1ks5h30qHJfeNqrt6BsH
         G5B6jyX5w8or0ViKNmX032SrtWPVm2jX77qEts6YWVwsLDAT0h8hWkfn/XyrKF4uZHOP
         sds2MU20o6hHyNmtCA5B5MvVRArUIJBCXdad7ZlcTdwzfseahAijbFKma9iPXk4MkmGX
         c8MxhoE6cvpvzjbLj1NaDTt1Mn0AywTouNu3F/pmLrmS8F8R4d/YLxijKFCULiZC2ZAz
         y+sDUG1JjqOsQ5c8UKkn0kFBWDOw4pw0FiDxVNCf0iOtF+5xaRkvbW2EhiqRWIEHTPTb
         B5oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8Pgbto6s6aJWzu/I6GVSYjwAc7k98Nrj4vzE4Tm0+xE=;
        b=tBc9Oa8hoYqGZCUrla5UPYPxVk7xEBxY3cFO/9aDqAJ3XWDCmzGP3NyfvPFkMyqzD4
         I3HUBd4ttgsSaWfcqQ6X6v61QakgJolTEHI40N/KLfZS8BVHkMGIZibqBP6BzLb6yUHO
         6MviuMOf58rUix6SOd4AlsWu9EYNxmd/Nzmn5l4AtzIyMwFs6dyv4Nn9+vwRKz13fKEF
         wIV53M3QEgHbMq5dwPGNXrIm+t8fmpCqDZSRpPJamUOpA1dhr6OLfrzCEL047svkaCaD
         hu5ffIdC39SHJjixFvq/aYU8KiLCU/a44gVJmsA/ltAGogzXbWeeO3yH+5heddtBttQF
         3UNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MqdPjOPO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i23si671181oto.5.2020.11.13.16.49.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:49:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-cJKt-FEhN_unyUcxBk_KIQ-1; Fri, 13 Nov 2020 19:49:20 -0500
X-MC-Unique: cJKt-FEhN_unyUcxBk_KIQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6AEE5F9D1;
	Sat, 14 Nov 2020 00:49:17 +0000 (UTC)
Received: from treble (ovpn-117-69.rdu2.redhat.com [10.10.117.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0594A60C15;
	Sat, 14 Nov 2020 00:49:13 +0000 (UTC)
Date: Fri, 13 Nov 2020 18:49:11 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201114004911.aip52eimk6c2uxd4@treble>
References: <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
 <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
 <20201113195408.atbpjizijnhuinzy@treble>
 <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
 <20201113223412.inono2ekrs7ky7rm@treble>
 <CABCJKueeL+1ydcZsm2BS4qrX4Wxy7zY7FUQdoN_WLuUxFfqcmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKueeL+1ydcZsm2BS4qrX4Wxy7zY7FUQdoN_WLuUxFfqcmQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MqdPjOPO;
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

On Fri, Nov 13, 2020 at 03:31:34PM -0800, Sami Tolvanen wrote:
> >  #else /* !CONFIG_STACK_VALIDATION */
> > @@ -123,6 +129,8 @@ struct unwind_hint {
> >  .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
> >  .endm
> >  #endif
> > +.macro STACK_FRAME_NON_STANDARD func:req
> > +.endm
> 
> This macro needs to be before the #endif, so it's defined only for
> assembly code. This breaks my arm64 builds even though x86 curiously
> worked just fine.

Yeah, I noticed that after syncing objtool.h with the tools copy.  Fixed
now.

I've got fixes for some of the other warnings, but I'll queue them up
and post when they're all ready.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114004911.aip52eimk6c2uxd4%40treble.
