Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBKFQQOAAMGQEK6FVIGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E77852F6F19
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 00:47:53 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 26sf4788626pgl.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 15:47:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610668072; cv=pass;
        d=google.com; s=arc-20160816;
        b=PVphZi+mznsGc2Q0z65zQXJKH0VSaaPOmcWMgrmL5hjFVSbRAzP1pZB++YFa9i9m6b
         nJIySwsnprZ88f2fOelpTc8Zd4LGhPEUeBd48SUAI8XWNlyP8Ytbq/D7G1fuyQj4mu6p
         A0P+JlBl59Hkjx6UKmdktebqCp8TqTzn9yQrZGXdwIlWhq+El3uAudgQpn/3xr7n/XOT
         sNl2uYk49UGVuUSG301GBTYPEvpwr3GTHTz2j7fmS5s1/8u3kfLY7gawIbISwCC4XuEL
         5eDUEj/pJ05AWuj4QpJ/beyMPhfZ37pWTzqmYHqDyryMnBKX0Pcopwy17PMl3vL/z1MG
         C4GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=31lYkueEil/QwxCaOBygS7/WSISrzmY6TLeo5VWvwEQ=;
        b=Cb7idx47h8rnT/hd2/s7wZ6DIUJfhP0YGuTemJ3h0zUsS6e5/Ik315oukDVEInQO52
         0HMDdfszE1oYatPUqLuFU5+Q9a+vGntJ2TKSdv3J10zc4y1nTXhy4i/B4Vxs6Szy7Xp/
         rWHU12Op+85I/VhcSK3ty0FXEDzxmJLqV6SoPO1j3ekTaFM72B7NikLiZWQRnAcTBocP
         i4LHd3eQky1DGINLXd5pg0rRUe/84EitkCIxCVRAAfxjWQpvtC+Ch4Ht0HxUkwJvE4pk
         ymgYsmy0TtNw3umaE7nypu3O/Kf1J1mhmbdGpJPhBfRPmfbrwOJiSStO2daIgy4EYhhG
         jJSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="EV/t8Aoi";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=31lYkueEil/QwxCaOBygS7/WSISrzmY6TLeo5VWvwEQ=;
        b=JCKIDcrH5rg/ohzJTkZgjZJ2vEnS2LCXhJE/PbvTAXw9+PYamwGtBtRWphRnQ3ZXqa
         m8cjLEO3MbcWg30qee436t37LzPW+sue6ebtsB191ldbIAREPXOc52C6h1Thbmd65c9t
         h3cS5QLnsymUpxeukhe/SiIXQf+McEj+YTRm0U66oC1cYE+cgRtk4Qkecja3AbmMqDXt
         t4PUx/GQfyRdHfRJxe4xDcEuGxeGzNicKMi+MmJvRGl1l6kYfhkSTyY5QVQjw9fEMh1c
         E3SU7/Owlk+vsb9pTKqcSiWTBmrUWRWetSseNR/0nMO+O5M/QBC+PQMHedoLQQRW8Zhq
         ypVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=31lYkueEil/QwxCaOBygS7/WSISrzmY6TLeo5VWvwEQ=;
        b=JabxqlLg/Y3K/1WlDh820DWVRf63VritX/I7B5C7E1xXYBw/mQbsHJ/80bmjz5OTPS
         Pxu9p0scva2UpuGcmL69Ey1jMAGhcyhkLOfV/m68z3Jj90Yq+wkHomVl8nuG2cyrCo42
         1wv7I2S2EHoxZ4Wp1P0XTgXaQrjY4gInteYxjMufGw1/TmFLmiHBOTH2TMslGY03rddB
         M4DT9H/cxgBTsuDEmhDkv0RGIJHTDRBJW8j0N1V7dL3uhh6MH6rEV2lAM+DS4ag2tOwZ
         eKIjrcK3AcThOyuSnydjn/qWqqVr2rInvDVhBaW3a/nFCW1VyXyTzeJ8f50fSXNB85kV
         Lq8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ovosNVGj1/O6jeKFI5W+0aKx9vbwQ/ihL97GJJAG38LFVaGFq
	p4zn3l88pALejAkrhKRsgR4=
X-Google-Smtp-Source: ABdhPJx/eaiLCTbbsCoEaw33gKOZoopDQzPADrb+WzF8EZOl0qT7WKrS29tSDMMJxToz8Ed2FBO8pg==
X-Received: by 2002:a65:654e:: with SMTP id a14mr9890757pgw.265.1610668072611;
        Thu, 14 Jan 2021 15:47:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d692:: with SMTP id v18ls3400081ply.5.gmail; Thu, 14
 Jan 2021 15:47:52 -0800 (PST)
