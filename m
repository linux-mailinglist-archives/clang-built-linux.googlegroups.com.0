Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBMXI72CQMGQE6JJSF3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA6739FECA
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:17:23 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id a19-20020a1c98130000b02901960b3b5621sf578102wme.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:17:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623176243; cv=pass;
        d=google.com; s=arc-20160816;
        b=KWqk1DbeQelQprcfQoENpQRDqNMcb8dalGhjtkOYKcUS0AENWZfKkn5sTx7MuSYQWy
         xFHLeTvDBPMk2LUSAYOmCI/AQELLE3OayRqTawtFf/BHBbQ/YYQxT3f4x2xFDYOzY9cb
         al9N3J6a051qOr1CQR0mKyqjDSE9ydYLJTrItjBzbWs49z/sYVAqR5bcwMUvRWzVH/j4
         Inf2DY89eBtlWWEc0DYbsbUWyy5mOuSZGdAPqUNX2/NOoawfL4ad+rXBupdN2Z+5SKEt
         SDcPO3Cng3rAtclCnNWueDPoVZJeDLAC6vrt0Wh4TvM6yzZZbLZONDOgOjRBgkGNckVB
         UMhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gY0tIt8ReuBDXgkJv6B06jvkYHLRVFNP+oHUFSpLPko=;
        b=VZSNR5d7BbHv2hRqC72qnFINhFk0TJ1eqq7fxxUlUEDgnUBzMKjZdp/PvubXnSivgM
         HQ8lxNXbfdhYHVGJtnD5l6UjU+0C8BiP7ucdwezngG/WMvk4dVwd5T+LqqxjzQ7lbRLp
         hGRed0vYwZKJOqtYjUn/yZMBtFN7slDulqJpPmyGY2eXptUnt201rFc06t27MVXsNKlh
         OGdRwiTFzhRHweyhh+/zuDMhWJ2IG2e8db91hYT9DloN7W7OcXj2vyq+OLGWH7UlgeFp
         455nxmAxOSe5tcBGUSPfErpU1sFHYncLoNqWhRI05xxN/WEa/CT1UolHS1BPamtmwteb
         sy0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=XqG0jOqy;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gY0tIt8ReuBDXgkJv6B06jvkYHLRVFNP+oHUFSpLPko=;
        b=PwfZADYr5SkyhvKRoLMOmuFvnjgQwnQum9T6mvP4JyYtN0Cu4ws/XgNpVP/FDcFVCL
         uRBbiDX8WY+e0HBRBc3jPJMMkKAh4D8PvgGUUAuZZ2FbBRuM93ouo18IdJnjQ8DziZQ2
         4mjPyiLpc8sfCcvLBy60kQLdO/wNW0Ze5Xsl4UPjTVqJx5d47KiIM4hVCzFzo1JHQj5s
         WGruAWjtx0tdaJEI441p0EhQfFtAZXO06tuOI2YGP0UlpRV7LCjz0/zNnFIaj5mgAbtc
         ZL+TjDCCBoGne8dWBku71ZS1oP7e74rX/bqe6N9lPgUYavVjInNZpwVQsVpcYUUh8eM1
         Q8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gY0tIt8ReuBDXgkJv6B06jvkYHLRVFNP+oHUFSpLPko=;
        b=M6PHsXxmftJbqNT5j8dPVle7d1wXVUujyARy0ezAF1Ek/a1XybeBX1iZU7e6rsD9xZ
         8LCEkdmSYGNK7Nc4IzbahFM5XpBFLEzWTHG8qcLCB/ht3NUjtvaeDnDeNS3CRt1ILdu/
         QgHAg1+wyi1m5G2w9CdmbcjwLuPoUgVmc9xHePVvp7cP3+ql15Hkhd23Rw4hwbKKAQtV
         tHoe2Wjt1iMe1PUvLqE82BRTFQaMY/c90HoBHcDTRfE+tvNkRqpILVWuWGTK++vWeHFi
         6mNpRD/32EZOrVKGbouar+7gWz6JSS3BOyYGNVvkerfGf2123xmg6DkSy3jzUbYnRP2l
         ID7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Nprlki8dUnL+aBOZNXJaNR8iTsKRfgFTtiXveCXeGA+uLWZSS
	u9QFFrUTFnZzw6e7h0JQA/M=
