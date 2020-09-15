Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBDEDQT5QKGQENPEG3YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B026AB5D
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 20:01:48 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id w7sf1532832wrp.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:01:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600192908; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNzLnYLZ/3z8KGOlJxutoTSYU2DTrVsY0BAl0dUH4L4mtTcdcnWvgY+hBk12b34Rhc
         HkxjvSVcdrQ3lkxH9uao4ZC3l8kFfRwlH/KBmRb5SO9lyPH3IVWkryVVbBEYLfhx/l3O
         34LNEHb+iOP6c6ZAmDGq18MLiuBorJ8kJ36dZkbMxgspWbxSr7IBiUZc7GI3NGSL/3lr
         mGifP1WJPaV49XE2/RWQza+LQjxvE00vkR7lDTFm+nfihse8JkraMymcB3jDgVVr9fbS
         EUh20KF3jkcelvch5cU3ncUmwdSK7f7a/o0+5okPM80OYRAASWbsfJYgsGkd7EFx4Br5
         b6Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sy4XXxYmvPotaTveyHzSvC7uzZ5MeZbyeTkpsuDsokg=;
        b=CRXWQzjnQdnSCw7oghEJm/zXqvMNJhsNDg7W7e72wwRxf2bvGvXm+7zkbZgtiIr3r/
         ExHIxgGExputTvaGkQFnViaOUC5xoCc4mQMI09FgL++hLVkmad401Gk8/XoBSH26fj0a
         lpTpLrbqDD+9oJKT3GvVHqaAByh3AJs7ZuJ4sGSFynAmTOL1/op/uiu1RyjwSRPA9fFd
         MsURA1B1EO1XEw9K5IyCVH+jcpvFRUJXFmLKGIeEAbLxJjLvLtc3YPEL2VTRib9jXDuZ
         ckLAUqaeCa5LuLS3NwtEDj2811PDrGUgWyFtn1c4jsRJntw4kXHrSSWL+KC8VJXzhkSo
         9VXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=X790oYgW;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sy4XXxYmvPotaTveyHzSvC7uzZ5MeZbyeTkpsuDsokg=;
        b=UmSRW2cB0NfJi6eXYOjyl31tR8lEVhzMPTaBlPZlMnVtpqnEGS7nmau1pqWEGwQdaS
         Vx4FGx7jl4gPA3LYOAtZYwBxcN+teX2lDfn+DMrQcUDMfS09YYM8IxtVDBHQjHtKu6r7
         nqi0TEIyIlNaH1wHPTtjRG2QbDj5XTp5EDfbJ6DDy27dBz1k7CoZSw0BhUsMiOWZr3Jg
         UNjCLl5fgMghPMuA038qkauMgAoQNHucW9UBhhJZKoXcT640Ez7Ymzu8TUl+/kbz3rah
         tgMqm86rsIyCqGwen9XziVcrmZVTEEsdMwm8zZbZflSrcA185j4npZl3KcHlLdtcCwSu
         kRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sy4XXxYmvPotaTveyHzSvC7uzZ5MeZbyeTkpsuDsokg=;
        b=ZSL5/emY95eUehj/ZZCsqg7FOpeZ6vEytCz2sCMpq8pdrKgf49aH1Kq/ySkiw/uMSI
         ocZEoGP8gMKlGJYypWEVfj8VURGJlm7BhWIvrFNbUregQafpqlbC+bsXZvAFcPLSjQfx
         kAfImLnjgm3J6l0fdIkTFe2c8SftLHsW0BSkmtuGazLOUXR4i4iqTr+xlrP+nKrprGcv
         Ggao15ZsDhBtU19d+/8UkT1AC4+nz0JR3Xmh+4p1pGKXhHYm6lOB4ksbHfAvl5k/8tMG
         V02fIKUny31T2bdwnwR2MM/O99lrNyqB7tZmKfK/MDyf74c6oFj4eLhOnQ2k7KTCDgBk
         Kovw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530p1XH/VmYys3Y7DsxIE8BLur1XG82adFFEixizR7VT/JWg58K5
	hCaBvziZg0vZ16VcP8Ottao=
