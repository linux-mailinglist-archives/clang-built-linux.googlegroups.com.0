Return-Path: <clang-built-linux+bncBC2ORX645YPRBHFSQP2QKGQEGMASY6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F090C1B5107
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 01:54:05 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id z2sf2666893ooj.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 16:54:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587599645; cv=pass;
        d=google.com; s=arc-20160816;
        b=LgWEcrBHhxKlEyJgpUFFYG2HwRDMESmCIj5IUSIsp/VX02b/QXjfr/9Jz/DhU76EgL
         YGw4iWEw6WDa99Yf+KGUNhI0BeN3TfsFUOIBI+dlCRWTgUh42P6fPO0f9sYxfTYpsVjU
         Y67EG3iecF91Kw0UsX4qDHYmhG6wyvrwmlPzRmyqTMUffoPKkv2+zpzQehqDdTZi23KP
         EmDvJKYguBiDyTnyVgPXJnPxVgP+mIFcDNfTWat6cjc6XSSQdXEhCT6t9/CaXbM5hAJy
         uUQ5jZkycs7/nU457idB/qRjtp7zMAr5wY9Ux4nvpbRByMSI6I5EMUsDKc8/nsYVm1Nh
         Eo6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kr0yPDdv3ZkCSjzyv6pc0au+f18zgn05EvNtoauqOWM=;
        b=DLtvGMRWPtiaqA2jDVVZSnFAUtH1ayBYE4o/950J2VDQ+45Fv6si0oTItivgUlZNPC
         FabOjcru2DMpm5baSdEwhfZDJFuZ2RbwMQzYkrRfR2LixQX8nEoFXAeeCfI65KtTi4LX
         fSbIVLXTmJQ8yZ1JxWZbagSeAqVHs3FTKmYi+Qlxon8bJ5BmuPvOGLSr/dwxP44J2EQg
         +XMAr/Fcjvg8OKaZ1hF9zgPGPoEypBkanExO68oPWvtdeThCVJZ2WoicuHw1wI77dVOb
         jhEgViePNrVVd3B4e7QV7etQIoSPQbvBYJuvqCWpgBndjF6v4hdwKGNoEbgzt3EPWIJa
         eu0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ul4AvjVQ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kr0yPDdv3ZkCSjzyv6pc0au+f18zgn05EvNtoauqOWM=;
        b=p2+qrFj6/b1QOlQGZLaEroOkC8sVGwxwUhp575JEFI8vlmDyRQdZ2hyzadHMkAa1IH
         FpE2r2fGf0nQ9b+d0ogsKiKHrb+jUZkvq6IwJ6gKe2kUxrZ2Q+4shuFYgNaWJY922I29
         4OeGg0VgSIyF5P1C4aLuLBTTyV8JBlv4DzAestiK/z4Zx/sWreAXVUJaDPaYItredWI3
         PXcSuG11Wg0faN5oY2E6roJvS0ZybbhbuCq95aeuHgR/qjF5ylGld5+KghDvDsjXSyZ1
         ccxaF7MfFqXDMBoq8xnEcZC27sdq9vgqN9Z5E2o86uhVRan5ODKZrdTO5CTeurdOC38o
         RJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kr0yPDdv3ZkCSjzyv6pc0au+f18zgn05EvNtoauqOWM=;
        b=hRGZ+LaUMNweUpxxIzZ3DboSonpN9K32Kz3EJbs700F91OvXJlzcQYbWh0K2vdH2rQ
         TVQIkojd/YytGybfCfxJEGp5uk3Yd4kLIv/Giqwh00G0OHKrEsZFyn6r3mcWqApmYbFr
         4Iis0VGZNJUNu/5mrr1Yxnm7/xBASj4lht3vBH41WCX17RKhrRx+wQ65f45zlM2EK5Ty
         UXw5vt3FNTaO7yKWCGRyelp8TlHJpB56NYSJ44fw5jWoIRDkvl9l88fm3FWcKfjwrzNw
         OtR3Ne6f62GOLFFXvdmc+J3LzMWZBNHlQpQpA53ilcMzBEqVuvti8WJjs0XR8c5R1eDz
         mMKQ==
