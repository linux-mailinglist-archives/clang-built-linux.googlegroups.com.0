Return-Path: <clang-built-linux+bncBD4LX4523YGBB4NL6H6QKGQERKBAVNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC012C1A21
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 01:38:11 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id w10sf15414323ila.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 16:38:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606178290; cv=pass;
        d=google.com; s=arc-20160816;
        b=aqLH0ZqjzKiTR9acIoaIFPLC746vPqHgSxq88Wf/kBrNFs2PgwdGA8DdvCd8BqNAXe
         Du5oqzp0IvZfM12m1vCKhhgmC5HSmPhFe4Amd2IU4OfM62BB8Rrb6PA0uqcOp5JRU7WO
         lkxEcr7h1kCRZAl5ddZ/VhoZDZTjy4b/sKTmSoJ+1zYaZsiqJCj0uNTER3RyGcQYebcj
         E6/N9GVDFlO1MqRFO7NhVrfcSsILlYaIMwi+WAbiJaqdDLIeOkF5yBziuom2mndusTmX
         XAvkGr2zh8WHoLBPDv0zHKnX/zxh2tZ8qQoSmaZ/YHop6/iGyTnwWmXVzahzu7tKt1+V
         fD6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FJyhuuUHXtMgoV9/sIRgMfl1hjk6mvBbxxA5CYjBONA=;
        b=ZbxbXXgYG04OaofvP4w7k7NX9eolrT8WlEnX+W4baXTOBsWi82SjCUb4aBSy9RVWQj
         IdR8z1NNqx2KEVQDkvt/HBIAlP0sYjBhrPII+e3UPhxHkMEFAimt+SFr8hllLf9085qN
         dImU0EOdkary3IFGxc31sHhiPuIMAd/BOzRBBPyj86aJGUBugMhCkICa8cGnConE1jvy
         S2Vg6cDDZXS0AGcS89LReEagZxfvo7Q0CkHt1Pebr3bCQpd+HMbMLdIilxh2xnMCh7cG
         CkUFCAb7qHadkJNBiutx5RwlGxpPtNgOuRXooskBL84hjRhsXLfMhgwid8Hs2EMLNs00
         zPBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FJyhuuUHXtMgoV9/sIRgMfl1hjk6mvBbxxA5CYjBONA=;
        b=Z5uqw5wEVbT9stPbwSeYAyOHm0IUWhPQyOthGLvAsPdUREyJV1GTPeJAAA9dFbDtjw
         GX4C3nfmyl3APQLl9aUmF0T2ODYFfyXnakfJs+4rkxikE6n3/K00l6SsXsa4bRGO2L+E
         yPdQEKx7Py3XZo1ixBvilUEh0hx50JnpC2i2VJeZL0b96xEYYloiNbklUr1Y4JXL7Lx+
         /5INZ+NvXM3VxDilQg/2xR59+TBVrCovwMhZEzw8d+2mPUEhOYV2t0hWcFFuWm3BqDr7
         ztTFKeMNmZrp3ZRVATAQBvI+ZpKaJ4qwVJh02/WNsKLfyX2Eiu7o5jQoMVHBm0H7kJkj
         IhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FJyhuuUHXtMgoV9/sIRgMfl1hjk6mvBbxxA5CYjBONA=;
        b=a89y2sLzS2kOn8fcdgKETgeldxtDKD3UJhvdnG/fuPnMfJjN4/+Z/EiTnS/YUfA7Df
         W3GVWyhhlnTJthPxizJ7Vp7Zu8+HLOA/VVkOyInJsMxGYTYX61+0ttdHxwnVOrVYiJAz
         YGW3QPqMb1fqAeqAuHBSIuSRMshoEFM5DlDP2I+56EP8KPbnDRfoUH7IO/2poNSmwODs
         +so6MGvayuYA/PN9I05g+x9koGekxWo645qyEL4ys5FNGLSedBGTLNYUnmYYHYB7t0Mr
         f7BpVTmS/duZkIP7LTc/KockHyfRkjzvKQUe4gZNyFmzd3iVERqtvPPOfua0FTL2ggOQ
         Ktvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ekANWeffaALV2MuFElmkEFZgD6hmeq8csSNBMUu5ZpcrVxFhw
	ywt53mDAtnmceQ3V/7wzvwM=