X-Google-Smtp-Source: ABdhPJy+ckgBHiox8wPI1K8wMLeLSeefm0250X63qJDhIC+ZxEHmjBNxz5iaIWw4khw2NuELYCJKug==
X-Received: by 2002:a1c:e0d4:: with SMTP id x203mr587392wmg.91.1600192908410;
        Tue, 15 Sep 2020 11:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4154:: with SMTP id o81ls183272wma.0.gmail; Tue, 15 Sep
 2020 11:01:47 -0700 (PDT)
X-Received: by 2002:a1c:2bc7:: with SMTP id r190mr596653wmr.116.1600192907527;
        Tue, 15 Sep 2020 11:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600192907; cv=none;
        d=google.com; s=arc-20160816;
        b=Rv73kMHmSNn3WIoYUyuOD9tA6dY7lPSclHAsFBrurEJaRFGpDK9mzlo3PfzSD8u3Fr
         P49JMGTPrtAtodn7S91esMtYJazOhdvkiS+tP+6qJEv7L8N/NyMEsgoSLfa6hnFmxNuG
         g3o8QGEhzHczu0Oc/vRPGppB3XkI5fqB5An2ZjpLIuIagP/wbHeX77wtcuDpEnEoZ9iX
         RQ0sW5kajHwmpbJKVJC/UC8ZgAjPB9rtihuN6/apfo/cPIcuyzrZt06M4VMKOufcs1tn
         1v/t76vCkk9iyBcwzERlE91epW/1RpM+wrhaSwu66Rt+Qs4bkn2lSg8zW32ghAnjGnBN
         4CuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YJ4+RfMP5JuxEQmTK3M3Od/avV6LZmSclkOLF+yYwn0=;
        b=e1Hz6hTppKCnJuJhTdFSXMVYeoLqFsjWpj5wNodMf67qZfZlMH6QUolzi6RezPTRRj
         azLUk+7mTZb5I1zIs6T6PqP+F5nmWWmuYodQBV3lYqhFM0GGWpFT1zspBATq1GO9BO7P
         XbRwoq1wyOaze/mOYb/TmheTyyic7xTTc0MzxtmPW3iG/O3Kdv4JS8fmaQx2SEOvTl2h
         jko3Z1GBCcvBTa+Ex65CkKOR5XyCvwF29TB7S+peyBSyRIFvQNmwUJsosP9jxzM1nhr3
         ABQHDkgVZbB0pGs9U34ygjM4cu6qRlXva/mRFOwnNpyp7Y9VOUA0kTe3I+s20EVqyDaR
         ZgAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=X790oYgW;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id z11si509934wrp.4.2020.09.15.11.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 11:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e42006096e946d741c4e4.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:4200:6096:e946:d741:c4e4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 093451EC01A8;
	Tue, 15 Sep 2020 20:01:47 +0200 (CEST)
Date: Tue, 15 Sep 2020 20:01:41 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rong Chen <rong.a.chen@intel.com>, "Li, Philip" <philip.li@intel.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	kernel test robot <lkp@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915180141.GU14436@zn.tnic>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <20200915172152.GR14436@zn.tnic>
 <20200915173430.GS14436@zn.tnic>
 <CAKwvOdnqJJ8Ot6sRvVUTyuwA_zhRQXOnMU9KS6aVcTqRGb3JmA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnqJJ8Ot6sRvVUTyuwA_zhRQXOnMU9KS6aVcTqRGb3JmA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=X790oYgW;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Tue, Sep 15, 2020 at 10:41:24AM -0700, Nick Desaulniers wrote:
> We want them finding bugs in unreleased versions of the compiler,
> before those bugs in ship in release.  This is a good thing.

The bug report should probably say that compiler used is an unreleased
one so that I can prioritize better.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915180141.GU14436%40zn.tnic.