X-Gm-Message-State: AGi0PuZldbC3KVZCIfl599hGC0o04xbm+mtjPUtc+Gy9Kk1c80SG9GO2
	tskS4RfCX2evMxWjD4EwJnY=
X-Google-Smtp-Source: APiQypJCbILhtwbnZJCvTdfN6DKIMNfNAPmH37e/Z5A9pAKgZnWG9hEC5lTXJB8KBRB+kkmhie3/yA==
X-Received: by 2002:aca:f3d6:: with SMTP id r205mr1171865oih.26.1587599644954;
        Wed, 22 Apr 2020 16:54:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd54:: with SMTP id d81ls474791oig.6.gmail; Wed, 22 Apr
 2020 16:54:04 -0700 (PDT)
X-Received: by 2002:a05:6808:b0c:: with SMTP id s12mr1098071oij.163.1587599644574;
        Wed, 22 Apr 2020 16:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587599644; cv=none;
        d=google.com; s=arc-20160816;
        b=n/KAqrg5soGIi97np2rIR+TtIDDzW2baFSqmo4s3CkyKJMGgk8BYhBklrVPaT9tKgp
         t+xmKACcSllsExeQ6V6UZPSwc62TF1rx59/5UBfrkBnhk7ORT+4ZwcNyf3fJzt5H/gZa
         UL8LOe1I6Q4a3ffWmm2h19xxoTn/g7JC0xap3hfe/Te4d1gsWOMX0bbs612mqyR9wvcr
         bbCaq5CvqkO9on6NrRCSpnow2T9aoZQ43GziXwqw41X3jpPDK9jOdU1Ul5QYVhi/tVQe
         Y1vP5QA/0pfAk/nQQoMJRj7V2J5BcKgOBWe0ztjlgYlihfr1ltw5hhUIEZrXDJ25+wk6
         FTJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9yta31YHLGTtMTc3kimrMC0tNHi4fPt9ZpXXfvJokHE=;
        b=v/UiF6KAJswjNheLEeFBgCcSImYL9jDV7dHYG/Joj0gi3KkbZaS8f/mhL/JsK0ZmMk
         ajicNferavYo5gANlDbTv/pgsed7xw6iM62Lp5PT3ZsgI59ahmMbAR9DGrkCRr9al1UP
         q5+5tI9PjOKRy3q5K59Fw3rAiGOTvq8cbZ+0dToqyHwOSjzGtxS25Cj5jmsfhnn8GmrX
         ov4q0feUH7AMskE9io5P6S6c6+0xKbiKGAqlYKol1atcRCZoTfsgH9U9iNN4iUsvAAQa
         xDx/PT3KfdTAhsDlCSYBkAsgJ4OLXwT+XC/T8gj2lLCHCje+M2vUwfg7azYZLMNdMm3r
         AHnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ul4AvjVQ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o6si142951otk.5.2020.04.22.16.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 16:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 18so754106pfv.8
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 16:54:04 -0700 (PDT)
X-Received: by 2002:aa7:8118:: with SMTP id b24mr1011016pfi.321.1587599643609;
        Wed, 22 Apr 2020 16:54:03 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id d20sm360096pjs.12.2020.04.22.16.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 16:54:02 -0700 (PDT)
Date: Wed, 22 Apr 2020 16:53:56 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 03/12] scs: add support for stack usage debugging
Message-ID: <20200422235356.GA128062@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-4-samitolvanen@google.com>
 <20200422174602.GB3121@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422174602.GB3121@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ul4AvjVQ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Apr 22, 2020 at 06:46:02PM +0100, Will Deacon wrote:
> > +static void scs_check_usage(struct task_struct *tsk)
> > +{
> > +	static unsigned long highest;
> > +	unsigned long used = __scs_used(tsk);
> > +	unsigned long prev;
> > +	unsigned long curr = highest;
> > +
> > +	while (used > curr) {
> > +		prev = cmpxchg(&highest, curr, used);
> 
> I think this can be cmpxchg_relaxed(), since we don't care about ordering
> here afaict.

Sure, I'll change this in v13. Thanks.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422235356.GA128062%40google.com.