X-Google-Smtp-Source: ABdhPJzZZe7K+xsAk6PkSblXDHUCP4xtGb8OH4bcLQEYtWp0fPpzaNuZH+Lr4Qm+FWoRdX9D/pYxAg==
X-Received: by 2002:a1c:5f86:: with SMTP id t128mr5760418wmb.165.1623176243160;
        Tue, 08 Jun 2021 11:17:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d1:: with SMTP id s17ls3028694wmh.0.gmail; Tue, 08 Jun
 2021 11:17:22 -0700 (PDT)
X-Received: by 2002:a1c:1dd3:: with SMTP id d202mr23429389wmd.78.1623176242358;
        Tue, 08 Jun 2021 11:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623176242; cv=none;
        d=google.com; s=arc-20160816;
        b=W/+zQvPXKlvfmIomITdd0t3BNu26XoLzHTLvsnOHakFezlrCvTZYq/cXVa8j0NwgZR
         yVeIr9jIcyY4lom7LBL3pnosJa2IIujyqiiq0ybjmfcodnzvCyq9blejwElzRvpSxT5W
         42Jdt/d+82aJOmoqJh/D4QqPVaD3S2Yd0IS7A/vXfQzeIV+2jbqchft7GxVbU57Wszqk
         KBlw2UPHJbbAOcs3arQYOJFd4J8wxxDrlRGJAKnJgymAdZwYYLMtRSX+wx/pPf+9CRPZ
         14yu6lnLadv1JhGVy22n3u1CzO1EyjdILUg3dXHvtrpMlfu2o0lh83NqjpugNqQD3tQr
         uhqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Co//ogi0KDTBikV6nydb3Go2X95ksXSe8+9miI8T9iQ=;
        b=L0eL+05BjInkrseANunHRISkPEyHUO9unztfKvb+dMQTEs17VGXblTLKvt7UyybveH
         7ILyoz0gG0hd+EKW+/KgIWHddd4O/pCRLD2gaW3URaiWC3QtBaMxBHOb52r6Cn5yC+kF
         K2iNvyjtYP9ZMbBpcVzCypl2/NkkDAS6LiIcO5m/nYJVJw4ZNs0VLTwIVDc97WG6DQ+n
         92IhwImc8i8fZRqt3MjiQPOxl7TE0VeTCCS5mI3eky4/+7jHUGyAAkCoC6prCb3ERfpX
         x07zqoPVoGmsHHnci0JDN9mrGDrnAkEb7bn2UfdzTe1tjUV9CY1RN9P6XVpVvQYNguWz
         FOIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=XqG0jOqy;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id s9si181150wmh.1.2021.06.08.11.17.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 11:17:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqgHq-004pSJ-40; Tue, 08 Jun 2021 18:17:21 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7418030018A;
	Tue,  8 Jun 2021 20:17:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5FE37201D304F; Tue,  8 Jun 2021 20:17:20 +0200 (CEST)
Date: Tue, 8 Jun 2021 20:17:20 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
References: <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=XqG0jOqy;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jun 08, 2021 at 10:29:56AM -0700, Nathan Chancellor wrote:
> On 6/8/2021 10:22 AM, Peter Zijlstra wrote:

> > Since it's a VM, can you use the gdb-stub to ask it where it's stuck?
> > 
> 
> Unfortunately, this is the VM provided by the Windows Subsystem for Linux so
> examining it is nigh-impossible :/ I am considering bisecting the transforms
> that objtool does to try and figure out the one that causes the machine to
> fail to boot or try to reproduce in a different hypervisor, unless you have
> any other ideas.

Does breaking Windows earn points similar to breaking the binary
drivers? :-) :-)

The below should kill this latest transform and would quickly confirm if
the that is causing your problem. If that's not it, what was your last
known working version?


diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index e5947fbb9e7a..d0f231b9c5a1 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1857,10 +1857,10 @@ static int decode_sections(struct objtool_file *file)
 	 * Must be after add_special_section_alts(), since this will emit
 	 * alternatives. Must be after add_{jump,call}_destination(), since
 	 * those create the call insn lists.
-	 */
 	ret = arch_rewrite_retpolines(file);
 	if (ret)
 		return ret;
+	 */
 
 	return 0;
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL%2B0MO/1Ra1tnzhT%40hirez.programming.kicks-ass.net.
