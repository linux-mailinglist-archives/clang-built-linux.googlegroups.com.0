Return-Path: <clang-built-linux+bncBCDITI7XW4DRBW6MTHXQKGQE3HL3CPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F4C10FF04
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 14:42:52 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id l11sf1435794wmi.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 05:42:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575380571; cv=pass;
        d=google.com; s=arc-20160816;
        b=tf3bFlKmeCl5KM5am8IjA86m/2ZVbgR8AfEgZ1mKu/+bSsGHT3U5B/6WoIjgTOyz1G
         6q++49+2fJik06vas/vQJvSemBIly1B4E399NvhEFLUJVVuvjmhtem8y68bp7Aa0b6tz
         n0+Z/iNlbRcRJ8qk3A7V/YZoCZ4L/L07T7qPED49Z34saxSHPlYy3cXGwE4f9Yzlxl60
         pH8E/pKN6/HkFFC/yBw3VwuZzscecE2pyw4sipo1pSlnUYu5KfDW43TqIws+VWXMXKhW
         PrG7ZWFxyxj3fuqNJWra9Y6osXUEvU/qgG+QPm5jTAi0DhR5JwPKFJqZLiZxQIoh/YhQ
         Nl1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:user-agent:message-id
         :references:cc:in-reply-to:from:to:mime-version:sender
         :dkim-signature;
        bh=CkAQYOMgsc7eKKock8tzlvftMHat7ndo4MQPUqCOT7s=;
        b=xKqtfLaprrkXIAKu3fsXEGxXkkUE3xm0+wv2mqgAq/bUcIBeiQoirpSVZmMx2cRjQk
         2IIuI7+gPjGZwmS4vbi0Gnj4jiO2OZHZjUuWST7HaXw3uEigbWwFT5UUGf6Gv3Tr75Pf
         bHHofDB+xge4E70eqbULefJ9Q5SutQO759E7fMidZ+JMToTwrY0TTe4F3eUW6jAlO0sZ
         7x3XLQyZJo2m/URkqSwvAX7Qcu99SgalG7Xk2vDKc4hb5EVjl6Y6ptSxogOHNA617VgI
         lqdC2fnEk/N/2HNccs05COdbk9t24o8DZG/xS+h39dfBS3tFgYwcZEFZlv4f5xFojl0R
         0SIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:to:from:in-reply-to:cc:references:message-id
         :user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CkAQYOMgsc7eKKock8tzlvftMHat7ndo4MQPUqCOT7s=;
        b=NMlzlB+uIAlMJ1mNMPj+uookbEcVvSiKmoIbTo6uxvf/5M9ZhO0DYcM3qhTFuQxggL
         z7Z7E5KdaGGNhnfcuxKjp6lchXQoep2iYmS5k0Th88eC5U+Ft+bQH9AOfmT9o4Dx4zfU
         43+xqXCRbB40qIWT/p07JsSlJsSShzrCekfkt9pcFsgq6fOc5kqAWBSjPcnnn2NR9vH/
         oryqZUytHMGgGqOLBnFO3PqtzVTcAFvCR3jGPR8ybSGukCPE0Id7KspjUvd9nnYB9yeq
         qN+/CXKKtC0+9/jVQpWpIcZH1JhWooOSssUfHI3zTu18aPz9/+2iUFPuuWwTLfooB45e
         0koA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:to:from:in-reply-to:cc
         :references:message-id:user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CkAQYOMgsc7eKKock8tzlvftMHat7ndo4MQPUqCOT7s=;
        b=g75/u9vW6SpEGm3VTNDnHwPXwCoBCbOoPy1TS7Yl4h9BicgV1XrSCv5mWYUZRdy04a
         qQvVUF5Yjgjr5xjUKyU/2F075/nk6IWdkim+quhXXEhrGJa1ZJjN67gnPghBYVkxXHkv
         mGU+s1g9vst+TgmIhIvtohQT67vJaSKPKoRzcWE9IPMi3efiv67Pux2t2QFeKG74KpJM
         Ru73J/A66u6/n9JS/Sd5Ln2atq268wzcWtw6szYn9DQ748eR5HLRJv2G1GD8Odch18mT
         2ktynGgI0XJVtT3gdTyXpoBNYhODkxd6A84ktnqIVc+0DS70ggZHxOVslmf9WGVBtidm
         wC7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVFEcXAojwfOHRtye2jfoqWOB8kmdSIanhkUXrOSnrXLpEREL4Z
	OcW8ljG7+UL7QJby4JurSXU=
X-Google-Smtp-Source: APXvYqxlZyn8QZvfVzof1V9n1ExScT5fQtT4KJ2KcKBZMZ9nwHK1/XUOFOgaRX8E1gX+VRgJ97afpw==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr5253541wrs.247.1575380571679;
        Tue, 03 Dec 2019 05:42:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4fc2:: with SMTP id h2ls1167654wrw.2.gmail; Tue, 03 Dec
 2019 05:42:51 -0800 (PST)