X-Received: by 2002:a17:902:7d8e:b029:da:cfcb:f4c4 with SMTP id a14-20020a1709027d8eb02900dacfcbf4c4mr9539947plm.79.1610668071939;
        Thu, 14 Jan 2021 15:47:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610668071; cv=none;
        d=google.com; s=arc-20160816;
        b=anwB6RcPQNUO09/qVyc9KpBsqSwLaCsGN3Lh5JsNcCdk5/IAYzmfLZ0pI0KL8ENwZu
         PoQIGUe53eWG8xBOX9jcGWCO1qAZdSXH/S+Kx9bu19YpuGy0LCU0NMlCE0PvcwC0/1WY
         117IDdpYY1AJ+IFo5wI+rCXKuAwhDBw1W0RsDp4/+kfAFSOc6ccDN7Ri0D0cYWe3Ssla
         zKmZWKzHU1n9tPDg+A1kYzdbWq4pC9RkVDaD1VMzXaT7URj9/wZ37mUFlZDlAJJMlvt7
         1+aKjU9Kuk+fAp5DvlNAZvxaxZPbtegGTP0vJqegewg3Bq32DqZnEOvk4/hQXapKZNAa
         xftw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gjwyOUiSUpCSsJCrPVANVQOkwMWYIbGT02bwnsYs1vM=;
        b=C/vFVRgW9oVv+V1BHO0LyvMCRuah6uQUEzrX6JD9pRBgR8vCK3Y31Q6HG3e1bGwfQD
         julmNKbNYRsk81WzLf4YK2oLg+JyfZT2gZ9kkRL7iPNmqvKyGsutIoJMtY+IPTSrfRI3
         zqVWV5fwHN6FbRdv0K9QCV4JVsBW5r0xh4k+dyDY7dO2RB4n5/E5ztcl1AVKBSZt3AsR
         mgxHMIO+lCGq6yUaXaL26Zq+ybOZyTMEoXlkVZAoq5hYAm1pPythKgxIwMxILs3wKt9c
         AeZ9Bnqpl7Ve8PUaR0HwgnFzZgh9J/KD9HCl7k/9abrsB/BO/hNWnKXoEqq2B23tcjbl
         JjiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="EV/t8Aoi";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b18si432747pls.1.2021.01.14.15.47.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 15:47:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-nua4-psjMg-xq2q7Ki0vvQ-1; Thu, 14 Jan 2021 18:47:47 -0500
X-MC-Unique: nua4-psjMg-xq2q7Ki0vvQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CE1015720;
	Thu, 14 Jan 2021 23:47:45 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 969DC5F9AC;
	Thu, 14 Jan 2021 23:47:42 +0000 (UTC)
Date: Thu, 14 Jan 2021 17:47:37 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 17/21] x86/acpi: Convert indirect jump to retpoline
Message-ID: <20210114234737.xpltgdu3vpa6spgb@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <a1e4f5620deb81fc644b436eca5f51ec3a694459.1610652862.git.jpoimboe@redhat.com>
 <5017a6c5-55fa-0767-b1ed-2bd9e2a5efc1@citrix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5017a6c5-55fa-0767-b1ed-2bd9e2a5efc1@citrix.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="EV/t8Aoi";
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

On Thu, Jan 14, 2021 at 10:59:39PM +0000, Andrew Cooper wrote:
> On 14/01/2021 19:40, Josh Poimboeuf wrote:
> > It's kernel policy to not have (unannotated) indirect jumps because of
> > Spectre v2.  This one's probably harmless, but better safe than sorry.
> > Convert it to a retpoline.
> >
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > Cc: Len Brown <len.brown@intel.com>
> > Cc: Pavel Machek <pavel@ucw.cz>
> > Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > ---
> >  arch/x86/kernel/acpi/wakeup_64.S | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
> > index 5d3a0b8fd379..0b371580e620 100644
> > --- a/arch/x86/kernel/acpi/wakeup_64.S
> > +++ b/arch/x86/kernel/acpi/wakeup_64.S
> > @@ -7,6 +7,7 @@
> >  #include <asm/msr.h>
> >  #include <asm/asm-offsets.h>
> >  #include <asm/frame.h>
> > +#include <asm/nospec-branch.h>
> >  
> >  # Copyright 2003 Pavel Machek <pavel@suse.cz
> >  
> > @@ -39,7 +40,7 @@ SYM_FUNC_START(wakeup_long64)
> >  	movq	saved_rbp, %rbp
> >  
> >  	movq	saved_rip, %rax
> > -	jmp	*%rax
> > +	JMP_NOSPEC rax
> >  SYM_FUNC_END(wakeup_long64)
> 
> I suspect this won't work as you intend.
> 
> wakeup_long64() still executes on the low mappings, not the high
> mappings, so the `jmp __x86_indirect_thunk_rax` under this JMP_NOSPEC
> will wander off into the weeds.
> 
> This is why none of the startup "jmps from weird contexts onto the high
> mappings" have been retpolined-up.

D'oh.  Of course it wouldn't be that easy.  I suppose the other two
retpoline patches (15 and 21) are bogus as well.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114234737.xpltgdu3vpa6spgb%40treble.
