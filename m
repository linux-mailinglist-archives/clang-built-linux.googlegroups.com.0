Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBANLS6EQMGQEMLVVDNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id E04F83F6ED3
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 07:30:42 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id q9-20020a170902dac900b001304f704413sf5100089plx.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 22:30:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629869441; cv=pass;
        d=google.com; s=arc-20160816;
        b=bv2RI1oruesYd1QdAgb82S8hAuqoKdSZxZynX2AB8+cXcpt8m2cMy7IRz5kLrrcJ4e
         iMf4uM7sm24N/ZatrdBQ31OhmACJEhveDsvRk3NcWK/9Xy8gjLgrU6rnwBEDYgCetQxM
         weIsn2JlXZHDoeWD5y/Em8GMeEHjsOdSWviZG7MjGFNBXaAYn0OHJ8OzUa2fitnEo4Hz
         4dd1jxbmL0A529SSA4WVmEZ6i2p8qHPDAAHVyxPpPWkTOmeIbuAZ0cdA7YI6GuByWWhg
         AtyIIV7BgTHLlaLkrk3YmBYydWYUl3jilCMjH5+ZmlwuHMs4ZVa2qJy898cd0wFMUkYQ
         26PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jRa4l2uSw+X+nwKDheDUOsIDBfc/+1n0flAaK0KqqhU=;
        b=m2fzrNfyBhJmDhtrW961P3aJO+0vcZLdacWF588WHAxMPeJ/xSyUMJs0bI0E0zcRnP
         eRlMAFS2Tiztj1V9lhwua2S5VCH5/ElXxAP2iUCcGPoFR7JZfuA6w1ZJLUgcxkiUkVIC
         ijOs1dpkHau4+G9+R3CRg52zBRK2SatVQyOTrzfHWl5O1zRf7t/hkeCvx4LG6kAxJu+t
         8HtlygLmZypQu9nlEDJ1sqYOF44cnwOc9waBhpGkSbFsckQSPWdlT19Vj3t7XHxA2yIN
         VHmGnP+GzTlaaU4UbsnmSQ0kHFyxUo9qz7afhooSktoycj899ukvvDeTi7wsLCUYQAVO
         jdYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ENlDl3yg;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jRa4l2uSw+X+nwKDheDUOsIDBfc/+1n0flAaK0KqqhU=;
        b=gRWJeGYCb3peyxM5HpUsNZaMOu11rGE27gnJLBqHXEf/OfQbnFHscTuW6JoOxNUep4
         azYG49eS1l23WGHINwIGR1A/1JeRtIv8UfvAIx2GIpVDf1Rwha0GhKWdmsrwv8p/wMxU
         11KVO7QP+OFHE4HO0muEB6nPToL1krZEyy8BsfxL9kxxXlD8vWMTY/H2e8tF+HLEZTw+
         DSkqji+oBKnwd+V+q+ixaSia3cPL5FF/6Bqd1TOH8kuC84H115QspfSfZNeyi/ysHH3j
         V2WCU1uKrbyU9k+lz0K9yrYvQi0E+/WCBKf/yDAA9rP+ZQt6/M1zFEAg7PRBVaFN9N9z
         +KCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jRa4l2uSw+X+nwKDheDUOsIDBfc/+1n0flAaK0KqqhU=;
        b=R2gZ0JxBg4n0KAExewpxGUSIRzfZewQ8Kxifh3ECQTIJryp7Qkm3OvBmXvM82w92U4
         T7iyILByXQHkLzOi57T6JK3uReAdOzDyUstWugSpKfIELjmlDsyArh6NKaRbdlrY/3kT
         J3miahQQXQNdNmX10816DQoX7Ac16jQsvDgMnBxePyKsgKbtVs0YHUj4o+Zseeqp+4a9
         PO1RhzQQt/ScMpqeb/e5gT+kX7TaAh0rlat+EV3UC1yQ9+7J153EemhKDxHyLYQX+Nfs
         QuSrGcafSmeTUxNJuc+ME8byG9jv3klxKDnoidsnXeewAm1P81q4D4nTjmEESlyCO5+u
         lC1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Pc3UZ0GLV1FueNMdLvmR9oMDPvgBxMkn2U7zhq8d6VwG6+sdL
	zLFNtmejimRrA9/dUnLqV9g=
X-Google-Smtp-Source: ABdhPJwjiH8mNP29TrSdHV6hPy1fqwIujmmiCnsxf/3M4k/UZLdtwLWo2LcdznueqlJpQ9C2OZPuPQ==
X-Received: by 2002:a65:6251:: with SMTP id q17mr35599800pgv.416.1629869441182;
        Tue, 24 Aug 2021 22:30:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls447552pfa.5.gmail; Tue, 24 Aug
 2021 22:30:40 -0700 (PDT)
