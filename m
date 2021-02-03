Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBLM75KAAMGQEDME5STQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1052030D953
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 12:57:34 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id q24sf3027384wmc.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 03:57:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612353453; cv=pass;
        d=google.com; s=arc-20160816;
        b=kaSa+0Nt95v1EPnmvB/WBndRm+AaLi0Uueh1z2neu39NOejQddvrgof5Vn/l0ADeuw
         oWqKU5AenG42nymaE4I7KUpT/pcsObhZRasJC3xAbPniqbW1bDeVM724rLpk5Ob/dSO8
         J3Vu7xixSf0el9Kt19L2TvGGj/0IJcvzz0tOqcQ1wTK10zbxklzYvh2XxjTRO0dXVSZk
         sUOD/t6oIVkQT8FNT1wDUkIPSwT31AwjoidWifa7Q821zqZF7ofvQ9bc46oXmRiuQWbY
         TWS3DbBv28ozTwefAT6DVPdoYoC7ZmJ8yYqAsSeAbB9Bk3LbNN622kvgKbWr91vsQv29
         pyvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NztaOeKQxDwzxxf/JZc9Ymqt5bWFyTD1FG6eOUgjKWY=;
        b=jt7cUpZJEORyRh4WN6oqA6gX+qiwDjOrtEd6r6wln7WXwhXPX7VtAOYTn/TBbRfTdo
         Ae1kDK3NR1TzXSaKYynLFMNzZrK8BE58FjyIG8VU2F05Kb+h7LtY3ETGgyOwH43BOKCM
         w7EmybUJ1svP3tdKganls2T/oZenb6AxhT42wPWsn4hzSh07NCz51iZ+IubpVk0GyR5s
         /YKOwZV0l+M+xrjdu+qZAbTbERRTjnsQA1J/Scm7iCP3RKGBWI0wUvbNjfZB6IO0g8IO
         axPHgVU1spbDFkv81v3dNzt6rZ4rOnIxNoUONYtV8CmTjwzWr+Z6GFoRSwzsJlfsYZN7
         lQvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=oMNuAy5g;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NztaOeKQxDwzxxf/JZc9Ymqt5bWFyTD1FG6eOUgjKWY=;
        b=e4IG1TEbidlYIdguN2XAbmR9HUdmjaHnq6jlqwqKRWVqTiBENw+aOtrbLP54FHe6Q6
         s++gDxS/aY7U1vBPPw076P74GcDRBN11MgpmFHLNpsGTt4L7DpGBem2XNWcrw+Octy0n
         2CCOEgEJz7rJlIDxBeyX5Z7bgVVbwunULu/8p4GTJXkcPh8FcORCxxhere1TojbtQWA2
         G0hSLy1zF/bxo7IQjdrYH2KWZFTUFL4RFmzyrMO9b4T/vz07vIi0Y+fh1qzBVH/yplXA
         DUq4Bm5zR80SoSsPMB7fiv+k0i5D+xBHZIqANedTftbWIlkV6YKxiZ8faIEYReqxFEGE
         cWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NztaOeKQxDwzxxf/JZc9Ymqt5bWFyTD1FG6eOUgjKWY=;
        b=kVVCOan1Lgo+rTpV5Xs+eDRHcJ20Orsw4igGTVzAoglTBdjEkKTyMPpRwAngJRDzXK
         O+udH82ilRncW24BYqXMLh0VxbXtDSZmuz+1R8Z7vJps+F91ADbSvcORhrnrd8k8craN
         Bj2I/3adSeoJOkVb4kqKgYP7DjSQ0SXfZcjQuiIHK6mxauhC3iy15hFgrcepXAZgpWJY
         7aGKKSHnSY7I0gbqD47UgsCcxBGGUnDb8tqfL/TG81HOo/m2bFOXz2p1ZtM8iTRbxXoW
         40Vin7WRrqGy6cugTMjpbpywpv/u/k6rz4gYPIN1lbNKixyLiDtP7wMFRGK7IB7hzl7S
         ouvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aVku7pKmwcTwIiRrtDztnwa03kfe8H5bWaS8oG/FJFB3q5bUO
	umDgLIDsLRC6BHRI9Fgmvq0=
