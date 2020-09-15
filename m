Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB37DQT5QKGQEFZP57JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id BC01726AF8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:28:16 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 10sf2016207ple.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:28:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600205295; cv=pass;
        d=google.com; s=arc-20160816;
        b=QdLCO7zgfpNJCzSC00lxssuoXJPQ7kZMHF1X+N9BZqgNCBX3O3szRq32odKBbkaURU
         2IPiu9UOptuRtJfFmGYnUjIBogZ8pN9n+2At2lXVQ3AlL3B6IbsWspBcJNG5Jfp3BA+N
         3Y1aEzG5HEKC5iPk5KpfdBGuBxA5kVPI92QWo0+piHmqDx2KdEVcm6UXzpP2QXqph1AT
         QoiYG7N7H6NFPyQXvTFTAmsJhlMVqSysVilaQTGF0fxYVklAZtwsxPzAlxYikb9pSzl1
         xc/qMLRLiQwYymRrgEPGI5UnRCc/F5Ie7etKstDTp3fH3LaW+TYrgvZGhjOnJZcz5Jok
         /JKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PBdvlRWhsv4lOeKxZmkHFbF7yW+4X7lZ48hYj6XxsqA=;
        b=Jr1We62dQyLWk4jorREp9cjkCjbfLMI39kG+/4h+ZKvC0D9orILuNZbHEHfVLDOTJv
         E5tGBfkGwxPontKmdXJxhSAB7MkYHAIaJDtqxvA1bMELe2+BYFuN1zqijqGQmIgGHhyE
         2Q0f9J/PC8LDMal4Dpp1T01ZrRa1kgVjK4wqmdZ6CvH7TM3/7WQ4bhkZj68bItSR4BVf
         4uDpcQ+cBNiIEebz5k0jW+6Vpxe3/FtQt1PxrC+sopwBaWuiK6zNVWc1+I0jxGc/cp88
         0OAwst0JmmIbzbZ7d+IqDNFLGoK99KF6jYTihOPsyQMzWpmrsezJQCmSn5zm9Il4aLvP
         RWVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=avIlM3yj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PBdvlRWhsv4lOeKxZmkHFbF7yW+4X7lZ48hYj6XxsqA=;
        b=FrN6614dx4juF9e5DTQloQOkoCDSRCG2RLLDH019SpqGUtxSrizOdFpcUMmpaykeuT
         gbj3ezyMmFiQbwgyHEl/nMui5xnBX23HNi3FLvoUd1M9MFb20+QIvaea3OW6DWC9JqRU
         Kqch4eXDcIRFdzYnGca4h9YOheGDa3AEMZ29esi8RFVZV4um+oPfKkCO/EReTMBUDCO0
         VbokKM+gXojwDfyHBWPGInTFOvC4lZpdGKMyj6Z5nk8K+B/PFPXZ6O8EWn7Qv+HDcjeE
         2naT4I9efXHu8KXhgj7F/jOdXmF2GaN0LXH80B4s29XGM5dMoHIVPc5tyhP0ZN8M35Ya
         8Hsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PBdvlRWhsv4lOeKxZmkHFbF7yW+4X7lZ48hYj6XxsqA=;
        b=d3mces11q4ug0I1nVN0nutbxmw8dYKQlAvMCTs+yydTzy3J/S6vDaZksV9d3McmvZM
         T6w/kV9Sh/4RVpxeoB3gRmnAU4otABvCcFhLzsyhW2hIvcv+QZYTGtLeL2sL9AYOhv0B
         fwQi/OnHXzCRfJ12yflVJlJBGQNQH9NUohAheOOhsrSmPJOAw/oQrDSnWndUQwjcSsvT
         /sWi+Awlu0ks09+6GA3hHmV/2uL0qeanErJIVRYbHR242Wb3wByPCfcZR+Ra4oIasvyo
         eetzM8rx8lfVDiY38b5EZJdOhCD48GM8HBAfUTt+Ccs3p5qE8mWFbtb71QZd6pXOkhDw
         KZBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tNQPDgXfGz0VHJopt+W/ybsLZ75Vxn2bWoYbzPicoS4WLR51u
	6UWmfb/7NecFffhqw4eqj9A=