X-Received: by 2002:a62:e90f:0:b029:307:8154:9ff7 with SMTP id j15-20020a62e90f0000b029030781549ff7mr42427311pfh.79.1629869440656;
        Tue, 24 Aug 2021 22:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629869440; cv=none;
        d=google.com; s=arc-20160816;
        b=Bw6HwkxYIOyrdBzBRXbX58mvPHzhcLwQ8uMj9g3U5HVhe+svYyO0tbD3swPm+L8d3a
         5Q0/kHteY0B1eAZ2Es+J9O/BeadQ+kfampUNIEuyoVON8WeIcN1zEU4FQzjlc3+zXsvK
         6zEzUtpfhLBPPdv759SOYq53XRVcSQhg5E4Cdk5P3vMVHwA/HtIAF1yYtHxD/LTIp65x
         SOB9/CIrpM0VqPRw8qCMU9EWSy7hdl6Ie5Jg7x2NVDBQ0Ug84u3KMtovlUmtPV2k3nfW
         9z+77tJnTzW26uB5OZ+mvnS/fFkMFsJ/dZ+y+5NyY4HzSSzwGBTVVAMBkexIKu+d6MdZ
         jtYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=APi59ojaXZbrr2Z3Z/wcTDIafsmLfmeiwWQFicVEKhk=;
        b=LeyKFgYM2VliJWrlvv9pm8MCidyG6rAlmL5fYKXNLKA9ExwEOYnuogu1oorZFYL6Wk
         gvtXCFC5bWlgQXhz4lF23XbReNaH8yiURWFDSInimwmX8ZFd+9ADPO3V0GGE9EcYDhyP
         cY/4rUYSY0qEMiLXkAFUN7/hzTJQCJYofZl9AJXcJXvhhd5gKB94VV0a3xynTEpJuEeb
         urAKjcMHMLD1BecTEguijB0cjOB12VZuJ+63ACSgEG7+QwvEbFJL4HPH6ZhsrfxKFWPQ
         oDUNOL1z2/h58dcypZ9sPipdxJxmbnc4L84wQbYilbU5jNxuAxpYPrvXFVuZ7cChpA8R
         XIug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ENlDl3yg;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o2si430950pjj.1.2021.08.24.22.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 22:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-oNDBrgAVN72192iShdtbxw-1; Wed, 25 Aug 2021 01:30:34 -0400
X-MC-Unique: oNDBrgAVN72192iShdtbxw-1
Received: by mail-qk1-f198.google.com with SMTP id h10-20020a05620a284a00b003d30e8c8cb5so16012582qkp.11
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 22:30:34 -0700 (PDT)
X-Received: by 2002:a05:620a:165a:: with SMTP id c26mr29211570qko.498.1629869434297;
        Tue, 24 Aug 2021 22:30:34 -0700 (PDT)
X-Received: by 2002:a05:620a:165a:: with SMTP id c26mr29211555qko.498.1629869434007;
        Tue, 24 Aug 2021 22:30:34 -0700 (PDT)
Received: from treble ([2600:1700:6e32:6c00::48])
        by smtp.gmail.com with ESMTPSA id u13sm2264634qki.38.2021.08.24.22.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 22:30:33 -0700 (PDT)
Date: Tue, 24 Aug 2021 22:30:30 -0700
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: objtool warning in cfg80211_edmg_chandef_valid() with ThinLTO
Message-ID: <20210825053030.kal3nk3ifaj55vtu@treble>
References: <5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org>
 <20210824210507.GC17784@worktop.programming.kicks-ass.net>
 <dedde693-bf1d-a35b-e858-dab1f8f65246@kernel.org>
MIME-Version: 1.0
In-Reply-To: <dedde693-bf1d-a35b-e858-dab1f8f65246@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ENlDl3yg;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Tue, Aug 24, 2021 at 02:19:07PM -0700, Nathan Chancellor wrote:
> On 8/24/2021 2:05 PM, Peter Zijlstra wrote:
> > On Tue, Aug 24, 2021 at 01:08:58PM -0700, Nathan Chancellor wrote:
> > 
> > > The LLVM developers are under the impression that this is an issue with
> > > objtool; specifically quoting Eli Friedman:
> > > 
> > > "The backend can, in general, create basic blocks that don't contain any
> > > instructions, and don't fall through to another block. A jump table entry
> > > can refer to such a block. I guess certain tools could be confused by this.
> > > 
> > > If that's the issue, it should be possible to work around it using '-mllvm
> > > -trap-unreachable'."
> > 
> > So jump-tables are a weak point; ARM64 was having worse problems than
> > x86 there, they can't even locate them.
> > 
> > As to having a jump-table entry to an empty block and not falling
> > through; how are we supposed to know?
> 
> Fair enough. It does make me wonder why LLVM does that.
> 
> > Emitting them is a waste of space, so I'd say it's a compiler bug :-))
> 
> Isn't it always? :)
> 
> Turns out Nick brought up an issue very similar to this (unreachable
> conditions with switches) on LLVM's issue tracker
> (https://bugs.llvm.org/show_bug.cgi?id=50080) with the same workaround
> suggestion ('-mllvm -trap-unreachable') and there was no follow up after
> that so maybe that is one thing to look into once Nick is back online.
> 
> > It's been brought up before; but perhaps we should look at an 'informal'
> > ABI for jump-tables ?
> Not a bad idea, especially if this has come up before.

This is definitely needed.  Jump tables have always been a major thorn
in objtool's side.  I think I volunteered to write up a proposal for the
linux-toolchains list but I've just been waaay too busy.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825053030.kal3nk3ifaj55vtu%40treble.
