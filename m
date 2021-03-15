Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBY4NX6BAMGQES4QBL4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8E33C7E7
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 21:43:16 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id q23sf16581294oot.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 13:43:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615840995; cv=pass;
        d=google.com; s=arc-20160816;
        b=XgB4VSxPwErO1F0CmoyCGd5ZRBCCSTrGW0nrluJdkOZOGzdxR9mCpFOG1nThLbDcKy
         CQ0y6dyJ0eVSviN73oU2s29D9VQNuNejxyDBPCHdaiYpvbbzb7AlO6TJZo+3L6Ccpqjp
         AFNhu0JMUWeQHo27IOX1NMHkEw5xk5s53BPo6vJNIAhqyszWWW/8NmFQKsUtb7rtr6ak
         h558+rzxtsdRHSi0CJr+7DdQPdcL6y8y0G9LFR5vM1mqwk5T7zwrxSRsgUyz5xwQ2MvV
         g4IizpmHGqAVOdPrn/0UwrHOg+yUjB4COUx9f+ImoDB/xz1+zMnhpsOR7XA05P10EFeo
         rGVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vjKMQi8pRuPaEGmbWwZGfFz8iWuQwBODGdpAoIr6wyU=;
        b=ywnoGAgTzeqoWymjnJ/1mPbpy3csEQwta9z2eTrM+zk918mRs6DBn8/W8UOxKBFejH
         uIr2UIUS5w0b7ssviFYVhQGt1axgBO/6UwORc693m8qkIreXKGQBo90Z5cEtrhvlW8/y
         iSsBPUveyUfbF86Uh71+ikmLwnQQfMbK+cWUWTzrDhO6WO9gNGePO1k3+mWUxlMeCHdd
         rXlbr2SzfjxJ76/PkS/1dq1+vAlPChMxEID2Umz04s0ez4EwSS0qKAfL7u5kHYLhxxdH
         EyCcklpeuyMgHRgs0bSvqyGkyA0aFbQdlwq1KmOgy+wx4RTx0yjMHlhqdv36QxZdjC7Y
         aOPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MWDW3XIO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vjKMQi8pRuPaEGmbWwZGfFz8iWuQwBODGdpAoIr6wyU=;
        b=J/ahGU8HlXzTbvVbhg+JOc2O40uNSuQwSNr4Ledhcigdy6MhmnAfLdXnJjAgHis4hS
         CYWL/tcXXEpInnnUB+kqCgsmnNL5/yVNR46KSTX/2iD4+Vx/voqsOBGqc5+FfLKONvJ0
         ZJp9p83k4Epx7aMTdDZDUO1UKO7+bxkdrqNEPb0TCN/K2nkNGfrGyg9NsKXVHWWf63vK
         kzAGEYm+CTHaZRZ6tNKH/EQB+8d85f4dI5cHVd6/tEvQaAVm71QK9mSaJkhVA4dDlHhg
         37csMLgIo4NYDdG+75SY3Srnr5o77mH3SsXXiEEIdo6h/a37yi/f8+dpcaup74pdbwSG
         JMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vjKMQi8pRuPaEGmbWwZGfFz8iWuQwBODGdpAoIr6wyU=;
        b=gmyUcAmTr6j8wAZHh8bPE2ep0nf+7E9nH7EijUbQN03kIj3r4u9uPSoa6kv3mPYWCh
         L3HgK7tbzUA7X0Nzaux5DruIRQ3n+y8SMhhfBAKE9F3KJQbqjzt/SQanaRh8M8RK9Lh5
         S6eE9rBAKUMp1xz/ypeRnW/p42sFxjOgSxj4fJldxrWadusdX4hWLR0susoJSmG74r/5
         HwwfThSlS7pwCSxb5ojImWcEnw2MnqlQ/1vtYF1XiRUPBqK4P9wkHjMpp/snC0nWnjNa
         DPAIBOQsmVY0wFhGVMblI09Pkp1+IZrfExx/F0bflSyb9oftuJZrYhwG7sPABnuuCwTh
         rA2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KXoyWb+ReZB8xyOZULaNG5AgR+p6NcJDqZg0LHW0Le8X/cytU
	YmxOfpd1ujdiXRySIy+1Sek=
