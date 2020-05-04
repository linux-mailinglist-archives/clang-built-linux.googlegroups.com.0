Return-Path: <clang-built-linux+bncBC2ORX645YPRBDNEYH2QKGQE4COE6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFB91C42E4
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 19:34:07 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id f18sf9345886oov.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 10:34:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588613646; cv=pass;
        d=google.com; s=arc-20160816;
        b=K/cK/pT/4u6DOlIXhKJ9akgTH9bV4wAG0Enp3HLVjzm+TUTOezOj72GYUmz8YW52Hh
         XHNJrEn807skLtUgRjhr6s8BLSg3oNskoV+XxDhtmrTh5U0ia5VkgShVmgY3qaAQC18q
         Nzz28mE+Xuo5cX9QKoOwhd0qmrVwwT53D7NzoSyMmacKyOhd166Dox5YWBOam8Aff84A
         O6Ak2AVjPqJMrwU2nX6Mhkk4GUJUlnPTtQB43SMKXhu7HUqX8ybv/JmIncl30a7wNRpZ
         PxeiDkoQJUomDaElXz+Qqn/+qa744o1PXShLcwyAAerZTTTXiOsObYAtivQz1wfI/f5T
         aZHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=b6urMJ+OUgR/Q2Wh82FYFWWjyzLuDM6uqgts4phuhVg=;
        b=zWlrNbOH2sN3GOWdJGmLgr5Nha5eIdMThmWTjyFCy68LAGt0BPyX6B4EB3zDSm6mDZ
         76uvNlW8PkUAZpjvhqPA5YhcM7w9GDH5+2NhN9QXv1rwihx7pqsPOj+fD6uqlxLfdLsY
         Rq4pqTsSnqnq4MTMMC75guCFylIzInGavYY5GDT8D/xPgIaTJHmJAmzRnQ8ojUSJQt1Z
         rf3H2lVCmlOxmro6ycNnp/P36ppoKorzfKpFl0FbqBvjHyBFQfRQLoav/0J+Qxv/GgBy
         wYv9DrKqdV22AIdFYOTgqew34WLgiQBoRnBBvV3cyFZT1ZtOqTzuFn294ZmWK4d/7Fj2
         Vykw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NSx6akBs;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=b6urMJ+OUgR/Q2Wh82FYFWWjyzLuDM6uqgts4phuhVg=;
        b=gkvFFkudd6an4+iHYNfMLWopJN/eLQDLX/9saVDBiwckiW0H3kD39n7UyYJhj2q8mr
         LSVeNeVKerT1SGSD/KzCmnOu7WytJyZszlUmpvUDtqFEkhyxFoOnrwiFsGGbNcREZCwi
         itrqVoSkaAep+57SKULBRgc6Szmh2/VtUaYEmF3PUEayk/1PK+jJtoAsuIkkMHrJVdid
         s2orffItvbuNomHWhvxedKC4KUgizExBN6tc4MatWBWnK+KYVySRp2OCR5pmps2qX6AY
         qrqDBnGEoi8IfFs/auvz8LxuiVrETKcvKUkGbJNOP6JOKXFkFiPJY1+Ea4L+eLeCJrG1
         SaAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6urMJ+OUgR/Q2Wh82FYFWWjyzLuDM6uqgts4phuhVg=;
        b=o7dZy6HvLfTFN4EVd550Vwec/riHfkibqYBU73s4HpzGCVrb6acmqPbXmj7Iv+5ykF
         0QQh7/tjdytsr86Ug91LtXKZTwp4Zw+HRBtqY+8QMs3vl53Yw9maviUQeCKvS+LXFb9E
         rRcN/Z+XwYU348r8v9Bjots5U3hzBez9ieeZWi/Yq8XYtZNQh4mXGjCZSecBQv9IlOps
         ewIOlR3NSbfAeUySjuvt777owCN7/pHheuw9+q4rOF80Sc2lH9nS1luKDK2DCBLGpqOo
         g6TF52HZVmVRI+2qxgfDB6nwRS2pbKREIuGCklUioCTObrMg3kGsAJI0+3sUpL/RMVFs
         nxxA==