X-Google-Smtp-Source: ABdhPJyphAhGyAUbLiLuAbWZ6jKqKs4czvDhhPoE/NN5dnaMXZAiWpLvaj+IDqNXCDdLMBeW8uTUgg==
X-Received: by 2002:a65:438d:: with SMTP id m13mr6239481pgp.429.1600205295489;
        Tue, 15 Sep 2020 14:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls41729pjs.2.canary-gmail;
 Tue, 15 Sep 2020 14:28:14 -0700 (PDT)
X-Received: by 2002:a17:90b:34e:: with SMTP id fh14mr1167008pjb.186.1600205294901;
        Tue, 15 Sep 2020 14:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600205294; cv=none;
        d=google.com; s=arc-20160816;
        b=Stwkn+bffpU4hHSC21idfmif9C0gVoDuYXlGnZ9viQlI+0f2J95DGHBMFcrUqbZGSf
         EXaapS9ilCo9W062Bnub4z3CoKhNVJDsJNGTYyDaskv5yOZEIZIrSs5RB9LHEnEHwDMC
         f9IKfdiPWBxUNuJHNqz6prhfmG0GB9yj+BLvCOtLtRX3C4dzZ/ohOAAfFozupAliBFnc
         z7W5ImvlEh4gDfZw3bZHMEhru+3R1wjq0y+3nkMsyPcZsbavgLyhtAX08svYtjKZoK84
         MCaVpZWC0lH0g2z3rBm1b0rOLnUlbjbTXYB6brWEUKlbFIuXfOcImeMDdn1e7WwUPsXo
         /6OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=phfKZE19saBhPeUBHCLwaCqp+zRaAXUigLy6+PozSog=;
        b=CS99YMcTk45JVXNo5CXl/fXJcqVVs88n/T1WhP0xziL3ZRafbu95l0Gekk/35oHZyt
         EyTfH7d+uYvmKVGaFtsVo00yHJiy97A4kF/8aJCw4pJ0Ml58Is54vvv8UREAAZRIcO+2
         r67ykoR7Ho1yOYhDkCExu7L4tzwdLShRFWn+puq33hdZWVmI+ahNVUxNlYt+1zvdXvz7
         UXz5XLA6ggGGnh2AI63pgB4GwlATACccOlSzESvnS3WAaw7L3ggpK7kvuRgCLiJlSmkt
         +2f+LK/2r2s35barOHJRsnWpoR6P3tRLiS9F4mP3khE6Hq+Z1FxYcXG05wmxayUMV8Kn
         AdZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=avIlM3yj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d3si562416pld.1.2020.09.15.14.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-2fGBfl_3PzyxUc-icf-XBw-1; Tue, 15 Sep 2020 17:28:10 -0400
X-MC-Unique: 2fGBfl_3PzyxUc-icf-XBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12CD41005E5E;
	Tue, 15 Sep 2020 21:28:08 +0000 (UTC)
Received: from treble (ovpn-112-136.rdu2.redhat.com [10.10.112.136])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96C9160CD0;
	Tue, 15 Sep 2020 21:28:06 +0000 (UTC)
Date: Tue, 15 Sep 2020 16:28:04 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Marco Elver <elver@google.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915212804.vvm7ovffqynkvi5a@treble>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <CAKwvOdmNzapwEo26m0soAR2OLFxOoERPKbKgvQ0bfoqjNkEVCg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmNzapwEo26m0soAR2OLFxOoERPKbKgvQ0bfoqjNkEVCg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=avIlM3yj;
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

On Tue, Sep 15, 2020 at 02:13:01PM -0700, Nick Desaulniers wrote:
> Triple checking what I wrote above; it looks like the randconfig had
> BOTH CONFIG_KASAN=y and CONFIG_UBSAN=y enabled.  Aren't the sanitizers
> supposed to be mutually exclusive?  If so, we should ensure that via
> kconfig these can't be selected together via randconfig.

No idea...

> Another peculiarity I noticed was that it seems that enabling
> CONFIG_UBSAN_TRAP=y doesn't allow me to select
> CONFIG_UBSAN_ALIGNMENT=y.  Is that intentional? (Looks like it
> lib/Kconfig.ubsan:74).

That was done intentionally by Kees, it was putting traps in a lot of
weird places.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915212804.vvm7ovffqynkvi5a%40treble.