X-Received: by 2002:adf:f850:: with SMTP id d16mr5377724wrq.161.1575380571164;
        Tue, 03 Dec 2019 05:42:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575380571; cv=none;
        d=google.com; s=arc-20160816;
        b=q/x+2hNe0iWt47mzbHv5zp9swtdyKePisqnNNpPkRg/Zhx3QoRX3UbnjP5P3O8waaj
         jG885tYz8m/q/aRaYi6mxeMxRsWL+cOTDdEkR7VoOOC41Qhu4vnZJXJlVNTOIW4ik1O2
         qrCL7RmJn1ijDkkkFk48xku3/JyvzQauue4p41qQFeyKuP38KXHBF/YFUWW6pV3O8iBk
         FasDnW02R7nb18L0/gkhiEkpe7+3Q/Kloybi6VfBM0BcB7/FxYVvXkcwJ+Wkq/8/RxoS
         91gUy5t4uZUn8p2kfUYsPWtlA/bBlrZuMzoqn/ywJHfvQLRURCRroByQsPWzbuafwCrS
         VhGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version;
        bh=xh7BlmlNiAVj07jr95O0Z+7lOs+djjyk2yd9d9kptDY=;
        b=cKN0MOBDJDQTzGDloJBG1jBjF7VIg8cUfTbZF/veenPGQLPCxhOHyPf1wbk4j7gwEx
         WfYbihdBS4CdoCTn+3+7OrCRhhGEJ86Ny+28t8VuCcQ5TKINp/74D4/Z5pqp/Wv5PM3l
         Kq41rUBIWqk4RiamZQXT/zUdYzPhrZ5Jj0Q8MNmWT89gqJlSQVh1Vt+DcTDzudv4yqlU
         U7eMs+ODypyJUrBc2B5B9QWPkG/ha0CCZa4Th/83oU4GMhzbfk4ZrbYykZ3xOtIyGRqY
         E3pYlzxod+fRxytqc2hQQUiaxbkzl/PBsuZg8NImaEEfb0lQZHY2/JsCUOT1gwfOcmAO
         DJbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id 80si209008wme.4.2019.12.03.05.42.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Dec 2019 05:42:51 -0800 (PST)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 19443048-1500050 
	for multiple; Tue, 03 Dec 2019 13:42:48 +0000
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
To: Nick Desaulniers <ndesaulniers@google.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw@mail.gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20191123195321.41305-1-natechancellor@gmail.com>
 <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
 <CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw@mail.gmail.com>
Message-ID: <157538056769.7230.15356495786856166580@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH] drm/i915: Remove tautological compare in eb_relocate_vma
Date: Tue, 03 Dec 2019 13:42:47 +0000
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.228.58.192 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Nick Desaulniers (2019-12-02 19:18:20)
> On Sat, Nov 23, 2019 at 12:05 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Nathan Chancellor (2019-11-23 19:53:22)
> > > -Wtautological-compare was recently added to -Wall in LLVM, which
> > > exposed an if statement in i915 that is always false:
> > >
> > > ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> > > result of comparison of constant 576460752303423487 with expression of
> > > type 'unsigned int' is always false
> > > [-Wtautological-constant-out-of-range-compare]
> > >         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> > >
> > > Since remain is an unsigned int, it can never be larger than UINT_MAX,
> > > which is less than ULONG_MAX / sizeof(struct drm_i915_gem_relocation_entry).
> > > Remove this statement to fix the warning.
> >
> > The check should remain as we do want to document the overflow
> > calculation, and it should represent the types used -- it's much easier
> 
> What do you mean "represent the types used?"  Are you concerned that
> the type of drm_i915_gem_exec_object2->relocation_count might change
> in the future?

We may want to change the restriction, yes.
 
> > to review a stub than trying to find a missing overflow check. If the
> > overflow cannot happen as the types are wide enough, no problem, the
> > compiler can remove the known false branch.
> 
> What overflow are you trying to protect against here?

These values are under user control, our validation steps should be
clear and easy to check. If we have the types wrong, if the checks are
wrong, we need to fix them. If the code is removed because it can be
evaluated by the compiler to be redundant, it is much harder for us to
verify that we have tried to validate user input.

> > Tautology here has a purpose for conveying information to the reader.
> 
> Well leaving a warning unaddressed is also not a solution.  Either
> replace it with a comment or turn off the warning for your subdir.

My personal preference would be to use a bunch of central macros for the
various type/kmalloc overflows, and have the warnings suppressed there
since they are very much about documenting user input validation.
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157538056769.7230.15356495786856166580%40skylake-alporthouse-com.