X-Gm-Message-State: AGi0PuZ5/v/lUGv+DsKaP5UhFRuEs87kZfFW0atUy6iJkPPwwwVQ5Et1
	M+IztmMkq7YsOhY+a9zgEdI=
X-Google-Smtp-Source: APiQypJjXTBvA4NZGZMAUFOk9+SXrajH8vvbBfOTIIVXGN+CjAcoaoV4L8ajNQ5uoQaUQwgoI33s1w==
X-Received: by 2002:a05:6830:448:: with SMTP id d8mr3212052otc.89.1588613646019;
        Mon, 04 May 2020 10:34:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:108e:: with SMTP id y14ls2808161oto.9.gmail; Mon,
 04 May 2020 10:34:05 -0700 (PDT)
X-Received: by 2002:a9d:77c3:: with SMTP id w3mr15657966otl.75.1588613645702;
        Mon, 04 May 2020 10:34:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588613645; cv=none;
        d=google.com; s=arc-20160816;
        b=A4yt3mjyvslSwUr7LwNZKPZMF6UETfDnRQBtTbqQ5uzuI/PirnDGZYTu+XoolokODf
         Uu7sg8R71SNV/sG4y5paK4xGYsJMY2JyeFIb3MkB2wtMYfxXg/fhp4rTc4dvv4OJWIAC
         G7KvJE4actHD8IDxac2/WxVfXcJsAtKG7IRxAAVJHkZRH6KJwgOiKlyaEmyNWz7farKg
         W/9S5yjLx5i9pzQAfJ8vW1CBS24f2PWoWsWL5ZVtQOj9Es47G/zaF97OvLqbBM1dTF2R
         sTPMtszqNPz4Z3e7rHlObItYqAio+IIcbUKwc6q4J9/TM09o1Wg1SeIKiclcvrjtyYCX
         l6pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PrY9RkQAS2W4bvl/VgQNbnvFW03G7lNRCloDxmlrbTs=;
        b=OPv3SZjbiLaWn+SWTm0H22RpJlc6UVZmZVrio9xWcL6CiqSVtIamBaLvJY9dtQjoi4
         aDVViSLjETibVQES9ew1WYLA9vePvnzlS7RJJ4yt7QzN+feDHJkDGzLxbRgpCrgjDbXf
         alnCua31j0c8x+DP7fTpYeg5MWYPmMTJl7BwNFk6lGCCmdnRhRWyYFj2QwzSJb0lZUtR
         WeX8JldNNhCnCALljfBC5GMBhXqAyccOt+hoW9ZfRhHPKaMF5KBhX4kGgbthgp+sE+xW
         QDxLThNvmQQ1N2Brxz25qUdGqfmDNKWw+95KLTnAmzrTy7LuV66KatxEo5QD0lVGHRGm
         IE3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NSx6akBs;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f139si708593oig.5.2020.05.04.10.34.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 10:34:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x15so5886787pfa.1
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 10:34:05 -0700 (PDT)
X-Received: by 2002:a63:2943:: with SMTP id p64mr91169pgp.36.1588613644620;
        Mon, 04 May 2020 10:34:04 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id w69sm9342974pff.168.2020.05.04.10.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 10:34:03 -0700 (PDT)
Date: Mon, 4 May 2020 10:33:56 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
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
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200504173356.GA7200@google.com>
References: <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com>
 <20200504165227.GB1833@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200504165227.GB1833@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NSx6akBs;       spf=pass
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

On Mon, May 04, 2020 at 05:52:28PM +0100, Will Deacon wrote:
> On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> > I agree that allocating from a kmem_cache isn't ideal for safety. It's a
> > compromise to reduce memory overhead.
> 
> Do you think it would be a problem if we always allocated a page for the
> SCS?

Yes, the memory overhead was deemed too large for Android devices, which
have thousands of threads running.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504173356.GA7200%40google.com.