X-Google-Smtp-Source: ABdhPJypW7ZPc0QBQXh/9M1ycBlcxn4yOLdAnwAX3kSGTnhF2nqY1ZcVaK5RhdxQ3VigKDj0qQbh6w==
X-Received: by 2002:a4a:d10f:: with SMTP id k15mr699093oor.82.1615840995425;
        Mon, 15 Mar 2021 13:43:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4996:: with SMTP id w144ls4310944oia.3.gmail; Mon, 15
 Mar 2021 13:43:15 -0700 (PDT)
X-Received: by 2002:aca:ea44:: with SMTP id i65mr84242oih.149.1615840995048;
        Mon, 15 Mar 2021 13:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615840995; cv=none;
        d=google.com; s=arc-20160816;
        b=sjUMRu6flHXG8o880dYRmCP3/p3WbKT+49bha0rWOgf0ejlGR85mjFNlSsFEfywMBg
         vvnsB+32GChtgo/lXGriXZX1fJmJg5oP3ZlZtVRSnAHuZxv0QL3QcxzZGaASoWEshv/n
         36kViZopNQUUi2oXAUc5pHXDuQR1ou21VJstTMYCEA4uKGwtrmwjzxdjwZNQBApjWh6a
         HN2tzNrT0+XS6tnrEDV5OQEqsJEaU1tDYrfo/hRTIm35n+PO62fWieW7ub8JkdkEjrF3
         2KCzumc8tppCWX9gC5084QpGg5cYWzKBK1gPj2OXvp3yrc4O2u534a6bkck3lm7kVm7Y
         WoQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FI6vRjPOclFYl+PNL7w7SF1t1gd6knIn1AKv4b1mypw=;
        b=aAJY53lyWO+ya9rWlu6vxDSVVjwfchWWT/iSfh5WAIaHmNFyXPvjDCvGbV3cKYlkKc
         xOI9ZUCqX7e94dzlT+szATkidmUr3lGwk+c9+F+wEN+u5y9UxOm9utJ+1mXk2Mrqc2AJ
         iRGZU0FNsuH6xJSqWuZXMbM/lBK9bFdJqnKXWC0pb73pKvgH+TQ+BFgy5u0a8g43jBV3
         qGdwvrB4wKTV5Wr38qy3FvAkkXmP5U2W3GvRTmaNtw9Ai/iCBM/uFau+KLARONIQwZH7
         AatMtYDFJDHXSOmedQwegTRnzufGlGztxi6wkQ8N4ZD9q/MmXv2L6QkEHegmAOPX60mt
         bCUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MWDW3XIO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l7si878174oih.0.2021.03.15.13.43.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 13:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0806F64F01;
	Mon, 15 Mar 2021 20:43:14 +0000 (UTC)
Date: Mon, 15 Mar 2021 16:43:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YE/G4ZGtFNDFw9ej@sashalap>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap>
 <YE8kIbyWKSojC1SV@kroah.com>
 <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com>
 <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
 <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
 <YE+wNS1iiVTU8YGb@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <YE+wNS1iiVTU8YGb@kroah.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MWDW3XIO;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Mar 15, 2021 at 08:06:29PM +0100, Greg KH wrote:
>On Mon, Mar 15, 2021 at 10:43:26AM -0700, Nick Desaulniers wrote:
>> Then it should be possible for any patch
>> that itself is backported (contains "commit XXX upstream") to be fed
>> in when auto selected or submitted to stable (or before then) to check
>> for new fixes.  Probably would still need to be run periodically, as
>> Fixes: aren't necessarily available when AutoSel runs.  For the
>> toolchain, we have a bot that watches for reverts for example, but
>> non-standard commit messages denoting one patch fixes another makes
>> this far from perfect.  Would still need to be run periodically,
>> because if a Fixes: exists, but hasn't been merged yet, it could get
>> missed.
>
>I do re-run my script at times, it does require it to be run every once
>in a while.  But again, who is going to care about this except me and
>Sasha?

I actually run something like that often, there are tons of patches with
Fixes: that points to commits in the stable tree, but quite a few need a
less-than-trivial backport that no one did.

>> Though I'm curious how the machinery that picks up Fixes: tags works.
>> Does it run on a time based cadence?  Is it only run as part of
>> AutoSel, but not for manual backports sent to the list?  Would it have
>> picked up on f77ac2e378be at some point?
>
>Maybe it will, mine might have picked it up, who knows, I haven't run it
>in a while.  But as you say, because it fails to apply, that's a good
>reason for me to not backport it.

I run it on a weekly basis for *new* commits.

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YE/G4ZGtFNDFw9ej%40sashalap.