X-Google-Smtp-Source: ABdhPJxEVgADcMIjNK9FOZvey7TpYNR72dSrbFK21veBz/RgU1+bGmn/fgf8imEI90xBeHymxpsCag==
X-Received: by 2002:adf:dd43:: with SMTP id u3mr3194990wrm.396.1612353453749;
        Wed, 03 Feb 2021 03:57:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:770f:: with SMTP id t15ls912772wmi.0.gmail; Wed, 03 Feb
 2021 03:57:33 -0800 (PST)
X-Received: by 2002:a7b:c355:: with SMTP id l21mr2505101wmj.61.1612353452958;
        Wed, 03 Feb 2021 03:57:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612353452; cv=none;
        d=google.com; s=arc-20160816;
        b=jyxWsetpVcPZFN7onXMVUMV/GeOm2oGvbRNi5aRutinuM6MqlbePh3/6uzwBm8ijdb
         S1DYDg2t1GNTZ1FbveX/AlHf7F7/5JHesCKiqFflyPuY9wiEDYh2VDD4SNhSqVoIYtDQ
         9HBX/3+duTwSnkyUfBiait9WSWBdW3UcouBzq4HIAFz0hurI1E0/5Y2gQXGJZDF3m1SW
         rW+o9LyYtMHbhl/NFHjNh3i2fe33suqkut6W1Equx1h22Qu1v1OnqETTGwXkiORx0bq2
         COgBKIYRXc/Ezc10WPXzhkyCScUpCdYFzNC0QIyTi2EBn2tlN8UwlZyRXZeOTvSGk2rO
         b6Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qV09Im9zStsEDN3aK7Y5tK1FdFUYhtdI63Y+lrzaDhc=;
        b=ud9eL16hat44ONa43DJTeYHbYnoKPUqKDApragftk7uIlxh02duyJP79HhpRjTw8tu
         t4zZzUN8IEfB1ODrXpOcQnYwRIeP2zi5gVnV0So9JMRPLhnAJFjo4yTQFwLNPhsXjlTd
         bd19NUEYNl125Tha6iOaRA5HMFZkYUOZvJTjRSBsRhLDflYAaA5r1VjmTGW0KVmw/OHj
         FcxDjyVitVbQxMPFwrJzd1VAJIsEvU0ASf0Go71Mq+Cg8HRmz0TqgT2VNMsAmI5Hu3Of
         XuLTEAp7Ec4FSu0i7wcYy9crg5ZD57qKq/1kGqwVTtTf4GG4lKcUWf1K0tqc3ssufq2a
         eKgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=oMNuAy5g;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id z188si147883wmc.1.2021.02.03.03.57.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 03:57:32 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1l7Gml-00GmtO-US; Wed, 03 Feb 2021 11:57:29 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 412043003D8;
	Wed,  3 Feb 2021 12:57:27 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2A5702364E363; Wed,  3 Feb 2021 12:57:27 +0100 (CET)
Date: Wed, 3 Feb 2021 12:57:27 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Julien Thierry <jthierry@redhat.com>,
	Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>, raphael.gault@arm.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Bill Wendling <morbo@google.com>, swine@google.com,
	yonghyun@google.com
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <YBqPp53EM/E+o5TA@hirez.programming.kicks-ass.net>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
 <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
 <20210203001414.idjrcrki7wmhndre@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210203001414.idjrcrki7wmhndre@treble>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=oMNuAy5g;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Feb 02, 2021 at 06:14:14PM -0600, Josh Poimboeuf wrote:
> > Sure, but this is what production unwinders do, and they don't require
> > compiler plugins, right?
> 
> What do you mean by "production unwinders"?  Generally unwinders rely on
> either frame pointers or DWARF, but (without validation) those aren't
> robust enough for live patching in the kernel, so I'm not sure how this
> is relevant.

Not to mention that DWARF and consequently it's unders are horribly
large, complex and above all fragile things.

There's a reason ORC got invented, DWARF is simlpy unacceptable and
inadequate.

Now, one avenue that has been mentioned in the past, but I've not seen
recently, is to have objtool use DWARF as input to help it understand
the code. At least in userspace we can rely on DWARF libs. But I'm
fairly sure people aren't jumping up and down for having to always build
their kernel with DWARFs on, compile speed etc..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBqPp53EM/E%2Bo5TA%40hirez.programming.kicks-ass.net.