X-Google-Smtp-Source: ABdhPJypC4utGm/WtiEPLeZ8oFY8gpp2DPcqMqHRkjfTvlJAwHHQ1+0Q/vRxFTF2tkgXryZClCw+GQ==
X-Received: by 2002:a5d:9a0e:: with SMTP id s14mr2038530iol.108.1606178289847;
        Mon, 23 Nov 2020 16:38:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:140f:: with SMTP id n15ls4072713ilo.4.gmail; Mon,
 23 Nov 2020 16:38:09 -0800 (PST)
X-Received: by 2002:a92:297:: with SMTP id 145mr2220567ilc.133.1606178289298;
        Mon, 23 Nov 2020 16:38:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606178289; cv=none;
        d=google.com; s=arc-20160816;
        b=IZHSy3SJIQ/RC6VVjAqm5U1UWCqoZdi/RyYWqG893tM6rC+yMCmOdVMSTYfBXVeKR/
         u74/1tr4KFsrbPs+lY4sIT8QkyoEKlhxfQYCZF6qV/FCPGJIcO+zU52tvrR3yA7UZDMA
         TUH1kdN9vNL/IcLjKU8Gik+StYNFAlYVOEJg3TuhAh9+ea/Ak4L6hW/d4K/RNHswCAj/
         8JbSHT6oyXTnIFguyJlayfCnC7NyWv8k7LY2FUmuWBKhFadmuq/JoZEd0s8dPlACi1AV
         83+Fp1t26j/jwhtgCB1f4MiodIqIYYP6q6VS4nH469KGnevlqXKvbwd5XtNE1eQJjHPQ
         XB3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Seq8320VmUVl/4hZxYOgACMSFe7Axi4Al+O2bKWse9o=;
        b=N+wmLg5ZsVC5pe93hWPMpABmYGm/F/qnNm9zsZ5mbiwXlUO4XJOj6JkMUsHCLDbicz
         B9bvNaXdIFeGzPiXGVldtRVtjtgauj4TeuY1m7GSfBmph+NEhXHuhdCK1nP6vhpj7OgT
         cY0Uer1sH/pCzP3WjIqq/bAshCfoWW2whjRjrgN2tlQzI4OmTl6IVcr30Wii+xKI5cCL
         SUX+EN7OwDlvfCAf84Tyg2X5TX2rWYCi92p2xxElYeFUU3yVJ9HRaQ1YfjoPLMJYIG4H
         1Tz9kTpnQzZGl/CrLBw32V0GCzao8eZJj9iwPNt2hNGfoVmSvG1NLKCCoS+vI3dGY8ZZ
         RdaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id f6si711106iob.0.2020.11.23.16.38.08
        for <clang-built-linux@googlegroups.com>;
        Mon, 23 Nov 2020 16:38:09 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AO0Xw1G006038;
	Mon, 23 Nov 2020 18:33:58 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AO0XvPD006033;
	Mon, 23 Nov 2020 18:33:57 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 23 Nov 2020 18:33:57 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
Message-ID: <20201124003357.GR2672@gate.crashing.org>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com> <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com> <20201123232210.GA208735@rani.riverdale.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201123232210.GA208735@rani.riverdale.lan>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Nov 23, 2020 at 06:22:10PM -0500, Arvind Sankar wrote:
> Btw, is -gsplit-dwarf at all useful for assembler files?

If you invoke the assembler via the compiler, with that flag it still
creates separate .o and .dwo files (via objcopy invocations as usual).
Whether that is useful depends on if you have any debug info that can
be split :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124003357.GR2672%40gate.crashing.org.
